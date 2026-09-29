{ lib, series, titled, restartAt, ... }:
{
  id = "ingles_completo";
  recipe = "wav_8_0_3";
  tracks = [
    (titled "Track 0" "ingles_completo000.wav")
    (restartAt 1 "ingles_completo001.wav")
  ] ++ series "ingles_completo" "wav" 2 70;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "ingles_completo000.wav" = {
      source = "c67db009b31f0b68c6039a5ef792eb3c1384326f2160394b5b8a4d78d5f9318a";
      computed = {
        hq = "70768d45c1e5aa33d773b1ca135f5f8d12cd8ab7692396c36102b2a429bb9e5d";
        lq = "4445d9ce4df0685eb0b0f4179b6872db7b41b7ba610093761585120741cd80ca";
        hqMov = "23c7af337a53b6cb2d0b5c3b46a9c1ad31244a699b619c62a8b9c75f31ab5ca9";
      };
    };
    "ingles_completo001.wav" = {
      source = "a0074ba973ddf12d07dac30191d5f958a6dbd6e3a97b5ffed6c608bbb6c147af";
      computed = {
        hq = "9d3de93bf64780a620fdfec4c790a2b647b6764793ad6025e71a433ccc145869";
        lq = "f9d311911e3254ff9f4d2922a656ec1d67c00c956501dc07d4a26b1c9d21887b";
        hqMov = "892dd94de410da985f9b5e088d3bb9aab5c2a438417e7a4e87040e257cb89574";
      };
    };
    "ingles_completo002.wav" = {
      source = "5549276b37d8158a58d37c9ed33d21e899bd951b84c0500342010bc6b9a22b42";
      computed = {
        hq = "8a8a1d835f38cffa981e84ed3dda66478b1f9e4131778403d97610851b20f890";
        lq = "2ca9bb67d2af25a9ced8ef73afe57cb02c7fd43413560020f6dedc0234936d35";
        hqMov = "912e9c6efd02defcc68279e0c5a5321afb967305fabdce887f134fea7b061824";
      };
    };
    "ingles_completo003.wav" = {
      source = "0abbcf58b8bd6c460fdfe5e03d0e39fd1c3483c5ecc2baf778f538ed8469d4f0";
      computed = {
        hq = "3c770a0ef53d55510ec24ee3d710d4fed052979ea34b00d20d7dfdf96d545d82";
        lq = "f2049d941e91ba28f7a61165f642c35be06fe43eff7d84de35081ce14c47cda8";
        hqMov = "98762e5fb6ddd6d4aaeb55c7ca15f61d1822b5fb97f54d4467ebaf9cc2f62b00";
      };
    };
    "ingles_completo004.wav" = {
      source = "b4f8da258e3fc1929c95ce3e04c57e04531002601d98e37e6e98e62e7c75f9cd";
      computed = {
        hq = "a941a546d3d853869815258009ff3674ad476906dc15cea5e1801d9b83856de5";
        lq = "bc90953bacc2b40a03d01f72f04ea9b44cc427a48802525be70465ee4c3bbd29";
        hqMov = "a50c4ab781834aaa9fc83f83506d03b64bf172a0762046083732cd491c2ead6c";
      };
    };
    "ingles_completo005.wav" = {
      source = "475f4e87a00b2878248bc64c771aac75283ee775008113a3d4b7630bdadb1c53";
      computed = {
        hq = "86424e0b4bbf3959a55f4c8b7c911e139003f213bce222a07e226e1e7bd1f91e";
        lq = "31454adcf899eba2b97c587ab583dd4a26b6420f53cf715835d8a5423659a7c1";
        hqMov = "14e4d411fc2ca28e2e6e96a036057b491d3dc05ed10d71d2faf5fea324a59623";
      };
    };
    "ingles_completo006.wav" = {
      source = "f9f8557b5f74b1c8397dddbf81c1f8cb6bf70e424b889bea3a6c7b35d2d09b78";
      computed = {
        hq = "8fcc0820f6a9dd3ab169cbef82c88b0e9229eab550b78b5ada43f7327bc5d70d";
        lq = "2aee4f944973d49613c438d9dfb30f062dd2ea2483b058f8c746ba0959b8a977";
        hqMov = "e6b6248ff053704ac342fef80726b1111dcbda68ead79049a8ca3294f877ed44";
      };
    };
    "ingles_completo007.wav" = {
      source = "a6c6582804ea831c821400cc23770617f30d9940bc8a3afc5155c0beaa4c09c9";
      computed = {
        hq = "02618bd06712a5d73a6a58bb60b607c1b40b3e0f790369254375d66ff162c5d8";
        lq = "385370c4ba260454c3060a916373b54944d6d32d727600382c507457db3d9e2f";
        hqMov = "c13665085b18fe899552c01c186c4a014d32347894fe03dfe3399eee61bc7013";
      };
    };
    "ingles_completo008.wav" = {
      source = "b9a2f5302d6ed5ab21277f2dc0b99e5df4edfa939657f6440cac87d8ec89620a";
      computed = {
        hq = "48169a1f1d7a6b5947b9cd3dcf1ad946c53e83eaac54774d54194191197a02fd";
        lq = "27cc0cf38a29927bbc7bac431ed601d1cf11afa9871617d466eeca2254710d93";
        hqMov = "0d521fa259a33d3723aa67c573c898278c5d7407afd8dc46bebde60faa4e370b";
      };
    };
    "ingles_completo009.wav" = {
      source = "62ad8c5aac0853d80740ea04df7273be3a7d594705d8da27922d512f93c1816d";
      computed = {
        hq = "850874ff6234212262c36a6ce6888a4bccaf9d148292a1c6b34532f6418e1663";
        lq = "3ecef4167d2338950203c7ecd9f2d206d719b674b4b65b7f36cbb6d0a1f9b79e";
        hqMov = "d8a223cfde0829ee0b7b4033d44597bd85c5ebaa8116b2bb335edec06366e33a";
      };
    };
    "ingles_completo010.wav" = {
      source = "9b1a0375def266bc9ea2f26df39f72d6e4e618bf22526c109190c8424c4b1150";
      computed = {
        hq = "8ae1f8dc3072c9b0b4e24c159ff9d7ac1f092febf99328945e2b339477630ceb";
        lq = "7fb61fe100df90169053fe55b05731f0496244f7e3c65ec2a2f68095f3e8819f";
        hqMov = "97ddc65e8516b5d4c257347b8daa737f707a527caa08b91e8dc63c74518ff9d3";
      };
    };
    "ingles_completo011.wav" = {
      source = "dc96767435ac35dffe1c597e91dc52bfb35a130769febc0652104e99dd20f5fc";
      computed = {
        hq = "33c7ae877b4cb44b1f0c08e2b2675f6091f913b34deab5d51dd48b98d89307c6";
        lq = "53b48d6d23b4fefc355332dd79f89658418e5e6b68f5b8dfd92186acaaca76cb";
        hqMov = "6f54f9c26c7271bc86bbcc8511abcdfaee2bd6bc7632777afa6fbeea0582832c";
      };
    };
    "ingles_completo012.wav" = {
      source = "73f2bcd08961165d4b54182dee7829bb95e1bbe1514362eeddebc9f96c92d92a";
      computed = {
        hq = "e7cb89faf0aca4db84807c53221eb273eb621a9ee8a7b04d09d84b975618918b";
        lq = "2aba2cec11085f938519f6edc2372773a7bafc9fe929ced90fad2b827550c7d2";
        hqMov = "7cb04b8bb6519469e0e61355bbc1da7fae8435bf0ffd1907e86ea7546b457268";
      };
    };
    "ingles_completo013.wav" = {
      source = "947714dcc98e0eb8c0e41b3c3497d7a729cf9864486dcee01194b2dd73b96e2a";
      computed = {
        hq = "39fe3174f85515203092f78e4dbce67006d6e45f708f7f9d9ca6ae146208b61a";
        lq = "1e97bc8b335ceda0f449d461ff01506feeb2e276266cd5cf68e08e906fc92049";
        hqMov = "1ca49a74859bf8964a65854b4b83ad3723cf09b41ea4b19da70dec7686ded9b4";
      };
    };
    "ingles_completo014.wav" = {
      source = "9d3c47c48af48fd933ef9c52d25b5e06b7a0a7880fe717148dd4e013aedb9b92";
      computed = {
        hq = "f4b0b7b95184e12a9bff450676c44ae7671d4311f90ce6d6cc9a4bb04b5732b8";
        lq = "78cc0c347380d1a6c421ac4d6494a650a5f43f32e2f7d915aad55cf8fdcce85f";
        hqMov = "a88edc4df700a22f41fe3e40004f663418befdeb2674fb49b3b57fc46b7faf56";
      };
    };
    "ingles_completo015.wav" = {
      source = "f13dc50e58c9b2b30bbf33b90fc35b6a5f7ae4038c0b2d9edd0180af7bdfa003";
      computed = {
        hq = "a1bdf5097622421d184bad306d501234752f900f58db4a6afefe7404478fa63e";
        lq = "c3ff12aa3299e093005ef72cec6be40c8d7541500048759a9b2a00a2559a8761";
        hqMov = "a4eb11473a885322f7025e8a0f8d9e74ecfe54b8aa31ae25430905b6d48d8a2e";
      };
    };
    "ingles_completo016.wav" = {
      source = "d80790480c753fe1c5196f52a5de557fea293befec94aadf6598958340c9c0ac";
      computed = {
        hq = "8d02a22a3afc0ce005c120ed24c611489cc307f769eb61a0eda5bb5d86914b57";
        lq = "b6b0fe1c815b16e96241343e0b4259c48a3514832aa54a00366083e0857194c1";
        hqMov = "ed2a1d2a440fcec144288051bd6d7c37c10ad85a13cc6f7726fa6d55c94e35cd";
      };
    };
    "ingles_completo017.wav" = {
      source = "9b7f791a2fb1597e007398a3967d1a70c5866ad322e03d9dcad29028905238b9";
      computed = {
        hq = "c47f89cff50bc951386d1524261fd02b85cb5201a6351b8e7abba01683dc70f9";
        lq = "df369a89132924cadc2535a1685aa4939f74d31b23d8ac008a5f7cc350394cdf";
        hqMov = "001a14133787012e5818ea2ad0cf1c56633d075aad3cc975d5a47686e6cf9f53";
      };
    };
    "ingles_completo018.wav" = {
      source = "f96f46476692eda38c331978d2cdba3df3cd17fc35c8c288d321a7969120a7aa";
      computed = {
        hq = "e7f80a8817e9712c05185331bc9a0a0d6f8222162c27e3d6815348294a8da3cc";
        lq = "6f0f77c23d1e2ba092a2002b86a0a80ba5a04f84fadbbcb344f6e0cef31f1004";
        hqMov = "cb9653523809f5a1900b915e26a88111ee46a6b738132862605d77e6e600664e";
      };
    };
    "ingles_completo019.wav" = {
      source = "5170b1b84cfa2b54009533e2ad2aa566ee15e4c90e690515e8438fff3175377d";
      computed = {
        hq = "278a03d6725a8aae55aada016e4e0bda09144fd4c978ad8c8d5f1e34995cefa0";
        lq = "e080126aa759dcff41301d11da02e1a0a5e59367db83f7ae0bcaa4c505e7f3ec";
        hqMov = "9263fdfa0f183387e6e4f8bf48f76c14c0f4a5e71039c024dd1c19dd6320bb7c";
      };
    };
    "ingles_completo020.wav" = {
      source = "1c5bf8ed79c61910b2452948f0550d8ef8d7d3d18a3ab8dfad90bca3f915fd04";
      computed = {
        hq = "6d0806f00ff05f9b44c1ed6cfea5fd96fe14188ee5846af40becdca96e2f20a6";
        lq = "bd11b17ff7681d849f61bfdca820d2499f2ffc13fba6e5dcdd32160c6d9e7646";
        hqMov = "b95bcab354b7fbd8275961cb68970e12612231707ed56d96db8054f6bf7a6c75";
      };
    };
    "ingles_completo021.wav" = {
      source = "047295fae633687b0c3dcba7bcf7e5916c4e2970655066f190314c6a54042a00";
      computed = {
        hq = "1bec6104d20566bac9c1001b4d783cea6f2fe604a3145e32c58544281ce434c9";
        lq = "180d63f232ba6e73849b9f87980f53bd25bae7a254061dcf0219ddcaa8980403";
        hqMov = "ee4f6c2d5afeaac5da8dbe8ff4e00f8085005d6c2d80c54c76cffa901e5860c0";
      };
    };
    "ingles_completo022.wav" = {
      source = "8ef36b1944ff2c47ca279cb7d076f608ff7fbc17abda23ac046657649573d8fe";
      computed = {
        hq = "f242770d5d5f8fdc2b16e897bc63683735e1af3d251bdf0f922f30ea601d5c79";
        lq = "649464bc67a99cbfbd34a3dbdfe792dfb85145cb8d2e97cae223bd795a749f03";
        hqMov = "01e0d3417dfcb6414a2f4b73a496f1ed0356381b40a39843bfded7d087ca8df1";
      };
    };
    "ingles_completo023.wav" = {
      source = "866546236a67362707a2ba49c6947d766095f4247d5f901c6f7cbe9c7fb588a6";
      computed = {
        hq = "6ccfe36c2a8ed06462e61ce0fbd80e57c0f76f3413250407f7758c26092052ac";
        lq = "8cebd8b3f543969f202876b230f006df75fe74b2752e0474f29862411c8e4308";
        hqMov = "7cee048be0a22ed8e691b94945413cb7c8dd696ee5553930a01fcf8bf620b2cf";
      };
    };
    "ingles_completo024.wav" = {
      source = "5db5fcae0eefcd6629d4f8840678a1334c1a09b069e5f6fe31069f81833fe61b";
      computed = {
        hq = "ee54437ac3fa0e926b12f3669dda23d31c0da60c36713a3841a04e3bf569919b";
        lq = "402ca363e00db7302f83ae7eaa3d81d29832c2a96db02fa4530e39d01ba31e15";
        hqMov = "ddd8c3e5a355d1cf47cfd14c8cc2fe1bb811fb7247e17d5ca5af742f2b4564fa";
      };
    };
    "ingles_completo025.wav" = {
      source = "fb7890e59f4fff9d34ac8b51ded356dd3531248abffd80516dda01e8b476439d";
      computed = {
        hq = "1d5cfb48589fac30bdd63eb0a3315862e65431c92045dc3a4a719c2a5156c2b0";
        lq = "e0c1c7bbeb26d2a33dccc08e74df3966b3f7e1bd919e8f886b840b2325c67e65";
        hqMov = "31bfee2d01d2cd2d5fed10eb9c7b19ebf3fe87719bc461fe06e6170e0b80b6ac";
      };
    };
    "ingles_completo026.wav" = {
      source = "a4132ab97d7a07fef385b05829c1ee64f367d06d888564938568bf8a519253e6";
      computed = {
        hq = "b0e06194f560b7f3c95974d1e2f71ebe15d99c4f635247ef5d6fbc6ba7c889d3";
        lq = "a50b1a752d7f4f4659a78c5ada801144b472c0b4a2564471d8258e6a31508e42";
        hqMov = "6e5022e03612d0a5aebd30205fa6bd69933fda7a96a51831bb26a973507a79c9";
      };
    };
    "ingles_completo027.wav" = {
      source = "dedf0650dc0a0a034facd2d08f996d9d39a7bb38d86354aefea2e38d806f8b78";
      computed = {
        hq = "0f7bbc63feb55e3e8ab1acc8d8b551021c3e09f97436463de5182c3021cce73c";
        lq = "6c5586c1746d121361b5e944f201e2aa3c22673675c25bf6898d437db4db3906";
        hqMov = "a114d95c5340a9dd4b38cd66dfd40d3b6a7e13ddecc9c30ffeeb94cbade1d5fd";
      };
    };
    "ingles_completo028.wav" = {
      source = "c7a4aca7dad87bb9a743048f6ce6e185018cce828603a4b85da900d4ef85f99b";
      computed = {
        hq = "50d5ceca25987af2a46d578038ad9222e5b5e98a175cc3fd81e9b98685e9055e";
        lq = "92777d3b5bcdb93c954dcee9923d8f30d347e4d37f8588bc43dcbc02dda53f2b";
        hqMov = "4c193185bef7ad045f72ce484f656dde41e69bacd5b461ed5643711db021f88f";
      };
    };
    "ingles_completo029.wav" = {
      source = "bdfa3bdaef0fae6e15ded611dea9a1d8fc0876016658dccc053d374a88a15c16";
      computed = {
        hq = "fe8cfb812512fa55cd1e9092d63e97b72508ba1f9d2f17744e51a48a9b04c7f1";
        lq = "b11da88b7c697a08bd8095e7632a8c55efa9550ceea9f35e30ed3be490a25954";
        hqMov = "b95cdeff1cf1c36d4d654a32b4586c308853ea165d2619623529a173b963b99b";
      };
    };
    "ingles_completo030.wav" = {
      source = "2b26e21ae7064ff607f492014ef7145d9f45640bf95b480c8113a0d91a47f05c";
      computed = {
        hq = "3833795a85457cf6c4a95f75d1957fef725f4bf2a78cdd8994f98d767458cffa";
        lq = "dab01a95180c19296e986434ada99a90f95a735dc89ce9913843861be7117910";
        hqMov = "038e206e7930d3dd5132e48124330b36d8ef5ae70170563e42f5144960e59f8c";
      };
    };
    "ingles_completo031.wav" = {
      source = "02e61960c6dff660602464d3b40bb52f0f0859fa1c400d90e72225ffb368d945";
      computed = {
        hq = "e194097c23510ba2f5bd32d5915f9fc28733e463910dbca69e5d790c75fe9ac3";
        lq = "b8b6033b1d66feb63f4c0d1bbb6b148ede2f515f8d4621f128931d9477e3c29c";
        hqMov = "79cf8633a4fff8c60579c1c25866ef3626e915872d0e4a952d2115c97d6f0b68";
      };
    };
    "ingles_completo032.wav" = {
      source = "1707c22fdeff233827c149a8f3c726526a67602c1434e6b01e9edd07fa60473e";
      computed = {
        hq = "106f63de711a1cad800ba534cd3af6a8d115a406c2344f14b08331ddd4621227";
        lq = "c8d935e3b65aa57d415330f519b310ad84485dfa1406703b5f0bfe5bdfc4c919";
        hqMov = "e502e48d5384e12c6017e9e7c57ee8289994a5c76a0ef7c831cb7819cea05f97";
      };
    };
    "ingles_completo033.wav" = {
      source = "1e196290607e26d3ff13f630bd4ce025a6dc1e6c31a2957a0e5c5d011f4e2e5e";
      computed = {
        hq = "be54ad460d021c2cf7661c12252f0de0e3b7137f62b8b892b8e54652c95172cb";
        lq = "0e6c39237028382fb18ff51c4a84b86b6f249998c0c59fa9cbce72d43ffdd80f";
        hqMov = "77857de1da5d7f4d970aad67b07f1280671ff5350e2c0a5ef7e312c07addc118";
      };
    };
    "ingles_completo034.wav" = {
      source = "50e2cb722c3e0cae49439bca9279d9ceb14588ac7e07558ce8926f107e23a2b2";
      computed = {
        hq = "eb46f6472084bf7d3cb5834c301287cf564378dba01e968f228b486fcf56a205";
        lq = "5d3675b33ab70b91fdeb0adb6f493a5bc826aeec0331513280c5865ba055b357";
        hqMov = "5252c9b65c93ae5ba5b7df88f24f2daf5e031bb94a3a6724d1cad1fa5e6e383a";
      };
    };
    "ingles_completo035.wav" = {
      source = "49b186180db6a44321c8153ee0558276eb17c19236615d62cebbaa7066fda8b6";
      computed = {
        hq = "a5b4e3a74451193732c587bd92bfb481dce7e0ddf5c9bcdb158c95648dd17bd9";
        lq = "1dced35cac6388e7e0272b4d2f2fc2605bf27d474f802327595961c149fbf1fa";
        hqMov = "3c4ec55411ef3d3a584b5768b19f4c211efa69fed7cb094daad4b6afbc9e5ca7";
      };
    };
    "ingles_completo036.wav" = {
      source = "813d6af33b715efc954b2588ebfc80682a369e4985d9d611da7b76424c648c80";
      computed = {
        hq = "6d4189b1b653475efbfe72c5da94dafcade0d50960f49fd0e519be02782644d8";
        lq = "b9c45c72db3db02a0399bfb1045fab5385085203997655779ed6ff297f5ce0ce";
        hqMov = "8cc75d29570f1b11d2e6c3ebf875486889498bcbba16db66ab9536a3ba0bfe82";
      };
    };
    "ingles_completo037.wav" = {
      source = "7426e5e7434d1f58b1f3f53ed0ee77fbc3c3c25ed3ee3ebb62af20fb3afc6858";
      computed = {
        hq = "76f2821f46f5982675294f85cbb7cc09951a6f158267ea3450efbc31320476d6";
        lq = "5cb848585327cf8a0145d876980f941ebb08355b05362b44b0ec555dc767ba2c";
        hqMov = "ebb1c6b28f03a5f5603cec03a644ab167e80516f5fd39480a733c949fbcb6e8b";
      };
    };
    "ingles_completo038.wav" = {
      source = "b2fd5a2e7cab7e4aa3afc00fdbbf7047e286dfd5271dab708ccc0e2cce826e87";
      computed = {
        hq = "45bd5b9e329aaad868584a101bfd3ee1fb73b091ea3fdf0749f072774c465493";
        lq = "9aecb509f3869b96c0effe986ab4bb5ac8e6886617f7c3b1a38a22102be1f2e0";
        hqMov = "22562b0337d6863ab24629c24d6f4a56ed7de470c772851d9c79e8d0307aee36";
      };
    };
    "ingles_completo039.wav" = {
      source = "bd7e9d231773e58665d47197f97150beb18cef1668fc34667574fd760a40557a";
      computed = {
        hq = "620c86dfe5f1da2cff8bdce462f9ba32fd1ffb854e6ec86c883d65cfd755213f";
        lq = "5376cdd95a56fdd5cac367ee599cddca37df1b42903f05480c13b6482390ca3f";
        hqMov = "33ad362fd8afaf6436f6174d369bd96d234b7edd766709574ae666b1f9b11391";
      };
    };
    "ingles_completo040.wav" = {
      source = "b1886c09fc0b6e7f4f6d1851f425b77051aab6969a2ea8884146ceca83e94bbd";
      computed = {
        hq = "358f30b5c411d839c742e0e45af07baa8726295e57e797eca34d860bf0302e51";
        lq = "cfa9af8471724f9fb0d5b57a1b4dfe076ab2405533c4be66e74f2359605895b2";
        hqMov = "2ad1a989c19df24058b336734c9a7af2bc261a7776268a3a9d3f7567a1f48836";
      };
    };
    "ingles_completo041.wav" = {
      source = "9a204caa144cb970d69ad7bfce4d20a9af7c165ee930d80fb4e3dee707d64360";
      computed = {
        hq = "0c659d37ab162f9c16f7c785e62100a5091731fd791afff8eba5ae9bb799d464";
        lq = "ae7267aa67b63ab9b30fa637a85f9d4a5cd793704e19521ee44180d9819ec03e";
        hqMov = "3fee7d3a417fd5ea721956ef9e6967600b06f722f7f6af46c569e3bb67ab467c";
      };
    };
    "ingles_completo042.wav" = {
      source = "227386d0af8c590c64b55810e103ea5792a9ada0f411da5c48b8f1aec886056d";
      computed = {
        hq = "65eae5836ee9dfd7f1c222986ca7e617847cac9b438f720515e10a3200ebd2ac";
        lq = "82564e5b6bd588f5900775c558415909108cc9e18880d27f7c22d756a1fa3659";
        hqMov = "44d2b9275ace80ea47707b0aac49c57551754b3b004ab4b8f9aa64ae07ee005b";
      };
    };
    "ingles_completo043.wav" = {
      source = "2c0fa6abc77ad1bb1c7d85570ccf60e20b69921af788e56b40a4d73f5b79c443";
      computed = {
        hq = "1b8be01d6bb2fb48f6905fdddddbb0a420be66a29dd90d342ca5bda28d5bcd3c";
        lq = "53dda8ba9f239d5b037f0f65c8ce82c6bb5c90b2a425f7d438c99ae588687c70";
        hqMov = "c576cdd4ccb619472b511ded86d47616654aefbd4093bf10911de61758645ac2";
      };
    };
    "ingles_completo044.wav" = {
      source = "ce1bf005d225a4ab087fc9a21bb65a40ea8a792a361986d67a42f451b848ded3";
      computed = {
        hq = "f1270eeb365e2649a2ebf601c6657899513f70a6a297218be3795823b0db7fa5";
        lq = "c5b42f483a4ce56664b0f96d1aa47aed920c197bf62f2d5c59e65f747ade172f";
        hqMov = "f1571d562c3a655ded0e2dd90cb00dd62c24b41463a436e6d2d13ffbd0c28350";
      };
    };
    "ingles_completo045.wav" = {
      source = "51377b1aa6cbaf90bd54ac0716d0125f65203cf814fa07c16abc8c6a74faef67";
      computed = {
        hq = "fe701698f7578078470cc19a6368fc4dc723cb7570231955774019fb8e72028c";
        lq = "d9f78cf54f3353b59bdfdb1a6a8e674a540053fda196ad0db1ad41d2973f4429";
        hqMov = "14daa731427c73923bfa7c9ccff81a70ee656b0227499063fd068f8e7bc5b9ee";
      };
    };
    "ingles_completo046.wav" = {
      source = "18f8c7a10aa2adbfd83bd265d19fb50d2f7acb22ce7eae46212411aff2916c99";
      computed = {
        hq = "3d2c3894307514cbab431d10e6fb3dbe44de80bd5658c52921d4a70f3da3ef4f";
        lq = "46c0661d9de5d59049022440259f4b9b83c32c2be906a072a5040b2830eb113f";
        hqMov = "9a7a938ddea5a5459c166d8d02739640c8b578a317a73aba55b9efe218fabe22";
      };
    };
    "ingles_completo047.wav" = {
      source = "f1136f72f79e6826427e24b0180b468ea514ea2adabfe1871bfdd2dc519414fb";
      computed = {
        hq = "fe5f52f0c996b94371311dbab7e9e42ba2300a7bbaeb3a16ea6d8b19df8d3ab3";
        lq = "b92e9d3d5374d6223e0124b7ee2202b075e70ed522b03171f287ec6cf4bd6b90";
        hqMov = "de559606ddb3c9d7c33b83091a9bd6f3cc2f9e5d8f14c7d3b388bb7d2b8ea8ee";
      };
    };
    "ingles_completo048.wav" = {
      source = "2f61b0a69c0ddd664186bc65bcb38d369428a97e52179300dc5fa8ac2e01ae64";
      computed = {
        hq = "ce8db2b5a01b3394561da5e9dc0f28a3e9e4d749b20d1b21c19717d341e96a43";
        lq = "e3fd0d8fd6597e7dd10ff12fe75a8de4a4bf2b36ad389269be41202cd9fef88b";
        hqMov = "cca9b01965aab3b5ff0cd2e6053969137810b134bc13a10a40c105119db8640c";
      };
    };
    "ingles_completo049.wav" = {
      source = "28ad59f3c72a60e58461954ee1074a7d15b321a4250fbded3573ee7a0f914301";
      computed = {
        hq = "652c941626384b705c134e320df1188e0b54190e27c038ea7b94b0d79b25e97f";
        lq = "6308f9184b41a23df81d75f6bea3e5ee0259361eab25e6392fc7a38bb8067ecf";
        hqMov = "b50cd267bedfc61a2dedb3faa45368e47c7a795756dca3de92ca7362009c9475";
      };
    };
    "ingles_completo050.wav" = {
      source = "60a65977b5efe47b3e30eadf88675434cdb646ff562a07cb46494dba54a1d9a5";
      computed = {
        hq = "4bdac71be9657795cfc5ac5673292eae911a352bfdebe0fdfe207ab5580f5307";
        lq = "45da6afca857f1d10c45466ecee88626b506a9ed2299883b90cfbd35269a25a0";
        hqMov = "36e66c1c475d9395df41525a8a3334f1ce019ff8595744bafc02a95384310f16";
      };
    };
    "ingles_completo051.wav" = {
      source = "f8b39c98f9a6cf48538e0553e0fc331899f25d5ce7d98237aefe7362b29f319c";
      computed = {
        hq = "bf854deaaf033c9095584b5052461a090add87cfac0ea4bee59ffdf6c28fa71f";
        lq = "682755653231ac16cc13bb5fc0526396130bfb09d52d0e23578c3dc3409d8bdb";
        hqMov = "3fc0cbb31a44fb17e14482731269d48b14afab1a0077163f45760f0fa67b7e75";
      };
    };
    "ingles_completo052.wav" = {
      source = "690535b3b4f8ca8c39debd4efa33128af289279684a49b2cf2244c72af4da4aa";
      computed = {
        hq = "5dbc8ae2944ae1dfb36ad653ad8301b589f2dca35ac706a01274905a034abd0e";
        lq = "58554292f60f283644c1895cdc1dd6c4087561c10a89fef496d5f44cdfb21a29";
        hqMov = "5de3c55bfa707e2f7175ca1cc6545657ab0e316e07b97ddf31852c96b73a76dd";
      };
    };
    "ingles_completo053.wav" = {
      source = "8004fbed898b41838fed1de85ee90615f2009d490e8ea3c7bc0327abbba58ea9";
      computed = {
        hq = "3225a0fbddb86a04288c8953cc372f192e644a85aa160f3ac274e72e7bc65776";
        lq = "c5081288950261a9b35848d82ede84bc2265eadd619e94cf2933506f30aca48b";
        hqMov = "663d724f609416df89955a4da43f6e452240912815665785643c9edfc62f9b49";
      };
    };
    "ingles_completo054.wav" = {
      source = "5f5a0cc97b9dfa61b70fa3a59b3aba48d1445d5982b532e0f8b197890ad6607d";
      computed = {
        hq = "42ea5107917e41e88ef2161ad9cf935e5ca990f4251fc8bc128a4235182fddd8";
        lq = "b6a16cfd3f75196304f442fc02c3c8ae7801c5b7caa3f635946217188f54be43";
        hqMov = "f085dca7b5748e375bf9ff6b490885c69dbba865a1a2dee8a70caf404892623e";
      };
    };
    "ingles_completo055.wav" = {
      source = "d880fdac7ad3a5fbefad0b5d5f7404e8a95200ef082ec8feaa77853fcae61ec9";
      computed = {
        hq = "8188de0156c9756181f505fec5b66e16792dde781d234486ad07be19d1d8a03b";
        lq = "cdcba04e1238ae96054a55dda0370fb8a5099fd5705a4100ed93f808e97e2a14";
        hqMov = "b3c44a87d70a14ad6e5c83eeacab2815c1ec1824ec04fc59e7e3abdb5a0e300f";
      };
    };
    "ingles_completo056.wav" = {
      source = "30d2869f13628f4481a73147fc54fb4d6b09f4b0b501bdd99f8c0b6a4a323dc6";
      computed = {
        hq = "a88d73addab3b37e2111e8abd8bea2517fb6d325819597208250ce50b116bff7";
        lq = "460af4cbd8bac605e0478f648a442f7da6809b3f8b56a6549c711dd5eb4b07b3";
        hqMov = "bed607192add03556f7089f6484bfe8ed3926e5a9eee30e5cae10c0572b27f5b";
      };
    };
    "ingles_completo057.wav" = {
      source = "359e7d12aa5067a5fd2d43a1b42022b338a897df18d4b17019b383352ab55dbc";
      computed = {
        hq = "f4ff05c3c39c6264dffbdcdee730d612e8bcf2b99f212caeb238f2c91959d876";
        lq = "ef91f8b6ab4a76fdf4ff3182753f0d12a2569e7d8999b21cce27dbc8598280c4";
        hqMov = "9c2f674028bd8774eb5d8b8ad5d2bdaebbd573d28c86d0d93902a4098241b067";
      };
    };
    "ingles_completo058.wav" = {
      source = "503dc55fbc9ac5532a7d64adb887f9803beb88704eaed375710a08a9f78257ca";
      computed = {
        hq = "4012aa3e55b86dee7b52bd339d4ab0d811683a0b4f4b8761b674a99f3469f7d0";
        lq = "09ecebecd59a951319332d3b028517035139dad50619de7ab3e35ba7fbb3e330";
        hqMov = "4aae007d605b8f0feba36af8f510d0e0ec6ef976431645bed3e22b9a149184b6";
      };
    };
    "ingles_completo059.wav" = {
      source = "03ef483ba10749c242735a1e709de222ea5cd849fdd9497f000b36ccd3e0b18b";
      computed = {
        hq = "99bd3612f54de4ece3ec84a6ce0a2eb250d9ba4bc50139aa7856108389efa18f";
        lq = "5c519ed35534ecaecaf56df553b638c16be0615eb17dec54038e77657a02c0a6";
        hqMov = "c2b34481ab0f1ac78cf20b0faaca7e54b102cd22a6da6df9aacf955da9150579";
      };
    };
    "ingles_completo060.wav" = {
      source = "797f30b1b74a3ed494c607441dee73cf84ff0bb9ef226d3094eb66d863e15c98";
      computed = {
        hq = "6341a583df47f728773466288b3fca5e42c66ef78a55e62ee67fd36fdc50dbc2";
        lq = "fede3f9df80a279983392e43a828a12dc80a0cd8933b555d2bccf34958dd9744";
        hqMov = "1e0c5c988e3fb2d029bc544601f4a2558508bb9ce75a68007738b23bebe3af4a";
      };
    };
    "ingles_completo061.wav" = {
      source = "fe9da3bbd2ec8cc0ae5fe7c48b49b880ba73367a838e3ffc0fd3f1403b3d9484";
      computed = {
        hq = "0aab197cb647a268d5e16291821e494049e1c809e0cbf7f8312a474f767f196c";
        lq = "daca7c95112a57e8d37056ba8e031143f130f95d13e9ace023caf435044cb442";
        hqMov = "b989c7182419ba0683fcc799cfae9c3348af0f697cbf309f73755a7db291a8a7";
      };
    };
    "ingles_completo062.wav" = {
      source = "e3b38498953dc044a535f14389f55651b07118e77e3b69b475e82ed48ce60beb";
      computed = {
        hq = "5cf707b311bc4bff59d9bf87053585972992ffb8e16bce32a5c24877cf43c21c";
        lq = "245217d4aa9434839829a90ba193e440c5595b5eb9984e614b811e31a17d6be0";
        hqMov = "10e1a9a562ed2a5766e315939a4b58748910f5eacfee6e4606321b2b799104ef";
      };
    };
    "ingles_completo063.wav" = {
      source = "18c2622ab33798ec18aa75e4a83203e8dcbfa75d1ba111a6fc300e5c7fca5597";
      computed = {
        hq = "30fc6924410b154ee6093f2f4c9fabf45535f714e7efe1ab87768439538b9799";
        lq = "147d98325db511a520875376339375e9a3585a98ea79470e2d1d84b7228ec564";
        hqMov = "ca80affadac723cadc945d089938743e99d99ece1566510d9a7310692e7a9fc8";
      };
    };
    "ingles_completo064.wav" = {
      source = "781e16492916ba4c0284da18f1d6122015c335f20a2f2ce1f3cf215c01b9b1d2";
      computed = {
        hq = "b10dfe631142bc26cc3520229bd768a7d748345449961526d479bb39224a0beb";
        lq = "5c7b2dd1329bab77d849f31666d9939b887507dacee9cd3b77b92b6cd4003969";
        hqMov = "3c8b83be66a9bb699733fdcd200fd86561b00516365a313f9944d8cd32077628";
      };
    };
    "ingles_completo065.wav" = {
      source = "11ce84f2f4e908aebb4e54f04171a2a315d69b92a9c298a228008197e43d506e";
      computed = {
        hq = "4405bd92071fa5b7e3a63cb83f376a6a09d5af9e64f5d85668bada44444dbf9b";
        lq = "f632479e8ea90d6d12cc751f635ff2af741060871da985401f898d4ae02d6a87";
        hqMov = "053f859e6a16239264db5e9ff72217228ee466f888c89bdd5e4490f8c766ead2";
      };
    };
    "ingles_completo066.wav" = {
      source = "4fb370003038ef3f62028a0e6595baaeb4b5e7afb627b4c29ea6e40d10773fa3";
      computed = {
        hq = "e099908773bb0a48eef040ccaf028ecfefbc44c7f4ae1a3c5eef624407198854";
        lq = "d381bfbed78ac0d48d46e0c640a305cdd262c6e3894a10c382f1370af59187d5";
        hqMov = "dde9c1069b6cc606f165f21a63c4acc9f8639df11cef5ca61625101074d10f16";
      };
    };
    "ingles_completo067.wav" = {
      source = "616becafdbbead2ec843443ce76391cefc45a5baf8a3e7808eeac45813501301";
      computed = {
        hq = "e2aead5d5bb880e32729901df9063f00b831ce35b30f2c67f5aa4419532bd69d";
        lq = "aba9db0b5eea01759651030b2c85fb2bcae057dc83940b47f8b14ec38104b31c";
        hqMov = "52585fcd4d5405dd3dd5e46c9404687e77001e76cb470a639c7ad6516789d818";
      };
    };
    "ingles_completo068.wav" = {
      source = "ac380550722c9521853645a89773059e338e5b9039d1a886fc8afa9a59161e9b";
      computed = {
        hq = "eabc21c4bd8e320a3c71ed16190b2132de294e3c4377a2d33e13e380aacea260";
        lq = "0009f280a4e3ac673e82c285785cb34a4c9c4ffb2f93c9d2e78cfd73d86e25db";
        hqMov = "999323529f2a3a2c16424f3fc94cf7f8669b49c5a0bf36c0e76c54d08de69b75";
      };
    };
    "ingles_completo069.wav" = {
      source = "08e0e26cfdc18c7efae4d1b99ce9c0c6ca0f65ee9e54cccf5742f917fb15547f";
      computed = {
        hq = "3cf05b7fe6ed5c9528d7207a7630fd0758593ad1c790a22943925aea5e3d8454";
        lq = "064cb55be0c9901ba2d1d7d3651e7dad0a917267ad98218b04deb153160be38d";
        hqMov = "77248d7a59c107e6dab8f3f579c783b2bef45c46441575d55daed22396e7d90b";
      };
    };
    "ingles_completo070.wav" = {
      source = "7d93c8554d94ce18e2d4b0765ef0f0e69ab9614ffed3f049a1132e3bb1eeaa07";
      computed = {
        hq = "458572ff6c6d1fceef307687a9d6b36d5f55247de4e20fa0fb8a096e8e85ea73";
        lq = "4a458d549ec4b16b4838b8c35ea75546cf808eea642e9049777c1f8d6a7a423d";
        hqMov = "abc5fffa1382ad664bd219f41a0b780f74c7517ad0859cd47d5b06170f377391";
      };
    };
  };
}
