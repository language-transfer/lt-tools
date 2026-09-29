{ lib, series, ... }:
{
  id = "greek";
  recipe = "mp3_8_0";
  tracks = series "greek" "mp3" 1 120;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "greek001.mp3" = {
      source = "148467ebb76fa41973e481d3d2ff8b79c0801dda2e137a11b01abf5d775e09ef";
      computed = {
        hq = "44ac5b18bf700d19e0f1160974670db9117120741139d77ed397874e55f30a6e";
        lq = "cd5e163a4314b2f150ce84cd9dae63a8c19da692d28c15899a31961661894629";
        hqMov = "4ad958fe8c3c6a9e43035541ba56221b521c1b1a7025cc076e72b66fcfe439d4";
      };
    };
    "greek002.mp3" = {
      source = "703b29243f80b21eec3b1fad88b9380b49073e18815645b08362309c3346a497";
      computed = {
        hq = "bf42f79f8ef611bbae48230777709d3148de0bc985d2f88d34b826163058e6fc";
        lq = "124b6fc82a5101e82651ce4830c2146d03d2c2b70d6cef329192915a26811566";
        hqMov = "9966d44a3ceddc26ff7acf22dc113d301bd26abf68bf9a286cb9618dff1a9f9b";
      };
    };
    "greek003.mp3" = {
      source = "715a4e3a065c3d024465f779b9fd943e33d2dbbda167b16e7a2f48b37eca270a";
      computed = {
        hq = "043b673fe9a71bca558eba79f896ede668a07a7609a7cfd345a66683c871d3f8";
        lq = "557a1561147707600b0bf9c2e5ecea180d303ad977d888f029c8fc2bb207c087";
        hqMov = "493cd364f7602f15585ee7a9d5059d61eac781e97ab0eae0bfd4ec4e49cc3f89";
      };
    };
    "greek004.mp3" = {
      source = "77c4691cd5a768e3fedc95c77bef10156ac07c07ff31c5cd1354f16114a654a0";
      computed = {
        hq = "16f2052a270c3728ea3b6d6576f88ff78ae1217ea7fb3ad82544431a25411ffe";
        lq = "21c42eff5b00cc86c357b47c9dbaa93c1921b97848eb447d51cefd07db01bc1b";
        hqMov = "3d7dd155bcb91bbbaf0845e7fa0d5b5aec4ef07afa6b0c7fb5c041100f94811e";
      };
    };
    "greek005.mp3" = {
      source = "a7bf264ed2abdd86f193feff9f0f27641fde34e0af146c4a3b91c7cbff68d162";
      computed = {
        hq = "1b6793e4b0064226891d06b69900d5b2c5e5feda6c1d69d56b7eadc8e1441199";
        lq = "54ff9daa7c00d95ee5dbb36bb75d505274296aaa2ca56eaa3ec639eb3ddecd05";
        hqMov = "f1119df3457232513e1bfb655c63f41f18059c2f5b4a357d06969100f3bff8dd";
      };
    };
    "greek006.mp3" = {
      source = "cde46b67e198287d893232d9388c540cc1cdafc12ce8fbc6d8aa02d5a55a28f7";
      computed = {
        hq = "de5c01fdb2cee0c29c920bfde758131ad06b2475a2ddd6ba87dee2425dbeac95";
        lq = "2985f708fdec21a4ea7be1cc57277ec7f2883a459d4f7adceed8f1728bd47958";
        hqMov = "818596b10fbcd17a0366c597ed95a81d2bc7cce1a88387a7ce1059e659a3ab69";
      };
    };
    "greek007.mp3" = {
      source = "a03f2a922cb099f5344acfc07cc4d50f8d84274fd7b56b41c00d5e56dc760a34";
      computed = {
        hq = "b2c27027ccaebc36b77ca411188c8527f9ffb023955ff440eea8bb1fa1f67d60";
        lq = "3316a0b3497dfa5bf527cb4cd68dea3bbedac06540e832292a1a72ac8d10bf3e";
        hqMov = "8710a9a8ca7555f219f7ac4d8b5af6befde4c6e1beb1bf00c83d61873c76372b";
      };
    };
    "greek008.mp3" = {
      source = "56fe71104eb28768c181b8853b16684be917b36e570d0df67b9b21aecb63565c";
      computed = {
        hq = "b6f117f8a469d01e0b7cc9702056321f9c4edc35e9b503befe90158bc60646fb";
        lq = "f03bdb24c4cdcf00cca4d2702befda87def073b7575c6ba2afd8eb8c3437aebb";
        hqMov = "5e810fb3fec6903d935c651624da7fa1ad229e9ebc6015e471652097fdab62fc";
      };
    };
    "greek009.mp3" = {
      source = "2220be0f1a98dea640054ac86d64ae3c13def06e68f60e72747ab6a3b5d6a2ae";
      computed = {
        hq = "3f9faa4ae84c4ffb807f44a4179c810641db965a0c0f0d906305f14e29d17d00";
        lq = "5efe2f77fae6c8c182071f770a4bc27dc4b7306583b1e0d746b585d7023c08b3";
        hqMov = "be391ccf6505ce713b9a47ad173ebcb2926e91a0d3b846235eb583cf94adaf70";
      };
    };
    "greek010.mp3" = {
      source = "eb5ccb37c32e448f618698413d5823ad7b5ade3f38c53130fdc5c52b0f23678a";
      computed = {
        hq = "f23dd48c386e4a60e227d8831cc4962bbfd687b2af4157324e316526a5063056";
        lq = "159712252fd1e36e46a3b43837d6b88eed9b9c1c227072e1c06857d32f9fd9f7";
        hqMov = "e4538dfdc456d8e9ca541048a191cecc1f992449c43a0b4f8378ce1294bdb375";
      };
    };
    "greek011.mp3" = {
      source = "64136301ab787413f0b324c791951397ca4c7bc08c223acd79f26810d15a2e28";
      computed = {
        hq = "aa0988e94ea2ffc09eb16a3e07f8d15b7d07b7a8c3475128c716e1001c584336";
        lq = "9a6c2577dca635c3d66ce0cd74b42b81ddf5c275f29c71eba2dce446c7aaddd4";
        hqMov = "4185b2d9ffa7617eeec0c5c42c4dd3806214b32ca198bef772a26cb80b9dc44f";
      };
    };
    "greek012.mp3" = {
      source = "aec530c1911ce36abd1c4a94e21d8b944938ef8581c132ac9ebf3d872c700baf";
      computed = {
        hq = "0950ecbd38e9481fec86b9d169714a802f76a85cf0cfe6bc08ad8138ac373d73";
        lq = "503d850ddd1ebc0cebcbeaaa3f34fe7a8287e0d35bf60ab63746f216e0e722f4";
        hqMov = "eabe8890f7999f0872b4e380cd878386fe2c69224e42bc42975703dd65251305";
      };
    };
    "greek013.mp3" = {
      source = "56abed9ed3ed33990c0f7a6cea822eaf10d95471569e861980c5b57f371fdfd8";
      computed = {
        hq = "1a1e36b4e24faaf8b8fedc4e54aa1a6013bcbe30f85e1e682573a46aacea2e41";
        lq = "704e09873719e31af44290c0d0bd61685c48a7136a99587014a4ad1abc24a21e";
        hqMov = "37042c3f055601a8b6dbcbb123f25a1d37b0bca37463841aecc4ac2a603d2157";
      };
    };
    "greek014.mp3" = {
      source = "399599ff99433921d46cde1e1a8510f209e1d657e5d53a57afdc5e6fb6a3aab7";
      computed = {
        hq = "7485713d23673da3103bfe06589c9a41bad456ec530ad132c0902fc59960f1d8";
        lq = "5ba3fd066304d18a42cb30f9dfc379a1834dbcd28a2170ff6be49cc102c8e6f3";
        hqMov = "95387d3ccd656bf9ec7a039f688214c515fc40eae9572f28ace04c8165b634be";
      };
    };
    "greek015.mp3" = {
      source = "6cc66cdb019a65244df7373d70f175bb6db31266c94865f1c5a9b4f6a2f3715c";
      computed = {
        hq = "d8c8238346b45ecc5bdcf73609003bffca13c57dde5a92990872fdcb4af865b7";
        lq = "cb72f5d4b0557af6d6a7372ce3c7c22b5990234232c25fc6ede240d0504be101";
        hqMov = "3c848551ca0865e918f151dc5a465e852929d794d3a70cb91838f023f9c851c4";
      };
    };
    "greek016.mp3" = {
      source = "a92066df59bff3f376391ab695a0659ef4637418eb56a127b9fb68d0997f2402";
      computed = {
        hq = "7a93c1d00ce0e625cc683ba3cd29b34c902625a68a93d902a159957f1a27868e";
        lq = "c64b4c2d376beb8064ce563d3f590db4d1fc8da083d7010badc8946bf22c43c9";
        hqMov = "fdbe415b10d5abf040ded0db81df9e7c4ccaad3f7ec01545c004268d0f9b4a20";
      };
    };
    "greek017.mp3" = {
      source = "d149b8317e9a1124fc12f1e29285124160aec3cb9f880c39629599f8d69b2efe";
      computed = {
        hq = "0e591fe93acb250325a09c1744c0f6cce3c1c6dd5747dd21002a68628688808e";
        lq = "05e01e782a5b8f05f28275794675ee0da1a60cc049f27c9c6d069c3deb1b1ba7";
        hqMov = "4a32c543f14d240df59688bc21b8fccec29ad1f057b8046783043361903e2d17";
      };
    };
    "greek018.mp3" = {
      source = "425d08223d041544dd711d6f8655651647faffdc0465c317f2ddfa383fcd1a8c";
      computed = {
        hq = "4c37979cd7cfea96173cd8d93ff1798f8becd5e3c73396640067dc7f546c6264";
        lq = "9157343bc649206e3352545b5b6cfdbdd64aedd12d9c91033825dacd540e49f3";
        hqMov = "a79c3dd3aca2edffb029116b876aae2d0b5e37cfc3882f0ce5d60a43d1c63bf3";
      };
    };
    "greek019.mp3" = {
      source = "3975dcf472393c4ddd430df3aff7f1dfaa56571bef31a11e5f0570895f8a631e";
      computed = {
        hq = "8226e4a0cfea9d6e7d16c357bac6b294590ef61c97313c63aa8962dad0a6062c";
        lq = "c2e7511f2f76ec73c6f3c81fb1bb41fffe31443373d3c3223c8934ed705d509d";
        hqMov = "768ccac8eafb08e1599b558b5d7ef030193d39b708dd5a08b0d5e31440be843d";
      };
    };
    "greek020.mp3" = {
      source = "de38557c2cc015e21c243a84b9c90dac3530ddca54321f1a6495efc72b9f1dc8";
      computed = {
        hq = "b1eff3e16e0621592def1beec97f46e3013991198c306eaa645367d57698a8e0";
        lq = "4582881798ee227413067a2c424b873f7c94223260485815591be74af28b2796";
        hqMov = "4653f2f9cf62d6092b129d88f38f681356215593640781cf4546e5311dff806d";
      };
    };
    "greek021.mp3" = {
      source = "74a7709cfedddab9f4bb0ad2be512701010dfccf03b856838686a3ad3dc1ec74";
      computed = {
        hq = "28f5c7aa0091a239f1be6f64d1de623d4218e83a43a06f8aef8ea169ad4b0d02";
        lq = "b95fc50843f1ae4eb2cc3b2ef38593d21c2954457838960a9243cfe011af7df6";
        hqMov = "a6bf4ab57a4316de7df87880be350d12dceb16eea11f505cde7792cc836a73c9";
      };
    };
    "greek022.mp3" = {
      source = "38d628cdf4ee60e05ca691385ba3b66d5b0bfc3b3658d967e3e92729ff48f839";
      computed = {
        hq = "df80378e33b2085d6e251342686a798eb35cc97777cecfb01ee0d4fadb85b6ca";
        lq = "f1aed10fd9969cce481e4dfa5b414449c27e1603b484812faf90c1fa608ca47f";
        hqMov = "d597bb8b9009c31333b8037ae015520281343df5607d202ace9a6dc01f72cc6c";
      };
    };
    "greek023.mp3" = {
      source = "5ec3fd96a4939a1c2ce429466c75d73fe8c696ef9cbe978c8aa511f876b0bc84";
      computed = {
        hq = "5dc99bac4e52bcc9ddb8951fd3bdf197bbab9ffc493a00bbb0a9a9d0533cc261";
        lq = "1b935f7cd872a5855587ecdf0796e3151f2917c146e357d660d955c21fc54ffa";
        hqMov = "dacf2cc35dfedb764c6c503e50953e098c111240b2f36c2a430d13e1cfc308e6";
      };
    };
    "greek024.mp3" = {
      source = "8a6112ee1fd6b96bf05bd5cfe0cbc0b4688bd1a57e44882652184d6b3c645bde";
      computed = {
        hq = "147672d8feda7e273b3496454095e8b0ebd4d32009bc22b96c15e35bd2cd8aca";
        lq = "725dfb19ff7868a6b3c313c5e7495fc847717bcdc934181a53c64ef766f0c855";
        hqMov = "c03a0d1726134682aeda96971f11255188724ed1de03a5796923604aa6c7ed9c";
      };
    };
    "greek025.mp3" = {
      source = "395a0356121e8b015c37ad95298b7e20a6f61e9ed2e2c88a27b316caae87a051";
      computed = {
        hq = "31ad29aaef1083b4174ba1d0cb58b49244319c3cfc505083f1860898091ef6d0";
        lq = "8760eac02c95d3eddbfbfaec93f9b7ce1aec6d9a89a964393e808614ad890038";
        hqMov = "4c58279959696341a39bda3ff2e403f998596ecb4b018905a5dc6506e2332911";
      };
    };
    "greek026.mp3" = {
      source = "491ae461e9bd41a615440f8442c163176686c041f0b27fc5f506bd06c85494b9";
      computed = {
        hq = "c3a780a9046023f13716b1bfe55fce39f7c9d0e867e7c4dbddd9b8e638028611";
        lq = "10bfc4459f762bf6cc1582c2c4f4995281c266b9eaa034dcf8de2f07652a8780";
        hqMov = "61c000ee7795c5997791fae7417105cb7e7aa728e9a88f59cc9c7e1a3178fe84";
      };
    };
    "greek027.mp3" = {
      source = "c5632e15bf446c96e6826484d485d2fe2a545a51b13250e2ccd0e5eee2670269";
      computed = {
        hq = "adee5736a44fb3a41af22486414fc21280a9b4a9fa9dff2e0f5e4fe3ab3a304a";
        lq = "45277362895a7c559fe97bff30530868589f1c798449da45eb37dd2c6f09b280";
        hqMov = "28ed22ece5846ccf8ffe45982e19c99430579742b24bec4b9e648d628587ee77";
      };
    };
    "greek028.mp3" = {
      source = "d8720c945434cf69783fc61f8160223ac1b0c5970e25e680ff7c1848d13f2b0c";
      computed = {
        hq = "9253f8673ddbd6dd768cd805360fda2f329c70c7d77d8fb4aee3adc44af463c5";
        lq = "206cab371ad7e9a0d11f47bd9f7d36a50f130cd2231ce04740d73ba12338e28d";
        hqMov = "e4b4033cc36fe3fcba693310183993a209f97a84f23f3ae9aba0c3742b3f2905";
      };
    };
    "greek029.mp3" = {
      source = "ea68a0e05de943ef3d9cabddc2964b3b730643579e8b31ff23f18fe25c86ff0d";
      computed = {
        hq = "7000463a8f72fcd4cda67276f7cd07ef4e1254fe2fb974fa45e8afe0158ab27e";
        lq = "d7275d9230dc9f7ad31f68f6a4ade417f537ab7be52ad96b0d72d55a10185d71";
        hqMov = "6005413a6e1f70c7fe7635e69658c4f6ea3daa83ef0535385a83d9b63e8cc678";
      };
    };
    "greek030.mp3" = {
      source = "059bcace982caccce3a67b1207e119687281011ad8b38efd2b3037daccc068c9";
      computed = {
        hq = "9029bee4e01c033129380d9066006a0bbee505eeaf6d0bbdb67fa6b6b1092a5a";
        lq = "fe3702482c67f37ee500cd92b08c5c99df5ce232380235998a292f56fd8ca355";
        hqMov = "a541beed5223a13a9b35269c7bdea9fbac23deb01f0d24ce3e80004c40d6ca28";
      };
    };
    "greek031.mp3" = {
      source = "3e1c5c8c71036b4b716da2d95c2719c4134f78075c4ad99c0caf3acd574faba6";
      computed = {
        hq = "1f0ca22d3ad5257514ba3ccec1d2bf066554968307247c9a680668595fbfe1cf";
        lq = "4cfe5f41067c49fc1661c6a2c027e989b0720dd1dfed6ee250d6f14c4219a5d8";
        hqMov = "bcc814e01e8a00e40a4e45631535f08e3b352678bfce2d0f6a918c405aab495f";
      };
    };
    "greek032.mp3" = {
      source = "dbc694c777437700ea4d8499fc5426a7fe7976b5a78a306d4f4c8d627edbdbce";
      computed = {
        hq = "81bf84f06f6c912bb862caa151ca7fbf5d079848ee9e71d012a3846dcefce6e4";
        lq = "92553219e9dbfd7f4df3f19ca2de42078e31f48cf6f4e86f532f33a9087d967d";
        hqMov = "2984fd1bceb989c862b593d3a069b8cede3e74a336b46ff665a1d3786fbd89fb";
      };
    };
    "greek033.mp3" = {
      source = "91d4da82fdf0480ace6eb61a7c787baf284d238433982e7523a127bad9223b0e";
      computed = {
        hq = "aec08eb43394de8b7a41ca469949fb15ef97f26696aaf0eeef5f1e5a81a0d197";
        lq = "feb41c86d59f0aa75e0a8fea72b7282df7e50426361ea2a6415134d4538d0279";
        hqMov = "4a7ce679c0c562a1c92119e4318401544f827df550eb8f500c641ba8610db18a";
      };
    };
    "greek034.mp3" = {
      source = "9ca3bae3951a102b1280c1f844e1a6f785a41192667b53396d8b38dad9677944";
      computed = {
        hq = "1e5aa48ac4cb22f558c8b04c6103ce98f3bdc0e923ace4805dd3d21caad8f2be";
        lq = "9348d32fd9673cd14c74faae919b307b921400a6a7639d35ad39a6c51418f397";
        hqMov = "aa9f9e91af301843fae5fa6e63647adbc297a91a2ea1580498c80e347d24f943";
      };
    };
    "greek035.mp3" = {
      source = "16c36e01932ee002fdadcc1dedc55f79dc86f8239546f63b1b1a04519ceb8b38";
      computed = {
        hq = "90eeb454c053721d65cafc63b705bd968c3229ea2c2b42f9848d12b1fac02487";
        lq = "a2fc8cc5700e830e03df52dbeee2ff301368022342a9cfbfb045f00c036d2855";
        hqMov = "d002769c6ac23dabc0554fff712eba8d44bcb8da416531b3f1e710fe1097a7b3";
      };
    };
    "greek036.mp3" = {
      source = "4eadf4e38c4b41a35ff990a55fce7feb6aef9fe87b17228197445661134fd4e6";
      computed = {
        hq = "01a6be79917302c8043727f22478b717d6e8a54b0cdf700d49c929a389250b53";
        lq = "08b5c1efa72ceb1e2a127f21fa9060ba37f0d91bac005e77741215290fbe3761";
        hqMov = "7bf19399370e556290f86a4779525e9ccb11f02b1ea872d3a5ffb395ed683127";
      };
    };
    "greek037.mp3" = {
      source = "1987511f0eecfd7b1fee1a95e037f0965de9ff08fed2a1bf78f041e1d1dbd3a1";
      computed = {
        hq = "09c8f20ff0b0f5a0fd7ba44fadd68202547ceed9d2780c67b532fa0c89164a94";
        lq = "594cacf21653d35c0d870b1a14d729f9cbc606ca2926850df3557ddf9b4f1eaf";
        hqMov = "1ea105c4a7cb043a1afc113d191f9d9dcc03927648c775b9541db12ec93ad079";
      };
    };
    "greek038.mp3" = {
      source = "050b17ca19d35cd05fe9b529c7823534d143e304a82b7cfd7cd02938e3058aa6";
      computed = {
        hq = "a4f66727904e850014fe083c5fdd1789b568de87c4729f6cab8f3c2b97707857";
        lq = "3e9707ed272e761e8f58f2494f5c4ece76bab66fc0743c2e75a7704d76ad6012";
        hqMov = "f6af076d2c2e091576890cf6655a5ee34fbf85b7bca8660fe3154d09003a85d6";
      };
    };
    "greek039.mp3" = {
      source = "d8b63f565dadcffe09fbbf21ac7bfb812626a5186f86bec7780b980dcc3d1d1c";
      computed = {
        hq = "5b893ec5db5aa7a2add2b9e4796830d0c077f740e969b29e22dccf695a520558";
        lq = "01c9cd0a3aa04e0ac563cc250f1284283f876a3beb5359b6d6103bcc46c58c3c";
        hqMov = "6d0693e1b42f5fd00b93d6c55cda8349fb2c769cc3c24a078d0eceae65f856e1";
      };
    };
    "greek040.mp3" = {
      source = "be182691c49fb52056d80694e169e6801887d84872af4f6c60ddc54687160c2d";
      computed = {
        hq = "b2af5f59c619d8e3e0f44d9c96ae7760e9e1570e6be817258c440a8a5b64031d";
        lq = "233dc827230f8e91fcf3070b33dd43c1b5290c7f386a5ea869b888a96acc9b80";
        hqMov = "4a7a6cc198fca58a8837d54c70ff6f7e601c506563cb4954f68aea413707fb3f";
      };
    };
    "greek041.mp3" = {
      source = "fea4f70d80746e1076e081bfa4e63280ad7283a04e8372cc83fc88e4b2f1d3b3";
      computed = {
        hq = "2f45b1db905789dffdfcb79c440824910650352673a39421d3a5b6314f6fb28b";
        lq = "de65630e0e8b5aa852a4affddc4623fef61330dd1a643a487215b4692c245bc3";
        hqMov = "ba5ba668decfca1ed6c4369b0392f4f26e1d3f4d374a15de5d7d0f48b5212ea7";
      };
    };
    "greek042.mp3" = {
      source = "222f415c7e7c3b0c21490d46fc77b59e4ab4f610cb236648bfd1ac8e55cab15a";
      computed = {
        hq = "a1ef8f70febbc4213fb51a9e8dc9db9c3397a019633359ba45acdb18245b7c67";
        lq = "d7fbefc4c98aed17ae6acb40c061f6697873baf03e67cda84842582d2d548f28";
        hqMov = "9fc01fbd4531c1e9e648eea43a68e55c7152e7633f971a94b5f2c01ff43d6181";
      };
    };
    "greek043.mp3" = {
      source = "129f3a9292fa4ea5468203c9b9b95dc1f7047dc00f1392d66d2d5992cdd59461";
      computed = {
        hq = "51c90770cd3e142fc426f444ae3e9c67d4ad7d2ef4e808cbbaf33028c870765e";
        lq = "5deb47ad29ae955b126408dced38ed71875cd184fb24c3c768e274e0c586c691";
        hqMov = "c9500de0d881942a7d64d7576e63a0c8ea7157e91bc21d928d4d59da42f27234";
      };
    };
    "greek044.mp3" = {
      source = "6c9af49dd6c7f520ce822e1702d1e41cba82d1c6cc8d17201f0f1f9a7ba8c8f8";
      computed = {
        hq = "b3b98f2178216c0a53f6fc8a17a672f50dd7fd2c31ef6b6fba3a023fd9ac9bce";
        lq = "8db09d3562a97291a032763677464c3e3029ccd708ceba9aa21af03df7de1bfc";
        hqMov = "f841f803fbec9ac07a46b40891eabf8ecc0ab4853add1b9c8e892e3ab9f3492f";
      };
    };
    "greek045.mp3" = {
      source = "43a7d7ff1d23f66ff8f25f1255909c15637a12d97c73c1eb1e8b0b2d2077d600";
      computed = {
        hq = "a47e2cdafe87296e8b72e6374496d7cb5ff3fa7561f973a91d87b98abe826db7";
        lq = "56f7533dc9f48b820c0ed91979edfc6d870e5b0ca2c50b0344f72b40ff6aa9bb";
        hqMov = "1dd49b1e1d293d7b589a95e7e375833d8202c05f9950f919258e4392deded90e";
      };
    };
    "greek046.mp3" = {
      source = "cecf9f0a5c41d8d7f797a9b5ac1de04bfe0e3fce2a92928d8c16ceb50e91e1f5";
      computed = {
        hq = "a8db3c4de861f00bc8391b35726836e4299faf9063944b73e8bc4c95da33dd1a";
        lq = "9451b3fd1bb8dd35fffac42b69640fa93d0da79c60f03aed58dbe569c68cdcd6";
        hqMov = "f9fceb7fdaf42cdedb891669b86c156ba913c442442071abc31f07fa4d693bda";
      };
    };
    "greek047.mp3" = {
      source = "189c17266ad470901ef766388d1fe39ff9ee49d91d22cf68abf7a80154e161b0";
      computed = {
        hq = "90876d633d740b32ca7588081a6e3df9c1c2d782216620a8f20f4c3e3f2aae93";
        lq = "6fb8e991571d3e01228c9c639ddf7095bdf325807aad25f33b13a97d519d10ab";
        hqMov = "48ba7928b4494e644497e8dbaf33cdc25d8e9eabcaa0f2fd6d11e794be437e60";
      };
    };
    "greek048.mp3" = {
      source = "b15e5dc688490d83e0ba0810392f54fb4cdc080163ef9481a534affdb5beaddc";
      computed = {
        hq = "e6c164b625792fdb2703f617a3818735b90a6d54c8a45b593351b8ae561a395d";
        lq = "85747200447af4c82f170e26c1be189e2fcb4013a70fca200c6a6f54d58e1ee8";
        hqMov = "e5e7ba946778f75259c9924c1d1fd0ca608bd4a908858b16118a3d1dd31674a1";
      };
    };
    "greek049.mp3" = {
      source = "1cc7242aa26b7304f6a343f66f1dc504912b4b016e102ae5924a72eddf318443";
      computed = {
        hq = "881d69e538ab4cfa901fc0452bb5cb390c6eed52aa3ac15eac2ae2e0115c6bfd";
        lq = "a674eeb2127ed93e2465d18613dbbfee436451168dc143761b3986fb32122222";
        hqMov = "beb3db3658ff12c8d3189871eb8f0a32c9d53454a21b028ecf604ff5de3d716a";
      };
    };
    "greek050.mp3" = {
      source = "43b7e7a652c2fc8ccc1dbb9513d1e21df1799cfaa0e5a4f7050b8aedd7a41886";
      computed = {
        hq = "c9c93eb5bddb89691f5c04e8bbb9d3043cbc848b1eb0cce4b2b1456d4c92e2aa";
        lq = "26e9b5a1f641aad8ef75524e1602e2b164403ba8e6c1129624e0fcf23ffd68d4";
        hqMov = "41e7bd839b77b86ddb2fa7919bbe176da61bc443d641aec7c0d35a107d293799";
      };
    };
    "greek051.mp3" = {
      source = "97bf9eff11487c48a61d92af62e666b5beab4c47a2bfbfbf815d88062632f0a6";
      computed = {
        hq = "b7b04765c920ff67930e846cb39590557d517d5b06b239ae8b950ac3898aa610";
        lq = "ada7d2fc7af7a24d6153a90c61dbdbc7127761916934f5bb1c91ffe9e35f8598";
        hqMov = "80868894b80f1cb9dd0a71c4fbba7795f5e932354350965b67c875f86c54b43c";
      };
    };
    "greek052.mp3" = {
      source = "424b1f9e3c70de774981b8546c3de485cc55b10c4dadff528a99aa98c94c3b2a";
      computed = {
        hq = "ec61acffea9424eb704ccaba58c36c6fc672e675e94eb7eee6f7b2ff0b121ecc";
        lq = "35d655507bc04341a5096dfd73ae2900b4e93c493be3d9aec37f7a49b2d6ee3f";
        hqMov = "21154e554e03abc8bc16527fb680204c5a8e2676576d7f140a6ec75f213f5143";
      };
    };
    "greek053.mp3" = {
      source = "eca5e0489bb5b264a970020a297f167daab31c864eb22cefd80909ff265860d7";
      computed = {
        hq = "f9c56a3335157bbfda32a0be1f96da083c474d3d2582bcf11c568d8a75b0027b";
        lq = "ef43269cbf376d9b08bcf31852cbaa79e99007d4b158a417e5fd36ba4437abce";
        hqMov = "993c128749ff3ad63e3896fbf0e8e68680818b45da8650a511d10a119a44efa6";
      };
    };
    "greek054.mp3" = {
      source = "f814fc432929cace6acc09bbbaf52987f82a8a8d0f9bf82f47f4e154298afc55";
      computed = {
        hq = "d9580f9864f38dba4011cef9ddc9d8cd86d9294c6a6b4cf29749450d401fc0cc";
        lq = "5a312ee7a8064d16fa52cfcd47c816d98c298e26aa6a9428610f54a0d4d0def9";
        hqMov = "132cd69e40f6bc28d4c5a4c50053b1ad5d2cbdce1f7c9c4362e74c0263777365";
      };
    };
    "greek055.mp3" = {
      source = "c22e8c9352aa1652a1a2aeca12c94e4d59df4e74917e0f342218f64f7088c828";
      computed = {
        hq = "64815acd9b702e233b1b1d4d923e866f4809a4a7efa3c6bd5e69316537431be4";
        lq = "dd1687aa7d752d9c45b3428b4e6e727b11a1838c5a9621a24d9154cd0252e92f";
        hqMov = "0173e592dbc0c0a2529a23f03882742555d5116ec4aeada4321578304e759a78";
      };
    };
    "greek056.mp3" = {
      source = "51265db8ee3a43139d29e99ae3eb1cd1087f630d48f30dc63baa947562bc2496";
      computed = {
        hq = "55788e081e3a057f1315bc87ececde0e631709aca020a3c7936b4c0116d91473";
        lq = "2c08572af6ede48cd508228885bddc1daa5126fdb404b2096ae12e3a808caf6b";
        hqMov = "865baca19f1ea3ab4329424206b249f8cd9a38af5792a71a9389d53074b119e0";
      };
    };
    "greek057.mp3" = {
      source = "e5ed0b642d33a40d1340087290cec83b321e355b1c75ef1d9f8a0321dbaaa89c";
      computed = {
        hq = "b85d673e7bdd32959d81c7ee6e6d4a47690d16e2e6ebc828031e9a9b8c7b87a6";
        lq = "10939bccc92970c26166f0936e6e9e1260f7c122b514fa70d0048e8eec6efe9a";
        hqMov = "9edc3503475d942a9ee55729a0a856f4fcf7cea22d814732b55ca200cc4e7ca0";
      };
    };
    "greek058.mp3" = {
      source = "529f59efbce7546260ea44e42f9f6f643f68d1d004213e65dbf75568bfe41ceb";
      computed = {
        hq = "a1f8822b1b37135f75a76bb5dd467f10b3ee63108840c2b81cc37f25374017f1";
        lq = "a26297c8bb0caa3922805508c5dc12417460840868f044a1ff9f722ed2c74f3b";
        hqMov = "895cf31e4dc47f225af503cbda9df93c4ace0a92f7270fd7bafbbd2d63198bbf";
      };
    };
    "greek059.mp3" = {
      source = "1f385944087b8a9e1e8dd71f5ff75c885ee7b1dcbf294eeb89ccd7b8e950b78b";
      computed = {
        hq = "a113ff504855c67bf85097b492d34a3c34fcdf24544830924b7c8c9f900e5490";
        lq = "0b5217d94d70b72f9dd33efac8a084966f9d470eeb9324952b6202bb038e0df6";
        hqMov = "07adb19dac6f0d4a829918f404b22ee011c0dac6b61f82d5b5232bb6ac600f2b";
      };
    };
    "greek060.mp3" = {
      source = "4644c85a7633bdbe229e38269d8bcff93f2305e92caaacf6decd39b60a340843";
      computed = {
        hq = "1886eec1691256f714de2a6bf670a6b24b10d223c4d64e4322521b114913071f";
        lq = "a2c42fe1c70a2feb9b63dc1a66ba764096d4f6b07f96726996ccc65c305a31e0";
        hqMov = "2dd348e514720b5f35142f89f7569848dd690c84b786a1afa7178089269a410c";
      };
    };
    "greek061.mp3" = {
      source = "7be1206d4a0eef0646dab097e905cb5680a64c95d2bdfe9746a81e3c56d51cb3";
      computed = {
        hq = "501deb4711fb3a3fbcd1802cd951f7dc545ed4abeb058b054dfce44e67842f49";
        lq = "05f4a6338cb570f0ea894ab95e884ce7fbb2584de4aca16e7bda52efc33959ee";
        hqMov = "842c1e7d4acb029becf1ac0b365d393420796c960185432a11c096a04dedf50e";
      };
    };
    "greek062.mp3" = {
      source = "2cbd7cbd4394f2e07993d8dbca00bd80f4b11098dc4660a536915dd9856bc22f";
      computed = {
        hq = "4e17a76ce43f0e5a908810b34760aa888ed143f296b0f64029b52be458bd29a9";
        lq = "d21e526f370fcacd80c0a7d01fa778096a6b4d74471004544c2cfbab804c3f7e";
        hqMov = "6cef71bddbe02538517152c25bfaf8887d340f53ad512a76b3beaabc395a765b";
      };
    };
    "greek063.mp3" = {
      source = "99fe7a3855a1459d6ad851851eb2e78fb2613885c05547ae342c083c4a9778fe";
      computed = {
        hq = "3296b6ab4cc2409ff692901a1de8720a010126ff82e8eae0e09735c925d91bea";
        lq = "e3996cde77c86866e72cde1b238b89417f2d8f2a38af4ff1d19515fcb151b85d";
        hqMov = "cdf3331820f5e13a67657b7dccce01aa4629819b7ab2b77a873ebfe1bccc7834";
      };
    };
    "greek064.mp3" = {
      source = "f86bb26251368a96a48d9e050895d11f649445d16858937f69623760e580d1ff";
      computed = {
        hq = "35ca0163a7092876262f3f41a8f579da3e27c9958a327531929c5b682c2101dd";
        lq = "d94b2a10935302c2e46de609349eadf1802651d3d6a117b7ad86b6542040ff22";
        hqMov = "b356fd6fcc6cfd0f66787c9631778a9ca7f7f75db352f09ed3ae840d116141e5";
      };
    };
    "greek065.mp3" = {
      source = "4eb734829cf96aae2008af2047be35f4939b5e6ad061e2e5620df5d37f4f4d78";
      computed = {
        hq = "b50518d960a93f464a772e24d99ea6be7fbb5b2082e96685e95681ee0f9244a0";
        lq = "7f19d39e18e21e2cac52729fd117a047d1340895d8cb4315f94a3510e2007e9b";
        hqMov = "c9f108cb1e87c8d66f51e6c7681a035c8944e309f537160e28262128b4a5a37a";
      };
    };
    "greek066.mp3" = {
      source = "75d92ec9fe231ba5f74df9f45b6159e3ee6829644f1cbcb16bca12f238b52425";
      computed = {
        hq = "3963d6e6cdd4d496289d260db8a332657dad851b539480a96f84d4ea34dfe66b";
        lq = "02a19641d9d7276e0cf70967fde1747b158d2a51901c4fc8191939abb4fe995e";
        hqMov = "6de5b03dd27dc0696c1836b3ea0a680ab0296f02fe5b1cbde926c0ca0bad0bad";
      };
    };
    "greek067.mp3" = {
      source = "7dcd97d6bbf15c79a892fd54f8304e3bfd1494e9507d9b046707e9905160f716";
      computed = {
        hq = "b09adf56f278bc04f5eec64da0cd0fe0a8cf26cc257a2bf140b825f3e3f3d6cc";
        lq = "8d6aeeddc863f7d953211c523d90967889f6ac134c4bde975ae253f296043d05";
        hqMov = "409ff52b0376c903a8aae15035ff441ae7a6fb3808db25b2eb6fb63bbc928247";
      };
    };
    "greek068.mp3" = {
      source = "b8fa99a2cb03b2fce1f7559e90c559647126babbe070535719f524422cb9cbe3";
      computed = {
        hq = "0b938fd83c15bbe6365179a1b47c496177c6cb2756cbf43b625d34d53c6929b3";
        lq = "ae36c756d4ace8cbdf544372e48e47596175ea70755c86f24849bef218192703";
        hqMov = "a9c71a6758e5480aa86b3db000b81baaed160c326a2f209879466cafc20e94b2";
      };
    };
    "greek069.mp3" = {
      source = "91ecd58dee2b581b7091cee0c9cc22ece90e164a951bbc56ccb45c63428f5d6e";
      computed = {
        hq = "98e18510b10722bb9721b23d3b420339c93fbe6c4cc3cf86b2e0c686afb0f314";
        lq = "2ec3f29f483cd6ab0a481dd6408aad3ddbb63589faea0f637ca94ab8fe6d5862";
        hqMov = "3bfe93bb6430edc0d6e8dbca96131228fbdc2df8a52128eb2106cb77a6f2e9a6";
      };
    };
    "greek070.mp3" = {
      source = "98de1f07c97c6d94d9512666e2c988c402755dcb920d3fdfd55a8d401174a136";
      computed = {
        hq = "c34e946e7bb3053b5d884c5996a5f16a4442f1218b025db78ef6ccf8f6992e16";
        lq = "cb44867ab1bb848ec8760f0176dc23acaab15ddb3748d5004f89de4223d35a92";
        hqMov = "5b5c1979d8109cb08cc0fbdf5ac9adb71985aa3cf5c5855860b9cdd6a6cf1cf7";
      };
    };
    "greek071.mp3" = {
      source = "e641c82bd1799dc2db88e4cea9730ccfba20135ef4cf5de394c75c7cfc867d22";
      computed = {
        hq = "ea0614f20d59adf937ea5d2869c0827b027df8e8aa9ac99cd1e6dfc5cb492fec";
        lq = "064f625ea50d1ca5691033fa9ede17883214e6a762325eb92064c13f379ddce6";
        hqMov = "08e6a2ab3f3bf9a4ddf1c79eca278448d96da2c84f82542e92b8044326944606";
      };
    };
    "greek072.mp3" = {
      source = "a50ed144c9a5dbe8fcf4567dc4e7d6be09bc4eed0b43bad36ec4980e792ed7db";
      computed = {
        hq = "8a1250db7c58de63e8435d2ca279ebe1e874a4b0f152745a3fca7fc2bd8eda0b";
        lq = "32fc8fc967f7bbe402b3adc6c33efaa54c3482b48d25accd7599acf230212ca9";
        hqMov = "72fded29fa81e93b8788b7ce2bb39b0e082944add33ec2171b2eda6381b84d88";
      };
    };
    "greek073.mp3" = {
      source = "0d955f9e0dacdc271259295a6b5bfcc6ba3e38255a3d860b6a661e2af3ef78d0";
      computed = {
        hq = "6dac99c624c58cffe303bdb76c333d88ed133b9fc0529939df120ebe099b688e";
        lq = "43072871a64a00c681525ace45e9915226e282ae9f175144147e2ba30ae314de";
        hqMov = "0ebc1b9c4523c7d8271d9e4b025b308ac5dca1478936a9119905117ce2a1853e";
      };
    };
    "greek074.mp3" = {
      source = "ef5edac0f132ef75ff4f78c524ebf08bb7d6892b34e22596e4b195aef0c74ca1";
      computed = {
        hq = "302152b6247dff3c055023810f7854c9cd00bf2242283a8d31bd7d04ff0aae2d";
        lq = "c24129e3cfe77f04f12ceb886ef6abff998adf07658b1d8e728a92fab845c277";
        hqMov = "1292614cc80b560382f9dbaced9f824f93b633467499e1b07f0ff887aa195a28";
      };
    };
    "greek075.mp3" = {
      source = "828f9dd4943d0ea8d65724c475faddd71aaa9e00e717ad9d346bd015d5e88eb0";
      computed = {
        hq = "54f71b488803b635127dd8270fd63994e122b7243afa76d4f05b31f99655df77";
        lq = "d995b3f8a52352de0a7ba0654ca0bb0b70f6ed7990628541edc3316aab171212";
        hqMov = "7a3393fc327491048caf304a2ecba81dd159b0f525b6e0e2a8ebd9ab953bcbae";
      };
    };
    "greek076.mp3" = {
      source = "d26ceea796c4e16474f3e25c90c9f9fcad9a0d96326bbe29b94b8e3067c82649";
      computed = {
        hq = "3d39fd5d71264d8164e71ad8ba36a2ac60d8d8ce6635db6710d6333afc328966";
        lq = "08794168f6ba80bd79987b33620b1527c1e9ce988ba39a006e13212384365a7e";
        hqMov = "d2045267c09ba9ffcd1769166e32ecc5c81cd849056c4bc57a65071127f63582";
      };
    };
    "greek077.mp3" = {
      source = "3cd7f79602341a081f4c9ee6f9e9b3f6cfdd0d141e6108c7824541166a21fe9a";
      computed = {
        hq = "bf4ac1942850d9623abb9422db47351c6f29437f80e7a1a588e1e27cf15b6bfe";
        lq = "1ff7618fb429f7d834a36c4adc5cd9fb0e455b8b2fc24fc6e9013c34697651cf";
        hqMov = "63214e0e6638a5a885f109ef7ca73caf370a38ed2bca0cdaf759d53698b2c307";
      };
    };
    "greek078.mp3" = {
      source = "ca4fc56b9cc2d50790601bc588002621973596f04c23573855a4f2e5237ac4a3";
      computed = {
        hq = "b888c3087257a6243bd5af0decf06a8bfb6195928a07410e409cddb465f57af7";
        lq = "147e79da6d2bdd453e8ee2c9351995a66a3131e3216e00c33da7dcdac66904b3";
        hqMov = "dcdfec79806480d636765c6f60db4b61ce8abbf713457fff5f333194c6763b3f";
      };
    };
    "greek079.mp3" = {
      source = "70df4ad98fc35054ffc44c56f8e8c927f53c186379e55616e05f3d5bc6c7475d";
      computed = {
        hq = "542c2ca8db9632fb5624353270adb433d35128cc0dfd1d7de5fdc704cf6426fa";
        lq = "9cb9dc06e7f16f0584baa85b30e9747408bfcc59900ca4ba86a95245b396cc6b";
        hqMov = "469c37ccbdccb3d93821bb456ceef486e6f7a6ed152b37ef6274bf2dfd3a28d8";
      };
    };
    "greek080.mp3" = {
      source = "2c28b590a97aba51dabfef21cec43bf8eac46b1c57627b7717314cb7e6b01482";
      computed = {
        hq = "5542e45623b27d535e6535c88ae50a359e1465687dc20f7b395b78ac3910c3fa";
        lq = "a7304f7aaaf763b026d1c2086335182e751ac97a7f9dd2a3ef1e25761ad315b7";
        hqMov = "d68990a65e026fac0964b27d77a99020255a8965f7e58779a76b6ad5127b6cbd";
      };
    };
    "greek081.mp3" = {
      source = "6ae5b95eed56356fd67661835a54c948c5cb693e0802eed224bf1ca54178ee77";
      computed = {
        hq = "8ef7b2997fa1c2c45bccd1ea80a92967477731bb86a2b4c9c45323d215b68423";
        lq = "2873f59f50a82ae8b3c7f1dbaa123da3b43c5e0e967af7dacb84a9a261618f53";
        hqMov = "34689e6bad4195e195a30411edf367abf148eb9df2be49726ba1b4d3c50826b3";
      };
    };
    "greek082.mp3" = {
      source = "571cc17e33204cd503537a84d432d78d7cb9a59affaffc1586d25ad23e76e8d5";
      computed = {
        hq = "c9807d8f812f56296918bcccb856c78588ab883f362bca6b13b3cf1bd9c2ba5a";
        lq = "77d30c4f943ffe7681348da716bd4f396b7125aef3cb2012de5775c852476319";
        hqMov = "98de79573f08145122ad87bab92cb10454e1b1ecd58eb3be33869583b2f02fcf";
      };
    };
    "greek083.mp3" = {
      source = "37687a0d03e459d50d0b71ac7d625405585aa080432dbc0365852e159bdbd5e8";
      computed = {
        hq = "e9477c81ac3440b6d079c020007ceaae3272d9cecfeaca1fca8569ef9d89e6f4";
        lq = "d1fc1921d71ba249df8bd272dc57f3855cbd0fe9a1cfa05bcf5761876ea9319a";
        hqMov = "341d7d2f62b20214861e918feea8ec4ee861abaa0adb75db35f2ea2764a67bb9";
      };
    };
    "greek084.mp3" = {
      source = "47ff415e63ef80f1f18119d470cb87c8bd5241771018399ccbf92bc85251cc5c";
      computed = {
        hq = "b6705d48c77a8ee38ded6ebe7e786c1c9f3146621dab1045dd9d0523ca5e5359";
        lq = "bf7bed59be680d1dc9624d0fb7875b0c2539aeb36e38165d045cb6ac581d5cb4";
        hqMov = "9526af5a6907dd5a472780573b558a13dc8b4fb91288248e978274488d69f495";
      };
    };
    "greek085.mp3" = {
      source = "ed15bbc86656bea3fb8da87eed9157ed738136a488e0373c99730e0adf58a25e";
      computed = {
        hq = "cec4963c5e39f4e5a3437767789ae0d585ef02eae7d528a0d97ab79161caebce";
        lq = "37c3aba19387d729191773d0d33bea61900589ce557c7354e260963a6243cc79";
        hqMov = "fb99f5d1d3038c733e70f0c06234d4acae3ddb2868b502ebe352a3f4e88fea40";
      };
    };
    "greek086.mp3" = {
      source = "d6f696f18f7374d15f3cd45c455096ff1bcf282e5704e18c8377b624031135d8";
      computed = {
        hq = "2c598c56664fb416cfe8a375c6cf66326b1779d26308b1edd5e9f795348e1ff4";
        lq = "001d3d2363443056287896e77c7dd0d19838403bca8273628d4beeac59d6638e";
        hqMov = "d7dfeab42b0639d734d348036ad89f694100feef5a0099dc5cd1e6d8e67f3640";
      };
    };
    "greek087.mp3" = {
      source = "25f364d051b2b86878a3dbc0cc3d44281858e2f2f17c45341ab26c93aeabf7d4";
      computed = {
        hq = "f0dd0235c33fad6c46b65f37e0645c238f1280fb33bebd419f7f1b980f2a53f9";
        lq = "13de723eff8f395992570179c6cad1fe26ace8718f064c43309ab920e1cf2246";
        hqMov = "4789375a288823abb93b48c6d731345c32ffd3aa5c2d28615b16d231a2f55518";
      };
    };
    "greek088.mp3" = {
      source = "c01f2a8d54799898ef6557d9f025b53607a84f66646b80a18cb29bcf3848b382";
      computed = {
        hq = "e083f1e6327e2a3e1a09575f324c77a7ee081ec0b03891e7d663da94c6026e20";
        lq = "ae9b1c0c379597d69c5e71586fbcf52fb9c7f51ab31e28500be19fb272bb3f0b";
        hqMov = "c229d987a0651c9f996c30fc66f466efe1daa754b1dac8165200f1be6358108a";
      };
    };
    "greek089.mp3" = {
      source = "30171770be833d80186b4ca8ca8a1fa105c333de511d2bd3560ece38869fc7d9";
      computed = {
        hq = "d1bc01f19c03260bb3121a6b178ccc335495af969deadbea4d4916985528ed86";
        lq = "119dc4e42a92ebee2a66c9372be1ebdb8a647e1c84d895edff200f1851e8274d";
        hqMov = "af5625956216504394f2ceeb1a4e178f05cfeafae6c3a8a200ff5213814d9318";
      };
    };
    "greek090.mp3" = {
      source = "befa8c2ce16ee1f047f76df1d9c724ca87a982f34c001690650a5f9e112ad145";
      computed = {
        hq = "ba34981758240968f7e58180142ec9ac83782bea861e874695bfbfc632b14a63";
        lq = "d1818851a37bf763f5e5b2762f2da753374dcebe22754c57777cef814d94d32f";
        hqMov = "e921e04072f558a1633a26c368e93faf054e9ce75371483ec73045969a6c3cd4";
      };
    };
    "greek091.mp3" = {
      source = "699e260f4e0035c2a2ed51f4d3a06714ec9c9f3ffa97b8ee10219fd6719f6c2b";
      computed = {
        hq = "53bbe9fe265f532e4ea6529822e5ff73318f49a88697d37b4eb00d7e528f1355";
        lq = "8b8711cdb0e8bbb6d29371cf0268ab7c686824739e0813740def9bee8ed2e799";
        hqMov = "4704b6b27ed9bb887af90d71f09b2a30e09b51d8bb62587d6beb714d0d36a37c";
      };
    };
    "greek092.mp3" = {
      source = "cf1e8061889b34de56f24502b690f13a7e8320fe50b04675ee011bbbf89b24c8";
      computed = {
        hq = "ad7e73f4825e3f02dcc6dd618d46f692e05a908b6807101d83a6b434d465fcd4";
        lq = "dffcab8ba11ccb2d3f4e059f5531a6976917796e69ca3b48e2521791f8a82312";
        hqMov = "428921c3fa12811428729e97bf340d8734d8b8e806f733eb60d86152ce23acb8";
      };
    };
    "greek093.mp3" = {
      source = "80564f6d2b27fae6015678068380ed19cd0ae62deca39110b5d881e5590b7ace";
      computed = {
        hq = "bf2553453a2e8611a43828dd77d7fb21318ef82e0c31bce4db7e1bb4c2258ff4";
        lq = "ffd19dc068c998e1211cf45f46c856b11c88c1c6a7d5700620c844b18abfe8f6";
        hqMov = "6403179633f020d81eaf9b26c57ed08d500e15380fc123cd833997a1829fe768";
      };
    };
    "greek094.mp3" = {
      source = "a29f95c619adda5af5fe5f836811b854ee68e80b6ca8d629d1b617f3b3f72a33";
      computed = {
        hq = "eb06692df2f19c20c718452fc0a11fddf5027f9e7a61fec4e747b9f4864e00c3";
        lq = "154db6d32cf3e90647e446852f4f1e691165d4deabac1c5d29d1542fa93febe7";
        hqMov = "1a10c2374cb818c22a78d66e4769b2e5ae186b8f368e5674dc65246896f351b8";
      };
    };
    "greek095.mp3" = {
      source = "588d045b40ffda0488d6a2b95320e7febbe7789258ce6491ba1bf376380dd974";
      computed = {
        hq = "d4a1f1749c63d1194eb0764ea4feec521be906a166845afd3b9de34ce6b16026";
        lq = "3ce892ec5cdc4e1442d521dd1ae3538a01ad075ecbd56820f7652a5608003ba9";
        hqMov = "0757d4ec796933da0d9e518523436471e416583e41a19b9258943270843d8489";
      };
    };
    "greek096.mp3" = {
      source = "6275e5d54bdc2ae6083858c363da550bd4c893427123a1732817a3840d50e7bd";
      computed = {
        hq = "c3f1ba46a7e71c89f49ef6ed8c00f7071e696e0a9c4e25e918cc740c85ddeae8";
        lq = "6e99e9d2424496b5cd083eec0b840f378d0fb0bf0f66c574bd5775e0977a0768";
        hqMov = "e942cbea1ffcc512f6bd971435bb83e94402478b7f83eec6b0749678db442087";
      };
    };
    "greek097.mp3" = {
      source = "b6dfa72b2157e27a7ec348d14d58ea9bb455d4c2d008d6c1f907ea6fc589e192";
      computed = {
        hq = "5b36b1aaaad791d67ce3197cc0964f222bd3c45dee65c405c24bd09265779fea";
        lq = "4f7e51bdbde07ec0f6c5abed3722292d2f0a7479a2b180547f5f2aba03203a4e";
        hqMov = "8f0ce215fd8f25a4d3e9cf76377a6be4d1c103c172e26a5d085c9a0a57bcdfd6";
      };
    };
    "greek098.mp3" = {
      source = "b3fb4e027d96fb75c91b42f828a9e1cc1ba03f4cdee66619017093ad967077f6";
      computed = {
        hq = "ae3770debb4aa5cf33a7019fab29e6f83f341cdf52fd007f0b9bf03be79a1b13";
        lq = "6d72abb841f5b80d36944f9beea0cc06d42952f2c2b1cd24fbc0c1a8960cde2e";
        hqMov = "d1110e790a7f69dce14b023bf5e232bdc489d2bbe9ae2af75ee7d92a204637b1";
      };
    };
    "greek099.mp3" = {
      source = "f0e6a39bdb925a80ee26d062d0a1d7d6d4710c0f59edeb33083d258702eb796c";
      computed = {
        hq = "1f9f376b3cd16031f93fbbd86138468da62c4140f3ad41504b5d6b32e1e59421";
        lq = "6f0f31ec3bde5eb23ced2e50ed017026f3b0cf428fd97bd82e2935aa4cf8df63";
        hqMov = "76dac9024444bf3ac4e9d349ff90c391d5c1d5462bdd7bf6bad1a8703d451238";
      };
    };
    "greek100.mp3" = {
      source = "9b9089ae1d670317fc1fad45b3b7421e9dad52559024514ae90eba70dd5a63e5";
      computed = {
        hq = "a4efc4464bc92f0b00c5fb87eb2d998126b2424110ec2a29e716cfaa16662de7";
        lq = "10774d97768bd35c2a16c4b24d21a7d5652134d8b3e3fde67da5309a57bd2405";
        hqMov = "5ea33306382374588a054a7f3473bbdfc8592611cfd5a406ce638b4af17d4734";
      };
    };
    "greek101.mp3" = {
      source = "9bff51ea4350d6afd0885de324f670b38efd350b8b30e589225c73b7026c25ac";
      computed = {
        hq = "bda326b7be2dbc51863c924a4bf7626d3e61c92911787d13299f85fdce150a2f";
        lq = "a3b1e98bb7237c1293004989682768a087ecd7cc7c1e68c88bf50fb76180eac8";
        hqMov = "12b6d498b763ea0c4af3c2d3063da1875fe41b35d380a15fe80ddfd2abe93bb9";
      };
    };
    "greek102.mp3" = {
      source = "0fa162ae984c1e6e90968a69cb513038d8e69de6974abaec6ba11473c8b8f834";
      computed = {
        hq = "7481adf75ee67d9033a4ae902ac826622632b147b96ed1dc93a1434fa9551185";
        lq = "9314e122781eacc8d2aab8aac8cc63bf2ca033008398bc2b481e662702f034ff";
        hqMov = "9fb6efcdbd25bece4eb9bff0f05700090ed7faf6b484d339fac532e16110d26b";
      };
    };
    "greek103.mp3" = {
      source = "c0cc7ef07c74bcb7d8521d3063b99cc1c2df2d10ec57cb25de5f51b9a3b9b2c8";
      computed = {
        hq = "cb347a6c8acddb751b8bee72bb7aaf17c7ba6f6260b5a8e5545279af8364e9c1";
        lq = "f2bca188da968cee07c5e7a3ef9e13820f53af235647206e7e21a57eb957b96b";
        hqMov = "06ea4d8a423057718f280a36076fe44deac746c273d814ba09c79811e6a6fc5e";
      };
    };
    "greek104.mp3" = {
      source = "543394f2e5ae0d37fb949986c912c2c8df2c55e081273e91ea3f26277f8bee37";
      computed = {
        hq = "8771b223be0d47e439d5e53268174a9150a03aa4f150956e27f2438c978c4b2a";
        lq = "387acc79d6d2b1c3235f4a7a5525824e8738f727e0f6e4fb8512d6b59623958d";
        hqMov = "35a05e685bd99bce86e99fde5ae068761f64878abdcb6ea5d7730d4b99c3963d";
      };
    };
    "greek105.mp3" = {
      source = "e3fae204c2c4508063fc131c0c732a0ec92541fc9f0b2540720110af6a4fea96";
      computed = {
        hq = "0d316142cbd9f08c65e2dbde6a717474e6eeca0762c465d709f86d6d52621f9d";
        lq = "3309c0a76a11582268c7535ec18eaece092034bcc6722e37941a563ef9bac4e3";
        hqMov = "3c3f734876e04358281e4a6ebf7211f01ef0b2f1fb587b7f62c016ab16442ac7";
      };
    };
    "greek106.mp3" = {
      source = "f735900e26471734305b6146f24eb85cfa5e2cc2784d6175d60538313fbe1961";
      computed = {
        hq = "ea30a1b12dbe5025f00a94068d6170737de456c5fac72cb1bd108f6311008f4f";
        lq = "b47a976105981a78448abb261eb72f64e0b39a7a94621bde676731595e73b5b3";
        hqMov = "5d3d9a5ab6413861c2b0cf4958796446206b570c04c502154d5bca0d70ec518b";
      };
    };
    "greek107.mp3" = {
      source = "350f71e66d7321d8f0f476dcf80d0a82418da477d078ac4cf8cde00f9a341780";
      computed = {
        hq = "0788843811fd188b464f94a48c692e190af38d75413f8cc1bb675d102674ddc0";
        lq = "b4ff20dc18bcd580f2d5d685ae5d78be03f03eb5d736b40cc6e0c91b9cd97a8a";
        hqMov = "e562b9369f30267f6907f13504c3383365434ddf56d6949fda28cfebb11a68fe";
      };
    };
    "greek108.mp3" = {
      source = "ceb3d294663ba6ab501d40cf9cb14073df3d6adf2d821234b33d6415bf15de95";
      computed = {
        hq = "58e9555a46bf8224bfabe3170b60dbc4f730fd81a41a2c90b313552898519660";
        lq = "e96d3474aaea211e7c13e8019b127a3205648333d8ac25186ff0c0b2244078a7";
        hqMov = "8263395bdfe7a79c0f65b9e571fa3a06cfbae198b241103fa452c22d86b4990a";
      };
    };
    "greek109.mp3" = {
      source = "cf5c98d8069c6a047637c00aebaa6f3cbececf633cf641482a42f1290d3dc063";
      computed = {
        hq = "a06cf2b7671980ff9158e5340f7e0e00e853fdc1ec6701260791f7e05abf5b22";
        lq = "eb2552672b1e450b0393dc6399b8fa10d55aeb6c09407e85e1e88fb10d54b7b4";
        hqMov = "3ed1cc1f224fb3d47b8abad885104c8a1725580b8ec2ec87ee2e93bbc1a75367";
      };
    };
    "greek110.mp3" = {
      source = "e6f5fffd1053559d7e189a464dd9c9337a0baa2762c5952b23d706ef28d81ac4";
      computed = {
        hq = "20a273f3105ac6cab94de50954df67726bc9ce83b37d60788bed21402647dd94";
        lq = "4199444a7ccb76f136e65a1a9dd9e61cfb38bf66b1a4942e414a7a6e733fd8d5";
        hqMov = "382df37cad1bb11afe99bbdc17c07087e02b52962833a311ca412dbfac2fbfd8";
      };
    };
    "greek111.mp3" = {
      source = "8f8ed4019f128c6cf19f88656c4751fb7f783e57ca7e6aec4d2528c3ac59b820";
      computed = {
        hq = "8aeb18e48accd9003f9d17f41d95b59d75b81c0e9427cfc6b33e9c57a76599d5";
        lq = "d55804bb35b1aea0e9ac3a707abebf81a4909573c67a15ae21c701cb0ad5a26d";
        hqMov = "7fc955eb14229864deb1e2bbc4d76a7522153b40b89d142815cf990a4759ddc5";
      };
    };
    "greek112.mp3" = {
      source = "c7ff4cd36f766e3a90c505bc750e1e49cb07cd6834e367fd9131fc3281e6f66f";
      computed = {
        hq = "6f84c8a2f5d38581a3c53eaa218c5333506c39155ede051c362f1ecf67cf67e6";
        lq = "443e0e9bda77d35d5deb481d3d836f429215affac60e6bb722e836a5e90c94f7";
        hqMov = "e9a9c645075313bb471f197cdeb4712557ff2999c041e5f3e6ec552f067d48bb";
      };
    };
    "greek113.mp3" = {
      source = "874d78a8350281c2fe41648a3dc398d729440dcf0b732baa97330c267ca3e154";
      computed = {
        hq = "cd1341c88977a4ee1ff55a288737f7c6347f3ee5fbfcda56e66ffcd349ad6991";
        lq = "6169bf7b44c305eff2774c8633e878a5189b7575b08f6d80a13ae2624a2fc06e";
        hqMov = "0b8fb4d2742d667467dfe8e8a29cae2fa2a029628a6a87a8f6e954ba4bc35537";
      };
    };
    "greek114.mp3" = {
      source = "90e71d4e2b617cdc8e5732e2d31598a649fa8d10fffeb4f23d3f528aca3f0180";
      computed = {
        hq = "ea696b98112d701c099b6bc639572c82bfcfed63ea4d15a738ed718d111901ea";
        lq = "a4e7837f650837e1d36d145fa6fb21fad9aa5bd215231dd3dcc595855ff5cf47";
        hqMov = "a72e361d0393254c367c369fa712b794c4e35e5ae00a384e110aab008b947f45";
      };
    };
    "greek115.mp3" = {
      source = "239552d8f98d0191fb4a3c070b1e1e41c39181426a97b2d1e7117c1fe27980c6";
      computed = {
        hq = "e129a78fdb973761ac39edd1af2cd6448939363a950ff464a7b71bf500dc6c5b";
        lq = "55628e21ed6b05c0eae92f8257972ac99bcfa4ba4162e34e91a9f0f3fa2df422";
        hqMov = "a5ec7bd2dcdda91efa691755c2482770de2439f31cd9020a0fab1b019408a719";
      };
    };
    "greek116.mp3" = {
      source = "65447cd2ac736753156bc144ae1b7aa479b1a532444b3ccb5b0b5372d0d6a58c";
      computed = {
        hq = "53d5a2abca773700aadda1c955ddc316af3709764e9884816e0899bdab289c88";
        lq = "c5515b029a5c2692314e44a7d690f052c5b64538ebab79a74602f6ae0fdd9c4c";
        hqMov = "ca888506483e12f3d1b2b9318f476c23feb51a38f58490d2b9dfee466a2d8be3";
      };
    };
    "greek117.mp3" = {
      source = "282c65165fecae37ea6b6c10433952f5409a36fa48df1236d27295340fbc7bc2";
      computed = {
        hq = "0a97684aaa1f1cbc490831d7e1937a4b4a32e8c5de0b4bc2cf43941d62ea3ea5";
        lq = "fc0f5a7626bf3a93a5a34ad411fe74c3e81f502a34de330ae31460e98843bcab";
        hqMov = "81c9b87606cbd22915b4124718d00e2a9bcbfdfca0c8a7b9a4f24c9df55effaf";
      };
    };
    "greek118.mp3" = {
      source = "7a2648d63d7bcb569988ebcb7242f16d0b643bfe43b6c066e0ea1bf06bf965cf";
      computed = {
        hq = "8324e6b7156adf28d8ac7e654e58739ce2f51047f5ceae4b96c7c1264709ccb6";
        lq = "fde6a29c9c0bbd6a8c9d70cfbff952d70975a72f5c3d61fa0fec76434ac2f5e7";
        hqMov = "9658504eb01dbcfd8a5a7b1af90b73594e8dc705e0e834cf2445545c8d1fbadf";
      };
    };
    "greek119.mp3" = {
      source = "54bd59cbebe4c30bb7ecbb4386bb823cc0e8af4b3c51da41761ad9fb54fa0c6f";
      computed = {
        hq = "b017027868c03f52f42cd0606f5bc93a11f8853abcebad38e9fb675e18b4965d";
        lq = "913dcf35ef9aafbd8e9e2d345cc2715b4f1000a6290ffccb6c243ec62fb1d697";
        hqMov = "e01dd390929128a41cf42ed67f9e0ae6a37b6ec8de279cbd1f3a92269c887a53";
      };
    };
    "greek120.mp3" = {
      source = "98205a8ef97ba129f523c45a8b63f48c112520819ed17913de8cd3ac68cbd37b";
      computed = {
        hq = "f9083c59eeed1dfaff3a64bf39029273a4f65ec9c1dec0fa21b0f58cda164821";
        lq = "4270cef81bfded8fd3d099013b6e0970524053de5bd410c77f317e42fa54273e";
        hqMov = "b29f8ff936e4cc296036b427145836ef0b951be4fd081100e8d2b187f1b8e3c2";
      };
    };
  };
}
