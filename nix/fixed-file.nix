{ pkgs, casBaseURL, fetchFromCAS }:
{ name, hash, generate ? null }:
let
  lib = pkgs.lib;
  hex = builtins.convertHash { inherit hash; hashAlgo = "sha256"; toHashFormat = "base16"; };
in pkgs.runCommand name {
  outputHash = hash;
  outputHashAlgo = "sha256";
  outputHashMode = "flat";
  nativeBuildInputs = [ pkgs.curl ];
  SSL_CERT_FILE = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
} ''
  ${lib.optionalString (fetchFromCAS && hex != lib.concatStrings (lib.replicate 64 "0")) ''
    if curl --fail --location --silent --show-error \
        --connect-timeout 10 --max-time 120 \
        ${lib.escapeShellArg "${casBaseURL}/${hex}"} --output "$out"; then
      exit 0
    fi
    rm -f "$out"
  ''}
  ${if generate != null then generate else ''
    echo ${lib.escapeShellArg "Missing source ${name} (${hash}). Run nix run .#import-source -- /path/to/core."} >&2
    exit 1
  ''}
''
