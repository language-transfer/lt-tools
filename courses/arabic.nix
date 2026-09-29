{ lib, series, ... }:
{
  id = "arabic";
  recipe = "mp3_8_0";
  tracks = series "arabic" "mp3" 1 38;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "arabic001.mp3" = {
      source = "3e070db853b7db86334c4c29c6424a4d339031266323a486bb3b93995091dfb2";
      computed = {
        hq = "f031cc0e959b727007a90d63f644951d6f6ad227995fdfb18b00e72694be3cc1";
        lq = "0469595336e491a0cbad0d72382770d886561ae7dbc09d9d0290efdbad7b1871";
        hqMov = "6b50c75650b35e345ed50ddbaf2f97a8a6b9e2fa53691c663e7e44d9b703f351";
      };
    };
    "arabic002.mp3" = {
      source = "7c480370d0d2bafc6a83a37500e33d8d1d09888284aba6b07f082a03fc66e471";
      computed = {
        hq = "3b00de09ab883cf2dbd4c757a5163fda05072075e70576fc59b4a30443e2b68e";
        lq = "2c0a68974906354dec7567baa3273c2fd0067e6c29effdf3ee2b27afb8593944";
        hqMov = "47d4ce6f8d3202f9b6b7d146fb7a4313e0088f9d42d427d40f4681659a0f0970";
      };
    };
    "arabic003.mp3" = {
      source = "91d2669baa66a22183c26a92ea865fad1807ba77124c002f9f675d4bc735befc";
      computed = {
        hq = "8fc9b767746fa4814bfcbc416f5c3969b89ad52934ab1ed7f768764777be9fce";
        lq = "e3cc1bce82e53b324dfb60095f49d2c6759bb884d9701e9f2e4394448b243a9b";
        hqMov = "3fde92241e1cb4d076830e5846f8469d706f1c3f9d307c9f456ae17df9628558";
      };
    };
    "arabic004.mp3" = {
      source = "dc84bee67fb1a23df7d5d16781b53610749772ad2dd12bde5df15884700e9f2c";
      computed = {
        hq = "c4db3f69c9b0ce63a24f0532a6ca4a2f9e2280182b047e5b1701c02c6ad9e158";
        lq = "3a837b31a9091760d18083cd3429e1b78c2804822c14962810ad247e3d3c274e";
        hqMov = "659046579874d4540c6845571a711123205b510fa1715c1802ef1c12e5b0daaf";
      };
    };
    "arabic005.mp3" = {
      source = "2691a7e734fe8a1d657d7d03786087b10ddcf831b3abaf3c8040186a00b92536";
      computed = {
        hq = "ee5ff22703e2b2aec036d6f7dc47fa816c427c53d77e151e57f67ad54a0c6ddf";
        lq = "bae05db20c4f5326f55791df44566536f868b3a17a81f016c7d869f2dea1d845";
        hqMov = "19e9828af26d84052374f85d46a87ddb36051430abcaaf5db6cb107c41c94f45";
      };
    };
    "arabic006.mp3" = {
      source = "20d7747f5a61e0e2b5b60272e95b4c2025928dd6609a638bc6c329c84170a389";
      computed = {
        hq = "2af5d7a3f972d1c939624374a7bc7d21ca3152db65dd324bed7b4f02c00f74ef";
        lq = "3786d6090345a2491de347cda0fabff0f283fdcbe59643e66843a3aedcd6e278";
        hqMov = "fd083169e878b9e5c07d66f8791af7e0fe8763e6092a46a6d4fac0e7016bdfb9";
      };
    };
    "arabic007.mp3" = {
      source = "ece1a15a5fceff65b81a7110e0f635b848dede03495e5780e7971366fb09d6be";
      computed = {
        hq = "0a4fc97394eb3f4f8b6b2c606c7896ec084b0d5cd780104c4430a73ec40cbd41";
        lq = "7de916bd0b7d2e88325d3cafc29555e263a2a189c173ea264a03ea4f94afbf32";
        hqMov = "8c499a8ffa418111c26da90ac78c245972d24fd71c3f83490ee6b9de8453b58e";
      };
    };
    "arabic008.mp3" = {
      source = "ff6c329add486bda8afab083c6f701ecac57926bcd1bda2b2797e91717a19c2e";
      computed = {
        hq = "a66ec9e5eb7d5368d1af705dddde3143c687b73e54d1550d20d1a44cd3f2c1f5";
        lq = "5c65ed9e7c0470286fccb9b3813de13472048b4b0fe1aaf229da44bd281b12bf";
        hqMov = "fd884d407513186996a57bb704f14271bd6acded2552c2362a18490a544b197f";
      };
    };
    "arabic009.mp3" = {
      source = "e8d57fa598fb57d52249f5e9a7d6d86cfe4379ecdfcea9b6338e1ed6292f4a7b";
      computed = {
        hq = "4de33f112bc4c04e996479cfb847cf84c2011aafe6d4afb57de825055679d94a";
        lq = "e9c44a2d88a2303887aaf982ba04ec13a3dcb015b450684809a4b34fb066d507";
        hqMov = "149f394e0eaaa33874766373bb4f5e3c1227cc90336a94a9a42263d6eec97d92";
      };
    };
    "arabic010.mp3" = {
      source = "23b0c249b77d0c84a0833418825c2bd018cf46dc4cc389fda5f15057dad5fc84";
      computed = {
        hq = "6d8ef6877206282e40368738a3fdf201bfece7d0f76df7db9b8b6246599ce5ec";
        lq = "efffffb260f136846145a0d042d4ec23fe74947564a4e2de52192b3f39e427f3";
        hqMov = "0e4e0e39805fde1b4502b1baf966dcb1e9f56074041a3fcd3021950f67c4faa5";
      };
    };
    "arabic011.mp3" = {
      source = "8736eb034ed0851047d1066a65c26503b88e94f00bad1110c5deb802746ff508";
      computed = {
        hq = "eba2c700069e28b02164b977bf67f10a29effeef7fc268fea64b3e2d1d0e0198";
        lq = "059a0384d518c0fa0b4f04dd6754df2c5cf2470a4f4e9236788d35eef512b7fe";
        hqMov = "91fd463d6e049c439ecc0756439a9ba1be9b3f7f6f52ba66708bb770dd2cce8a";
      };
    };
    "arabic012.mp3" = {
      source = "ee4e82412ee28a98be1d32232d5d35298e052f9616005952a609d5d1c5d4416c";
      computed = {
        hq = "ab99fc80de074f9f6b152b5118906eae4e75b1e42dd1ea1398f047e0b380ab0a";
        lq = "59bea03f8076d66380fc6b242b0fea2758bb567436fe83287f42403c355db6bf";
        hqMov = "5f3de4e698fbaa7090634175bfb8636a71d3cfca46f3fae0629ac733af5624cc";
      };
    };
    "arabic013.mp3" = {
      source = "109e8009ffac91cb0fa5bdc64424a302ed206636fedcc83a2b6af52e625b8506";
      computed = {
        hq = "820d80c0ad9602bc3e6a763f71a830c6fed2b9193aef22c90d1f13539fdc608c";
        lq = "e7cd21aee4c8e36d6c5feafe9772790df78fcb55be89701359858f08a708c5af";
        hqMov = "1b324c9a86e17487450bbfad17e29c560b2ed98b140b8522f7199febf060ffb1";
      };
    };
    "arabic014.mp3" = {
      source = "44854ac5824c5d3124efcfb8c8316d21fc51829aba90819628e2108d9c860134";
      computed = {
        hq = "efd0113fa4224bcba6996023f1c447f4a2e9d5f3eda5ee8ffdec5f975c8377e3";
        lq = "c1810f82071bd1957f1d166b405a21e4f07c97cd5cd4fc0de1405dbb70f298fa";
        hqMov = "6e05020563251aa39cca1fc75f538a40168e550d82758fbcc911e18964869917";
      };
    };
    "arabic015.mp3" = {
      source = "09032d6352eeb4e13e64700b9bccced3b0bc2c3a3461b6c54224ef6d421b047f";
      computed = {
        hq = "02fea5ec136262ee6ca141f3a41d5035d5ac04b65b952ee47452ed51db2e8cae";
        lq = "1fc2935fa4440842a7457a43b4297894744b7eca1cd4fe3eb8732235524ce59b";
        hqMov = "c4257eed0cefe3385c1bb35f0c6916939e25bff0d092c4d558ecccac288bdb98";
      };
    };
    "arabic016.mp3" = {
      source = "3abc7bf1c013d560d039c3083506c0899650b5cbb65ae66f94d1a17c0f0d5408";
      computed = {
        hq = "d8c4005094b6b87ec6926e0590ec0c480e62049aefcf11b6a6a544ef022bf83b";
        lq = "888e5ab1c8b2872512ec7bc9585930da673e72b9e9f7977680b43474c7960032";
        hqMov = "ec91bebcfb9f1c449c719704d078cf0d98d58819c3926310746d1dfec643bc81";
      };
    };
    "arabic017.mp3" = {
      source = "3b6a38258e7d46463fea1e7ef292fbc3d7dae410d9d8c216ea2087bc187a674b";
      computed = {
        hq = "cc15af45f4d6408758db686a72e89f9885848cbad26f9f779eff88a77605f602";
        lq = "ecece9af1e5bfd184d93ae9d3412a3d222eb9dbd6e1ee673b80b30868a21212d";
        hqMov = "273796dcd8ef15bb8c9fac784582adba844516a1c49f15606f4db28962ebb11d";
      };
    };
    "arabic018.mp3" = {
      source = "a4f187e8d7ca68ed1d5c657e38baa9caa2c24f97e257868b67aa2f6068c32f01";
      computed = {
        hq = "7b69c54d5959b4ab87e8046fa3de5c019e5c23218a4442e67cec191b10bedda8";
        lq = "b7b2f53227f9f83b5995052e95fd977380b0055e17b917e10dcd8df474b1728f";
        hqMov = "9afab78c89e5974d3e1935a39b8e8b3730abfb2231a79e3868062919b009f701";
      };
    };
    "arabic019.mp3" = {
      source = "1f9f514f1d3342ecaa4ccb9a86063b96c2043d1dffcea62efde6bc476f22c176";
      computed = {
        hq = "89e4329be211c29dec970d70810bb42177106a0df352d5c19d23a25037880130";
        lq = "0a05072b3e2eed7ccd96f5ada3543943f6f78b9284da1b1fd95ea8bf33339672";
        hqMov = "027501ada4b929545fb8d0edc02ca81420283b4a38f44d0f572e2b850b98c40c";
      };
    };
    "arabic020.mp3" = {
      source = "8f774dd3609eb050d777e6c33783a01c69c1fb240bfae5c8f03a325c86619c2f";
      computed = {
        hq = "af79cc23cb5c167e7151e6b4327a4be79d5e287707848953dc58d49027b98204";
        lq = "b048b8bd336df75c45cff49800458e200c8936592c69bf67e967cb84fdb405dc";
        hqMov = "1b4145a0c254c50b4e4f17173d572197ea3ebfac4759d02cc441cc99f0c637ec";
      };
    };
    "arabic021.mp3" = {
      source = "253a0de7982607e8a72e3029c6a7e7be5a2a8350129fc282e8fdbfcc68b6682b";
      computed = {
        hq = "338ac7cfbdc5493fc4b30e8eada83f7bdeb0f84d27fa996f780cf31245e1f367";
        lq = "67bcc9437d3731ce3dfc129c7f025e6d48666b9693f593b6ab4d685fcb8e9d6e";
        hqMov = "cbd3cfab69755719b7c476f5684d1ade04f587fbb015e4e33d095da8f4fadf3f";
      };
    };
    "arabic022.mp3" = {
      source = "b8745cd8ae62d21976a897d75e520a3731fa97daf00789fd648be49faee62728";
      computed = {
        hq = "f820a4c7f71bf2de354105734bbf57b44e391af0b70beb3916d82d9520930106";
        lq = "ccb2b901a945df0f85f5e72a4fb33bb044b0938395f66833d1e6680e0732ff1f";
        hqMov = "b113cb14315a652df8c8e1119390718f2ba4bbe72b2d09c3c1a6bf4859a8be0f";
      };
    };
    "arabic023.mp3" = {
      source = "5ec1a02705485a91824d3e190a06e85a4cc9dc98a0dcdb8aff110edf38a551af";
      computed = {
        hq = "10b0c4515dc1e2acd4762fe69a061305fee983669e85a217759c83d31f461551";
        lq = "a68f497b3a6db5290e82999c090a793bdf95d9fcbfde12c6ed06640c48a3189c";
        hqMov = "c8af4ab5f76b1969bf64185daa94417d0b1b0e2a60ce4cdcec4a6d915625e99d";
      };
    };
    "arabic024.mp3" = {
      source = "7a14045cbd5a59a9d246f7731d0f599496f33ee4848b798179b7a60637ac0f64";
      computed = {
        hq = "0b6be3133a9c70304bd9f9c86fc2726ca56d35434efd6aaa7e104e980cf73722";
        lq = "4f4dfccff8025c36893e281bd035fa4cba3c2251761d010a727a4f5b916c49bc";
        hqMov = "b96fba1be2a1c3a16ea44aa1cee618d302e91a7955f0ea5ee2c016a86e63738c";
      };
    };
    "arabic025.mp3" = {
      source = "296b7f647e968fdcc1552a5e3a41307017bd7bd329aae2925b3d99c388309e09";
      computed = {
        hq = "3ce88261574146963ac6c25597c30b236a3078700c40399a8cc3ab967647b444";
        lq = "83b74729bf81438cea7799df11220979b795e0c3ba5e5382cbc6f3e9dd4ad4ad";
        hqMov = "de4cfb5fb5459b906d283185456e9756e40db2f4fc362366e6414aee17243378";
      };
    };
    "arabic026.mp3" = {
      source = "58cd997acaefed54c2642bd271cb72b62e49ec2409a49dda6a60fb8bcbee3389";
      computed = {
        hq = "fd28ffd02319486b4c06e731907d746cdce5dd579ecbbc6ef55243870e51b258";
        lq = "4c52f8bed22e9953758ffb105fdf8f2ce440d7b076aa7fc21dc3b489e549753b";
        hqMov = "8666a74f46de5a714725bd6118e5a9d670bac232a20b48f5c16a9c241a22d473";
      };
    };
    "arabic027.mp3" = {
      source = "c139f5301e125bac47615c0e247c3142e4f944ecda252b8659f1fc89bcad2090";
      computed = {
        hq = "cfa49cacffc76820be23b3b84ecb18b836ba59679c4bd7650f00af3cffa4ea96";
        lq = "1c6a41c2ea4f33bb2de02a7651ca9c3e1fc0dabb55dfb6fd1f49ff4c7136ce69";
        hqMov = "0f9dc45cb1b30eb3947f2852b8085d7a2f5197173c6f74dd25a25cbc86fa504f";
      };
    };
    "arabic028.mp3" = {
      source = "0daee0cd22afa63b5002277ce902a7eece43869f7343ac7e5e7d6ba75819db37";
      computed = {
        hq = "f834841f73177e7fba07b1fac23a8ed76416cc1a0fab62ed5216cb0fe5066a6d";
        lq = "cd0aafecb6846a5e17d926a8d1560fdf3719d990e64fef19f8b996eca352c127";
        hqMov = "de7de5bf9c9e9ae01ce587f89b23051fd429bdd104a383a7433e8f48e54cce20";
      };
    };
    "arabic029.mp3" = {
      source = "aa3fee0a2f21ef003f53e04fc3fb738e3705a67ab7953b387232b2484a608f86";
      computed = {
        hq = "fa2c2a5093847d0d2acd821091580445203b7e8faf39dcdd754e02385de977a4";
        lq = "b9787091ae0597cf91d1fc09af65ef290244814b8634b59b9795a4f66d4ab678";
        hqMov = "a849a6e962b98f106b1e83c605bf7c32fa07c567aed6ddc9d765990c3f04dbf3";
      };
    };
    "arabic030.mp3" = {
      source = "2cba8cefe5547c3dbb159b4894e72b703c0fe26ea8c897ade8e771ca0cad92f6";
      computed = {
        hq = "f5a2d689e4003e89ec1887dc31a4155c32dcbeabc7d2e9ea019b59a329da05de";
        lq = "bff2dc2466184b82e0c4e34c8432d987cbdc8d8ac3a6941e468150a12aaaae6f";
        hqMov = "3cf46e5a4696ad619035745cd66d24707bbce1a508dec28e78f677f1661f87f6";
      };
    };
    "arabic031.mp3" = {
      source = "4b2169267c58c0a5fdbab815d91afdb13a7a0edb75d462c50cab3ea5119569ea";
      computed = {
        hq = "7933cac591dcd058ede8814d50012d115cda7561be3b3ffee86030975bda13ea";
        lq = "553373e00eba3283fed5796ad0b37bb2b45abdee3950d369b66fcb4baf70d83c";
        hqMov = "36631c5c0f9fc99e4b6de63e9d74608590ce99ba40d9f4902e4814fa15907748";
      };
    };
    "arabic032.mp3" = {
      source = "23541c19b6cf7f7693902e7d51f10201073744c5adea7f0509a0d6bacf39df37";
      computed = {
        hq = "7f16230c08ee9224523fe7be4379ae4907056f95f0e5d93f23e9a5fca026d26b";
        lq = "be2d65d411a9d9fe1bddad4d25171e58825a1342682f4b0584a6d9e1d7934cbd";
        hqMov = "1476ae7016b6d6514716db5bf70ff046e38cce52b059bcb9465f004c1a76c256";
      };
    };
    "arabic033.mp3" = {
      source = "df07ab58575e66a08de0a43be93381a611adc7e8bea3f96c445cc3309883cbe8";
      computed = {
        hq = "17f210b873dfdc3adce9316495921e30b77b74f2026853f0c96a68239de2596e";
        lq = "7615881f0ff7ddcc3eda9aa2ecd77a1e54bcd8e92f917cdbd2f38542d4b9c857";
        hqMov = "ae42dbdf522a66901729fbc503c9a8deb3c33c9ebc2e87002cd1539ed2ed8792";
      };
    };
    "arabic034.mp3" = {
      source = "75b84bdaea126043d8aeb9deed3b9ee5363157c93bf6fed4d0143c1e79489324";
      computed = {
        hq = "61988a77cd0fdb9955f066567f979a060f4f7c727a9e6e562fde63d576d6cfb7";
        lq = "c74a72b253ba21a4489b4ec5b351b1a02658924ac6ef79538716358951cbfada";
        hqMov = "d60b631a9067551c147d99a7716a54c142f1b0a1dde648e61296dc954efcccce";
      };
    };
    "arabic035.mp3" = {
      source = "566d47849a8e69873f4cd2f353676272dc2ded14a64c3eb5dfd6eb0174debd6f";
      computed = {
        hq = "bd12fc0fcbdd820ac49168546ff6baaf9101e01c32924eeed36578d1b72bcc6e";
        lq = "56343eeec375a16815e622920adad62629498304c88d2c4c001d9cde05b9434e";
        hqMov = "aef758f854cc944afad3ede1dc284b5d4af363327e911875eb63aad0727b10a6";
      };
    };
    "arabic036.mp3" = {
      source = "afddefce82493beb35b1093602c21951d70a2040e884f41743720f3039820fe8";
      computed = {
        hq = "77d7c1716b8ce4061428309c420326889bcd11097dbdada6453606d56df220a7";
        lq = "248cc109ebc8baba80b937b29a8e42e60eecfa2b51960b79e4167c275b2cc323";
        hqMov = "5df77f3d25fca769e4c8d4d74a58a412082a1dac8425fb11e6005af1f2441826";
      };
    };
    "arabic037.mp3" = {
      source = "36704d13906076c55dbacf6a0803fa8ae95387cfedf06fc842a07be9038cfea6";
      computed = {
        hq = "5566714569cfc3e180345abecfdb375b0da74f78f6f0c498ac59de077750316c";
        lq = "17787c2773c22b06625b792b018c199d67f90d92d9a35d8502e0d9a65f296611";
        hqMov = "9d1d06afbe62fd50b83816e72421e1a4fd053aabf9c95577fc2d7baafe89a0e5";
      };
    };
    "arabic038.mp3" = {
      source = "ff8ff0ff3c54b252d8e23d51b63e453cdcda7953ce518c99bdc19071d4909d02";
      computed = {
        hq = "05b2e973a5daea440d3f839efb9a4a5041fdcbf19a75f07d2a016beb23f5d18a";
        lq = "5018e12716100fa8d471e6b16a311575374fc4170384efe5ac904d7d153d51a7";
        hqMov = "b86631606e078b6b300e1b1b0fce43740e3a1663077896ac54065b674a690413";
      };
    };
  };
}
