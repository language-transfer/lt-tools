{ lib, series, ... }:
{
  id = "italian";
  recipe = "mp3_8_0";
  tracks = series "italian" "mp3" 1 45;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "italian001.mp3" = {
      source = "fb263519aca80f1db35b96175d6b8d1298feeec3bef4b01ebbe38c9cbb3ed497";
      computed = {
        hq = "a35aa9ea6ea554a69e43cb3c501fee55561e88f6fbf29df90eadde4cc0a3b397";
        lq = "5204380cc192ee65d8a9e3569d6eb7999720202621f0d4fb0004fd66db5d778e";
        hqMov = "d6fda1fae8ca1acfe40f416b42506f5d01ba1a94af6255768d6b21fd778d0ff9";
      };
    };
    "italian002.mp3" = {
      source = "6fa5925102aa1cab158cc4710cbdb077d51ef0d2dcae8fd49a7a8ff78d7ed03e";
      computed = {
        hq = "5381c653af2592a7e28f5603887367668285328c7356ff5609eea460576cedb3";
        lq = "530da6c97977ce5ed7603f6fddc665847414de759c59d3a6375bf8cc188d88fa";
        hqMov = "7b20e35d87efac3fb12e0bce7842c7661224de0d89b1d74db6afea4e0bb0aa2d";
      };
    };
    "italian003.mp3" = {
      source = "81a648de3dcd0d58c210b493ea86afb3223faf13981b58e8d2df326ed520f99f";
      computed = {
        hq = "1afc08b85cf110eb768855453c12d148ce545546f02112e0d54d9c2ca654521d";
        lq = "421ee7c8b3829ccb87d77c2be4c2b12075d0ecdce9dae9832f6f2adb3d72010b";
        hqMov = "85b0a1b1cae8f27416e4f7a42f54f5726b53757ab80f83fc2650430ed6c5f8bc";
      };
    };
    "italian004.mp3" = {
      source = "0bf82723f16c9ce73472c83f9a156ceccde9d95c8c0abe4f9578b678fb41566f";
      computed = {
        hq = "b56666ded16fa9c4c0c55c1910c6c4a826d76ff2dfc648deefde2a22de9d4312";
        lq = "269e562e7ed9a8bbb7efc490b357bfb5e20c61c7808a65f2c451c700cf5021aa";
        hqMov = "1b227cec1426621c8c0f3d0ab94c63a7f690957bdbf5c175c4812dce64350676";
      };
    };
    "italian005.mp3" = {
      source = "fd24a07aa2bda92727d6a39e67e547c1c0f6289f323c8be78266e02a93a446c1";
      computed = {
        hq = "20d691a19d80ee68fd730b36651d14b7e2fcbc53e4835a890f73dd55ab70402a";
        lq = "a9521b4d44d966894a46ee846c5235612e4368f2a37e96d798c6b034b153eff1";
        hqMov = "51afc19947deeab9773e7b550eb3aa58285075810af83501ddd1dc84a1511926";
      };
    };
    "italian006.mp3" = {
      source = "30122e7be7aaef569f251378bc03fdcb49718ed1599808373caf30e25fc5fb76";
      computed = {
        hq = "4933200e03e18f33c546826499026741cdd6c9df182b51c391d5eadeac7b1782";
        lq = "c1ec5bbd24fae490967ab5db75781c7b8a6ddb592fde8a0d8915c2cc2b3872b8";
        hqMov = "1434261f10625e0565611dcf814a253cbdcd7ec8a17b76dedd70f5a0a1fa84e0";
      };
    };
    "italian007.mp3" = {
      source = "ab754a88b8012ad938bb5e68966c7cd598da09881295c8a75553652a0499321e";
      computed = {
        hq = "c872e628905b186d5832f292e316afa43d69d9cc9a80f37aec88aa5d82cc8638";
        lq = "3d966dacdaf199c6fe45b1469453b1c053b529402a8b5b408bd08db3ef3d3eb4";
        hqMov = "255cf9f2a8c4571a2ad30890a511a73f783e747180f4372b5943d20a40e44c0e";
      };
    };
    "italian008.mp3" = {
      source = "1f156e17984daf8a582f15654b94d947c6b21baad6e52e67d463de60d7a5de33";
      computed = {
        hq = "66678a70a67330444491d2bede58e420024983f37d05fe67e559ba3834cc5827";
        lq = "3ffe01d26a8644eb5536b0c56c009a0fb9ba194cf0561a90348bd9a3bd3fcabb";
        hqMov = "8b50460920fcad3297e4e613b16c1a8b456ca7ab92b7c10848b09d9c4018dd8d";
      };
    };
    "italian009.mp3" = {
      source = "4c1bab21bd815875b5c80d3f29771eb8a20e0e56ac04a086849e94c322fdab10";
      computed = {
        hq = "c4f90b8e0ba6b782680b616bd4664ee6fbcd1e71bca5d07b99fe18153f870cfe";
        lq = "f2c9f71fc736a660cf10ce88634479d8d17feaf5e1cf7196f850cff015f616c2";
        hqMov = "d47891f846fb0202131e676fb4daee049b6329b9b92f5b2519e0ec4991989f6a";
      };
    };
    "italian010.mp3" = {
      source = "0bb613b074fd085645c094e1178b5aab689340946b885b895ad27b30c75e2060";
      computed = {
        hq = "5e04537d09815eae6caf364829ed3931ec4e4af4ec6396ff7b135875d0a6841b";
        lq = "d3ea1af74d7b28cc594d622472f078f60e872d81eda7add2031723f7df53c917";
        hqMov = "7ef391658e863868e7106947b9dcece4e09e00480b67ec9a25c65ff26b45b552";
      };
    };
    "italian011.mp3" = {
      source = "57eea2911e2c6bd23f676525af7b9912c13e61dd1de8e2649fae3285b3b46199";
      computed = {
        hq = "0fb7fbe6645e37eccdde2746da4e8e068c6ad54ba2b84efc1dacb4a489b8c603";
        lq = "c8023426eb3549ef060cbabfc1e53f63cb3a535ff66a9fef93b18790f16666f6";
        hqMov = "42c8f7fa0c88d76a5e8f5a433f7a415701e4d0736529d66fbc4db864ff6e9b86";
      };
    };
    "italian012.mp3" = {
      source = "06a8f14b39b1053f05d9267fcd4bf18d29c3dfda7a6c92f694382eae6828869e";
      computed = {
        hq = "8fc51028eef9775c04fd3c352083f5a6bd437de53684dbb3c9372cec200c452f";
        lq = "0a276d049311d7fdb5122599dcfe1f7b84e9613967dbf2a9be844a1e10dab36c";
        hqMov = "48b6ccb0bbcc0781d85eea727229d52730b1cc2dd609ad67bdda2c054d07c251";
      };
    };
    "italian013.mp3" = {
      source = "c5d1c1ed0c60f1e03726b7369ab0ee34e83a81aad6cd6ab2451dd13cd29f972c";
      computed = {
        hq = "39a0f13114621dfb1e2f4de2ee4ae31395cee7478192edd4e2d262a1866cc67e";
        lq = "614725252edc293ceb7a9e5de79644bfb60d304908b7334783ff1d0525672e18";
        hqMov = "ca9ed9003b1ca9be7b9474fd445477d16a04ddcd62c2904ea163272a6f0ff656";
      };
    };
    "italian014.mp3" = {
      source = "63bbf36dd2dabd4fb9582500f44dab7ec333878881ff0dea4f9cebeef2c01da1";
      computed = {
        hq = "8805d2c181d5b5592b32d9d31b9e27aefbec75e2cc63a261fa41c79559907575";
        lq = "86ae4ed299b3987135053868fdc95de47bbd32077f8f82f0b14d57c2f4a86dd0";
        hqMov = "7c40354a70bd355171bed68cfde2608a2975c962272229ed4fd897c2ecb4ee3b";
      };
    };
    "italian015.mp3" = {
      source = "66ab82b9e7183e1e8cce35ff077574a6719127b86a27c03530ecb02e02ab5309";
      computed = {
        hq = "051d24f3635b08125e61b1ffd513ca058b9dfa3b3eaf0c4d37988164a008338b";
        lq = "7219f97925765b03e5f9ce2fd3f97cf2569664a92ed4388c80d4a8f78e7bfc38";
        hqMov = "6bd54fc8fa4190d14f604fea2b434fc3ab6431a64f47432915427e7d5e4cbd56";
      };
    };
    "italian016.mp3" = {
      source = "dc201dc9bcdb88ac4e80e61671eb3d3494114bc2b8e1a62a38e44986c3319f9a";
      computed = {
        hq = "07e65096f5ee8a367c1a3433bcbe31cfaa205629e07ee67b569765a7e65f2f74";
        lq = "d84de0ef6991b4983e21fe00c3b14cfbf6c0ed9ad9c10b58bcc0d2870883d6b8";
        hqMov = "b04dc9575a3b3179a4bda079abeccd41fa03a000d4660f0e9a5d7395266f649d";
      };
    };
    "italian017.mp3" = {
      source = "e679074aaa29da077dec4728c6d7b9a68e6e8d776b476437bb93e125efede2ec";
      computed = {
        hq = "6d8448681e83b19a5c3bad1c639b74fb86d1dc94a064a0c7856d658c6344cc91";
        lq = "28ad772e6bcef30a9f42db2288a96dc062ad44e09c86f3f15a86f54eda1c89d7";
        hqMov = "9a8af16a82cf628da64a40b9ff1325f0a5cb064122fb6e2339f49f6a9f1c0c0f";
      };
    };
    "italian018.mp3" = {
      source = "b456f2171e05ad8f9d5dff325b7c398d405cad23386734f78758b69740f8485e";
      computed = {
        hq = "43783674c6814e44465574de977e87fb6928b9fbe86d62b96a458e709dd04f56";
        lq = "ada30d3a09a62af95fd597b47a7cc7c1edbb8389cbbe8f88ff0adc0468c5e08a";
        hqMov = "41beb7dfa792b75482e7db0f28b36b7b2f326a4bdb8e3dccd536238deaec62f2";
      };
    };
    "italian019.mp3" = {
      source = "9f18597873d81b8b7e7679f572763b59ddb607ab712e967525dc58e77e574986";
      computed = {
        hq = "4798c36904c5a803582a35a788083185cd563e83e479f0b5d92911248df9987d";
        lq = "59c30e4bf8a83c18fbffe5b3c2f2171888e96eb27df3f3317037ca12e3438a5f";
        hqMov = "5146f80e397503f2b52a907108d2b68da8eba8ff49aab9ceaab7ac9f99f58a56";
      };
    };
    "italian020.mp3" = {
      source = "d178bc614daf38d87fa861d33294ea1c96ac41ad99b81fbc051f3c4daf96c639";
      computed = {
        hq = "34766be9cc0450ad5c8d80f0a9b671b8f5fdcac0cea507a6d1264a8cdfc85939";
        lq = "9d29c637749644a8e46b2f0aa9c72573aae611a01c174364fa5e69834bb5ff26";
        hqMov = "f304fd63a3d859b9e52ca0ca22ff7378c5cfa24157f468bd6417635f478179d3";
      };
    };
    "italian021.mp3" = {
      source = "d348405c961f195c2c485923a5dbe637a553b4aedb2ec7bac539c6fe1b49411a";
      computed = {
        hq = "c0ea5c9542efedff8b7fdadfd32c278d06d07ed617ecef97cf9d64920bba8312";
        lq = "e92ea7a60da57d417dabd1a1a681ccbd27f47bca2c232b614df78e3852ff5f77";
        hqMov = "82baaf614a8c6896e9524dee567d551e4e1064f0714796f235abe45fbf1b8ad8";
      };
    };
    "italian022.mp3" = {
      source = "1d3cc4b4ecb47da84f4445300f50d269e42726d9bc660c3f1f76ead10e4d9789";
      computed = {
        hq = "a82f8c892ff5fb29cc91b2498ec3549933153e13f6e31016d3b47fd615dfb322";
        lq = "2203f728275b4b764cfa49824b8ab87ec4af39a73dd846b279a8709bd086655d";
        hqMov = "cf0728579d326d1d39dc84cdbc4672effdbf5c20fb6ebdc075f58f0a37c0ab93";
      };
    };
    "italian023.mp3" = {
      source = "b6b97de66c514fb0868c1bb4b5506afb88c18b8880985108fe74cfdc6b7599d8";
      computed = {
        hq = "d12123bafdcdb8cc4128359ab51b1477ae487eb9862617020a45263eaee5cada";
        lq = "3f6ae1d7f4f0130c07e29f4c23def1997de494028c20382407436a47f7c794d7";
        hqMov = "ec4460456e8b70f85d59e1a548b156481b472ab9aab6b81480d47e6484c96bab";
      };
    };
    "italian024.mp3" = {
      source = "d23c324060da6e6470a35dba138c41bff54b7262c9925e615630b045d07f4d91";
      computed = {
        hq = "ec4fe5de9872e0fd91252561f60cc01b13eef0794f2d0d083a2f89d4c5dd29ac";
        lq = "5713be5245901f15089d61e75ecef0758b3a811c9c5a80dc2f0e8cf562bc85b6";
        hqMov = "a6261eabab2dee93aa3b683b158bf2d4d5385fa7aa0fb7ea7aceaf5a8f1efb0c";
      };
    };
    "italian025.mp3" = {
      source = "88ebb8e9fd6d86f85d8e97d62f167f8630a9c5019b5d3256b05c512b47cd444c";
      computed = {
        hq = "7c4b3c6415430e1ba66f0b7afced33023ae441f4eacd4fa0c2d7b37a83c445c9";
        lq = "efb7fa1b185ea37f8c78fcb71f579778ff00463a1eeedeae061394388db10aac";
        hqMov = "ba8248d7f16e1e11fd6d45718c29c38661a15bf3d5711b98388c0c8a4b8d36c2";
      };
    };
    "italian026.mp3" = {
      source = "2e7150f3f4a2f6b96743faf2c41265d78aef32649826a239561980173a382077";
      computed = {
        hq = "e06b3969e781437750aad9b56fe58014dea9d7a35e3b6a9293b8ef3d27c7cfb9";
        lq = "eb2f87bfbbc6797ca0a54bf7a9850f8d83052fe5946e20d3de0618015aabe827";
        hqMov = "103aef0e80f2c9d8ee0572b3bea5091573d6c6af6f5db6621115eae198038251";
      };
    };
    "italian027.mp3" = {
      source = "9b4f1e02d7e476109515a1f821ed14d26ee56e6b173b1d719245df035303bb07";
      computed = {
        hq = "f6da6e18f147832d6c965885b71868709c015f0b122eb0c7fedcba746fc19db5";
        lq = "c0aa9ab4416f6488a6dce706e53222e402b531bfc1a5e49f5e4ccc46642f7035";
        hqMov = "22cea1e56ee0140202126b6f4e6a8790fe78ff41360e200e3a1588f1d3499d68";
      };
    };
    "italian028.mp3" = {
      source = "64ec64051066ba28818d340255f6468ad134f84c59926723650f0761bb08be52";
      computed = {
        hq = "cd5c09b984af0a242b3745e3d1f57518c4b535b27265924c436400b997bad373";
        lq = "737593d3c92e1d2c5ff8abc9183a45c70a71b5f2e36ef40ef96c2c0612411488";
        hqMov = "c0b0421341f42ba3fbb11f354366a825cc0076d26c926a5244d40cca0b167a9d";
      };
    };
    "italian029.mp3" = {
      source = "94573ba2f4663f8b877332a0109d8d1eca5e3fc632a35edd853f023c43e4ddb9";
      computed = {
        hq = "f6dfcd750e75bb65623de8f908356c99caffaaebcb1d5f1ea6ad98aca813cae8";
        lq = "7bacc7dd3b7dcefb3a5d6adf81d48118e4cb3b7bfb2e514b6c69b5b9f579155c";
        hqMov = "1bec89a79a506c2a6c046e8b9880337ce792969c1cad2ebf667076d8ae6f65b8";
      };
    };
    "italian030.mp3" = {
      source = "d7f56eb8c567b1c5cf6f90aa9192116d717ce2626d175d57492ffca877f1cb7c";
      computed = {
        hq = "d52adaaef1b263ac9455c782153ef62c9d75672ff62488d7d678eba501777d7d";
        lq = "542befba3db33c195819219d57aae1f82379795909da20b249dbdb5ba1480841";
        hqMov = "a686145915582289ad46364747499720b21df9f7b69f447ea2a41194fe24d964";
      };
    };
    "italian031.mp3" = {
      source = "2f640cf047535efd184d540049a889bfb43b10ef7770ea7425ad17dfccaffe39";
      computed = {
        hq = "7c73843a7643f6cfd65e8b10d7e32ec7ce13292660243257f5e78b7234ae8ac7";
        lq = "5d220451daaa5b3e61b88628904ec2ad226d93df64cd2db199f6141b0561ebe3";
        hqMov = "a016e40552d035995b10100aaf4db16bd09a081913b2646aaace91c232eccfd3";
      };
    };
    "italian032.mp3" = {
      source = "03e291a593103a7bb0a42b91817d6f80dc9a9e37209f910fb118a3052fb55a50";
      computed = {
        hq = "5b915c6aa4f082c8c2e104a117b7b1a114dfa3e190d80a71410120ad03ea780e";
        lq = "e6045c9a0d2769ee6f227c9d67f3bdbd4b7549649e759f81ef485365082ee35b";
        hqMov = "63133e1babc37cf02e1ecbe2b8e909a6dd23906c159bb2d6b8efe5b90bb7a4ad";
      };
    };
    "italian033.mp3" = {
      source = "0bf53d314598568017e1fb8f1a9a4e3c6a42a835f36f5d5582c5c6a41b04026a";
      computed = {
        hq = "8db1eff945af44ab969cb93e35900ba54e377dab66a1d8113aa603f33038902b";
        lq = "d514f0ed279cd539223357c7781d1a527f2f5b526680fa78e57e8e6525aca8a9";
        hqMov = "0447b5bf9f9a44dca6269cda47c24da0c07d08887b7080b36752ce6b92cdba23";
      };
    };
    "italian034.mp3" = {
      source = "020bcdce2faa2581e03b1e9b20f326664c6ee79539643e368b006964c8e9fe83";
      computed = {
        hq = "23c15b1c123759b8efeb304a60c4deab92c5a58e60fba013a4149aa05874a9d7";
        lq = "c91e4c3b5ae2142aea72b334fb0b5c6b9779ccd42382d3751832d03a84252007";
        hqMov = "19d24a67a3e2640b9e28a1dcd2f3a43ba5fe21a2ff739c3ee1be10c19f39c1d6";
      };
    };
    "italian035.mp3" = {
      source = "cd92b8253bff4e8e58af83b1c150f92d4e360b87f1cdfb55f8df36cec0892c99";
      computed = {
        hq = "f2af2bcdcba8b1ed86dce9490ab40138f772d32b78861530e3cf7cd68a68426b";
        lq = "d941013e4947d63d40c963b5668ee79c3e33c6dcbd25dde7d7b3ec81851ec53b";
        hqMov = "2b3caac2b9ffacf3f12d57c6733d1d9ac77709d0e73a58181db096deb9b052db";
      };
    };
    "italian036.mp3" = {
      source = "bfeecf43c2089f37a92cc7f66489a98c52b5f059acd4f7ae534f723a8ba3c3e4";
      computed = {
        hq = "75a02a774f9af99ab9d1fad711311a0f4b4fd5a81c88aa85e9d33c7b97b45656";
        lq = "01fe45a98cde6829b01a315653fbe303d92db2c2ae435129f4f238f03203972b";
        hqMov = "e96667a0b3566e2348dee745632035bc8c9369e3d5a771b7a846049093eb8860";
      };
    };
    "italian037.mp3" = {
      source = "82325d7cbe79be0ea10026de933c223fd9f74df0e6827f19484e3fd019f332f9";
      computed = {
        hq = "60e8440aea23a6a879ce24354e2b666fa26bda7b04739bb357d52b48e6d31880";
        lq = "d922cd56e7b7f2b6bad58bdde92dc2457b4966ed4c687a60ddedd4bbc91e2585";
        hqMov = "5620324b6574bbe40c874813797ef7608c338be868a8792347b75865bd29bad0";
      };
    };
    "italian038.mp3" = {
      source = "8b2d542e148f052709fe5d26c4e601ee747259c117862b45054965e0f1f6c2a1";
      computed = {
        hq = "ef42d592e525044ab7c8b5e1be79683abb7f52972c9b0e3e754b9c7d99e91974";
        lq = "de720c756d3b1dad7ce625fe3dd38d3d4696b4c4949efa8df0c66a85fe4ffbb8";
        hqMov = "d283be4ee9ddf16399de82758c4ab84167f9cfce90a32952cdf2f5e9738a8217";
      };
    };
    "italian039.mp3" = {
      source = "e877b3f8d8687fd02c470a66ed8500c2b43b94b1d2fc855c063daeb1926cf2e6";
      computed = {
        hq = "6298e29c6cdb18244889d80aedd72497ba1829ce2ab49451e32f3e5fd38dd1d5";
        lq = "ae1ef370aa73ca95d1ee683d80a14727cecec8bec1a4a5fb90250b52bc520c95";
        hqMov = "baf3292fc3e131648fc68acd504e915b20980759edf0a3f80538bf2060511a33";
      };
    };
    "italian040.mp3" = {
      source = "8e6331ab0538e204b3f81e97ccbbc4fbd11c583892346fc3d8c6db83ed100599";
      computed = {
        hq = "bd80b8ad5aca4bf13e24d0a7b2f40d165fe15de896e68ea62e85bfc8964e6429";
        lq = "2e906a4b39e8fefd690fe348735b60f2bda993a40915e90cc3c21711c6c1cf64";
        hqMov = "59eace64e1b91ec082184a62727edf368abbfac06966f46345b1c88cff8e25e6";
      };
    };
    "italian041.mp3" = {
      source = "bc22bbdd2847b63225712e2def82ee5a964e4f0137e26866713be8047c5b833c";
      computed = {
        hq = "76fb5b177e1a2453e7d45cdeff86eb558ac68d93fea79b63060873c165abd11a";
        lq = "51fe0603f34fda3e1601c0007e048b6baca2b6823e5113293fae33b7d7ee50a1";
        hqMov = "5d048cc293d67c085bd944f45e2c6051277b860b873faf47595fbc47daedf138";
      };
    };
    "italian042.mp3" = {
      source = "a9c557c89029261b79c47fc746804962c28b2f9cc6e90e68df3c67188ae059ed";
      computed = {
        hq = "ca2b1e0ce607cb98a4fa25cb190330bcfc9706b63e7e07bf62eaccdb08f4e968";
        lq = "50b32b79e2347aca999fa51b225571b869f577e4f6696a20b3a4e28f660d28e3";
        hqMov = "cabf349d0c23f5dd361aa168d63bb0c4a4316e8f9406178e90418eba49ef736a";
      };
    };
    "italian043.mp3" = {
      source = "590c95f10b8439f75cc9e498c94d6321a46d67696f52a06e7727921570bb50ec";
      computed = {
        hq = "5f9047f7ffbc13653610b3b546760498f81cff38e5b1483ea2d5b4d0dd9e1fc0";
        lq = "8842ed47f92f9f3d8ee0f11cd3fd9dc070e477f2d17391c483596954118f64bd";
        hqMov = "a68d2b30797c8a1cff38ac2557a3799c63106ff4874d5a3024c20d32e4137091";
      };
    };
    "italian044.mp3" = {
      source = "d962bfb7d8ed6f376908ab82abeb3b8ca707dc5adca801a02f3e9656571c9fab";
      computed = {
        hq = "67d0bd1a23c17d4212cc8be80c270bf1ed0577181f133ba75e09255f7902ed95";
        lq = "799d15af0781f7276838db6af645cfd251eeb3c794fe41b994f6e2ca0c1f63be";
        hqMov = "72daa6f635983135da681fb36b5ceec0971f8a82de21578d22ffb55782e1075c";
      };
    };
    "italian045.mp3" = {
      source = "c2b8e1c00604ffa8ff4263d472b4d4574b380f9a969ee7307339e85a8bbd29b1";
      computed = {
        hq = "864efc01b8c64aa54d0022e7bfdce87b5a3b93dcd8c439624ccd7d9beacaa0cb";
        lq = "cb2ad4d8503f9a5bb59971fa2af858492dd8258e0b4735242e2bdcaa391a8e37";
        hqMov = "857374202234748e4e1295ceb79e633210577a3c408fe15291f6cf2df45fc275";
      };
    };
  };
}
