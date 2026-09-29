{ lib, series, ... }:
{
  id = "music";
  recipe = "mp3_8_0";
  tracks = series "music" "mp3" 1 17 ++ [ "music018-2.mp3" ] ++ series "music" "mp3" 19 30;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "music001.mp3" = {
      source = "89ec8a1266d4d87f6f53152407b68bc2a09a1962ef85ca06aea8be867a8c8800";
      computed = {
        hq = "db6d59d79ab14c5a20c36f300e79c5b7319296d668d36597c5930c6b60779607";
        lq = "e32047e71c82b9ef7d4ef48df07ee4c1c65151b41fe1a3c75b95d5266b908ae6";
        hqMov = "2d03282e58d78f68a8cbe383c841b1a23510d7adc5c0d389e6541a2b79e7d353";
      };
    };
    "music002.mp3" = {
      source = "3aea52315594198af57d8bd30c824119cb8a1e1c6669ed19e36bb4aff3bfcc3a";
      computed = {
        hq = "e1160ab82ba2ec1c6abe30fb3f127e3459d2e5438766c63db7065a327f2516cd";
        lq = "163152d11da74edd813060640ca8d6ff36248fdb76f3af48fa58516b8f68c253";
        hqMov = "c8ff0beb854f36535ed810abe9ca6d10d764a847565e04b35f1f7e581d74c10b";
      };
    };
    "music003.mp3" = {
      source = "4ca66bf69e5efd9cb9413f3e5f19f74247f77687b42c07852714c5be5aedb0d9";
      computed = {
        hq = "ab69a0246a4e07931f9afe4a61ba6208bba62b9713d16224d62249494f5286f3";
        lq = "6ec164f18d347d28bca040872ccc65533a7fca0efd531f1d4096742398304d89";
        hqMov = "7ba6cbc10720a52f353d747402675ef8d2263288c388135557da46923e1619fe";
      };
    };
    "music004.mp3" = {
      source = "83e7511ad883b6a7ae7057a243c5a51b83f4c07ad39da8c2b2803010279d5635";
      computed = {
        hq = "b082220e8520f9bde2131b972092a46d871bb1577b90ca07d3edb3caa8680769";
        lq = "cb5e1430ad074c1783408ef22da4c77ae7973d7a640726deae05f8b1f09de068";
        hqMov = "a921fe3d62e1fc3ea56fc97194a64c70b3102c61e22582a2e032c77ad30f454f";
      };
    };
    "music005.mp3" = {
      source = "602e18e986d8d869776645092df69762200ff4c7127a409e5d0137d7d2f22c55";
      computed = {
        hq = "b701357990e37fec8d984d4aec739e90b1cb2b345bc8e1d09afcbb9260e5c843";
        lq = "aeacbfb94b5829877608911fbb8f36cfe14b04bb1ec8eb329a57068322e9feb8";
        hqMov = "8838b102876e3eaedcac51aa1d5ae11d2e365cc06dea42726fd60790f0304ae3";
      };
    };
    "music006.mp3" = {
      source = "e65da194b8713930bc0671112c4b8cb700b7243902ce35136d9a6feef3575eb2";
      computed = {
        hq = "2200181f32e587fa80518cc6e47b68f9f3f0756d74bdcdd92ea7354b7678b693";
        lq = "b3ccac55bd74911f2f1941fffb6933a8f788acad71c5586be1bc38b5d65a4c30";
        hqMov = "569b977934ac5ebcee73c92ecb038008ebab1fc213d07624a3261d6499d46455";
      };
    };
    "music007.mp3" = {
      source = "531565f8c3d694a91ed9359d910fcb237ef9d17f88ee993cb8874f4a86b2824f";
      computed = {
        hq = "e3e12001198f5cc418c68a675ec5b4d75dcccc2738fd6f1760632d21fd4cade4";
        lq = "41481c5adf56e0529b0ad46c63bc99861eac7486ecf6491fc4042b8fdff88cc1";
        hqMov = "26c2bf1c700b25bc521ec6786005a8ae851d9baa37398825e82d723e521bb40f";
      };
    };
    "music008.mp3" = {
      source = "f8ebc8cb255d9acfa4ddf0d557c529abab5e258404e730a699701e1a953bd232";
      computed = {
        hq = "2fc16ec6f0838c3ff80ed471f107ee88d48a3b6be63bef918395c2c09e20b47a";
        lq = "1071c8c59d7ac50396bfdc22ef09c42cac1e84531ca33fa53d47ad19c56b6476";
        hqMov = "9cb01941a9b4b25fc891dc37fe3da64ee333dbd977535e90619501fd9dad61f8";
      };
    };
    "music009.mp3" = {
      source = "8cff85de033a11077383b6bb5d5483b86c046f61212099d96d2b419a2397c537";
      computed = {
        hq = "b638475275b0ede59fb95ae092c72f4a336a8611e55506150446e62f9585585d";
        lq = "6b01f2b7e62205e7e77a01f7642d110f378feffeb13d5b59617f7845b5c9c99e";
        hqMov = "6ab63a1a09cf4fb00d7d694a460e1bcac6f440540160e1aa88fd89a2592118a2";
      };
    };
    "music010.mp3" = {
      source = "0f10691bf4db87dbdd2becf2419b7b10613c00f0d35e7fc7d0c35f03193a9991";
      computed = {
        hq = "add0cd095282cff9c616513fdbebefa26cac764907d8022e02d3fc92dfbd3108";
        lq = "c477667dd1ee0ad4fa8bb2410cb814a07687b85e494df4089813a41a60609675";
        hqMov = "beac9a6c7b60dd3c4127d22118a04b1c461ee12465668dc19f18431d898b5ccc";
      };
    };
    "music011.mp3" = {
      source = "c6d87f6cb02415509d6ed0db4cf293ef00da33d088f322aa7e23b0e510d2a93e";
      computed = {
        hq = "67b1a3bfa1d0d3fc218060239e2100fcabbea6085344fcaeaa060fbba5d46544";
        lq = "c0b3fee3368e66291b1a6a1570764bf07f4e5383d7faa6ea93b9a850d3bd01c7";
        hqMov = "cb2757839626549a407abca4d3dccf5130025a49084b71aa70919b7682638aad";
      };
    };
    "music012.mp3" = {
      source = "71231b0c93639cc53228a19504b9358983147551eed9b1f81ae6f569d9912a28";
      computed = {
        hq = "0a715cadb05b1b43d0b6854cd07d4ec72765b27bbb05d2f66a42c7f0aa414124";
        lq = "8469183e471b5d3ca6a1521bfd110f0c89083c7c33a6828bc0e02074a6d7d144";
        hqMov = "c41e2be5fbfe3d44f85b5e93eae9437284b6577d80e2ee0dcd707b6d483d3664";
      };
    };
    "music013.mp3" = {
      source = "134816abd49e6fe2eaeaf97f0822bab6bd4469bc87fbcd5da418c5dca6289008";
      computed = {
        hq = "ae0d02de6fe16be7f5a943aec3fd040e35cd290903b221313e3472ee2b575b53";
        lq = "30b428e39845ab50ea7d9da824215554f9433a4a6abb936126a8f4162878b177";
        hqMov = "309ee8203a9ff4f55094ffc7609e98439e48061cde9bf95738ff44526fa7bba6";
      };
    };
    "music014.mp3" = {
      source = "e453c7cb70292b259ecd7bd52e966d200e733528c5c7a4652a8802aa07e25675";
      computed = {
        hq = "423d1fe9b1f18a0e08650859b170c0aa43eec15f02cb4c12aae79ae8e9c795ec";
        lq = "cb58a0e45dddf8f3a78994eaf992462c8dc9b715dd910c11ea6462ba16e9e8aa";
        hqMov = "ce3e3577ff276e41bc63c3fc5c8be179386dd16cf1944dcd81cc0e3d6eea9257";
      };
    };
    "music015.mp3" = {
      source = "d2455aa7d7915f35716d31283560c47aea57382b21bb09c5e0f67aae3005735e";
      computed = {
        hq = "056b43e4d2755827def3013407ac761f5c11dd183ce7dee01d1dac91559b5f79";
        lq = "240951fdbdc105865eb9e282c26f8693748f58d5bad42c6c2c8d261fc9b2103a";
        hqMov = "3cdbf926280d6bcbaa672f218b07fd3c94c96543f7c0dfb9a166dcba56efc340";
      };
    };
    "music016.mp3" = {
      source = "a7a0816695662233c347aad56d48b23d5aa8cf8ffb7a1622790183532795f8f0";
      computed = {
        hq = "dd299c0df43d22dfac73aed2f28c8f8dc9971e7109c17f0f47c878f018eea04b";
        lq = "b19361e223be1e2884eab666d14e870a20386b8bdc0b15d94c77b1631b42f5b4";
        hqMov = "2ca7b8ce6f0775bcfaca6cabd32bd3046538fc061b4ffd2ecc923bd4978727a8";
      };
    };
    "music017.mp3" = {
      source = "38d85959d620d132f00c993fd41486393eaa5518a04220fc03bdc832b9e82755";
      computed = {
        hq = "9f89a015fa34463615aff94f65f84d0aa64362e910d015d561cdade34008c70c";
        lq = "4a379528902a9d878629564d6b62307f5172b3b2565bdb1c03c5fde4cfa65e47";
        hqMov = "a3f49a941802b01815761f1e85c0be94b0cc82988b84476ba093af22c17a69f9";
      };
    };
    "music018-2.mp3" = {
      source = "e5978fe3fdea35fad1d92a7e86f8b9f6df278a91fc35de19476f7a14a33fae7c";
      computed = {
        hq = "eb53ec369aa635ac2c8fe201e51acf8da1ee76e39eaa5a6e9932cb9070b8bef5";
        lq = "c5353f6274128a6d84a2644a583d5c13b3982ce68e43f1af13ca3bf29c460398";
        hqMov = "5bd193d2e38aeff4eacda4decc74e324e260624558ae0daf9667658ab2b27aea";
      };
    };
    "music019.mp3" = {
      source = "366d134bd2cbdec0e4aa1a9fde37e99ca102f0ca2cd0d3ad0b3be8639cda10db";
      computed = {
        hq = "f86b68b32533df083ef8e8fb90f056d018ba7347fa90ff4cd3273d733e815454";
        lq = "b9c1c219d48126c584784f3ab0e64ea5f6631021574f142c419690fcd3b311af";
        hqMov = "6f2e66dbfab3a07ceacaaec691d8e6bc0c205c4e3eb9cec39294ec9f625a8e7e";
      };
    };
    "music020.mp3" = {
      source = "45fa81c9ba288c2155bd82df6d3781bc4b7cd46731c72bc1c48ec82e0e29baaa";
      computed = {
        hq = "f4774b45ee3399c0686e1b8056b064e7c96f164288449cd8a67d4ebd266faf59";
        lq = "880c2e7a6ae73eeb9aa0c05e6c5cf732ab43956fef02959f701fda15789e7f66";
        hqMov = "e4df06e883aa78f0ef9bbf44d95597961f25f93971a52d7f764f2e3ca182fe44";
      };
    };
    "music021.mp3" = {
      source = "bf802489e0a6fe3287508ed37e1b48db8698b4de351bcf09d32fa6436ce90ec0";
      computed = {
        hq = "e86ef5aca20bcd48a267d10aed87d52d2e3441bd4da380d0e78d4ba441527e89";
        lq = "b6921a8a5620c89c1275347a86242262b4d23df945fbc358186650e9c30ba457";
        hqMov = "acc974564016c3f7d5e82010ac98c2336c1e22f9a6af515110f2454736eb7479";
      };
    };
    "music022.mp3" = {
      source = "e71715429cc01df6eb2f269815840b2093ea0cac4f64138a61d8327fa3fb542a";
      computed = {
        hq = "6cab2d2aaef7e50819d8013765dc9261a12f109b30dc60d8586e3ad6eff5f743";
        lq = "f47f7d312d814966d8afee970dfcea0f9e598e947fdac118e0d946a57fb0e077";
        hqMov = "9b213745f2437d604639f5bddf2ddeb911f3b613cde002c783c759ee749385ba";
      };
    };
    "music023.mp3" = {
      source = "77ce34028f5ae7ad27ca3ad41946f72904e8c0a3fe40cc0341b4d53c8eeaec9e";
      computed = {
        hq = "9893f8992aeeeb21f4ba0d4f01c10f9647a065eb9ac2964f5e394f6712343345";
        lq = "4b6c5c2de589ec450f5285063769fe12212dee7f9766576cb3d1458a88e4e4dc";
        hqMov = "f45be93957f6cb18226122819a88a76ff3e839e0738e24f1e19aff0123b7031c";
      };
    };
    "music024.mp3" = {
      source = "18a22bf79cf85cd43ea0b877cc5a841804a392cef7bfd789a52d5096dda31b65";
      computed = {
        hq = "6356309176f1f9f1671968f3be5106e5120013cccbca0a273531d160787e3e81";
        lq = "c64b54885e46aab5d6e2288747ab1ef134a0d7c4323852bb26e7fe09b4e0ab99";
        hqMov = "5a5931ca159b9f67c6196911c8330498165d455ed5caf0da688c234cc2679065";
      };
    };
    "music025.mp3" = {
      source = "cfd2a50e6ba1c88f94364802476830b9f5e92a892580410b2a15ed44a8b75f0c";
      computed = {
        hq = "2cf2946853746f53f4e65ad4df56f66070945548e18b76450edba7dbc75d28e3";
        lq = "17855c3a78b1d7e07e3fb29abf2247f205b8e182503c8e771f0d4bdc5133b05d";
        hqMov = "ba2fc358d9ca1479d141a7f87e458ad2273c7a9c90c7800cd5af320076d93316";
      };
    };
    "music026.mp3" = {
      source = "12b494cd3bd987dae08ac1945402310d4554c4fd72aa097fb2c9833d3aeac90d";
      computed = {
        hq = "0c7a193ba0f92561ddd329b3fd57fce8f5e7789365a185b9fb9d0b08fd6113e6";
        lq = "e80d487ae78f5ca14e4a29c17558216b656d9d2efa9a022485febac65191c953";
        hqMov = "78d2e5a7f1c790adec9e9782dc1390587305a231f635c4263f3111e84da7f2b1";
      };
    };
    "music027.mp3" = {
      source = "d39e733eb7b41d29f92351afc89005f6db56e3f1b05c852de3152cdcd24fb035";
      computed = {
        hq = "0edfbd1fa9440639dedf6b3e759c64a7b954c4d8ede68a19c63852fd4ec552fe";
        lq = "41cd612e2c1d94735e84e72fd0110a531e98f1d4f85f54bf1e5aa870bf4ae581";
        hqMov = "736c54dc212d7fafa8da0712268a82315040426ed3ca2781aab715c1f92acf64";
      };
    };
    "music028.mp3" = {
      source = "f98cb0467e790b803257457df2fa0cf5e7d82c3b591fcf37ac24eb9ae4b8dbb2";
      computed = {
        hq = "8e6219f9dbcf51341589060272a29e94c6abd90ff506c2d3978024ddecf8f0cd";
        lq = "9cdcb15109445217b8e63e095984d17baceb9d6fd0654c6f8a7eb9d9a496a5e3";
        hqMov = "dca25183588c6e7e9c804c9459cf61e2eb797a1b70bd0a87c84147924c76ae3e";
      };
    };
    "music029.mp3" = {
      source = "a1d22c15691f0ca231295d3db03a4bd03d6b5b4bc73eee7414df9669a8a94710";
      computed = {
        hq = "023fbb916f746b8eae287a24b413294302475a5cf820dcda685cd8980d7ad76a";
        lq = "347f81dabc75e2632cc7d99db69cf6edabe2669d9390c996ef9aa7733890a054";
        hqMov = "111626a52cbd3857d9cd2d58a79cea037ad9e2b02e5f756879c48195940fc483";
      };
    };
    "music030.mp3" = {
      source = "efb1fb427480572ffbe198b230e02c32548b2bf59784fbbd80f7efac9c035e91";
      computed = {
        hq = "41e090e3717f5cc6b81ae8a1f331263467af63f259733343adacfa0af9f1f665";
        lq = "6dc39c2226d62c84ddef7fb7aef173dc746e39c595a1cadf8585761870aab8e3";
        hqMov = "0eddc7d81dc66694be2228db6d2061691d89f1493da1c4b51744aa2f5d5e7350";
      };
    };
  };
}
