{ lib, series, ... }:
{
  id = "german";
  recipe = "mp3_8_0";
  tracks = series "german" "mp3" 1 50;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "german001.mp3" = {
      source = "033a4557641447b720b4b62d404f641320feb56aef4498b510596d7c6fb5c7fa";
      computed = {
        hq = "6e89263eb41053f29dce24132af54da6562aa45b7d339ab71a65fade30fa9bc6";
        lq = "51f495dd3154cd378c35dacb5d8d2b0c5370593a43b20534d2833680d0438ec8";
        hqMov = "d810b18c69351f0a7dbe428ce398a1c4ecf4ae90742385e184a7c5edbcd95440";
      };
    };
    "german002.mp3" = {
      source = "20766abbc5fa6ba18bf9e2b3944c6d26a0819f66a392402507091c509982af1c";
      computed = {
        hq = "de46aa1e6d3203cd0acdafa3abf62cab9e36873a197090dbfc5781e6ae0e3b0c";
        lq = "943e7751e86644683904d1f7390c8c864fac3b65a50982908509804199b23cee";
        hqMov = "82d8443b8b8874ddb026e6898dc29ab800acedab9ff2b5acc539f0798d2ecd2d";
      };
    };
    "german003.mp3" = {
      source = "cd387c0f9f097f84f76f34b09d50e5663a211900835db67c3a08e8aee2694f3c";
      computed = {
        hq = "7a81f8555002dd968488568ea27f9b1052a0bbba428c5e4bca39b3aec5c0dc3b";
        lq = "b8a9bb43492fd5f7f1f17b87e5c550df1e089e649cb49952a666e000136aeceb";
        hqMov = "fe75bc5835f33f249e9d8984696772baea78e019214cc1e272c4c3cbd90b78dd";
      };
    };
    "german004.mp3" = {
      source = "a479a6e293ae12aa05af63edcc45e2ffef9685dbeb2a693927c5d27c71285171";
      computed = {
        hq = "16501136104b87853c84df00b736ad2cc61c39f0e546fc111832d59a6b3cdb3d";
        lq = "7b6f6a09b42269f677981162b1e404fa69907084de5ae04a40f6ef101afa557a";
        hqMov = "fe7d9d6c026db75fb9eea4b05091ca17582e861e03caa1860f121caf5884714d";
      };
    };
    "german005.mp3" = {
      source = "973786fda64a34071961e140f197256b2f0a7bbc3efbe40cdd56de2a765d74d2";
      computed = {
        hq = "6f657ef952b5235a1cb47da1d834eaa62f9e1fde8065a7ab42884e854fa30b07";
        lq = "817e8a9bc7dfd8c888100c446eadcb39a80b4af39ddf3fda11fb22ca231ce597";
        hqMov = "dc678b877f6f7e5313c0dfc4896606ba57f00c61ecf8ee88de214e35d9386b51";
      };
    };
    "german006.mp3" = {
      source = "7f79e430a7dac9892cfda36ea436b29088326dfe1c51e92f0d82aca44f6cc50e";
      computed = {
        hq = "bd5e3073d244c2a9cd494ad20550eb84e96bfb8fe69fca0d41ae113070f6c568";
        lq = "22583fd870b8cd92ad7c1729e4c04fed8fa8eff9a4b8a0cb912de4616c55906c";
        hqMov = "711338abe5383602617ef591da606398115b3b108b150e5fd4286a36dca7d6d7";
      };
    };
    "german007.mp3" = {
      source = "25b8c6696d11f9525c5a3461bc73ba334b0ea7faa4dac6bb144d01de506e3bd3";
      computed = {
        hq = "9fa7e45e1012990300b237ae5f510b13e4b8dda8ef651dbf398712cb99cfb6fe";
        lq = "3421047585fd5bb164edd0876d749795109935d31dea38b9d035ff6426d6f762";
        hqMov = "3497a9054241ff23da6caba03fd1f1f4f88927ffc26dbeaf7aaa206a2a25e758";
      };
    };
    "german008.mp3" = {
      source = "f52e2a9d495c6db3da77e96297fcbd11b85d4f45289a132872183d7eeedc1bf7";
      computed = {
        hq = "44b8c47528a40543446d0a7c9fe668b577c2f9ff0e926d6faeeef54c5de62717";
        lq = "ea2769fefa81cb09b2456ffd26f72564a6105eee397ee60a134679055d946978";
        hqMov = "ec3569c143487cda2bed83d478848f48a7aa061e9b4eb1a5798633775e152bb1";
      };
    };
    "german009.mp3" = {
      source = "fe9f3e8fb4b8cdf0299373ee2ee65dddfe34b0b042f9a9076455ebec4a5a39ea";
      computed = {
        hq = "609e505083a83d2cb20f63dfd1e30bfc67a6edac709352b290c2ed6ce5f9c562";
        lq = "f4b720bc5c242dfe3a3f07b0e1ef5fd433676f05d99c31cf9544e6eb9a174d8b";
        hqMov = "44385211c80b078e29620a8825af9ac6d33ad79e0f797e153cd986b79f5b69d6";
      };
    };
    "german010.mp3" = {
      source = "f1a142de54bce82da2b3bbc1195b180d1dae38bf1ad95cb039521328ccbc050d";
      computed = {
        hq = "5b01c6511acf4646ae173ad09cd762a69933ef5269f62e806af47d6c279da6fb";
        lq = "d28077dcc6d6c01de620a4136b6e83855c9e927bc3ec45a5305640574c063d7b";
        hqMov = "0c9085e9a6d1e00d14ae148954e29172901085a6abbfcae3cceedc07f1ac60aa";
      };
    };
    "german011.mp3" = {
      source = "1389cf2c8a41f12c549776c256369eb7be98652b6c404b9cf8b4c77a0e1b3d70";
      computed = {
        hq = "2155ba494745718268a7808364d1c2174df9652f710b2eb1525e75548095ee80";
        lq = "f6d77d3e4203a177fb371422b42a7b4c79f4b84b762a92ba0318f30d6f9ca868";
        hqMov = "fb87529476dbf7d698cac9b41b809f93c0aada7bbbcb505b07bce65850e6a145";
      };
    };
    "german012.mp3" = {
      source = "982e9e20adcaa4350cfa80c7ff10b53b5ce728aa16b9058b4f3daa53f5b62c99";
      computed = {
        hq = "05954726aecd6552d0e6bc6cd836963a2725e36ead9f87999d0e8e8b846fd865";
        lq = "8084545422745976b3537e1ddc5c297e17a9b2863d51217efc08fc3a8b539e26";
        hqMov = "08df62be4109cd9229a67a3a40cde5d45561de917fb335dc528564ae31dc04b3";
      };
    };
    "german013.mp3" = {
      source = "5d60680b44042bca708a5c65e2c6fd0a2e62c9e21eddcc611ea77ba45ce8e3a2";
      computed = {
        hq = "ca615d94c4de4f36b9971e2402e9123ac08f1db429cc4e0f21c1e719a13eb938";
        lq = "f722f334e847f9cbf3c098a811dd67a05a51ff2cf0722256d3fa6e31eeb145ee";
        hqMov = "b630933eff5579c7c5bfacbf2a7adfaf6e2e013ac7346366d0df6bc6dc95e73b";
      };
    };
    "german014.mp3" = {
      source = "6c1e6038d68883009e69eab7e204664f4e1af7a62bde05feadf9c07c16017bb6";
      computed = {
        hq = "897a9e8c5bc2003fd6fffd0172770fbb593736bcc4d1673ec7f22ad8ee982f7a";
        lq = "79332ee861887848dacfb3e8f3a53f2cf31d1ed95f25b70b5c4d832ddfb8ec31";
        hqMov = "d27cccda46df74eff00a8fccbb1451568d0009dd1908236b5f8fcec858b8192c";
      };
    };
    "german015.mp3" = {
      source = "07db0a03c9d9509ecca5dd3446afac3a07855015be72e8b10811ef4041fbc232";
      computed = {
        hq = "05423a1c715c7429809f9458fa318c5a55b9aad1ade66f33205b49728a0b9614";
        lq = "fce09fce1645bbb397f815ab1c5d69c2afc5068abb41a0eaf6028018cdd224d7";
        hqMov = "ee89befcc805efcd72e88d89ee857a0bf4daa8289b4b2b0eb08d3fedacc77cef";
      };
    };
    "german016.mp3" = {
      source = "0ce79acc981958b3af0ba5446e1fb10e4620709e132f50c283208024b16a8fda";
      computed = {
        hq = "2cddbe3d67834fc26be931c6a9dc7b5b54f5379717d431ee7ff46e2a31d91de0";
        lq = "05e36bd8d158fc5a3da47249344e8631f87e954d614e19f46199b5336bcb4f11";
        hqMov = "cf45719243d8782d6a3ace7bc5d333422d54d4a4e239a3a93194e503be510700";
      };
    };
    "german017.mp3" = {
      source = "a3fa4aebc6b19d6c3fa773b079f6234478263e95ebee8d5dbb1883546091a78a";
      computed = {
        hq = "c34ab9e3887436fbf497089c81e75f4eb27a1598fae23309cdee4d41d72f77e5";
        lq = "83bca18c3e17709c05dae8162aa353caa52660963db9c66661a5eb356add6431";
        hqMov = "ed878339fb9e32a4509815353f6ca303cc4304422f89f6b0758072c296948db2";
      };
    };
    "german018.mp3" = {
      source = "319fa84f0c04f5dad8f47f2541218a98049b9f774bb3f6533aac4b11744e460e";
      computed = {
        hq = "6c41a2ad8094ee0845f88963e6682d2b2524bc7110debd4416f4f9a2dc489a6c";
        lq = "7ce2cd88f726664f41b664cb8ac9ab763a90dec244e04f104e4845a37534e6b6";
        hqMov = "5f97f9b941509aa27608c4ad8cff15704feeb8dfeabdb4c3f6b545d8fc95ad5e";
      };
    };
    "german019.mp3" = {
      source = "17998499a083d592c26cfa06e1ba140f6adfb6122c6bbe4a253a5823d75f57e0";
      computed = {
        hq = "0263ca9ed907f2de6db363d774fea8cb71bed5d3eb0b5fd1bdbfc2d4d8839230";
        lq = "fe0b71974488ed3a568727b193695e55588e072ffd79317ea5a92b6db91e2e9e";
        hqMov = "db2cb8e75dc8c3bebcc14c585db5926e67c3a55e06a328b59ae058fd385d8bbd";
      };
    };
    "german020.mp3" = {
      source = "c05319a7aa5ad9a12aea0420f99df899cd5c058092b877dd406cd862d76e44b7";
      computed = {
        hq = "07785d1025831ddd7c45d675083521e421e3a99380fa7d56969b0fee09f54b3a";
        lq = "18dc66f5f6881b88c7b201794af8202ce6aaf62e6d6bcbd127a1c77fbdaa47c0";
        hqMov = "a1e1ee027d0a49768a46c97eda05e40caf291783c8b4804786e6dcda85311edc";
      };
    };
    "german021.mp3" = {
      source = "6d38710de8531ffabbbf84da4c14e35fe38466120fd994c4175cf0073614ed9c";
      computed = {
        hq = "f79bf360b8b4371b7ae74e24f7e03317d7be7e6dd7ca0d267023c77615f6eaa1";
        lq = "a7efe07b549ff53cb47cb815254464517640ff93f5a25cfd113de7f2cab64ad0";
        hqMov = "a51051a2c693b20d8057c113f2c60ad9074d4a9b537b2726b4e186946a3cf00c";
      };
    };
    "german022.mp3" = {
      source = "3c44d6093d046e5bfdd076b06b3844bc05906b87b9c831e6f062117c8fd94eaf";
      computed = {
        hq = "cbc51eb85f34423310b906e1ca72e43d128f417f08fe59b838b373e452c06bcc";
        lq = "8b4c5b09e8aae65510e96cadd05024baafee152d11b891200541ffb9cbebacb3";
        hqMov = "4651f38d47429042de6f295372f282c14791eb04d4873db8a46d1b1a656e2a2c";
      };
    };
    "german023.mp3" = {
      source = "23da18573c5d039f1165242be4bfeb48aee6c99be656888ed89811126fff3c92";
      computed = {
        hq = "d1a8b3ecc23385c345bd78b6e754b79759f1e914acdcf60412378d710a210e14";
        lq = "a5f2c9d43f6ba3be43d8227e14d71debfcf19f6efbaea4199d5f2874e0161358";
        hqMov = "60d6de3aea9d751105d0d04f6bfeeba79a23f685fcd0e12b0c1c5cc4e4e993ba";
      };
    };
    "german024.mp3" = {
      source = "bb9d8125d6a0a25d51d32c2047e9fb83556d2db659ebcfab5af719bfc6165c4b";
      computed = {
        hq = "73758d470cf280b439449587d55908ee534babacf5ae3eecebf68034eacf380f";
        lq = "40c0170985e221188eedb3486d1afe9ee9a894a85c3cc5944646aab51e6a2bc6";
        hqMov = "4ff0afb9599a9ec06e13caf02aebba2435fb8f90b1e7e0eb5f20bc13024f9e38";
      };
    };
    "german025.mp3" = {
      source = "85d2e83e3abbfce503edf285fe3bdb5712540ad6ede104be0285e23e62c997f3";
      computed = {
        hq = "bbe159e2f5bc3a0d035bdd61f52d9991110790ac42896e2aec196d1ceddb5bad";
        lq = "6e94782ec3df1ec685cf4889cec535887bfc12ff9b4bc4ac761c43a8e04ed51e";
        hqMov = "1ee7266c0d14146cd7aa3de10722f8feab90102ae52ee884e40d52652fa6fdf3";
      };
    };
    "german026.mp3" = {
      source = "9e4b7aef710085ca99c838082ef6e8e78632a5b2cf251f1db32a71139664c245";
      computed = {
        hq = "724c06f2f0509eb7a6c7b01d7c937fcaefaa36dadb0962f5c116fe80905a5cf0";
        lq = "ccfe542b79919ca6bf27dffc4addbb5b6e771df71cf9ad753855aa45fb81b5b0";
        hqMov = "4353eacf3c9da84e08b885167082af682ccf589e5ed0c72a90eceb53495bd255";
      };
    };
    "german027.mp3" = {
      source = "817c226f46f0ee7af218301c212ecd44f05969bd83db3f5546a65bc32a688c5e";
      computed = {
        hq = "05785d7669dc543083fd6a3dff9c75e324343d2bc642099eae498e65dbe44587";
        lq = "694d62f41983275f57baab09ad1fa0ddf2e94146c81715e64c3a7d061836c634";
        hqMov = "61a35fa38083690274865f07b7c02627519988a1e32601aec409c8889a1cf508";
      };
    };
    "german028.mp3" = {
      source = "77bafe6185e39cecd3a7174ba05b201357f9f3f60fb362e358560ab1b63c1b34";
      computed = {
        hq = "01a1572686156cc2e7edba70a65ab01a2e4da50583a672ce74bd0a37a9390857";
        lq = "c9d42279d3eece5d2c8791367f5f0018d9a8a745b871851993183529b358a9ca";
        hqMov = "87e4b042c457ca5bbe68ab56619f667c41550e11ae619b7f216b33f48fa77fb3";
      };
    };
    "german029.mp3" = {
      source = "165fcecd4d3deac02445ca09e1da45571e28fc47b1fa0abfa0c40617514a3f2e";
      computed = {
        hq = "4e5734cd6ed50ce727e60f875a9f7ffc3918a53d6403cc9fc2ad7eb410d04726";
        lq = "9216db383c54fd1f06c958e2736f785d3d1fdf79acf5bfd029a3fbf1166ee65a";
        hqMov = "45f068cb948b534813c2a3cfe0222f16456027c177302a66dda7e70f67b1de18";
      };
    };
    "german030.mp3" = {
      source = "7bc966cc390c1c2e824ccd78e28f3e3d02271dc14d063f7da8bfb67f2eea0834";
      computed = {
        hq = "ba1b6f76fb14ef80230a8a811772b4d6a697d7dd84d433191ab72100c7807393";
        lq = "9a089849a738461955952c34970af9633a9b2e0dc97e5b5d5f3b24b632bdf009";
        hqMov = "ca4bec42a8145d85df7494168eb65eaa4c3cc3ff1c49676b743c3abf8f5409c9";
      };
    };
    "german031.mp3" = {
      source = "e8f589f76283db8e604b4fe3031d6a8cdca20f719deb5ed1c3cc4e96ab670c49";
      computed = {
        hq = "40945584474b23fa99306e0554f3c63df7a45f54be17288ab8448f950b9e3d6e";
        lq = "18563e762088b016ec4e8136b16bcea22e0da71c493e8019d4d87aa64bf55389";
        hqMov = "0c4a75594d70b6bcc4b793b701f13d1ae87d388cd5e3351e17d0bab9db3a0bb7";
      };
    };
    "german032.mp3" = {
      source = "5526346192ba5231e0cd46a4c5727a7d7e8efd75dfcb76bba7a27a5d15a433b8";
      computed = {
        hq = "f1bfb2b570ace1f83f71f111ac796c8152ce2623dcaabc1ed269ed388abb089e";
        lq = "c36fcf625b01d73fdccc17c89a3e41b468928a37dfd8f8cda0e0250ddfcc40f6";
        hqMov = "934e772a1c07c0cf64d08cfcacff602b9ab5be062e78ea3a41049db55d80a653";
      };
    };
    "german033.mp3" = {
      source = "5920bc583170c53c073749c659b69a6b0c1ea12480d4bad91902f032e6877df9";
      computed = {
        hq = "6e71349aed64d87f61f46d5840b0f419e183c0c94fc58f16b554d368e50d59df";
        lq = "0b07497563b55996036a1da646f33ce8e959876b81c944f28d8c44ff609ccd74";
        hqMov = "5b537a6c3feb15b8e2bec8f99e00e12c3cb5e5f66a15f31bf3b028e7be44aa8b";
      };
    };
    "german034.mp3" = {
      source = "db605a94e4cc240a7efe5c21788a3bdc29d89b781b3f1ad0b752233ebb1c8a72";
      computed = {
        hq = "287396a1d0bd78897fc0a181cfa750355a628500f840daa2ac150d32eccdc52d";
        lq = "a5819aab6fc53137683565f476f618fb34dca9053ef8268b1117a164560a5684";
        hqMov = "bbfd9de3fbf2bff0f1364467290399f4fc90511fda7b1947483341432e0331f1";
      };
    };
    "german035.mp3" = {
      source = "73a5ce0ee804ec44fb2d3718225a0a76c1df3ef0b809cf8217f37824d387bed3";
      computed = {
        hq = "f80b9336c1cd77c89bc0959586f6f19bd5eb8568a94cf43ed6670398ed8d920a";
        lq = "6cd0f4a5800930c36ca2c9d85e9feb5d8dd74160396b836387e28d9769445382";
        hqMov = "c06881da2feb3dc007ad821eeb7eb86de13b717ef64e887f1ed7cd6d46105790";
      };
    };
    "german036.mp3" = {
      source = "f696c95a28b03dfa6a4d56b646b491dec7ddcda59af14cc07831c4b00eeb9b98";
      computed = {
        hq = "57fbf2de1ff457f1aa43fab7bdb49354ec34814b4b25cb34855403d8e68478a7";
        lq = "3eabd216bfe1f38c02c1935a4a3baf71de343aa4c3e2bdd6a231edc90201a5e3";
        hqMov = "cf07dd7b0314cee15afd86f820623d7ec43a511bc4f56f63828280db3408aa57";
      };
    };
    "german037.mp3" = {
      source = "fcb50ea71bca6421aa0bd93c9829390dafb75515c8f9b1e3ddcc4384350dc7f8";
      computed = {
        hq = "4ec87138ddcf772cd53e7c9a4357bd328266895b73c12f0413531af5bf9537c0";
        lq = "4db3869e4473c02ea6ed5c0f15a8a008a895dd8c0d71a9aadc48880b2aa92bb5";
        hqMov = "05a6a6342e244b8ea6c65c9b4dad27a68a082e205f893975295369c2b77f8355";
      };
    };
    "german038.mp3" = {
      source = "3ab3e631262640258cbc279ca7b1b32a5525e443cdc1568243d8a408575ff4d4";
      computed = {
        hq = "eb2085cc1b38df110537280f2db6f0e0251fb043204cbe2016e3c8071343b11c";
        lq = "8f6f90b64ba6f360676da27de679fd4ec2d2b0eee78d1ec844b0c74676749dd5";
        hqMov = "2ebc8f2fc6a0579a1a842700a6556db99df5ec24ba034c0ea67400a9237e1a81";
      };
    };
    "german039.mp3" = {
      source = "62c86960af91d94d228fbf8fe5660be9fd963acfb9a7e0b4ca9532f37d45221b";
      computed = {
        hq = "d5a4da9243bf33cf2e697e08a3a3f67db105f27ac9a6098155cc95be1fd1cfe7";
        lq = "a798e1e0bbf71bc02733f5a7a089dbf2af791e037c5088d1d39ec1adf029b960";
        hqMov = "37d9ce774b2da946683702f513da5752d8939205935ddae54977f64d52780f57";
      };
    };
    "german040.mp3" = {
      source = "9a956a9636f8898d6a7889747e39825d632bcf0ac371a4845623e5f7e732f041";
      computed = {
        hq = "372937903cdcf7b1799db436fb16a560bd076f25ee3b39ddd0bff1562b971536";
        lq = "b586f161c4b7285baedf135a5bf2bce32511a775b30174d0b30481287967c6e6";
        hqMov = "91f9b5bbbcad869f3e5b48db9ee04ae98d96bb250522b8837981379f4f6977a9";
      };
    };
    "german041.mp3" = {
      source = "3e597b3334833000caeee4d3b74199dad2fca5341a0555b1fb551635f4ba802c";
      computed = {
        hq = "add43c1e5c0b249c4b336959ec10bb05de765105ec1d27a196ce519a39b4505d";
        lq = "ebeade2a5fe1d3d251e8a2db42406f35388895b7ab4d3bbec49b31e52668133b";
        hqMov = "d512bb8f2be0210f719c8143b5eb92ba4c6f553351adc526200bce538f704179";
      };
    };
    "german042.mp3" = {
      source = "13f333947674951fb992cbd275d2c59123e7147dc9d1b2b6ac7eeaf9be6335ba";
      computed = {
        hq = "e6ef8d85835b3dbf3083e16f7a04b7b012208eb3de6db2c1686a482c3cb957c5";
        lq = "6a2a707ed51ef48196140cc27f53417e53c507500c31225f5690fb873c942c31";
        hqMov = "74733059c158bd69359472464f6fafe8402741787dc5f633a310a4cf8f8b1c10";
      };
    };
    "german043.mp3" = {
      source = "8c618ddcfc8c3b722761d3ad928c2201aeb5a89ed0501ae154fcf73ee3710eb2";
      computed = {
        hq = "2a7ee6cba1734d75da6be91788b9888ac797c8577b9fa6d1b87c6a6b222d2bb6";
        lq = "c96a6bc18d39b0b499a4f0210250a78a1ef8d55f698df7d2eaec93dca8fedc01";
        hqMov = "7078e6d6e4aac7c9ccd9d463f6fd54602db7f6eeabea70a96942f3378b1bd146";
      };
    };
    "german044.mp3" = {
      source = "973c78679de2f0c313345f510bd56436403277d0f8f7b7c944546e455f8f03c5";
      computed = {
        hq = "fb8587f66cbeee25c385333c5aa2a53a270656836c453cc92fe6d87970a68d7c";
        lq = "b81d5f39e11840f4c0c4ba27311c2c9f100bcfa399312de9cbd56e94f63655ec";
        hqMov = "2925c12ee3f84da7b29622f1819f2aa57eadb9f2253faa2750aadcc5120cad85";
      };
    };
    "german045.mp3" = {
      source = "ee3967aa7f641ee8209eb5c762a682387598f554d39b846dff53adce92893019";
      computed = {
        hq = "b0023333c3ee2a992b73c48560cac72bdc63b1701ba5f95dfecc0b8c4c791645";
        lq = "9e783ea89817b7e1f60de5da38dc490b2e3032db3d9bcf2c6d4246c51ad3bf04";
        hqMov = "97cd448d253ccb22615ae2563f159d2054eaecbff097b6309354f30ea4481a4e";
      };
    };
    "german046.mp3" = {
      source = "2eef010cbd606d4aec22c504bf3e8588cc092d192a9f739e26963e7a186430ef";
      computed = {
        hq = "d1bef1e236444603c63095c3952f1a70e58a3407c37b315b8377061ab230dab2";
        lq = "aeac5d376515549a498f4b84ef1e866756e755fb41871dca2af8486eacf828ea";
        hqMov = "b3acd9384601fdbf8622ade32a0144e17e431124e8bc41ea4dfdc9df2c9fda0f";
      };
    };
    "german047.mp3" = {
      source = "bfc641296b5afd7e49f8b0d12ae692708f0aa436d91813f480a37526edc39eb9";
      computed = {
        hq = "155f45dfec7fdb1aefefbd2d2d6b8051912e5332dbb3f33f107d7bcaeef4f842";
        lq = "4cdd59d0e5c3d0922c18409356601cc9bbaae2cec80321c67bf80e7708b09768";
        hqMov = "42253b99581b62e386ac2c587818ed60c5346a72548ecb74474ee8859762b074";
      };
    };
    "german048.mp3" = {
      source = "216c9c59e74a05812739fca4923a4edaa7ad67c022243e091e5f36a7bc3002fe";
      computed = {
        hq = "f3cfe4281928d236bac2fbfcea0fe7ef5864aa3cc36c983eb2aa70872eb34db4";
        lq = "ac42b8c15f19c1fe5e44d76a95778592c857907f097596fd3e75e2b9c4fe466c";
        hqMov = "f414c7d67adc299cd7afd59b337a863993137686678eabf093ce35d0e7f15727";
      };
    };
    "german049.mp3" = {
      source = "9830e1250e5fe7cb597d3e444aeb1d53c512324e747176e750783a828ed1a195";
      computed = {
        hq = "93bd89d6e30a8822c5eb6206eb094af268fee5d9018fc46b4e94e506d5644b0b";
        lq = "c7d26a456166419bef5ba0d0a70141831c7a300bdc6294f9afd0442a4b17418f";
        hqMov = "292e40fdf8840cf8a7e82f0a721c9d9f89ef2f5c58c9888430ab3891a650f358";
      };
    };
    "german050.mp3" = {
      source = "e5ef2b643fe7888e08561be0ac4bf2b40437352a0e1c1733405eb0e10b3ea033";
      computed = {
        hq = "09af54ad1544fe89f1707a763f5e78635920b2e2cc203330b02cc786f8030cd8";
        lq = "1df4b3273bc94340660772050fc4ecd673cf28bb9c775ddd9ff70aab50fd55eb";
        hqMov = "51fbefdd2585e29848b7e827166fc42ebb4bf07c069203ea0b013efcb59c1cf8";
      };
    };
  };
}
