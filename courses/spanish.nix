{ lib, series, ... }:
{
  id = "spanish";
  recipe = "mp3_8_0";
  tracks = series "spanish" "mp3" 1 90;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "spanish001.mp3" = {
      source = "7371753636326d1a6eb2b4eca5b0be518b1a6a987168a60bb65114a9bab79953";
      computed = {
        hq = "23f776f891833565496ef88774fa97857d5a1205e2cbae2190eeb8ead2f2b59a";
        lq = "8c2585105418e41c23e9eac78ac96d22195d87a7cedad9a655e64dec5dce00ca";
        hqMov = "2e7d995a3b306982b049951f0e0b7f6ec0165bec55bf602bf8a23da67ecaa7bf";
      };
    };
    "spanish002.mp3" = {
      source = "120172240d74388cd39ed3f0f89316c69bfc8210a09e92ee0f5d53a58557b938";
      computed = {
        hq = "b199f1c5f8cdd793d870e0269b16cf7557b6e00ec39957e05ac03a7eddb51a1b";
        lq = "30956e65eff0986c008543115ae7d8931267a3092038e8d7848ed8cdc24861e8";
        hqMov = "c3c908ca76d7f074d0d2d97b48a1f329156bf3658b5dc60f6e276449d0026deb";
      };
    };
    "spanish003.mp3" = {
      source = "bc585bb5865be826ad770861d353097d816de46843791a17187521f055c3b4c1";
      computed = {
        hq = "d64ddf323a760b71561f995194f44ff252644903cf6b463b02daba9c07c15b6e";
        lq = "5ae481370f7b05def8ff8083d933e318462c07c3a0f0217f3e62c178917c4f61";
        hqMov = "a856374032870d96315d947254b4392557ef494f4adaa70615d1e874f0d9f3ef";
      };
    };
    "spanish004.mp3" = {
      source = "32b77cd84c4442ebf92b1ea9bb61468bc42ccb2cd3cfcb807db189d01a1afcc7";
      computed = {
        hq = "8d648e6031de491ad1672c3a6388973e79d1b5ee71a8edc020afc3a0366d1e03";
        lq = "af32f548baec0ef4fda27e9239fa0af7935742c938fbeba96c0ceae817d98f4a";
        hqMov = "ec92913b809c728e9ae51428b622b2014bc90cafc475e1dbc77d4c6d47ad6dc5";
      };
    };
    "spanish005.mp3" = {
      source = "9e545bb184b17236c2fc1d4a3429dc6be5a7fcf764e085831a63f7ccee2cbe2a";
      computed = {
        hq = "bb2516948f388080ac1af47fc8a7628df183ce109807ce17f48ea2e95b43a5cd";
        lq = "b903996f0d125ee18613eb0c0688549d63af016e28f84e99e843e7a79be62c48";
        hqMov = "63e3874049517861344b9ffad661b88afcb69dca62c2897a8ff4733b7d40b184";
      };
    };
    "spanish006.mp3" = {
      source = "abadc98510497a067df9a3b55252ab51a37bfaa8d2343e4aa06360d290fb85a1";
      computed = {
        hq = "7c23c780460d660d37ee94ee52b9670dfe077402ae5951aa7e09740e81c39bf5";
        lq = "16a26591b2f26ebe83f0acefe79188c2ac0ff5ee3a8c60f60487f908a67978da";
        hqMov = "c58cdbf0778a778c6fa6aed46e9632d378fbda1c749e6782516838b5a60f5c8d";
      };
    };
    "spanish007.mp3" = {
      source = "f8eea0124a7cc9a249689eb0a9a95fd7900522c7b263348ac062716c170ab4d2";
      computed = {
        hq = "5efa9e59b21ac16d061129fa90a69cf4a696a54a276815e79a504b84221fa50b";
        lq = "86208c54e3082bc998e07aa9d5177a9591cee600b44001063838c82351b2ef66";
        hqMov = "1a96aada57856ff4c6eff04efac64f2378f4b38fd4f78041542d6d4eb2806a23";
      };
    };
    "spanish008.mp3" = {
      source = "13991381789f3356fdd554bb8f01b4af200843343680048b5d3d056dfe4299b1";
      computed = {
        hq = "cc42bd90fde6e99146d2d580647d48b9e63ce15b9cab9a703023e07075d757a6";
        lq = "efe06d47305bd560a60427da74de21273c1163f8590625b2b07fbcb9ae989b91";
        hqMov = "2eec4f60228e08386d1dba716730c39d6b6b2c4252009347b003283224659b0c";
      };
    };
    "spanish009.mp3" = {
      source = "7aed4ecf21456b7496cf3e03ab6396d80daa60845586d4f5430988f8b8471be4";
      computed = {
        hq = "0bd3d79a61aac4c2c4ea3aca8154a8b0f1479cc99ff7d6129b1abcc1c114d707";
        lq = "b902877f8e3d7a2989e90e4a2f9475af05fd23389dfec033b13669f61db880c2";
        hqMov = "62e8198d2595ee770c306e1c1bb9e03241b40a0495e7ef761f81472a09624487";
      };
    };
    "spanish010.mp3" = {
      source = "8f4fb97a83934d55704c2f3b98d5e5f235736c3cb831fd1051ff8a0e2f53b4c4";
      computed = {
        hq = "0ee5dcd3a6533b25344da56f66edbffee00ab9a85e3802bae1375d6930aa8336";
        lq = "f2d1eb14d89de6d891d70b9b8e0ea1c284f713c019c871870ef607c14d983ed9";
        hqMov = "1f336d13aa2874ad9f6e351ce1f36ce6a21d06cd16ec88e65245b56cfbcdec1b";
      };
    };
    "spanish011.mp3" = {
      source = "79e543e225c6a5056a839328a201e01c889b34b3dcafb52575e60e619b96ada0";
      computed = {
        hq = "e0996f582bc5a69153ea4f05da93d765c830b50e131b7aa793825ea165a44937";
        lq = "6311f9a0d05a0df18d8b05f6450538880f1a3ad4113abbf56ea97303477779d7";
        hqMov = "d75dcae8885bfb0ef772f13634e9b843a2851409208306b5b055d57d3621b612";
      };
    };
    "spanish012.mp3" = {
      source = "37ea0a57c962fbc3a10a41606fdd968e3b479d97ba137890f47618503d267ac0";
      computed = {
        hq = "56e59312b0aa35baa41f64a7e17b2b627041ca1801a7bebd2ad93cfd0307be3b";
        lq = "bf3f3bd6dd6971df36047873bc593b53a4793eafef2028066f43fde0e4ef82ad";
        hqMov = "239e67d21444de0b141d147117af25b2576a7dbf592354f5ffafcac82e3f15e8";
      };
    };
    "spanish013.mp3" = {
      source = "dfc1a0e37ce36900902ad16fc9a7721d77ab033b6eac88015ac3ef9b203c2b13";
      computed = {
        hq = "7e90a0c5dabd99bb3c0fcd6e630ceddbf7ad01aa28229c6013e0e29a4d951058";
        lq = "2e50cbd08ba1a1aa100140af2a75361d76aa7430915114ef8a64ebc0b4c78a82";
        hqMov = "67c53a1a699a133f18b3c438352eeb67751e46417bc1ad85fd95db7085842f5c";
      };
    };
    "spanish014.mp3" = {
      source = "317908f69deecc64a6ef720546e8f8120bb697b5aacba0753028d5dca79a3868";
      computed = {
        hq = "ddea8422837f673b7e9fc2e6372c2b932ce8d8f1d74b1a568c39dd0f1be8e2c6";
        lq = "8988f9aabbd9346eede7ae6d68729dd1ec53b3bcdd444302470fd9693882ba92";
        hqMov = "5377f2fe83fc59d07f22953890a0f9d78f04a74d516ff3a2f2c49d3b0e2494ab";
      };
    };
    "spanish015.mp3" = {
      source = "a8ce071df88b2075a4bbe54893194d2e45ee956a29c1241c8f484a6453b92eb7";
      computed = {
        hq = "a40881006cc0491f590e702dbdef27d9884415941f7c222a8d742d2d4df45fa3";
        lq = "496b072f60b0b122303f0afc26add70835c35bf56b1f2bb4a10507b3537f2b71";
        hqMov = "b87fb1fc3c2ceea56241f97bdfff10e7c2db0c84feca7c7c8e03b1fef87038a2";
      };
    };
    "spanish016.mp3" = {
      source = "a3d606fadb64168b5a62f158cb4d84e8c05a9aeb366e4c9d2b85057c97062f25";
      computed = {
        hq = "b5ab764fd952a381ea372c0de6e23688d33e77df1c6ae57986d2ef3946ea4e04";
        lq = "85e3d62421c0ac71edfaaf33741ad97922bb89a42e7a1d67c598b11486cfb532";
        hqMov = "293a7b054a7cd9797d20e7e81f3492d2fb90004de9b29e10438ec6a6c020477f";
      };
    };
    "spanish017.mp3" = {
      source = "d1f89e70100f88bf43e577976645ffa3197be57798e8e118f6c95ba0a0baa835";
      computed = {
        hq = "c22872c6f6e22a8f21b523ac2a938f4c0752e653249e56d3d974e1f246d46a05";
        lq = "302f6a46841401a639e574fe531d8a1602dc737c2b91603327704b45b8edccf1";
        hqMov = "0af1dd3b82786704e7b5b2aeadc09bb25e2c21fc353186bfa3da0fa7915cf41c";
      };
    };
    "spanish018.mp3" = {
      source = "8725319b359e423f05e576540b9b2bdb05754375af09cf12d06ac7043f659bed";
      computed = {
        hq = "eff505fdcf4ffa92defc8f864799aac2f45fefc1ced729a66a4f9ecdeaf49743";
        lq = "0cc27b3f02286b38f28d06ac3789c04b95435ac51245f624168dc6f58f08d815";
        hqMov = "16027125b4591cf6e6e75311393bc101837637e58c1cb7c8300e61ddcfc5434f";
      };
    };
    "spanish019.mp3" = {
      source = "af8a48413dcb54286780b9d3ff0cef3122d44626c5e9d8211892822bc2652a19";
      computed = {
        hq = "624c5258a2442b9af26b7f2a9a0367e9bf970f4cb602832a3d51309a521382fd";
        lq = "da94e73eca66ee89e9da4a60be6a949e871cc9da682acea184a3642cf344ebaf";
        hqMov = "5d843b57f16eb8c66c972a7bd7ff2043f06be3864f30e3845f0c44dd336e1c79";
      };
    };
    "spanish020.mp3" = {
      source = "e432c32232519ac48be96744feef463626a41128506a7c57541b64ad384e7082";
      computed = {
        hq = "8a06ad932b94fe78ca7d351ee5625e2a6533bc619cab7ed0606db62fdbec196a";
        lq = "b40e1e00e3fc9a280c78f5a295d788eed2c0ce67a51566d7fef6bd5b7e932aee";
        hqMov = "ac62e4fd6b67cb88ce9302cf4f2015b4563b5fe8cb4e849a8316ef2098969ae7";
      };
    };
    "spanish021.mp3" = {
      source = "40dd9eaa3c7f9a3f2d40d17cad2e92185afeebc909b045a6deef3bd98f665ff6";
      computed = {
        hq = "748a50089bdc0316cfc53ddafbc5276704869f48d25edf5dbb8af9d381393c70";
        lq = "a03b6359f9f1c259bd23c1e0dc68803487a31374caf8d1d667447829e912f69c";
        hqMov = "caf0937493db92b8b898d9a6456433cd58fd65477b352de392108a4bb6025d80";
      };
    };
    "spanish022.mp3" = {
      source = "a095c0fa7ae203c87326ff3001b57c3ed892000b6ae0e96dd65497d6ff6cc2df";
      computed = {
        hq = "b35535830e4c9e927acd00d4a0c5b4aa552d55c7bc526810f8eeeb73cddcb595";
        lq = "f0d10ecdd7198e80d01aa6258e45c26bf3424ad38217e7e1560822a6e60b9f66";
        hqMov = "79cba961ffb68214b5183a3746f264e42b4acc737f518c3dd2b8ff4443bd4165";
      };
    };
    "spanish023.mp3" = {
      source = "10872e56c68da4b6e5d6d0ebc921a980aea03852708ec96467d746af0f13f6f0";
      computed = {
        hq = "3ab37d8a2ab31a9916f1d5a08a0b496daeac2ad7a7e983b242405072fd848e2a";
        lq = "89d9b00e937d847cdf249abe9db83d57b6801a2f024ed177d67de7bf7d0d0bdb";
        hqMov = "f6a9ea27b897c3cc029e122a3ade8868c36ee84077c32bfdd3fb02fdc7118fc3";
      };
    };
    "spanish024.mp3" = {
      source = "a9a5eaa4b6527f3342f0305698bf61e9eb33f4adab3652e6b5fc7acbd7927baf";
      computed = {
        hq = "8f11c029f840a03f1ac607003f814b9d8ed33b73dd65875d2d8f1784b2837283";
        lq = "6e2f0d9cf99906653e44825dcd8c55e14f1b67eca903a1f3b450a3178bab4ebb";
        hqMov = "ca06388148b8b8dce9cf383199633e7562fe767a0dff03e00f4db26cbad4ef96";
      };
    };
    "spanish025.mp3" = {
      source = "be463fdb4a55c8b2f4bd76991a9bba50c9eb7b126f93a8b497cb1c3c62872458";
      computed = {
        hq = "58a232ad5c61706bc8c9c8298586164bc7f03ca1c54562136ac3e98b6c35d37e";
        lq = "6377aebdb6237f18af79b326d00cdd8270018a9766a79d1232686d13f70a3ec6";
        hqMov = "5013c6d682f9a48e5b8548a4ed831af0bc500978ab226ff815f6f010e7efcd40";
      };
    };
    "spanish026.mp3" = {
      source = "ed6a649620a43f84e7fb4456b00ba80a6c15c9770f965fd8ea0ef5c8f25b73e8";
      computed = {
        hq = "446b3db9722928f1c21b677931accfec480c00e04852b64522ef8063666040fa";
        lq = "b6aebb7faaf767f8c695d725d8dcb587d8caed6f3d128b9ba2a90446dce913fc";
        hqMov = "9ef9fbb5b903511b2eb7d5e5173ba9deb78c345d2a046e551fadc760bdc50ac5";
      };
    };
    "spanish027.mp3" = {
      source = "3b89459273bc51c567e10fbb0e40847af084a538671ac0f5e8b4aa4f36d39b96";
      computed = {
        hq = "37b51a24ced6cfa3b51f79dfb073439a8d106065dfbdd59129f79eec38a4cc94";
        lq = "64176481b0d48b6da73738fae8f64dd59c9b64d31d53fd975c23ef59f5e8f17f";
        hqMov = "b63a805f52449d2eeddec75feb041dc6b3ee0881aa1701e93d847fd1fd29acae";
      };
    };
    "spanish028.mp3" = {
      source = "37e32b68f4afe6c2944850b3d9435b9453dbf7931fff42aa202bf347007b216a";
      computed = {
        hq = "572b8a064d279e958fc4896168cd00803faab4e936e750602f356000de7fc3ac";
        lq = "237a7377392e1a8240e5a14a68b59ba8134f9e28eecd7440faf9ae9a194d1575";
        hqMov = "86970ccac57f3fc4f0ce03f00f9a513ae10d79cac20981721df4ad311e90f5fc";
      };
    };
    "spanish029.mp3" = {
      source = "50bf2102f334c28e7f0c68c7a7121378b87ac3380d2409dcde617107639a56b8";
      computed = {
        hq = "dd832f98478f5009b1bfb8cda47647f3e3aefc97648d52e36506b97b30de80d9";
        lq = "3e0a30e8d8ee1a48315e2efc4ca8b0cd8ccbd34cb3fddc244040bbdf1d5c2d9e";
        hqMov = "dc1e04e32ae6b6b05571c54e3c0b730b497222467aacad2814faaa84a6c6880c";
      };
    };
    "spanish030.mp3" = {
      source = "b4dd6e21c47ddd6e1757000af088a1d7176acecd39975099acabe3752c44f216";
      computed = {
        hq = "cbe2b3b09060e4d5a129f9e80bc23ec950136569bdb6b55ab4d962b53545fea0";
        lq = "73ba46a5258c09b2b1695f1dba201880be18a1e0bfde8347b289b555772d5ab5";
        hqMov = "62d536c3cb26d648b733954f150b38d2df66a0e56d29e395b6612b6111f495b3";
      };
    };
    "spanish031.mp3" = {
      source = "ddc7d61b86872ffb8d57f45fa660e05ab22eddb1d1495b2bc5e728daa183785e";
      computed = {
        hq = "26729f0229617082262cd17da5dd6c74a3de4cf1520b4e5a33a8baae4e8f877a";
        lq = "6086494c96f343babd3cef5e0276265791939580f95b86142d218fa7f396ca61";
        hqMov = "8c702ef706617dfcb5c17f73c8734718bfb56f850d26275bea02f9d61658f9c2";
      };
    };
    "spanish032.mp3" = {
      source = "78819c746110d8daae2017bbcd7f8eb1f924d267473e603e0ae85ed95c1514af";
      computed = {
        hq = "334bdb4222d83cc79a4af02d6fd9d84eacbeb755cff5f82282f761104909e099";
        lq = "ec0c86f4b6c569880fccc3b56b3d5a12f85a5f1599c278eee81e4d5a3b1c4b28";
        hqMov = "3d99abbcce988c974901d01bbcc65f52f70f29c7c5408239018e03862e6402fa";
      };
    };
    "spanish033.mp3" = {
      source = "143fc5fd2265028cc7c82853e83768df45a4a3aabf580e32a9ab5b7651f59aab";
      computed = {
        hq = "f5669b54c1a5e44fd4eb3467f8a599a03d0d4aa18d3c00921cde4e2e2389a62f";
        lq = "d85aa5b980c91b0c3c423eb35afc701f6cc10e7f6685d4b40de8f6045547256b";
        hqMov = "30b6320452ec0a53e4d2eb9e528267a4da64217753695265a06864827ad75bf7";
      };
    };
    "spanish034.mp3" = {
      source = "df23179a90b4d21461d2f04714ee20f4bd4f3d13515e45e60b33aafa94a0f55e";
      computed = {
        hq = "8b28a740dd2a9243a929ea93acad658fc7cf3fbcf29d3e0e68f38fcb3f1bcfa0";
        lq = "2698d2b2d019445565be65cc69387015544be6ae7bc191f839d9c56e79b59267";
        hqMov = "3a6ffb8c8f7a1682e0f3beb6e96a91b4dd95c687f18de1a3866b84d167eb0dfe";
      };
    };
    "spanish035.mp3" = {
      source = "acc75c427a63bc344e3641a67ecf0301c5ceba155ffbda9365dd045bc6e164ab";
      computed = {
        hq = "e7e5754aaabf022cae64cc7d799e799671909e62da2d553450a9d65e952aa82c";
        lq = "31bc0c76f0aaa8d5cf68d87773a4a4d7b93f204bb411d6c085a5247c0f2c4dfb";
        hqMov = "c391ca12a22075b69ce30757a257d6a2da4bc62ced1b6edcfb1798a4f5eed5d4";
      };
    };
    "spanish036.mp3" = {
      source = "64f1e89509363316ac7b68c07f15c0b5e0e11dadeff08570434133cc2c930c09";
      computed = {
        hq = "4767cf1724c52c338a2617fe0f7a97ae71608c164e3df5ff201a7e6578508b66";
        lq = "7725fe715909c0ed37719eca5c5e75ab551cda010452e49dc35ce4cb798d2f1a";
        hqMov = "49414daa63a41df4a2b3ad0bf236509f89b4eb1ec1a88441bea5e09d41b21270";
      };
    };
    "spanish037.mp3" = {
      source = "30503ca0e7745ec203f8ae3c578e80511611ffff44c4f4815fbd95ed72d62264";
      computed = {
        hq = "1fc0df742fca3a8780673bf73e2601c30aa377c31b960e193b0671459ca40d6d";
        lq = "f80aa97c98e77f7573a71d8191f121c746e791eb8fbe2c434965f75d5701c253";
        hqMov = "43d4e23c7cf719b010dd9a47f81d6a5e36be9fee82d7feab11a550daa9e20aeb";
      };
    };
    "spanish038.mp3" = {
      source = "320386da819799d0374ac15ee404c71a036ddf98c348fa1ae93b96fe917bedf9";
      computed = {
        hq = "e7330eddf445a2b20222463b589c941c05fcea3b8d4bfa3e17c25c68cafa0f95";
        lq = "968652f51662c0e6988616c47f1687a0a57e9c727ba0e3c1bf3825b1d0cd4676";
        hqMov = "b84ad9d6763d92422473b17a10531c5d1c15cf25c9d09956f30a0aaa382f78f0";
      };
    };
    "spanish039.mp3" = {
      source = "89ee6268c1a578f360c926da2399544a55daf1c93d829b0c64dc54921c0c19fb";
      computed = {
        hq = "33958c6a022f69e8ea0d92f350ade3315b949f8f534476af977cdfab658d25b5";
        lq = "196f57400ae8d6a2555974324577b4ca96b8ed01777332deb4faa0fab94cb493";
        hqMov = "028648036acc26117bf4270f79e370ba5b5bb6b664d70e9962809b3b9747f4df";
      };
    };
    "spanish040.mp3" = {
      source = "fd6949b74320b1047631031b08b1075f9117b1341f4722ff4307230520409167";
      computed = {
        hq = "38a130ed8c1e6eece35bad5d401a363c0a9f557cb5a1543ca044893c49a3b910";
        lq = "ea8f7f0f218f757e8b538f7bf367db2005999c0be33424cd29880aeba9ea6627";
        hqMov = "e76c29f57cf73f548929caa464278c9ecdc86f106c260fe3ab8a60f0b3b590df";
      };
    };
    "spanish041.mp3" = {
      source = "0afe64bf119303c2b7ccdbae97e3cdd4266b6a7d3e205d2c664e65971bcea002";
      computed = {
        hq = "aed38676d11d5aab739de02db8b096b194729ce05a18f81d1887c872217ab15e";
        lq = "8e68fbecbb0389e5fdd9737fb8feac9d1b4309addc06be769cbe5401973c8b4c";
        hqMov = "7d89f7f55c8de2eb5fd603cfb2fee0b9165a1adf6cc149916762a33574daefb6";
      };
    };
    "spanish042.mp3" = {
      source = "8f59637c5373c3a20a0cb911a7a7c4e87e8584e2bdfd4e61c3a09b592eb573b2";
      computed = {
        hq = "5eec4c543f25518976be6b4ec26d4fbb48d12eb3b5038a81e44c31a1409736bd";
        lq = "6746075a4d74e44ca79c7a4e2a8d2a474f5ec84e4467ce8013d16e0ffa9b7729";
        hqMov = "f6f92182c350f3809f592ef69d737a04fce027d9a12464b4b577c0e83f98ba7e";
      };
    };
    "spanish043.mp3" = {
      source = "3e16f9f8de6994c6a36142aeb27f02322d375575c12bcabc3b3b58e7d58a3a22";
      computed = {
        hq = "2bf165480fae5bd9df22f743312c5a8e80af8ef6d1d28f494096b752b32a3b7a";
        lq = "0992abede1661b3a2a7ae4fe7363d414814e4a9e895dc486796fd7b4c724ac9a";
        hqMov = "a45b0a87bfaca2061e9b159a7e20fdb82e974176666420eb00ad51d843115c9c";
      };
    };
    "spanish044.mp3" = {
      source = "090b2e13a5156bb2dc5b7b1bfaebbcf602e670856cba91421a34746b645262ca";
      computed = {
        hq = "412a655e847ed46c0149014b7412ef3097d8d690552ee29530823c0bba12c154";
        lq = "aa87ce5a34d64fcb49676e67e28173bb5a2f70530f9c9b39928ad2b98d0aaa8e";
        hqMov = "f20fc5b08ab9b628adcbf55234ddd342e4b7572902602179c5197142158df670";
      };
    };
    "spanish045.mp3" = {
      source = "a4120db573bdb1675b3bdf85d90ab36ce33937ef746ccd881c0dbeaeb84ef4dd";
      computed = {
        hq = "ed6ac6a71e4056a9ae1ed059da23117a323c20f37f51131df6c964a6046b4082";
        lq = "d744097e05e5aee4457f8ac659fb76514c30ef885a6f6c825054da4389527449";
        hqMov = "5a163132108ef9f39ffaefcf57283b7041d23629aa4d8c96c7322e4dc5746ebb";
      };
    };
    "spanish046.mp3" = {
      source = "a5a2214d86cab3f9d6c4a3382185c036312f1c8817d547947b0db8fb8a850d3d";
      computed = {
        hq = "7f720b6195a4c731b694fb09507ea287ce2127f2b130e5a86dc6218c81b57405";
        lq = "479c73576569b2649a78f1a10e5879a376a3303fed10c4572105c5cbfb368d0f";
        hqMov = "e63d203b768b4e082bda4c06901e8a2262cae0fc1c04ca81d1550ed424cf1ad6";
      };
    };
    "spanish047.mp3" = {
      source = "2fc61ed31dc66e6f76a061c20802ff61c6705a6f63c9e18c647526f434121e38";
      computed = {
        hq = "05ddcde5c17d12fa5a26cbc9189c1b2b69eb6d5c6c6a8f691a78128fb9411771";
        lq = "3f94309be647cad7ae09df3ec47af026888020aacb5ebd7f1a67cb97e6fdeea4";
        hqMov = "32959c78b4889a1449b8038a39c960f16d434d309c3e65a498dfe29a4f6df849";
      };
    };
    "spanish048.mp3" = {
      source = "258afc8a6b1463ba345fe13ab43517785d69bce0d970e08d403c406eccb1d6e6";
      computed = {
        hq = "e705c6e8ba7ff090879f892cefd17d6b539393b0e9b7c8efb34fc54c1e01c676";
        lq = "fde77947aee9ecd843446690ea0f23540bbcde293904544c30b45c658d1fed5d";
        hqMov = "47ee67375790975a2c5d92631f59a9d54e8261cdaea4fb4b6d4506023c3a54bd";
      };
    };
    "spanish049.mp3" = {
      source = "98da13f83816b951acc75d2f7868832559ad7105e6c4511eb43e75fe73044e34";
      computed = {
        hq = "f2aad94db01db7a5e9f22fbe0626a5043d9ca803453784d8f51d16608c2dc31c";
        lq = "e8df010ae7d9e6cd403d9e302c2bdef5b0279c250485d555e5e2507950fb26fd";
        hqMov = "31fad60d6d4102068b8b569e289a4f7e47805722152e13feae17f6b91d3529c6";
      };
    };
    "spanish050.mp3" = {
      source = "e62b31f6c926181c6c71a70d6d6d2d462a1c9f326ada7cd96344961424a1bbfd";
      computed = {
        hq = "082c27de58f9f2c93a1c48400041d8dae56927e80fdc91540c74c758715841d2";
        lq = "01732f39c82f5634ee2eedb6c873920ae0aa2ceabf85e607813d4b1b2fff25b0";
        hqMov = "3e445cb4f0d92372412161ec995728c7e56f1c7d35d6ce9e31c5d4996229322f";
      };
    };
    "spanish051.mp3" = {
      source = "5be9e15961f4ca2099731ea9a878f62cc17c19580b4021717743b714fbedc3d3";
      computed = {
        hq = "4c2ff5cff7889fce5714ac717b26aa99876cff9047937d937fbb0925c18ad970";
        lq = "4ed462cea59b386fdc8a3b03b899d0b87298e092caa5365495383acdc0fbe071";
        hqMov = "60ec460aa5dc7c63b14a6ef8b21dd8182b11996ab0ce9b6e1131d11e5eac3498";
      };
    };
    "spanish052.mp3" = {
      source = "796897a814aa88918cc0807a4484d5660207792d7dfa5e288f4800985e8c723d";
      computed = {
        hq = "4df5a7dacf931fc125cf70d6cd1a41329b0bc879ada7e56d7411977395332612";
        lq = "43f81a40a2b28302897918de0bea4f793897304e2d78057cf749b117da495b30";
        hqMov = "78a51b5b2a0462e8a79294ba595cce4042dc2f71bc2311bc654b8e97ba85abb0";
      };
    };
    "spanish053.mp3" = {
      source = "066b2245fae04268046549a651623f32c5d010abb5f38c709f592b89bf6889a8";
      computed = {
        hq = "88351aa1f921d83f944673d643d8b8d8aa9e91286956e0ed1077f57d061afe0c";
        lq = "37b0d46463b0c0def629eee6fb57661ee5c4d0c54942b9122bbb9a3382947da1";
        hqMov = "8ec68859b7d520ba7d820535db9ee15d24a74d7e50369a3ecb6cb64d63c7d034";
      };
    };
    "spanish054.mp3" = {
      source = "d2eb8aed79920eebe53ce8bfd88c1e7543e96a21313530b7f3d37d39feac4cf6";
      computed = {
        hq = "6a838e8e81aba4292d9253296b509249e7681f0a17665b60552a91bfa25ebb26";
        lq = "e407c630b9211067baa327675375178b2aed6e1a8eabd752cfa8a51456ae8a2d";
        hqMov = "5076186e8519f9fd3dc8a7eebfe89fffe33300bab12821409c3ca1b167c933fc";
      };
    };
    "spanish055.mp3" = {
      source = "d4a5dd0d65793ab9c8d2d5712ceeedae89d18748bb9376e8e3991da4967326b4";
      computed = {
        hq = "c19c9de45da906ed5dbda1416103975356b6c2983686c634063cc214fdbe036c";
        lq = "9cc5d96731d040a1ca54d79631667e2f758c21d08ef6016404979f1060d65c1a";
        hqMov = "7cc2bd533795e4da0372283f8901a6bb5980af044ea07c6817a44850eebe2c09";
      };
    };
    "spanish056.mp3" = {
      source = "4121873f61dfbb7c73e362c60f4b465aaf9a45a32328c3bd8b38ca5200e59f26";
      computed = {
        hq = "a5746ec888c9004821f6ff90e394af0835e5ad3abc1ab48af299856351915562";
        lq = "163e56ee54d6b1bb37cf0d7b120c131ae0e8fd0202e0f53b58348aff926bf8d1";
        hqMov = "ce8e1e76791d8a2c5cc364dde5a2f22d192f78414e5dd04c740186651a02693e";
      };
    };
    "spanish057.mp3" = {
      source = "0bea6e2e2f5a099de4f67560d6a6dbfff715d5b93311b9295dbd7c1895cc6dcc";
      computed = {
        hq = "bccb00a5765f2a41899ec6964915be760286af5b31aa94008c7d5d23a40cd5b8";
        lq = "9df965511c9c57439c42e51194f6ef8ae0086c03b8c46dfd20f2ab539158f650";
        hqMov = "933ed2b54f452692cd981caff649a517bbee1e3f899a00e0408d2328de9865ee";
      };
    };
    "spanish058.mp3" = {
      source = "4aa01edaa8893d3279701c272e4ca655013d41b0c65fa9a00c16c3b935a6ceb9";
      computed = {
        hq = "9f3b61dff7096315f3f6f80f2f826df05f2ef295535d3b31549c27f889bcf529";
        lq = "eb8b4940263572c6e1d4360beee7bc33b8441e47ee84ce871dca3043277c3f69";
        hqMov = "8fdadb62abdcaeeb5e0cfa99a79df44c1b59ad7efbe74068be8cc75291259fc3";
      };
    };
    "spanish059.mp3" = {
      source = "bf9f872167b06720e64e5cb31521ec57c63b5945fb2bec229f6ed97f0f4e90a6";
      computed = {
        hq = "13949fa8a86541176a877ba8392ea8ab32569dced045b0105e5e8591ad0e2cbd";
        lq = "cf907580615777871a4f26ccd7275f8b36150bd5ef05a0d40682291b0b3c70e9";
        hqMov = "843d21b63535216ff1d72b31656056246e173b490525f8b9420443a0cab63d46";
      };
    };
    "spanish060.mp3" = {
      source = "c699d7a04bee5f106c73a7dcdf4acf295e4d60810879c2c7bc416b66002e628a";
      computed = {
        hq = "a66d064f065de8102324308dce6331db7671eb305d25898bf6a86a7e3f843bb5";
        lq = "275d839dc18397cc6d3ef652a6148548589cd1f7a1c0a446e005ff6df98b7882";
        hqMov = "2339529a018e435cfe3f31736147955a11ea6e77260ab54c28a1be7592c84a9e";
      };
    };
    "spanish061.mp3" = {
      source = "94796298b53b78d4ee14546a2232ce2a5e477600c23a4963d5e7a138513d4ed1";
      computed = {
        hq = "7cd2d0846e3ddf623d1f7f2ce14281869eac7478be873f7de0c5003419592be0";
        lq = "bab6f14600dcf1958adff884d9140f31a0c5214a5918ee0e133adb660d9fdcb5";
        hqMov = "42a93dd36d918b3af99788fd8a1289fb4cdd3177da679f4633dd8fc8e44806ed";
      };
    };
    "spanish062.mp3" = {
      source = "b0c7ba161ad4bb41b18fd45a087cd71afdc2cc10a3d98a9068020ef3d41ed5b4";
      computed = {
        hq = "6e174994a0c5798953f35a872f1c14d458785a38192b25d1f3e221c6b922c23e";
        lq = "07a2f8d06278b2aa47d8aa11eb5cbe48c37d25a3d9b8d47196af252045f48527";
        hqMov = "8429902484d10cdae291995ac1413c89aec63d6228faac135835d573c56ad437";
      };
    };
    "spanish063.mp3" = {
      source = "7ffbf3cb9f169937dc2eaec928afe0e90d2024f51593a7eb989d7743d24f459c";
      computed = {
        hq = "ea4e36bde2a3199f6159cb2692dda122924ff40fe3eadd52af650e82cea49198";
        lq = "608362fdaad94c8ec7c10a150a7f86ac5920cca7d9677e757543c18c206d86cb";
        hqMov = "c139fd195a9333b354e314885f69be53463b5c218cd6a97b1bfb48ec68e4a9cc";
      };
    };
    "spanish064.mp3" = {
      source = "f4bde5e96d144419ed074503031e72eed065c7cdcf64590ab353ab89b7d089ad";
      computed = {
        hq = "469f7dc229b0ca2d5d7f68b2e2e6f0126013d0eff692d2f711c41f6885046c0b";
        lq = "6a07da9eeaa9487f4383dc83d1d5b24c467a46e295b31e7be77838f9d0a1116a";
        hqMov = "d30a1b5a4d93869e79e7209793730be4fa3269bd1b0ad9b7384c4071b5aa10d4";
      };
    };
    "spanish065.mp3" = {
      source = "e1555df1577a7508ec198065b45248fb011ab56c69f5974880756f7f3768d996";
      computed = {
        hq = "5db367b921e218e781a919c8517f177a1d2e7064507f8b0b0e7123d3050b5763";
        lq = "f56277253f4e98376da691b60d889df78b7bf66d7f4e9687c1f685bb67ab9d6c";
        hqMov = "a41f1c7875da67db3d2ee078c09a4f8a10fdb32e6754c43b60b9272aa63cb1fc";
      };
    };
    "spanish066.mp3" = {
      source = "91af0dc1fa234ccc7946142e037d7487c2bad7a21d0a64f9f902476dfae56e99";
      computed = {
        hq = "806696f5271c42ae36f9a00101cb276dca6af6f07bde6e1de35594d8aadef23b";
        lq = "dca6afbddf1417414fd79cedc5bd41980ea8e31065a9a318474badd8d2f85399";
        hqMov = "86dc3417cccfd3aa5bb7e0a55ffa026a147aeafa0e9b2cc21f52472d484855a4";
      };
    };
    "spanish067.mp3" = {
      source = "210eec8ed12860b839a02f5e9c89335a7b8d7e1abad4647c327f08276dcbccfb";
      computed = {
        hq = "81e0f0e2faa4e68ba5d759e96e8906270b87b02747d63b06e0d499c093efd962";
        lq = "eba898f0009fa46409e4ed59a47c0582bdb4c416d9a3c42fdcc772a369d35ea8";
        hqMov = "a2805dd714fd9ab2ca46afcbf910e15898a6bd619c08a4d29bc073ce5f6333fc";
      };
    };
    "spanish068.mp3" = {
      source = "750e9f5a60b6148af9d8c70d88d49ba971d797150614272887526a051cf68ec1";
      computed = {
        hq = "4e5994bed879f0508c6708483ea02f99a0590e3299f838a8ca4200b2c3ddf16c";
        lq = "d2611972401ca0c47bfdcc534b18c1c3f415f90e69fa4b7d4eb4cf7d8e737bd5";
        hqMov = "aefdb0cdc2d8919d0dcddc042a3459ae4242f8700ebe774a85bda22fd1ce9c39";
      };
    };
    "spanish069.mp3" = {
      source = "56e545d7a0bbe5e17345e18974c358d8ceee9b1f7c4ae79d3efa3086b9c7efc4";
      computed = {
        hq = "33654a398a2c60651b1e9146e9b6f1651b9212f4f9abee883a4097923c9f66c2";
        lq = "dcc705496f8251bf8010f765ab190f2d959ef9db62ddcb352aad94139b7c20f9";
        hqMov = "e560df9c6e4158d9cf26e435027ead679b98f292019035784af7225c6d43f275";
      };
    };
    "spanish070.mp3" = {
      source = "6e857b0d8f98611f2a1f91e49018460a5bd0eecd410a4d1fd89c4c863b21e86e";
      computed = {
        hq = "192c38d452fa2e634d08362dec7adb7fb4c0e156c024b6ac9e835d81770471b0";
        lq = "e3ffdfc03a856b74e0d789727d22cbb303a245f7df5f4fa93d4a881b74ff2f0b";
        hqMov = "d719309eee79ce5e47c266ce7f47ef8ad0e80916afb13acbf9236f3617409fcc";
      };
    };
    "spanish071.mp3" = {
      source = "69293a048d84a64ed1dad4abbb6454f31afaa82dba8a99109f1aa2454a73135c";
      computed = {
        hq = "150bdc48262a1dfe2f66e6602653732c52815f21157b3776c09119823b0e0f86";
        lq = "4e8536c4a5b263b203cb5c3e7369670f1b417c4abb5fda620b61650b7b3f87c6";
        hqMov = "eca7fa8cce263155329a4a60a08db6e29f7ea248f48f6e794f332bb5bdb8934a";
      };
    };
    "spanish072.mp3" = {
      source = "001e7c5f4a2d1e58308a42c9b8f59077b4f759454e83426b81df866fa39198c1";
      computed = {
        hq = "b5fb4d89364029891032382a309d266cea682ddd9141f9a30199257590c4a678";
        lq = "9f86fa41c3de5cb424546da3adb9c53cd34eb6b140d5f087f9ccbd4ecf1db9c0";
        hqMov = "c03ee21224b98abffdc1d991379337bf811e04bb5fc13c71421205822121dbb0";
      };
    };
    "spanish073.mp3" = {
      source = "54084eabe98a10f84e30596f418555362e57674c82c4bb0dca7fc8c5f06953a2";
      computed = {
        hq = "064922b3dabe5f756ac122b564dfef36fc70f97abf5ffbebd52dec1d38e4db2f";
        lq = "c1d66cff2abf394ca2468e1c5706699da48e100fda40c1cbba3a45fe895745fa";
        hqMov = "9239d38456dd8435efa8acf9dadae51bba35c37554a57f6a806f374a94c84d56";
      };
    };
    "spanish074.mp3" = {
      source = "9355f7fde890e1c079dd2b078d4ef10a6e22ad9280ba69347d07ebcb2f38a328";
      computed = {
        hq = "f4672612cf746aca65c26bf685b5841c90d6dee6b1a1b87b3a3becb7cbd1c5fe";
        lq = "ae772f075414d6def689d157076f8eed431c9227253e933ec90eb54d9828d0b8";
        hqMov = "6023fe5b45e77e1e46a828ec7978ec87d9d53492f7465ca134d5ef08f353903f";
      };
    };
    "spanish075.mp3" = {
      source = "54dca0040e5b78c21a6725c3ad6734ebf48f6ba17094a9be4c389c2a918dd2dc";
      computed = {
        hq = "7b31c76c10da02b9e60a41fc30d11274cfd0114817da226c5726a9fd2e1b1726";
        lq = "4d27eb9df595f3a26f2f08d7b77ef299441d10d9bbd83f5111d3cdf92f5ba711";
        hqMov = "550c5f5235f2d67ce25f71d1fd742e3b7aedca950829200b967d46183255e27c";
      };
    };
    "spanish076.mp3" = {
      source = "6c38f328695c44c545ce126d99e14dd235a1e1a7262ca7c5f55e73f4cc350836";
      computed = {
        hq = "0c2b9fd248b5322015ac03ea4850b7022108f2e0f3d5b2671b590727967cf4f9";
        lq = "d94fc44f699926ed4b0139d4864bb25577bb1bb1216a4e959e225b1485f5391b";
        hqMov = "7de2ffdeff95d1f596a1bd92857c04be73632317f2a8c0333b3e42f92a0173eb";
      };
    };
    "spanish077.mp3" = {
      source = "21a92a58f4f67154f9090b6129f260eafac25e1f27aa9e322fadddb35c4d7d5c";
      computed = {
        hq = "a3759d4efd0f1f16ad6ee947f733ab22af717b7745fd35dd0e2b17b58098d6a0";
        lq = "ebc394a940e808c807d495c4769e8a9424a69fd8c805e81bdc29fa3b48eea5a7";
        hqMov = "f8f4d10dae6ffb5ec9db84a4cefb96cbc8fb55379cfdab408d1120bc5af1d7c0";
      };
    };
    "spanish078.mp3" = {
      source = "7a71db64ad2b728540371530cd62fc26e3e30ef4061c34df09c073e58622be1c";
      computed = {
        hq = "28dd223b230083656b22e2291f1186e2f980bf60d6a26e25c86cb944f8f0e169";
        lq = "345322f91f093daaafba0b72b906b34f8c3fe12ecbdcad6ac08dff0b17c030ee";
        hqMov = "a1b44a6497a88e89ffd7d3fe2608c22c7a5c7de3d6978dce0a8c185d6c8b11eb";
      };
    };
    "spanish079.mp3" = {
      source = "48b7e51678609f7870ecaec6c8f0ae21d9caeb00ad5c68a9edd511147cf8fe86";
      computed = {
        hq = "6b39257a963702846b0e91c24b48633cadb13db02f4b2186a1af22fc85d509a4";
        lq = "b7091331f1a41846a05ab4ec4d06f0c1249636dabc88a7d165fdf025306b6c6a";
        hqMov = "9524233c4f2e3dd8b71d1beb0bc946e66c56262d1f90048f9a786d48f72f0417";
      };
    };
    "spanish080.mp3" = {
      source = "97e224d2c515bc2254b3fa6f1445bf2376bb48cd3a001744999443ae2b690f89";
      computed = {
        hq = "a56c6ee3529a04fba18eede841ff05ae464d73f22076f8dde27cdfbfad17e596";
        lq = "5cd32d0ad8a33ca90083d31bd88ce5a822f827a3666e213a7bb5eb040d18f27e";
        hqMov = "9c095f7fb4090d1a0f5c34ea0e070fafef4684a1832aabc44dc1f46b13e4a106";
      };
    };
    "spanish081.mp3" = {
      source = "ed997b8043de8e1162aa91720f7e8d95a18ccfc38698b5e4fad4866e1fc34dfa";
      computed = {
        hq = "a4c3a64e0ba29fede2bd1a4e0c983c750f7a815f8f6ae4bf69879deb86c2e1a8";
        lq = "0d05ee2a6a45f229b4aebf8464f8a81272358bd2e1e772d404dda6fa9b05a415";
        hqMov = "49d9d5d88837eabb2725891af105179836ab62b3d466d4634ce6b3d155d17629";
      };
    };
    "spanish082.mp3" = {
      source = "0093408300572f6889cdb4aab94b4148e75031bb66b740978b1430f0eee4f165";
      computed = {
        hq = "40d47564925d0beb5cc5a02de044a09ae692c6206207f2442eafd151856d0f3f";
        lq = "b8ea2a85b1342eeb5ac0b84695e23237bff4837f620566ca129ec3cb36e0c863";
        hqMov = "556dcabd2d33c4c30dee65b3e46538da84aa3caa908467c8ac609dbc3ef485fd";
      };
    };
    "spanish083.mp3" = {
      source = "72becd9a0435d665baa23d12a3e8b19450ab41efc695b44936e3fb15c65a28ff";
      computed = {
        hq = "ff1593f812deb0a43fe20e44da21971be56bb05e10ede6dc6c23a7d6f2da8f25";
        lq = "133ff2adfb2b14b16cc5170698347392eead8ee10819e0d5223301bd9d622a3e";
        hqMov = "42a29e52c122fb4e901957a8acdba5c68b00de05cba310c18c52a2d538558170";
      };
    };
    "spanish084.mp3" = {
      source = "1b7fa66d984acce76edccadb780f9ef79c4dbaab12e83741a67ed42a2ac115d8";
      computed = {
        hq = "ebd6b739f812be0cf41712f47bdfe9a6c5c9ead340f989e9c3b562f62c90a026";
        lq = "579beec7c20c201116ebc1e1945c6abde29ff55c2cec529076e8f78296c04dd9";
        hqMov = "dd344126e358422912a63c905f495c8e2b45027643e752291183f7010849275a";
      };
    };
    "spanish085.mp3" = {
      source = "d2ef557d9e76247c42157c38efe256774d352cb5f72bf087bd7945890c62b13a";
      computed = {
        hq = "77fcf77370bcb8ff2611a9bef3c437c9c3d4cf6735d0e9ceb5a0d3ca251c839e";
        lq = "126f706691fdc2aa560e138e18d642e4cf54054c1287af4117e42ecf1b384bc5";
        hqMov = "7667111cdf139de2921f50299590aed6bb3e2da71010bce2007ddd0f007e5b32";
      };
    };
    "spanish086.mp3" = {
      source = "0cced233c7c376bfd302b0d50b4715d59790c1c0b0c53630b1e11ee0870f4b2a";
      computed = {
        hq = "591eb120bf58a8b84dba9375d5c8591319386789f66e804bef5f6badab64d5f3";
        lq = "ff98f7fc292bd031e82f6b265b6559108e70981d63b4bdf893fa13a70298caa5";
        hqMov = "87ec39daabc1099c1bf8143b7e4c4349f7eec80fdb35fc08d285b8d53efb0c6d";
      };
    };
    "spanish087.mp3" = {
      source = "ee78ec59868e51ceb7b4a8f9615bbdcd3e37adff006620305b2c27e17ac27389";
      computed = {
        hq = "b0106b7d3f47f656aea71f402fbe06e24d84bd894949dd7c475c968da98bbe7c";
        lq = "d9b5ae41ea335a6662b265d868b7f1773b3a8789350b935e9a61837999daf408";
        hqMov = "ee8c36c8003ba0d921547ab0556b9c3c4bc65678133eb04813a728fff7beefcc";
      };
    };
    "spanish088.mp3" = {
      source = "436bb4f071dec539176312be59fce79b50d5e718eff3ad366474b490397d5b46";
      computed = {
        hq = "26e73079b51d185c77ba2d3688b3f64346e38e327e95e85c3d0ebd66b3305815";
        lq = "0911ff21071e5590964210383cc36affde06beb9bf3407a19001b9213a521bff";
        hqMov = "7f24325963d5e4a2de5f7bd3fb3206198c026a581b785da2b784e70f205c5f9b";
      };
    };
    "spanish089.mp3" = {
      source = "c9fc11bcd1cad2315e07a04988108b75ad8ac31560576474187dc61e5dc4fadc";
      computed = {
        hq = "1caf16e1779181c55efd8483b55e5f33997ff07c90ef4e081be61f6a51f782ca";
        lq = "2c79ed44b7740b893e7562e539f066df4e3ed3022e3ab7cfe110de5bcbcc1ed4";
        hqMov = "8064a81b3a35a2ed4513d17d9a7e964849d365915ef7d943577627680307e049";
      };
    };
    "spanish090.mp3" = {
      source = "a5d87c506246cda36eb2148540bf9480ed3eaaaecf1a547a8d9e1c5a7fddd088";
      computed = {
        hq = "9687126980f8a8aefe401fa44caf16f2d18c9e3e9e4a9861c389b4674e1dc173";
        lq = "88cd2bd3ebea8b11b74cc15713dc14f918fa4794cdb9c884fd295a23b2cb1687";
        hqMov = "10b691fce9942a73411302bb6723c3de32e087e4d230eb7ff0f2a20328f4a6ce";
      };
    };
  };
}
