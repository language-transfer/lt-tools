"""Serialize the app's metadata and assemble a CAS from Nix-built files."""

import hashlib
import json
import math
from pathlib import Path
import subprocess
import sys


def write_json(path, value):
    # Match JSON.stringify(value, null, 2): UTF-8, two spaces, no final newline.
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")


def pointer(path, mime, object_hash=None):
    return {
        "_type": "file",
        "object": object_hash or hashlib.sha256(path.read_bytes()).hexdigest(),
        "filesize": path.stat().st_size,
        "mimeType": mime,
    }


def place(cas, object_hash, source):
    target = cas / object_hash[:2] / object_hash[2:]
    target.parent.mkdir(parents=True, exist_ok=True)
    if not target.exists():
        target.symlink_to(source.resolve())


def course(spec, out, ffprobe):
    cas = out / "cas"
    cas.mkdir()
    lessons = []
    for track in spec["tracks"]:
        variants = {}
        for quality in ["lq", "hq", "hq-mov"]:
            asset = track["variants"][quality]
            path = Path(asset["file"])
            # The fixed-output derivation has already verified this hash.
            variants[quality] = pointer(path, asset["mimeType"], asset["hash"])
            place(cas, asset["hash"], path)
        duration = float(subprocess.check_output([
            ffprobe, "-v", "error", "-show_entries", "format=duration",
            "-of", "default=nk=1:nw=1", track["variants"]["hq"]["file"],
        ], text=True).strip())
        if not math.isfinite(duration) or duration <= 0:
            raise ValueError(f"Invalid duration for {track['id']}: {duration}")
        # JavaScript serializes whole numbers without '.0'.
        if duration.is_integer():
            duration = int(duration)
        lessons.append({
            "id": track["id"], "title": track["title"],
            "variants": variants, "duration": duration,
        })
    meta = out / "meta.json"
    write_json(meta, {"buildVersion": 2, "lessons": lessons})
    meta_pointer = pointer(meta, "application/json")
    place(cas, meta_pointer["object"], meta)
    write_json(out / "index.json", {
        "id": spec["id"], "meta": meta_pointer, "lessons": len(lessons),
    })


def release(spec, out):
    courses = []
    for item in spec["courses"]:
        package = Path(item["package"])
        courses.append(json.loads((package / "index.json").read_text()))
        for source in sorted((package / "cas").glob("*/*")):
            place(out, source.parent.name + source.name, source)
    write_json(out / "all-courses.json", {
        "buildVersion": 2, "casBaseURL": spec["casBaseURL"], "courses": courses,
    })


if __name__ == "__main__":
    mode, spec_path, destination, *rest = sys.argv[1:]
    spec = json.loads(Path(spec_path).read_text())
    out = Path(destination)
    out.mkdir()
    if mode == "course":
        course(spec, out, rest[0])
    elif mode == "release":
        release(spec, out)
    else:
        raise ValueError(f"Unknown packaging mode: {mode}")
