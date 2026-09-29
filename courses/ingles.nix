{ lib, series, ... }:
{
  id = "ingles";
  recipe = "mp3_8_0";
  tracks = series "ingles" "mp3" 1 40;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "ingles001.mp3" = {
      source = "df61ca49c2d81e046abaa2aec98670d8bec696329e6dc515909372f011582a69";
      computed = {
        hq = "da54dca789fa6e564e244315355a6469cd449c1ae3a51860f9f450d221967959";
        lq = "91e7920f4691d118ef5a7dc749c9cf5e5b32da6dc94306dedc9335fb86f7cb95";
        hqMov = "5b44d023f3ce94c3ddc76a1a7d9d08e89a1a515434328af0a68d77aca9d7a354";
      };
    };
    "ingles002.mp3" = {
      source = "c383ab73e6813a30f21bf21d972042b13159d94b547bdf8fc5cea73a1710b942";
      computed = {
        hq = "b3ea1a1b51f4fc906d9243051ba982904c32c55951bb7e8e6389301394a33b0e";
        lq = "52926aad40df09614d325db03bd634a39b503ce03cf1517dfb3711c19f527ff8";
        hqMov = "3eccb8e0100f787db2d55e655a46a2b76b112202a65d7c8a59420104c663aea9";
      };
    };
    "ingles003.mp3" = {
      source = "b87dc453f14d6795ee93f384f56e0b7140d6a6c93c71098f87b31f5c2654c2e5";
      computed = {
        hq = "f7797ae5ffe767a3af53ca762561a98d6096f6a7063a3cefa3ebc5530330e24c";
        lq = "99f2676f386f9d291061014b2843cdfd4babb9c9d9fc55832acdfe54615437ce";
        hqMov = "7d9ebc8a12249f67b6cdad6c09351bd6dd3b1d0d307c309ea19428c2c11c82ae";
      };
    };
    "ingles004.mp3" = {
      source = "f915418d42469edd1c3623f64480742ec04b79705afbb7309b90d00303760ec3";
      computed = {
        hq = "b165457eab5acc269854d066efe87687ff271d5248cb425da721d7aee1622fb8";
        lq = "77cf9b8ace3e938a54e989f45f725d321adb1d5eb3a0edb4195ad050b09e05ac";
        hqMov = "9204f44f218dc94985208dcc9d981f2c7bda334a882ae1e313633f5e1b5ed7a2";
      };
    };
    "ingles005.mp3" = {
      source = "7f299d49d437e0426741284234bb8a1216a6a291f4b2c2ae90e8f5c8237a1999";
      computed = {
        hq = "204514d32a83e0e5735ba8ee2f14a15dee915e8f65717c2661496056a1b1b5f0";
        lq = "ba69d81a969abf6b3c57b57c19ecbc533b2ca1fe1c78360bd7384e6ee880a3ac";
        hqMov = "7548ccb5c2b8c33591fab8e456a7ff3a3a17cadb48bd17382fcc199299bc1ce3";
      };
    };
    "ingles006.mp3" = {
      source = "0548b5878487f37396c7c8450d5b9ac9179e5c3c9ed5435103d714d8c0d8c8de";
      computed = {
        hq = "c6bf4ca025c6736086cc34fc6887ded50baff48840f27628f59d14743952133e";
        lq = "334f94e460c9c016bce48c5806ce6bfc774efc22e1f0559fd79c7c8e4bb87c84";
        hqMov = "0fab4ac93a1fc8f826ba0528038ebfdbb69ce9a3c9ffc882b2f8228034cb52d0";
      };
    };
    "ingles007.mp3" = {
      source = "d16912fda6ce878e6513949bcb430470272a6bbd4cad25e9e9931cbc9defdfe7";
      computed = {
        hq = "f576602656e846c6996fa27bbb808663e39d52fb69847185489c63022f2131ed";
        lq = "3417bc19b77e31b722db2be4793dfe7668ea987f5c85a842fdc34df1f83317f2";
        hqMov = "f5e25eb7710d5975ed0fc5d0af7814a67e624f5b4e8ab3bbf3d9657f0c5fdfb4";
      };
    };
    "ingles008.mp3" = {
      source = "63b08e9775fcb68d097f95459e487fc75613ecfe21d609fc370e246fcc2ac03a";
      computed = {
        hq = "dfd67b032663f27d9bd08e384ed0258bc6d4f922c9058f30c78e90ac18d23d3a";
        lq = "8ccf05fe30621d8d14f248a744d65c826ee7f8fb4c3baa4b8f82c0eb9b474319";
        hqMov = "50754e40edca02e729347261b8220cb4e419c2243799e7897414d7aea799a3ef";
      };
    };
    "ingles009.mp3" = {
      source = "9456b0c78206dfea0adaa961666ec8e12955bcce083865fa0d51059d7b6d14fe";
      computed = {
        hq = "99b6ac27c3443061861fe8832498d90d65eb42c4a97cdda0c4070bb64450ce74";
        lq = "d49633d8ff830003d89ba0fa83c71fc4b73e4c1b8e02802e7d7edee9eb59ee6c";
        hqMov = "73eaf0e60f23d8d4b13499f0ed780a9c65711d06bf5759e3ed2c2829202b883a";
      };
    };
    "ingles010.mp3" = {
      source = "ec92078b24884098467ba5ae44508302118cdad987d1762a86a5d9fade680fbf";
      computed = {
        hq = "94a6f86251a0e8127a5e5acd73bf8d70f69c3d9974393728980067af65ab56a1";
        lq = "688888c58056752d70982d3fdae8c22c78c8a6fdbc27b1651094c9f2f2e3a3f5";
        hqMov = "34d32b122d2c510c5958391a7197c94e73e5796c9a444acdd995241942e698fd";
      };
    };
    "ingles011.mp3" = {
      source = "00eb4769c147d625d14cb80d23871a70fcf9ca217ff2495bc53429b1fbf31632";
      computed = {
        hq = "d834f39dcbc314b2621e87ddd721bc9730029b189d4a1c233ab1dc6a44e775eb";
        lq = "72d649a142c3e638e08a08aed0f2211a64b1a2196fb9b299dbd3ee5565431dc9";
        hqMov = "a6053154eb6fcc8f949f0006c50d380e9d5b775dcdf08e8b7bbe26a0cc5318cd";
      };
    };
    "ingles012.mp3" = {
      source = "6346802a11784f0dabfe6b528afe843fd31a3fd0987eea1636595adea1863548";
      computed = {
        hq = "4c1d8122f68e88f0cd91bef7ad5fdf49b535f77bc98a9b21af19316a7bb9cf40";
        lq = "c6daa59f42b4c357bb3ee7c471bedf4634284813ea115a57488ebed19e61b303";
        hqMov = "81f6e5a48db1883a13516156f27ba5495dc4745b2770601bd2b74cb5a1263af6";
      };
    };
    "ingles013.mp3" = {
      source = "02a3a375096b26222076adcde769f116d43ffd1d99da1cf12d8aee6413dad034";
      computed = {
        hq = "ae911cf887d21f1c1eccfc78c7879b0b3de09eec749ade414a4833d6f9a95e77";
        lq = "5a9bb0b0aa7b98b19a6264128576f7f672e4295c2791a17093918b3d11414558";
        hqMov = "1e44ebcac067962d79118e81bfffd9363e34d7f89bf9e47b670185019cc94edf";
      };
    };
    "ingles014.mp3" = {
      source = "d7b97b6c74f39429d07312e10d27daf705eaa2ebe8351913d6bb4dc70079bcde";
      computed = {
        hq = "75fa626c880a417d6eb7ca440c44a19312714f89d16b8571fb4f192a1bedec6a";
        lq = "81b7ca6950510c9c40758b566f38c42666072e76577685320018058b60cf778d";
        hqMov = "0901ed584297607622cfbdbbccdf311dea7f77ef67ae77293ae84c83f82ce3ca";
      };
    };
    "ingles015.mp3" = {
      source = "4701df3fc0ad320b396938243e2f87c3bd9fa0535af4192a73d2ee803e303ffc";
      computed = {
        hq = "f93419ff8afaf35ae6f1184550fd39ab8148ae750ce87ef07dbea6f78fdaca25";
        lq = "7e00fa0c7f6946cea32903cf453290d3feb9e5faa8c8a5661a366d828f4ed511";
        hqMov = "7be7cc8ad14de7db7301cef73a8c4406eee66d8f69a1e5ad9a10c91cc09ee92b";
      };
    };
    "ingles016.mp3" = {
      source = "d8aaa7b9ef05fd39c56522718b311274929223dc847d6dd6f6abd9b2f01c7894";
      computed = {
        hq = "9302a674d2e577c4fc3afd7c1966577e106efad4a69fa9a3455f2e3cd43dd2f2";
        lq = "1106d7574a95ea6bb4a738e9c8ff511afdcca0533bc71265186af36de47a31b9";
        hqMov = "94adff9162e94eccfbe73b443a43b031177729051a0b26d2b2d5a256d4dde89c";
      };
    };
    "ingles017.mp3" = {
      source = "dc297987257e7b3d94f1c7e1bcb83cfed1ba208820f76aa0046da21d93cf7b64";
      computed = {
        hq = "ddfbc788b3a8f8f687f8acc7f0c6c53557ab396f10ae1556d3426cc6c966d388";
        lq = "fdb68f91f95ec4ee2431fbfa1e93dc5e87fd02322cdb61faa1cba215affafcd0";
        hqMov = "00b532b43d6ee4d966fdd88fd4ea6e3e2e709923888cef825221c5b8134f9763";
      };
    };
    "ingles018.mp3" = {
      source = "f5e44b29fbb9e6117e39968da612f09691072fa94d69cd6feb31b1fcec4254ee";
      computed = {
        hq = "0ebae5161e2d7a58bc4ac5b81a6d0d755267d93b64846fdf269036242e1d8faf";
        lq = "0c09c9c8d541cb758db46806d0cc101584c2124fbe9fe679f9c7fd8acd112314";
        hqMov = "6c0dba30afd7b6c823d9eb185b0ddbcb0991251c157ad645bccc079538afb38a";
      };
    };
    "ingles019.mp3" = {
      source = "39196b34347c2d1c59afb887fa385c5642e4a29d2ee1251ffa4c3e469edfb0fb";
      computed = {
        hq = "498a10c9cd020253ee98165362d1282353e53850e352f17e1f18855762243ed8";
        lq = "027cd2651e0dcafdeb0dd4b8289e637af29a23d5866eff61b1c3fc69859c4f9d";
        hqMov = "a9289dfaa18e7417a88dac6fbe73942b623447f35de45323117d21cb743710a0";
      };
    };
    "ingles020.mp3" = {
      source = "041ecb4dd0e6e26876a2d61d94818ea2ff3191393b70348973141e50771b43e4";
      computed = {
        hq = "870416da929cfd91a957b51a298cffd5c60389adf6720b900a203b48e972bf7f";
        lq = "026845b4d4ad660988ce8a575f9123c96ba97765c702c461f98f94bbf5543452";
        hqMov = "58ec11df4f27a19b99b404e0809d819b959d3c29718d7ce259eadc7a34402399";
      };
    };
    "ingles021.mp3" = {
      source = "4305c67516753962643395c00b5522d37fce1aceeed6ae3be045cdd5a05b0b03";
      computed = {
        hq = "496ebd89fc7ee03d247ae4b76fa8b8992144a3d7e865ba2110dc758e56a62ffd";
        lq = "7a2122a405a382a2f2f4ae85128972c51673624ed2b548662477b2752325bbcd";
        hqMov = "f4bdb0aeef28958736c068fd673bfa3dc33b366c794205a33d15894bb17918e0";
      };
    };
    "ingles022.mp3" = {
      source = "159bd33a52b4a82e14ab289cc860c9212a8fcdbb06161d72cdcda7c706fb1c92";
      computed = {
        hq = "e82c6780f38639e13d1123b77652e70a7af144a16e0ea8e7bdec3ebc7f27f090";
        lq = "5eacb77ce290d0aa18cdd6449805870f36ae1e2f0d667115d943a87e1ceadaea";
        hqMov = "3ed31bf48ad6eef4f549b04dde54d2bda22ea763981e754a8dbd3f074b1874bb";
      };
    };
    "ingles023.mp3" = {
      source = "520315116bea3bc2a388fae2f0e67545c8841770e7d9259091c793694d71b145";
      computed = {
        hq = "37de0aa34acd5871aa309abf850ceb0e346ba23ba4f0b73320ca32af13d9a457";
        lq = "9a28777fbe9cd41489f327a471c9307f6cb8dd07ec879ac3cd2fc593e8d20200";
        hqMov = "0fb3fbff88277e48ebd403cd76d81c5a4d6bcff89d0dd96429f2274edb21e35b";
      };
    };
    "ingles024.mp3" = {
      source = "597aacbbd124ccda2f0f2b7ec5900b514d1fdc60ed8cd87f58280f39facf4cb0";
      computed = {
        hq = "9ced6084c69c1c6cd82dac676ee63e45aca2c3d78b2b91d1c2fb6466616fb913";
        lq = "0fed36f00abdfcfa580590afde81271b7a1bcb51cdcced1f0b1e15a54a09facb";
        hqMov = "fd9757037079a4682a6029b2f2817796d249b9a262b16830b1815624b9e28e70";
      };
    };
    "ingles025.mp3" = {
      source = "60fbee0b25e061eb53a3bfdb7401f6dc54e42954d27ee41fde0f44925ac76cf1";
      computed = {
        hq = "f28bffe7b1534b897559a28fd0b52e65d53a17dab498b42f2923c97672fc6972";
        lq = "8b82364321339c82a24eba1b3f559490fbbb45fe89aec2549393b870cadd4671";
        hqMov = "65c84280c2c3d13d745cda407a6b0cba80837d93cc29be6455658f1c4ad3896b";
      };
    };
    "ingles026.mp3" = {
      source = "0a9e1106116501ec7b93ba826cfb4e1c0fcb0af65270634e54bd46502fdc0b01";
      computed = {
        hq = "4b1bc611be2aa5641f5fc66dd0395b07fe986656f3525bd36eda19baca8ab0e8";
        lq = "c603cc23f87760d6e29cd8c6fe6c7522fc04c69bd579d8a294805979e76420a7";
        hqMov = "7face5241c55773a7fb89c0b266d5f8047d032c320d8a8b4fd421c2bb02d650c";
      };
    };
    "ingles027.mp3" = {
      source = "c32708f0ef19bc42ff7b63dbf2ac7f8290c7677f037df105d6faa75259995596";
      computed = {
        hq = "d496d16f18673b20da3353e52f18a4cd7216ef6a9dcc4226c434bc8025caa427";
        lq = "4c826113a8be665223f15ff5c15f04e677489c328ac59171d58eb7b9079186fa";
        hqMov = "25f97903b6ea77cca73b76d7c33b6cc5f778dbc65be039d7f9641b7a4abf8d39";
      };
    };
    "ingles028.mp3" = {
      source = "4c7fdea0c8f57d8c047bb011408ba35c960c9051c20d1f705e51bf3717317f10";
      computed = {
        hq = "11e4d44c02f0f1aab2dc0e8b006c5918b50a33620d8ad20a486607f332c70753";
        lq = "c2a0381548baeaa9856a8ddce31ab1c040c824f113bb565f6acb3c4c0c7a1791";
        hqMov = "b8fdbed484d615139017310fe03d48d8221e42f40433b7d346bc745d329bd402";
      };
    };
    "ingles029.mp3" = {
      source = "b17d3d335bc63f385d4e09feb2bd452fe27d79a859e6d69e9f26b0df2a7f3bfd";
      computed = {
        hq = "698ed5af9cc6eedf097d36e0352e9506bf301dfcb1129e86cc345bd1d2773901";
        lq = "49ac5aa10401fbe0ee7581ec9350be818d273584a942bfde3b082857243b7172";
        hqMov = "9b77259b185007b61a854a968c95c213e2fd6466e94377274b5830d127b1f8ae";
      };
    };
    "ingles030.mp3" = {
      source = "5e9ab0882b3fc75136b2b20fbf01966f18b865b9102aafb0f94036300a518798";
      computed = {
        hq = "e09ba9c8cae5bde585bb5b729cf4698f964faffc0e79dab8dc716ca416ef058f";
        lq = "bbea0dd131a86dff0ab4b6094ff213fbb636e5f306c1a66abf7e87aa442937ee";
        hqMov = "c6333eb335646ef5c6b15ec91dc21f1f871132133896edb8b4c0174f1d16e894";
      };
    };
    "ingles031.mp3" = {
      source = "abe1a3c77ca48fac43c59d4a9b1cf9620ad693e3914872425907ba39c73c2c84";
      computed = {
        hq = "5cf2203bf742a081db29e7cc6327e16692ed428b0231d4648b3b54216aa24e23";
        lq = "7f7647a84f66516d982d10f6f3da6d8cd39a892b8b9b78d51119f26d04740144";
        hqMov = "944c96e3ab27d49e83f2b38852d6cd72e1205bd3ce3b506f21dd9cd72969b0f4";
      };
    };
    "ingles032.mp3" = {
      source = "e4e5787259430bf10bf8c43cb0c2b10086187a51ba4f5af393d359b45d738c3e";
      computed = {
        hq = "4364f28a65f293fc61ef189787621420c2c90045522ff612cf79d182117ae573";
        lq = "e6e539728088e8bf5629ae0342e71861fb77bf08c81a383b8832b253248700c4";
        hqMov = "e509d27b3985b5c785f50e06379d42ba30579e874e2e45f953e55441bb543ec1";
      };
    };
    "ingles033.mp3" = {
      source = "859e7fb16995bb13e42d9a858755c4010a47da671aa9d2e6be26b1338261d8b0";
      computed = {
        hq = "66e772ec485aa989960b2d2c95bb5835f916a0bd0eed2add59156932b82a1429";
        lq = "3cde93224c9f48a7a7697b80c7830748f61f0763f6a7dca5be2ad736cd54f02c";
        hqMov = "145378603ecfcdb378f4237216e7ed440553b44ebced8293d940c74a5ebf4da6";
      };
    };
    "ingles034.mp3" = {
      source = "6ca8444047c7bd5308d7865d08d776ed1d4fd409832a35fb4c998613f10afad5";
      computed = {
        hq = "ea7c5b315935380c88afca8c7d68ec4c0ac5ad89b9acfca3d67988f84c46475a";
        lq = "41a44096940c2bc4cd253668338576890e919cbcf2cdc1906f3edfdf3da43d0f";
        hqMov = "08f1eebcbf9d5ed9f47918686e148c6e8b2ec3bf7b05e1bad10aac9f3ef180a9";
      };
    };
    "ingles035.mp3" = {
      source = "127a75af71ec56b379c35f3d60e2d89e3b4d4cfdaf8f01a4c764063e56898fd0";
      computed = {
        hq = "eb0007815b09db6c75f7290feb7f6d8975a282c1c2cd66e9ecd912d393eaefd5";
        lq = "a999906f8422d56e0b9b2e1a751fc21cec628fc4cefaa2f4cf1ec5fc8d639a19";
        hqMov = "ee5d2cc9724910a31ec6d98310aaec43a10bf72badf7599f234584ff2e1b9b97";
      };
    };
    "ingles036.mp3" = {
      source = "1563f684b6400f51aaa8533b3c5cb235a36e60f4e3f9812bdfce7c6d50c2f18c";
      computed = {
        hq = "37ea3bdddefd790cecc0f73513b4ae09a0b77e7251b4996bf39e23742bc4f9d9";
        lq = "bb07629ec90f69ce7c0028cf275bc80919f476bc3f5fddc3fe280b99efe81c2d";
        hqMov = "a05feaa47228c22de943e067a2c024e26796d9383f4155181fc2482c4050679a";
      };
    };
    "ingles037.mp3" = {
      source = "aff819ce9f8b5747d44dce3ade90e919240c3f06f726ffd174a283e1ad93ce81";
      computed = {
        hq = "078e4c22fdb6a1ddbff0ab95d779be49bf2de5198438cff95dc96727e5a7b57b";
        lq = "fce74887afb17ccdc55eb7b474391a401ac28fdf90b89b7a0a27a02cb36536e6";
        hqMov = "9b5bbe3444bb303f23b431aa97115d1a05db06658ca3c1d6a4b567183e95010f";
      };
    };
    "ingles038.mp3" = {
      source = "66b1af3334204777a2aedb25dcc0fdb7f4d27b13c6cf80494b1ffd6d03f67d0e";
      computed = {
        hq = "cf34daa80bb5a6ba6d0e2f25afc6e826b2e3a017e5362c83fe3bc1046190fe15";
        lq = "0acd3f8096f0e0253579686b760617fba86e0f34db59c8b5f8d459ad8b90076d";
        hqMov = "2786eebe55d66671d92ea915d645caa9a5003276f1f779bc14b109da3ca4be06";
      };
    };
    "ingles039.mp3" = {
      source = "8baea8e468c02d1a0eadbbafac27f8da6916ce5a736d1fe02cbf41877398b892";
      computed = {
        hq = "1c77dd677fc2e9e7bc56ed7c759759e8f8c7b484828beadce3520c0863888a21";
        lq = "b54d9c96f9b042256d573f7d443cc8350b952514f716bcf42ea39d7d07e352ec";
        hqMov = "50b771decff200b7e7c4813d34588ae6a82347aff972b3fdc9b9a19b63786835";
      };
    };
    "ingles040.mp3" = {
      source = "ffa26a446c4d4a39900f031b88c3660deca4c9ccc15719aa48b56d2b4b9cacd0";
      computed = {
        hq = "b5288b1e69dc38aedeb07f0fad6cf9b0d3454c8334d5a06f7d6bbb56357032c3";
        lq = "d4c1aa9e9b932f133e161cbe3611ce471a77e06d073d48243a7e3cb6e32d60c3";
        hqMov = "c63360c5cc3ee89fcdfe54b94513a3b7fb43eaf4d8c87d290a1c365549d9ca6f";
      };
    };
  };
}
