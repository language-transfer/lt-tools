{ lib, series, ... }:
{
  id = "turkish";
  recipe = "mp3_8_0";
  tracks = series "turkish" "mp3" 1 33 ++ [ "turkish034-2.mp3" ] ++ series "turkish" "mp3" 35 44;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "turkish001.mp3" = {
      source = "fa1f3374d857619eb0e697478065dbfd50a1093ffc1d8cc2f8cdce112ca182b1";
      computed = {
        hq = "b8fa3180eaf11cdf1816495ade997bd64e348283cdfa937b7ace370db60ab583";
        lq = "372691d0755bd2b9611924cb4161acef435f1a896c32f50c7bc60eb25167c042";
        hqMov = "31c61e0969930995c25d796a55183f75cd82d95626168684b27434f3c56b37e5";
      };
    };
    "turkish002.mp3" = {
      source = "65914de47a6cb52ce6a1bd47f63d064cb17b8c5a909cbca1b9af5a7b41570ac2";
      computed = {
        hq = "04ddd820cfb3f0cb887a40d9da96f94dd0203553419f6c2a3c0d53befa98f916";
        lq = "70f2c1310185ee648f03b36c9c86e3f9e4e1e6ded636c9ee021902a5c9a0c0a2";
        hqMov = "339c6cce26a3420bf4b56d81dca6a65a58bcc5fad235975c1d529aa46de63ce6";
      };
    };
    "turkish003.mp3" = {
      source = "2899f311a44631e1aa7664469507c1399441231902f4141b387e16e2d7bc3743";
      computed = {
        hq = "192df86589e9529c1bf5d1f8ecc8e95ced72ba12b8c08b06e75f132e2457339b";
        lq = "9d41a9292c40e7ac3743a59314c25f62852d60c67e341e74da8f0db35750d599";
        hqMov = "2cb11b3aa030710b631dee14d5ebfbae6840477736fee0f4f0b7412e5f3cca0d";
      };
    };
    "turkish004.mp3" = {
      source = "edcac3faec80fbc8350d34d3b5c4bd16ce8442efd8db87dfc591db262041ca23";
      computed = {
        hq = "06d8cf3954a1ac6a308988148888ab2d7066791dffb9150fb80340e5a0257a98";
        lq = "223202947944b77b1e6e31644068de29754989d58be0384c4153ae0c9ac543d4";
        hqMov = "458379fd8a0c588394fde52f88dd89e09370b0194404976233479a055fd887c3";
      };
    };
    "turkish005.mp3" = {
      source = "c5f19c3a62650147c2888492a8949dc6cc30b4ce66b745f1d578e0ed5054a3d9";
      computed = {
        hq = "c87d2446b6921a93e99576297da346ba49d822bb20bf4ddff2890c15bd6d1e4e";
        lq = "0ebcc47ea7216af3e8af3a8aefc37092fc0674acd247e1f1d0240315c5244466";
        hqMov = "3732fbff6ad4f7c808df4a8e5fb48def2faa2b2284f665d52f0fb8758de87a12";
      };
    };
    "turkish006.mp3" = {
      source = "b681dc50080275a358a47e3e9964faef3c9894de8d04384026f389ea12d9427c";
      computed = {
        hq = "02cc23e8ef95c71e99237fdb0792bc41ea6b8506fbbe025333371cbe8b3a938e";
        lq = "b2e698a00f28f5b9246ea56dbaf84e88c9a832de5fb1f5f7b8957b8525d45b97";
        hqMov = "0f0e7ea49be847b833d332a9292959ff439a18e399732fffa7ede85ae0942c4f";
      };
    };
    "turkish007.mp3" = {
      source = "4f7f731be0b72565b2fc6c99c0871995e9285aa21d76a739e4dbcc45ea899626";
      computed = {
        hq = "87c348a9df99364f0153fd5c4a84deaa61ebf1bb3c7806c6be2d3d3528e7021c";
        lq = "ed28683c1d7afd93c9598b6f298b02c90cce510d51acee5ea037914b62d56d66";
        hqMov = "845be76ee286b35648ce772d37a45b2c26f05dc114bf68d5ae813262f010fe10";
      };
    };
    "turkish008.mp3" = {
      source = "bb05158dd07dc290a0fcbffe4abdf4936a2aa3f6bc5e7fb1a9b881d64781db35";
      computed = {
        hq = "24527ba8803f05b848643c192a6bd744fa91c0f334a04477acb7f5cc2de7c4bf";
        lq = "4e9ce70f8f68ba254767e10bba4243abf49611c290f7f0320675a14685be42d9";
        hqMov = "889f24e479c434352aee28c4c2892aebfcb198d1fc237ef9940cc15b9700ab17";
      };
    };
    "turkish009.mp3" = {
      source = "1fd0505be8f697564765ffba0de9f71fff2450235a65a93531812a8b1f0984d9";
      computed = {
        hq = "b4f3218046cd02c64d4cce47ffec88f3d73a785d61fd9f180dcb2db6edf91124";
        lq = "06ad93e6f88c9afd7a94091cc2d4fabbabade19f676bf3fb2fdd7e846f9ad182";
        hqMov = "51930c729a7c45a827c9d5461f47b2dee617cc46cd9e44e7956eafc7153e8fa0";
      };
    };
    "turkish010.mp3" = {
      source = "3ebae3047f9a0443d4393ddfe0f2bce7ab1b824d3e3470feb3d04287b95cc5b1";
      computed = {
        hq = "dd74a9cc7e06a13b10fc467e83613a183d653af1f39475be211c4ce6eff90edb";
        lq = "7720bdbe05b96cf015ea313c2a4c8a61749ebcb468d35529a8e9012e9f14e27f";
        hqMov = "1df5f85367319a91cb4e9f25c30cd49b3c9979d91b26712f42b0a2a94f7f060e";
      };
    };
    "turkish011.mp3" = {
      source = "88ee6f2da2e10aef584300cec54cdeab93b52346ab20d334f04ddf033bbf4c71";
      computed = {
        hq = "0a45dd007bbcd47da2abc5d6aba972fe17e6f3b55401fcf220e407540433c43e";
        lq = "1827af9a282e28561924ad5e1286ab12540bc44a901ff501ebf1c4a7d636a1c7";
        hqMov = "dd09a9cfd2331cd48491034e4253db3a3687a364d83965d126c6cbf3a9ec1c13";
      };
    };
    "turkish012.mp3" = {
      source = "b90c297650f6bd9d2f5c94c207f32b4c307fdf752baf610c179d37f8d6de4d3e";
      computed = {
        hq = "fad9275eeaa12c350419fa493544efacc6b5f10d0933e9df6cdcb45b5eb6b247";
        lq = "556383468b6c1daa0c79246ff0cc581d6f8ec5b1c430f91ba3be05a357662576";
        hqMov = "ddc077b09bb111f7f90d52fd8d927554d0064ed96aa989b6fd54532310feee95";
      };
    };
    "turkish013.mp3" = {
      source = "1e1e5b5bce082ed6e537366563d249d0fa782d09cb24c7fbff5b87fcad8add1e";
      computed = {
        hq = "031c3ef0a0b97e5373c2383771786f2536cef822bcd954e1386b5f6b312cacdb";
        lq = "4154231c17c0136c3be8590eb521ad42f258ced715b842fc070e6c35569dc918";
        hqMov = "131d32e83de1e131a8abf3a21b6f399f934d6429d4bab70f00bd34f5a9db847a";
      };
    };
    "turkish014.mp3" = {
      source = "fb07c072c3dc7c110a24e9aa36470786797e4415fbda220b94b8e4d068f0efa6";
      computed = {
        hq = "a17b182814528e64bf2690d03c1a26647fd5b0fa41cee39749838a6bc47e66a0";
        lq = "0b615d35688aa783d8adb75578d19e0bec6abae38cc1d407ab826b9ca50909da";
        hqMov = "b6db46a4886f1801a34328130bb0adee8ffc43fd7f87f3b237197cdc33d918bc";
      };
    };
    "turkish015.mp3" = {
      source = "b62d63cd29e05a0996a683efceb20f584fd1ae16d470103482dda5923416ae7b";
      computed = {
        hq = "fd0adddf535d08f76b10671d02f898a80a352e17065b1bed8558045cfe923525";
        lq = "d6942609e851c7ab98344b1c9063d909e9646ef217d5f2bbd92d8b12df10662e";
        hqMov = "93173bac649780f5b5e805e400fd1ae3c67d423981fa07d1b233810d91c6754e";
      };
    };
    "turkish016.mp3" = {
      source = "c20f797615ccf6d0fc769d4f686fabf89c29e4a7ab86b00805062493eea0c363";
      computed = {
        hq = "0330681ac79079c13fecae5e50e45e1eb80c7f1f105510ec37f2244efcfa24c7";
        lq = "d5622b79f0455f3512b845837a3c363e9aaab7f3aeea8d77986fc3e12f58c5f6";
        hqMov = "70937a5e6ba6bc2e8115b268f1190c7286046a0bebb067622993580ea04e5e15";
      };
    };
    "turkish017.mp3" = {
      source = "2973f2225bfcc80531f1d9ba53c67a476c2c696c6088d932434c1759ed49727e";
      computed = {
        hq = "1dbf60f60092f876071976fb51746e1fb85fb2d30adbf5b29a74daa29cbeabd6";
        lq = "797e288162016ff32e87e53dea23ab3cdf8c675c10bef802642c245577e4f5d1";
        hqMov = "56b5a731789e826f91e6ac2969d4b4c8a221436af27fd6bd501fea6bef77f4c2";
      };
    };
    "turkish018.mp3" = {
      source = "067b4f73f0bdd25ba6842e429d57e32aef208860fef078bb556f416388f80d1f";
      computed = {
        hq = "ba073fca4ea2f5f16dc594996b22896ab03c22bb474240d2380fa50cdf00aefb";
        lq = "c4b9f5ab9fba4800f6aa1c85c1c7ce0dc4a566457793121b8ab77bce8eea0ef3";
        hqMov = "322e45d7f8bd5f75d5351253a772bb3b6c836f170a46f3bbeb3ff9601bd275fa";
      };
    };
    "turkish019.mp3" = {
      source = "b01dd2be7fa5ab899fe2cfb1668a63127c164761e583b78b436489cdb16b7bd2";
      computed = {
        hq = "aebc49e3bc4e782284ffdb555e5c78a62ef7085c1c465cb6e80c9da01e2affdb";
        lq = "2ab15c38c0523a3c7f0394a88a38969c8c1659739784e543724b0891933f2941";
        hqMov = "85afa3237e34a9ee8cdc2c862a3d2595437511f4d7bedce6ce58d273decaaa7d";
      };
    };
    "turkish020.mp3" = {
      source = "8541c7e8f856f82a46f1d7e6113b7a04009728873cc935663b403ef10695a6cf";
      computed = {
        hq = "187ccbadcfc2bf20c43d4cb3ce980a1e74cd07749f918984ab4d41f10e937de0";
        lq = "a03bf8a43681f5bd48650afdc3d53e092e7b9788710552ccb872a4f5f6984a0c";
        hqMov = "0c5e8a9434715443f7721a28f0ae73d2aeeb994e2a3c04dccdb6f3939cf34cfa";
      };
    };
    "turkish021.mp3" = {
      source = "b5f6b60adca70433b3069b1c1e080794a2f683edd4450800fbde2825ec3dcf57";
      computed = {
        hq = "cd0d38a22685a2f7616a1eb24a43f0e8593da38971616398e7d9eafe174d7871";
        lq = "e898c72fb8a3a64d2c3c6e969b9832eba07dafdd89fedc0e945fad63e5ad50e0";
        hqMov = "e15d7a5a513619fdce160f1cbf091cbb8e85e85cf8eafcd5210e28885a101959";
      };
    };
    "turkish022.mp3" = {
      source = "056d9a23a6c00ddd3903f5c3613d26a46e3d451cc435917f7a4fe612154465a8";
      computed = {
        hq = "a9432cfebe96c8379664c67b9c62e5996a9c95f95af6d50e6689def0a3663df0";
        lq = "8274105f209ea3ec8cabe1176aa9e923dc0919300dc4e1d549a87fb49619b7a4";
        hqMov = "221a3a96b4b882dde24909a0e463c12e10ad53f7e09d9d206fad17af4d7306fb";
      };
    };
    "turkish023.mp3" = {
      source = "a91bc8696a1a00706d6bbfb96f43ec88c3f01a41036f33ebd1c857bf2c66cf1b";
      computed = {
        hq = "9c1287fd5c23ac568725704a45ae84270f5d4ee037e935a6cd89953b8b186175";
        lq = "3ac36b32c6535be855bc95b2e65e86b728c5715010c49534e384fbc9df6d3f1a";
        hqMov = "e107ecd45cc3897df1ea6555c709e1ec7d20575fa058965b80ea1bb049c95636";
      };
    };
    "turkish024.mp3" = {
      source = "44705bd20831e0954c467fd38a5404de2daa0d33cd2c0d6826961c6beaf98758";
      computed = {
        hq = "c04fb5c537ed0d97503054e7f2777756de7f8a2439268d8d74bebcff3613c5bc";
        lq = "6ce2aca92fc0dec4905b3eb08634242a17aadd79941ec82615c201000b3c65a8";
        hqMov = "ed5eb36af920ee6b9f33191bea916d29cdac37f1cc0c390967ee9b83944c6335";
      };
    };
    "turkish025.mp3" = {
      source = "f9681403b54ba1c1c21b5f3044d01dadfb28ed661b15664870455dc18eb86a2b";
      computed = {
        hq = "2fee61ebc493b222f3d0182ec362b8bbe99f97a65a89ce3a81fc27f92692b7da";
        lq = "8ddfd95ec3625b5f6b30391438886892e38eb6fd7355e1c88b05329c224d3bee";
        hqMov = "0c6790d88b2b56012a1aa5ba2f690b0b437d3837284390cdd51e82d1d5c3913b";
      };
    };
    "turkish026.mp3" = {
      source = "73f780b8ab8fd651ba4ad5b1f3833555e50b5656e640670bb0111688dbba8820";
      computed = {
        hq = "2b2be480548b60503b4730c4b84766e1d75cfb9ff3501b7a3860d044e5d6ec5f";
        lq = "a8c79b0da9474494805d9c3e5276f8b838255dc1c55766ecc2192288a91525ee";
        hqMov = "5f3c482e675206a61cbdf1b76a174a9deefeeb8b3eb78f021e8d4a8c303da761";
      };
    };
    "turkish027.mp3" = {
      source = "fb00fc92f0e4241256a4fde7b230cd8a2421bd421ae63f15aae86c87d180780c";
      computed = {
        hq = "dc1d7b0b745ad98e0f39b425af2e341a827f561eb1e67c76bfbe5adc21005c8c";
        lq = "9b6785bec77341b8017cf1d2bb038f89dc64922b0b2a129fe22e261a838a90e5";
        hqMov = "6876eedc963263353eae93e240670b7bcc5e498d8a7f4cc6fe17ce9cf809fa48";
      };
    };
    "turkish028.mp3" = {
      source = "b1d556f617f636dfa762352ef1b556517d483e992aa3c8a20228b3facd7a0940";
      computed = {
        hq = "cde42c5b928e36f882108511a4c8713786e75b3cdfad6172652ca7735f857e2d";
        lq = "bbe6b08d204e4eec6fddc11cdd21601a4bb1017a0646d93cc93fb09177f81136";
        hqMov = "dcc756c20565ed2a3c7714932609ee118fe696574058a469e7df161c7538bf4f";
      };
    };
    "turkish029.mp3" = {
      source = "e1d26b82e3b0b201cfae81fba29f0ddb81f624b1045930e01dc0f1a142989434";
      computed = {
        hq = "3ff8ba8f22770e53c380a48734636f185917dec36691a83ecebcc1176c363f97";
        lq = "16c10cbd9b1307381b58e0193ef2983019a185fcc52bac30adb532f7cb68bc98";
        hqMov = "ae63a06f74c5c21ad7455694b88e22e82c01fa9f278c41f1c7f049a4eeee3531";
      };
    };
    "turkish030.mp3" = {
      source = "7f27be87c1184328f560609d54395aa4c84d9174df8cbb409686205d809d6e31";
      computed = {
        hq = "d5756aba59f4338f4eb99fe6c2e86284c96ebd91a7bc17536406ac752245835f";
        lq = "e659110ece21181f966340753f8bb2357748d230370765ac695796894ee643b8";
        hqMov = "f3f50f4fc3e15dc00f4e5a3c2b26bf0ac324d7be05b10ad2d97ce169887210d4";
      };
    };
    "turkish031.mp3" = {
      source = "bcd4adbae97bce2afdd915939c74cced41898af3b2864e07f389854b0f25fea1";
      computed = {
        hq = "e9cfa4536b1bf68424feb4f184f4656ab6c46b35ad3ae2b1b8dcd3c42f74b6e7";
        lq = "bc2ce5b55ebc7e3d839844426fbecb9f9e00f6e42475d4e36e4ebb90dbb14bf6";
        hqMov = "f34a0b8bdd368c05ef5c0bee46105132a0741e40ebbc505da34a8087249af7ad";
      };
    };
    "turkish032.mp3" = {
      source = "717c7f036c3126262a36e9e9c9fd22c2ee7eb17b1eb293f78eaad90b1734900d";
      computed = {
        hq = "1e24fe6e78cf655cd103cf0e45f5527064d971349675c2af43cc68e56a3ac1be";
        lq = "02f222dfd6cb4c222fd3ec3442452616852f1c608914ec61c943d1e75d0f075e";
        hqMov = "9a3f546503cfaa6d5ec05476af4e0366c4e58f18a087bea84e25e07388c28be6";
      };
    };
    "turkish033.mp3" = {
      source = "052be0d76ea7793f3bb474aa6a6ad0d749c5570f4640111ea97c97f0bd9dcced";
      computed = {
        hq = "49683496aa00fc2f29802b2b48b49136299948fd45b7e82460170b6c8692f102";
        lq = "71578312652186e0258365adb912053c102284b86b5aef093dc4e0fa7f588875";
        hqMov = "786e371d0f83be28dbe0a6e489a0a9872872fc459dc8171bdb6b84ecffcb3339";
      };
    };
    "turkish034-2.mp3" = {
      source = "69057dee7d80f1204b2277778e56e71d9e575ea6f53658da2a75289b7b0d8b10";
      computed = {
        hq = "2dd7fc1782ca560368bcf3413d664b622503c83cdb47f05bf4f508022d05aa58";
        lq = "d42df3e930e662214c7f4a4a72033fff28e0541fd02ef2328f74294ebe79816d";
        hqMov = "3f65e86e8e80b4b78d87dcb0c21e305bd53d63bb8877f86ad8dbf52c1aad490a";
      };
    };
    "turkish035.mp3" = {
      source = "565395379778dfb84033c018be5df9db95ba32aa817ff7abbf92d1fcf336beab";
      computed = {
        hq = "282a505a91ee887817bb11f2beeea866392e108c1d5ba2c9072307b24fb0891c";
        lq = "936922a7866d83f954639d80c2ce2c7066547815acfa681c0b5501a067a59a77";
        hqMov = "6f92b0981a3aeb53e72b4c84bc7034720082af72c1c6210b984649d030e435a1";
      };
    };
    "turkish036.mp3" = {
      source = "f84ee77d20a378332728974a6195a0d175f8eefb42a0d615b7fd07b89784b692";
      computed = {
        hq = "6c807590c66b76de1fcc6f6e076b917060fbb855cecc54f2773231751d5ca8a7";
        lq = "06b358f62786e686fce16552228ce1362108ad75b4b375a3daf4f7a63d54c628";
        hqMov = "231783ad94be08144f731d6a058ee1f041d23e4f55c6876ab728e64f3601404a";
      };
    };
    "turkish037.mp3" = {
      source = "f55d9d0564772a70c9c48d5a60435d79009fa7d30d3b672713f975760a9263e9";
      computed = {
        hq = "d6a22c26cbef5ac08bd0f3f80c5d20d90f560e31e629edc989d67d8fcfa32e3b";
        lq = "58b7ddba237b3169a2c578fe385be8a04208be27de4e3b1a11b9c4c3923139aa";
        hqMov = "8c66aac6ebfb9f074eeef1a763f0edc5e0c4a6ee9d95fd4c8f16dce031798ce0";
      };
    };
    "turkish038.mp3" = {
      source = "0e63f62819fb028a77687125062c56c34b9b3f14e92c964a52a1b89e0f4d12d2";
      computed = {
        hq = "185a7f5ab68b4e0831f86e6c39687cea003fa1965ffd7b481865f8d1e0cb699d";
        lq = "bdaed9027d7cec17f5bc7627e0071c49daeb8b5d8782eb996618e7005e00e8b5";
        hqMov = "e93da6038272a87f6f6cc676efab5800f2d9b887c660f34f5c4d2a24f0fac99e";
      };
    };
    "turkish039.mp3" = {
      source = "eef8d00ac84edffdff6114ca3d96bb48697c11ec6d1cbef1ec5571477c8f70e3";
      computed = {
        hq = "78ca2ce63dbd81989d2926b86e0a862f04b0f928b275eee0e37cd21d55bd8d10";
        lq = "0405185e8e053a6c8a2cf6f688f44b723e89440784d32e79d1ec82ba060241e7";
        hqMov = "257d8b4a8c61248f80d2ff4abb917a6ae83ddb7731ad653fb3673e4c52ac9458";
      };
    };
    "turkish040.mp3" = {
      source = "e268b6035a6d55c2def914019550a48f5e55176d360624d624c1cef4109b1ccd";
      computed = {
        hq = "f08f2f56d0188a5e38a01cc5f76bf99c0c7cb7598f77cf2529992d31e083775b";
        lq = "3f3c32b8eaf7ff3ef17fe42be25a7761bc6377f039d3559bcc2e2da0c327444d";
        hqMov = "86aabebd11f4865077c9f36a8b634884abc5d0d4bcfa46e1006cfc85c26ee599";
      };
    };
    "turkish041.mp3" = {
      source = "07056637ed2c6c69e8fc2a4c23f454ab11d891fe1dcbe9fb802ccf1d183a9c8b";
      computed = {
        hq = "df40169d358f7a26f6d85d562a230dbac45e3572e21d2a215f20fb28323a3343";
        lq = "170780ccfe0f3466c9bd036a7d5ed6e227ac72f7f55181d9d5159f99aa21b6d8";
        hqMov = "cd45a80a104d7dc02b2a35a540a55db0801108e66eb57c474c3bf2b25f8448ce";
      };
    };
    "turkish042.mp3" = {
      source = "8c0946dd26056adafc65b15ea1f9720c890baea861cf9920c4b8875ed085f83c";
      computed = {
        hq = "fe6a1945577ae96732c8c7f4563f975dc4c7e6b35f205a29e2d1d8130cece447";
        lq = "3a8215407f71b0dede1523f799a3a24b03d6bc9f53a129be6626a91240c486df";
        hqMov = "b0a96b842147f796d74c3e8c4036df911c228b939a3d4c64b0733775f31be88e";
      };
    };
    "turkish043.mp3" = {
      source = "d3dbfccff2469c1075e77475d65ab9bad0bf79ffee875c41e60484d3e4e49619";
      computed = {
        hq = "ce817e81a503c1eceeba81719aff0890c183e149b0b227b4e14e01b1dab55ca9";
        lq = "46be8177896e2bac64b72bdf3f89c7e68c46d92591a4ff1293ff2239de84ea5b";
        hqMov = "edfe405ba06e725b4170d5f4fd5df9c23b41b5826ce7686c6628c0de17d26cc0";
      };
    };
    "turkish044.mp3" = {
      source = "1a0307f81d16551a9b54b12b174bdc6829f61a6959e6df23281206979011b053";
      computed = {
        hq = "457283d68b143baabb6a51c7615a132666b4e05d9d7e0657fb5fc2b92e9787ed";
        lq = "8814104513b2495d331e675f27fc722de54628c155c3729f36ad9943ff7245bb";
        hqMov = "d21bf07caf7fbf0aa53ed311cbde1839c60b64233cbc096a86f74294b140518c";
      };
    };
  };
}
