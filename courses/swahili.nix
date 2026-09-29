{ lib, series, ... }:
{
  id = "swahili";
  recipe = "mp3_8_0";
  tracks = series "swahili" "mp3" 1 110;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "swahili001.mp3" = {
      source = "3a7b737d6f0e12ff66ba5ec71e5ea52579c9d9d069ce7e3dca32abf3001ef3e1";
      computed = {
        hq = "e2be15c9ac45b8b92b5266e6c8db1e326ace71a59b7fa76d4e8379438872e870";
        lq = "47a5b9c68a961f0dccbbab48c0d4d2744b6932f8ae2703b5a047b38da71b0015";
        hqMov = "e08becc2a12cb8cbfdf915023e15a63c74854a3fa7b1b95af7adb5d4f0c6f838";
      };
    };
    "swahili002.mp3" = {
      source = "4d81b8725191d2d7d09be1f9ae3b364d867b830798fd8b99589231b2454d3693";
      computed = {
        hq = "4d9610807937e2dfada33c5292447e439e8873c6d2a78a15cfbc88c8f263f1ed";
        lq = "1c5cb17d6ac31affa01b9899b2fd041cebbb7dac5073911695ca00d032ed8ee9";
        hqMov = "ee8fbe016a5dcad1868cbbde1c2684f458584a7ee450276a0877163c303a0772";
      };
    };
    "swahili003.mp3" = {
      source = "0bbee4296e6c18cb60069a10e90d1225c2ac7b3c404c213d5774f8bff110acde";
      computed = {
        hq = "eea7a9720d0f1c85173702983e26af5693fbbf019e0a5aca769c1a88cebfb4e4";
        lq = "7c635aa31733749110d049a851d592ec83a61b776fb0d468bee4660f7ac32658";
        hqMov = "21d1d98589966ba52f0268e415747dbe4bedaf6ea14022b4ae567c8f72b95694";
      };
    };
    "swahili004.mp3" = {
      source = "46ae2add482416189cc2288a11b4f4dbbeb4796bed72d93d95d08bc5208309b8";
      computed = {
        hq = "e0f35e1fe2018c299225deaf6799737c4c519095f2a2d100fc0b65def56b3039";
        lq = "eb05dfb47b9af4a2d8eed4b8a5b997276f9d03769a91101f730390e18b380e13";
        hqMov = "c5c02ecf74711ab31bc4e8c8761a0252f1a22f9d0f99fa8494281c379deace4b";
      };
    };
    "swahili005.mp3" = {
      source = "fcce3482e694fa71bca21e621d38d644236bf5d22a47c50d7aff864323ae4ef5";
      computed = {
        hq = "80c69e19ca34a7aa40aadf2760e281fe456a2b5c92be58e8b29fb5aed8403f72";
        lq = "966d36309db9b32b4452fbd4e0586cdec8058f9efec1f735aa7f1779323efada";
        hqMov = "205abe211f04f8fc060d7cb6f7dcde19fd2f30db0bca095d4a150252b3c860f0";
      };
    };
    "swahili006.mp3" = {
      source = "5d13b3747248c2fbc00b9ce6f15d049aaaf28570f4f0d0a1c408e06ce79fb890";
      computed = {
        hq = "74c9c3bb223163e1d23ca5a4b8382e8f8178600fe41cb4178f060950c18e17e5";
        lq = "b3c07cdde79fba02132759a61cbd72146981bfdae796c8d9d51a5e1bb8d70f5f";
        hqMov = "b2fa62d977b1786d3721ac6941050359575857cebc1732a984857061ec43370d";
      };
    };
    "swahili007.mp3" = {
      source = "f48c367862ae952e8fd38864848911695c3691554edfa412a384cc607a2f65e5";
      computed = {
        hq = "307ed22712c0f5374358e2be9f0138a816590caba67535542715c9c21508b9e9";
        lq = "c89d43036b61850f014727b4b0e91684470b6eefc9d48c84ee8a98c46ebbfbc5";
        hqMov = "ba0a50bf65fd9c60f2d26421e6ebe4f1ee1a75b7306bd17f48036b59fa204276";
      };
    };
    "swahili008.mp3" = {
      source = "64e1fdb09d520c506c180c8e0f305d3185793f4dffcdb17b4ba35a4d067282c3";
      computed = {
        hq = "b6de74048e0d50307eeb9f4a6198307b8d3b91db4a3bbf114504a54b67356977";
        lq = "3b6e876edbe5a6284b1c3ff7707a37676a74beddacf97cb841bb13660eacdb37";
        hqMov = "f7d13d5faef134d87e48e4326bbb32df344b1639482d0213bc72a10c64c822ba";
      };
    };
    "swahili009.mp3" = {
      source = "e998dea8455b210309f08b64fa52bc2f97568a1c786fb0707747fced2b69bfe6";
      computed = {
        hq = "11b580c70eefd85f2181cf3e13ab1cc1004841a3da071587a40eecb08fb437f4";
        lq = "23f17efc5238db34c95af75d39cf5c51896acfb763d28c6ebaea30c4f54e18d9";
        hqMov = "5ca381ef5d203ad02ccee513ccdd196b9482faca875959c8cfb2ac740d6a5e67";
      };
    };
    "swahili010.mp3" = {
      source = "2518f8c958d025e4990fa4463bb324c00f3d556ba04922e9ba51a3e97a45585c";
      computed = {
        hq = "5ca45291693a8472ed035b2cb583485b3263a784a0474c4ee3f0accd25a3e8a8";
        lq = "16ac1c9c3019ac7b08ca8c577d02e5e5f3d74760711437930a5e80ce46630653";
        hqMov = "2b5690d6a576bb95ef97e1a904c9debb86aa33fc14dadcaf17bf42c3ae9a720f";
      };
    };
    "swahili011.mp3" = {
      source = "e423bd44559e067261dd092d9baef21bb718326280d97688cb6d446b61cbd874";
      computed = {
        hq = "6b43f4efc6a695b37af7c9f8cdb5df304081cc0043ea8530de6a5eca0cbd28b2";
        lq = "7ebcce0ac6b671b2c2ec797c458de1e020df3e47d3a3d957fdba27c021128e08";
        hqMov = "cd9659bd146e548390a0412586362361792d765d7e6b9fd061bc674e47b91c1c";
      };
    };
    "swahili012.mp3" = {
      source = "07c3f4bb80c8ab80af62af92fdd493a62c38d06a969d5d74195fa49910e32f35";
      computed = {
        hq = "e63c38c8350e8496dabf7ecb39b8889532735f6029229bb4c62adedbee04b5cd";
        lq = "161b0e5a9b9820aa4570b5441af164ba8d4b66f000413d6dab438bfa0b8a29c9";
        hqMov = "c56c606bf564b97eeaedc49b01af2e5605728061706d6d9d8456abf2cc393ba1";
      };
    };
    "swahili013.mp3" = {
      source = "968d59ca642e74ed25c1cdef85e640bdd2f02e3a4c482740a852a982e3b26eb7";
      computed = {
        hq = "cbeb59f2370ee0b5587363843437c50781131cef3ddb750ef2374218d6014b3f";
        lq = "e9a182df8b0a9731ac39662fb35fbdde8e1d1ededc4becd4fbd818d762d77da8";
        hqMov = "ae4589d5c6cdc5746906521559b8ee17b656c2d154138066e089f4fdd8ca0a1e";
      };
    };
    "swahili014.mp3" = {
      source = "615bc77e41ba3880c92251a17603e1064b077814fdc4758fd9c6fd8c7583c2e4";
      computed = {
        hq = "50257cdb2abee5286caef00ad7fad7517f1a6bb85575ef641db8dd39d08ab367";
        lq = "1868892435b831052cf3b5d95e2b832a58407588d67a16ef4b0c5a28b22da287";
        hqMov = "7195732db56aa8accc9d5c8a5245072748b5359273d23e4458f078654cddd1c9";
      };
    };
    "swahili015.mp3" = {
      source = "cdcb29686ad9e8ded9b7c093e2e3ee95c27808843f25075a49f460c17aed6d08";
      computed = {
        hq = "98d72e98a2c0ed380c205f0ada73fe1a16e6f0d7ebf7a934e22a9b51cd932dc1";
        lq = "364ec61467e84fe761850f8b1140ea4eec612a2b9bce2e2be1c7c51e586f0b70";
        hqMov = "091f14af324252ee8867169fbb53a54f9c4d95ad39a56eb47d83c22aadfc6244";
      };
    };
    "swahili016.mp3" = {
      source = "11180c5e54f453b7e42c32d757008575f73bdae19af1cf8cb8b2ec7621c53741";
      computed = {
        hq = "7c44b57a8bf1b876d2167adf071017443573f1dc96ea9e5e075dcd73fc64d656";
        lq = "cd6a19f29b39170a4e44e08d4277d23ae3b7788bc8d3a52c291dac33142cb6fb";
        hqMov = "c141f96e7b3dc2946ce98db9a09ff0108d0187a78123e5457d3904ca1e010122";
      };
    };
    "swahili017.mp3" = {
      source = "320257f0ec2e1135002d2a067ef237326fda054dd73454c872f73b92d7b63e10";
      computed = {
        hq = "39c04447e420b0227403774f5e59ce6485832c0eabdb895443564315d5b09c96";
        lq = "39d42d9657083c6c61c4749e7511c6aa37d8f45ccdb8748b533e0453472b1fcd";
        hqMov = "bdf3c1eb733a806cca2b374df8ac42f22dd52db32c04389a214248217571829f";
      };
    };
    "swahili018.mp3" = {
      source = "1d93ffe60523a1ba833dea803a2847ddfb788f1f47a4a622bfdc7d47a5341ab8";
      computed = {
        hq = "ef98f3121b390a5f5eba05330a3440a3bc3ef68c28cb694e14d262acd939f546";
        lq = "50010f67937437a2fdc7897c3d109a375cf6075c74fe573df961143d42ccf06f";
        hqMov = "68a9235da5b24586d4b0939fc8ce2dec00633a34511aeb0dbf314b820edf2000";
      };
    };
    "swahili019.mp3" = {
      source = "4fa0926d547b747f7e0c1a158d9efdd2645ed1486dd1cd47ef4a8c407f5dc70b";
      computed = {
        hq = "0c06bf0ca0ca1359099c04f7772eb3d5dc9de7a5cf5616b4d34ffad814e339b3";
        lq = "11d047bf949fe30ee64a19654f5f3cfb885ea1b52f0870b316e4bd67481bd94d";
        hqMov = "4e96a070cf755b7292a7a6b01fa74b6e345c6dd972ae5a51eb796be000836e6b";
      };
    };
    "swahili020.mp3" = {
      source = "dddc3c74c96ede3ec4d534e02a5e55eb11f5bf75564f9ca5e07b30c20544ebca";
      computed = {
        hq = "758a09265bd67c4189c4561ea3a9db13ba363f3160380b43aa47a7c713a7cb0d";
        lq = "428d948973d3c090533cf5402029aeda06116b69a5d19af1cd29e6cbdb4246a7";
        hqMov = "d1f35a9f98466bf592fe7d3348f55d152957e5a127b3506e4c4a2d442f59561f";
      };
    };
    "swahili021.mp3" = {
      source = "811f04ffbfe76a3b5429dae59d15b34b24226b489636395d6003868d6c333f74";
      computed = {
        hq = "4f032f14ee6969344baaaca76bff4c012a76848c520bbc1f98869d9ba72b28e5";
        lq = "9f1d06d5ee966ce7d977f48a539e45fe2063bbeab4c1dde62850ffa66ae98c59";
        hqMov = "fc1ca7979f55e03caa7a9b71158d3894191edd36c80f8b8edbf39226f98d1701";
      };
    };
    "swahili022.mp3" = {
      source = "d89cbf50a64c3cb3e89d24c55cd955ee23710742d1fad41db339e6d645fb12ff";
      computed = {
        hq = "d8bc18830e973cc82926ce0dae61346c11c085b453299e996240e0a127c7b305";
        lq = "d9f8aaf6e7cee9c35437bf90b007f79ce5ec5ee79a7adaa76c310b7c6eeebea4";
        hqMov = "d71cd789cce8e225d41d0745624d8efd880bf5491458a1669aaa7ba4e0a9c38f";
      };
    };
    "swahili023.mp3" = {
      source = "9c51054bf8f94554ca1fe3ce91260410a7b3cdcec0adb0ef9bcba560b36eb43b";
      computed = {
        hq = "76667f60da93a331a925e2255abf461442ad185bcbfda4f47a1e41af2139cdec";
        lq = "74b08006b93b454603c15836a2e937491d55b61c0190e85dc3c8570b8813403f";
        hqMov = "4e2bd88bdbd1edc4ad4bebcfed00ca1a637bc3fc0cf2a1f4ab3b75beba07a086";
      };
    };
    "swahili024.mp3" = {
      source = "5c16f424a8abc8b5db36efa5cf848e629475e3a21e174dc3c0b08385797d12e8";
      computed = {
        hq = "b81f7e416e07aae9f86196b9cb87090e6a3bfa65f10c534012629751503349fe";
        lq = "702c0c78eea14a01ca7231a69a24a3bbe610d2cfdf52f2b92d862b22c2705363";
        hqMov = "4d2d9fd6759ecf2ac0f111d8da55be5301114be5293553977a22626ed9b711e7";
      };
    };
    "swahili025.mp3" = {
      source = "90795b1ba001d5339631c3a56ea8d153e44ac88dfec3f2763657198a84204d65";
      computed = {
        hq = "e4935df21b99a482b8e856d8466af35839553fa7093d72836e50b737ffe1e64f";
        lq = "6bd3c0e66318786cf3daabbe950be353f95bd730b2bcf47316de330c3db79283";
        hqMov = "c9bd5c9dd86a2d1e709fa63c7d8d28b5e8e3f925106aaff2b91b3c0db607afdc";
      };
    };
    "swahili026.mp3" = {
      source = "82de7062b36dde965e674eddca6cccf9ed76f8b57d29af4eb4320e5193405c86";
      computed = {
        hq = "47dc177f5587887d68131853a6d5f93c3314aa5cca00920e7687c1b8d6cc5e05";
        lq = "8eb1f26d292a5608b94249ca1c065ebb699f4a9e27d38d669b01f8faedadb18e";
        hqMov = "a4ad25a5fb1819a4a4774cfab66942900abf0eccc5c10d8db8909e1b9d4b247e";
      };
    };
    "swahili027.mp3" = {
      source = "d482d6886727d568c12165b053e10842012dba3eb23f43663280de7491c1ba6e";
      computed = {
        hq = "44cddd9a6e6f8468db4e768e9afc1107228d969fc07daea90bf8bdb8c05fa7ca";
        lq = "9c2e6e330c8c28e63d3cd61b1f5f2096b0806f5769bdd89135ee4cd53d6cfd5a";
        hqMov = "5882be8ca0edcd5fb279533387988ec98d1a6a62e9a7cf3b1976c599d205b338";
      };
    };
    "swahili028.mp3" = {
      source = "eaef78e612038509587c3435b19b6dc175fb085a6bd35af65edd21c5f62ca03f";
      computed = {
        hq = "53eea6aa430fadb005770f9c271c22fd370a5b8e7534b15f3c845f9cfd6d56d6";
        lq = "56a51ecc161b640dd2b173427db873959e1301a812731544838d2ecf59198efa";
        hqMov = "d269c0845fa19633503fa1248a6e87956ff1c12ca9375602d017ba73def9609a";
      };
    };
    "swahili029.mp3" = {
      source = "38936980d22ce460dd62d0624f3b903c6791d1ea50e9c1888efc7bfd22fa9b83";
      computed = {
        hq = "96267a57bb31edc1ed204adf52b4cdf2076e5154d530fd42054bc64d8760727d";
        lq = "863277fbca7229c7b7981f9d9a2404decba4cfa58689d84201600e19a68c4dff";
        hqMov = "9d7b999c999f48a3edb36590bb6998957540f5da46ddbed5c4979073ca23250a";
      };
    };
    "swahili030.mp3" = {
      source = "0eb69413c8ff26892b51c04c3c5dda01cecf986bf069869cbce365e1c1408866";
      computed = {
        hq = "72e51c2a62382ebcab6b556a2d3eb9733c4ca3f378cd67eafa0c896d408225a3";
        lq = "cf79090df9670f2f1be1b73cfefcdee114f6a428d57b792f40e98acf0c5ccea6";
        hqMov = "028914228804b7caf53fb990377d235088f9696fb2f0eedaa27702ae866b7105";
      };
    };
    "swahili031.mp3" = {
      source = "33ad8fed73aeadbe33e6923c506be325fc34f55073b6af3187c0689f5d4d9966";
      computed = {
        hq = "2b70eb083930cb4d915eeeaf4a8a84ef134d5f8cbe57022901790a7588030ef6";
        lq = "309c6778cb449e0a7b58f8b13c0d07e39f0b8f30437742e76f05e733e0cb4979";
        hqMov = "b161e72e4b8b7c875e92b25e3a44c5abf610829d74ec704ce4ea507fbfc37bc6";
      };
    };
    "swahili032.mp3" = {
      source = "ea50ab876c9ffd196e905b7c0d00e921ce43fecc7ee081e641eca02ad9465360";
      computed = {
        hq = "28c4ec92276491f5439f4a586c023705a8edd19d7ec35e9d041f48896cad0e68";
        lq = "5ec7492ac0e3570ec95ea913aaee895e20a0461786942f9e51790508a7bcdb3f";
        hqMov = "4fe5835c99313e900cb2597409b8053bcbfec48fb7e66fa129c8990c500a5564";
      };
    };
    "swahili033.mp3" = {
      source = "6c5ae42a6bde4e16d141665432509031c6db4f8d6df18afed6e4d97bafe7e389";
      computed = {
        hq = "e523ca8a93e58b88054eee2fc14ceecdf652b9204a62a39016d18c25fab99ff2";
        lq = "e5cece0473fc13fe6d14deacb891a0d83420442db15992e1a69dc9895002dd17";
        hqMov = "4cfbd050bb128791a21df4f90fb56e9169b8a53a7f168765a9326c2f3f4ba0e7";
      };
    };
    "swahili034.mp3" = {
      source = "8da7bd1bb4d84dbbd10c0a475dd5162c7e4d352afa1d43b32c73f6a2b2685f7b";
      computed = {
        hq = "1694a228a93d15c1ae7b8450bdd2a01ec43579e2e439500e2c07383eb047198a";
        lq = "10bc4d8b88610b9a23853f6b1e25f3be9242022a0253036013b1ffa203f00644";
        hqMov = "be49a9fbe4fea3dff2a8e3cc1a745ef05c007506a040674d4bdcdb7b3e4bec0f";
      };
    };
    "swahili035.mp3" = {
      source = "8f791bbb9967e436f1ae01a7a81b7dba8a67389fc0933c8cd44127a51635a5ae";
      computed = {
        hq = "b28adec6749bcbf78e7f88b2ed6a4eb33942291e834d8d1b557cf461d0159098";
        lq = "f86c8bbe006505423c4c20ca8edcbed1f4ce8e81d6989879522424fd48aaa9d0";
        hqMov = "676c9c7856aa8e70a634e06abdfab5311e758db88c84965dd67ac967b4c4526b";
      };
    };
    "swahili036.mp3" = {
      source = "6d3289ae256ad9f34aabb79437e25886f2fd49420115bce46682a73573c1fe0f";
      computed = {
        hq = "8731bc7cf351c13434aebf7d3b2237694a2fec6024a35490f183ea3bad9bd051";
        lq = "3317e9d7dd2d7753b8494cc20f689b6b0e1b95eca047ea68f560f49febad2863";
        hqMov = "acddd73394ffa27c98edd3c2839aace47aed324c0d2c3e7c001dfec820bebc78";
      };
    };
    "swahili037.mp3" = {
      source = "f4d62026c91ec4b4a271e1ba6ef3d54588dfd6d9a03e433a383b6d88f4a639f1";
      computed = {
        hq = "d7a032f46bbea79508f82a906f27c1ffad4c02229c40b7d803a5cb9122a55d8f";
        lq = "f8432be6193991e18cfbe92e29bc9cc1322eee9c88f9e43046e09b990042a81e";
        hqMov = "093b81e28424219f99e60ae30f07a181fef5dd9571af33f3648c74ca1737f5f3";
      };
    };
    "swahili038.mp3" = {
      source = "240271865133c7f84254d4b4e73dbdc8321d053d570fa1e874852acf6afff7ac";
      computed = {
        hq = "05025106bbac5ad028e8675a0f677f3effcab345a6940bf2938493fbd717a53d";
        lq = "6de572a9fa9155d078f06a0e01075e5af408dfeb6a7152b3002621851fba9509";
        hqMov = "03a134fe3b1d3e4467b36e437bb867deea1d3436f452cd73de388c71bda82db1";
      };
    };
    "swahili039.mp3" = {
      source = "41f5226468e7bb7d13abf4d901947afb8be3d65ea09ba7471ecab44b3af97861";
      computed = {
        hq = "43e1d5952c8df6a805f112f4ae5ab6c282d1b4ee5844140301c9b4b38c9b9157";
        lq = "7bea59df3c29019b9b71a7f10acb7addc5f53b1a4512a3216913de3243f136c8";
        hqMov = "8a2ca75bb60c836e0ca345d5608adedff30bed88fc6290388b62908d32051b44";
      };
    };
    "swahili040.mp3" = {
      source = "0d01889bdb98c40cc4bdfc6316c9927e02d6e9b01e5aad541b59b6d764996272";
      computed = {
        hq = "5c344bd397de8b995061d9bc6fa987662851a04dd5ebf6bc4945569edb81d569";
        lq = "b99006f6968566feea67a478f60b2ad9579d81cd3639e3b509c1544ee2d69e56";
        hqMov = "225ac92a167574714bcd048f441a15abd141a415b8c947d0557d8962f1cf41d3";
      };
    };
    "swahili041.mp3" = {
      source = "ef7f1a29399e26bdcb0ca1d4fc61b4b2d983d48864dd46ffeb9863549800825e";
      computed = {
        hq = "e3af444154ba70a0d0c60043aaf8bdd7e5ca00818ed64c11e3924dbef6837933";
        lq = "114e278ea0f1e786bc604f58be34f5949c3ae3f76862f438f74dee67032455ff";
        hqMov = "9080de7b9aa4caf7b49cc4e116fef9764fa668d7b44504c9d45c1234b4443852";
      };
    };
    "swahili042.mp3" = {
      source = "e4c863ee41495f48390d25aa997806922437b0e19553e5a11f2f555f775e25af";
      computed = {
        hq = "ded11791b562cf8cc3e6b296ca2ed390115c66285d04cd3c6123b6c6109e4fc7";
        lq = "31d6813d31649291c3bf7b6def2c41baed3f94b9684634edd1a2bcbd725b8916";
        hqMov = "ea54076aea00acd55aef9c1c843cebb7d51948dd55bc3e1793e8c4f90da8a1cc";
      };
    };
    "swahili043.mp3" = {
      source = "415dcd06f5e239ffd9afc0e4bbdfd90396dc13ee6b464e040f5f6e354473d852";
      computed = {
        hq = "3b64f2018b6297c2222d85a407b7c5b0a635769c39feed11df62b83c246bc849";
        lq = "0e7dfbfc8ba441faa0f87a458cf6721af39566e0cbfe4fc2babddd667d41e9b5";
        hqMov = "79670e9b2e13ac33d83cefee17c65bbec80dc3217e588dfbd447b991758b913a";
      };
    };
    "swahili044.mp3" = {
      source = "bcf1d8adb18f156a871aa3ada539518339cca03b13932a0eb9d50f13d8aee9ee";
      computed = {
        hq = "d93efab3b36a125a95dcfe1becc8c93c83d4f2a9ff60f8ba6e8506f2bef21b6c";
        lq = "29d48577002228765832e4da98cbc522ab9bbc9dacacf17c996e55f95d0dd578";
        hqMov = "56c094b5f397700c7fe19b463d57d3a6430a6eba7409324a415e07d9c211e485";
      };
    };
    "swahili045.mp3" = {
      source = "0b3fe485ab3410f23db2a6d3d5fef66662fda2af8f890315326a2ad5ea943ddd";
      computed = {
        hq = "129a35cf1cec44aa5449f5482d6cee8749e3a9841546872f1d6a3c2f2571ac9e";
        lq = "0bbada3ab7992e283f638071b3aae6fce33eb123ccf7a3787377edae8c07cd3d";
        hqMov = "ab000afd3397d6c6eec48193bebb5eff1a754e4b2f312def1f4400dc6e804222";
      };
    };
    "swahili046.mp3" = {
      source = "59240546dfad6eac86cc8e011a644b90619bbed9a159083a421ac5aa273a01e6";
      computed = {
        hq = "e6f2e5b5587186e1a678a4999610c38dbbeafc720a7cf1b41c8e592471c35b20";
        lq = "fcdfefcefa813eb8acf5c56ba3c82e5b6d60b2486161bc6c08d2bd6245a6f384";
        hqMov = "bc401510a70dd43a3fc39fa26da8d45ab8ef8a31b07eee1b95a6651450e27f33";
      };
    };
    "swahili047.mp3" = {
      source = "3332e50267438127453859145c855f924ea4139192f9a523d145158a84475af2";
      computed = {
        hq = "7e590ac6d22d1882230deeac83149b45ec85079f8ee73c662c039656e87cdc93";
        lq = "c8a646dd55ef81022aac1f1efcd828c95f6f1e2f5eacda93373822d3405f6e1a";
        hqMov = "ac72940e7df88dca43b3534800609abbe8e9d2463e1e7cac621a5da94fd2714e";
      };
    };
    "swahili048.mp3" = {
      source = "25510b9c53187c745adf0c29786c56c2d3fd9b5e1db18eef420cb7aff227257c";
      computed = {
        hq = "00cbc2063d36441f7f506b1fbfd7f7beb5c6fbd5aba4b95be61af2b680483d98";
        lq = "eb4e4d37288be60e3872663027af6929c2c7300435916e3305a891ad984b6102";
        hqMov = "cac4bb4f72d7cc17fcb360abbb09eb627a8f60e7b51302e7c455012b2340e96f";
      };
    };
    "swahili049.mp3" = {
      source = "c9c128085b49307ea4fb7cb75a79f1ccbf12ad0d07de874115442a41ff52d4d7";
      computed = {
        hq = "35fc6103295001f50cf6297a7f360dedba73a444a0a18d11ce727c75eaa25677";
        lq = "1d42190f890fe5c6140fda0da6111463d04520293f62311aabb64e5514394902";
        hqMov = "435d2fc188aa1c8e77cf05d4fff03287917d6827a795be61152827ccd493000e";
      };
    };
    "swahili050.mp3" = {
      source = "d94834923c97da40ff937a6d3d1ee30c636ac4140adf988e3849fa5ad9246fa4";
      computed = {
        hq = "e2709521b8178d1c1139cbef8d5e5992d76cf2f90bc3c553042ac2714ea3366c";
        lq = "464075ed34b91b03352a53d4c4677bb638122b3ba222de50fc1dcde0b853de81";
        hqMov = "abe87314b6723fa39ebd4f5bec4362e557d5d02a3a7881f92e3e3ed3107fe097";
      };
    };
    "swahili051.mp3" = {
      source = "acd5a3b93075400b5ddf9fde70661487a706a60aa5c4cfc32d2485a8773837bd";
      computed = {
        hq = "feb318e4496b3a5f09dc2776f7620dc7fefc58fdb43011c6908b8bcd0a4dc5b1";
        lq = "4f5b368c50c3e35498561b0962a21d06509c7907780f7f38983c69e65165ca44";
        hqMov = "18da32bf6b66ef877dfc6c59dcad0a92ab60cd0cb70f6fb71bc74c1fd0aab66e";
      };
    };
    "swahili052.mp3" = {
      source = "86f650ff2d9c5ac24024661ba1d765cbfb34ba4292df7136f62464cc68633bf6";
      computed = {
        hq = "c72c271609ffda78e1026e1ae998d4a54d7c7846609eec0d43c50e3af2854618";
        lq = "fbfaff654d2d31d85a2742550c33ce2ae334992898bd6d030d1825ebe54f3f2f";
        hqMov = "02dc3ea4a398fb56544baa5d9ef865cce8f9f0ede179ab013d156277c9e1f299";
      };
    };
    "swahili053.mp3" = {
      source = "a78dc35bd848b2283f5103f01ed294cda90c16aa8e4f1f7766e6b39f17f9cdd1";
      computed = {
        hq = "b3921bd9655b0b2083758576f72b7f088f7e3eb93609b6614bb4af9513eef7d5";
        lq = "34f9a136f929ab163e92723f7016f20c4465f75ada3eefd9af20bcb10594752f";
        hqMov = "90f5c3cc534791bfbfd34909487b29196ac9ba001ab7c10659a2a1b253440804";
      };
    };
    "swahili054.mp3" = {
      source = "5c009a274d0d5ee9a31a80e774db54aa60babad3fde300d437863cea3773d4b8";
      computed = {
        hq = "9907de333b3751bd702c7159ac5833721055098d72573dc4702202a995681e5b";
        lq = "e25ac4a3f6f13b8e9cb40df025e2ea3b2ade9ae077a44fdaaad5db2361816ad6";
        hqMov = "4a156a0ed5c3a265329ae4eb537779661e2846bf1583fcbc8dad2cc6e1d7a00d";
      };
    };
    "swahili055.mp3" = {
      source = "65126640679319ebc8bf8bd71aa2ad48725b9413d9532a620dd2f7bcf17d3872";
      computed = {
        hq = "5bf0c781c13fea7829c74c6e55560df9cd532880a02f87d338e9f61ba271fd68";
        lq = "ff7f091c32c80ede7dd56d93e2c85c105a83efb2b3ef71b1ab343dabb5f46ed5";
        hqMov = "1143c3ed43b686df419c7d155927546b768f2244dc325f28e5a285e53f09e9d9";
      };
    };
    "swahili056.mp3" = {
      source = "793e92c120f8abb669b133a3766a1a8fe2b41fc59d15ab0de0e47d930b736f42";
      computed = {
        hq = "16be16409452a3c45d2fff7bfde1f5bbb455569e41134786227212dfbd883292";
        lq = "75c7071b3c6b14afa16837bafa42976cf5778e2035dcc812c8262de3b4c4bb1c";
        hqMov = "42094140cf389111d99a367fba20384fb45bb3ed2add575493716afc5d269429";
      };
    };
    "swahili057.mp3" = {
      source = "49006b5d972531d5b839d3e7397aa6ec372a5ff181a52c7ba96505f3401eb41c";
      computed = {
        hq = "6079ae5b028233aa4eb66947780ce6bbb2c06e7c955069b40288a33b29006ad6";
        lq = "cc7fee8b1ce7ec4f39b4267363887dd143e34631c6f334b482e55735f0e1f037";
        hqMov = "6452bfc39a9b7d5172dd032b44297a871656f882317bf411d7753a3465d52627";
      };
    };
    "swahili058.mp3" = {
      source = "fb87a0d0c10443b889f87f4064891192ca2aab77b05389348a5b225b1f2bd2be";
      computed = {
        hq = "b614ace526495a4ad92366106085fa93ff87507273c63a7aae6faf4f1654b0a0";
        lq = "e0c332810889d5ea3f7f1f92b1058c6929cb224cf6f270d3ebcaa7254cbe992a";
        hqMov = "b4d73112c7965cf720676898944c900031eacca8e116447719e4f43a5029cbca";
      };
    };
    "swahili059.mp3" = {
      source = "175c585676a1f5c699e8d524be46b2d34c26544e8b7e047dfc333366049e931c";
      computed = {
        hq = "d0a346686eec98b8a3ad6f446a8c9f006b4fedba37fca451f132b1aa4cae8d8e";
        lq = "416cafa47ad5ded4d105abfa243afc6598642e954f360ccdf837b0bee31c749e";
        hqMov = "ab0d14e95443f3a953fa768ef5a4ea86286fd3bbde0cc32fe33b8a1e7c3b5ff6";
      };
    };
    "swahili060.mp3" = {
      source = "3688a0c4075b47b5f729f6220c22652d6d6beb344d688ab1a822fd63747e0f5f";
      computed = {
        hq = "fff0771ebf9b7d7d7a31f5b787337a8234ad437321fbe72c2793a187293fa9d5";
        lq = "350598e4d7b8554930a084481d68ddf89afa226abae4f3997fb913e7e2948ba4";
        hqMov = "77bf774c8e447b323f9e0edf7ff4561f9eda6bb4121ce9f1ba78253bad8b9d5b";
      };
    };
    "swahili061.mp3" = {
      source = "ff73064dd45188127d3d000fbd43ff0ee51077c9e495b56286b042a459d2cfc1";
      computed = {
        hq = "4f970b77514a4549feb7dd0a995422cd777114a3043121112ddc8a2ee144bead";
        lq = "913e8d617cfc5a88e2d5a78f7f8206515fa2dc51eecae938ae9b1e12d550afe0";
        hqMov = "5df5803b879da1bb524d3c7e406aaa9467a82a5ac5e022d751b7d15468f8eb03";
      };
    };
    "swahili062.mp3" = {
      source = "66e716049916f6b417432847c1bc7389837aa796bf1af88ac8e75282c176328b";
      computed = {
        hq = "0568afc6d71a1f36f2ab539d4c11bc6b90f453cfc33c28c1cad5981c76c5ecb6";
        lq = "7b7dc0bdb730380cb88615c74d51f77b8f9d7f66951689797321f9a7ed48569d";
        hqMov = "27e36f8f3201167b29d4d92aa126faf508d495905a9dda57a1368150d62fd8cf";
      };
    };
    "swahili063.mp3" = {
      source = "eea36eaf50976412bc02a7b4797d19930933e50d7552b0a4a6a46d33b8792111";
      computed = {
        hq = "ef15ae4bca05e8b113767c97c40c1162ec64108244f77fcedb85367c188ccd51";
        lq = "200b4c9d8f741e37031f598b341d2c3a9af86a22a9c6e5d406c5c03fae4c4d6e";
        hqMov = "2c4df25140531a887fd2a0df1c06dd5bbdb438dd2a4a242f2011cd34e521bbf8";
      };
    };
    "swahili064.mp3" = {
      source = "f4ac95f5040b58e72c429b20e9762f7509187f4863e933be1f53272fca204c41";
      computed = {
        hq = "afb371c485ed8a0e5e62bc31ee39293b1801e8416f8bcad37bb2cf751c1aba3c";
        lq = "24d372e704d91e93cf203a4cb57e2ff7c9cbf617bc8b24b57537b182bd90fe31";
        hqMov = "b78a79f93e2da30b5febf26ee144676e8319469a61de996d806c309ea4eb1f10";
      };
    };
    "swahili065.mp3" = {
      source = "99645f35bdc47c18303ca875fa52f8948081cda43047a4b904ffdbbfa47ca11d";
      computed = {
        hq = "61f3ca93df7e8ed80fd65f564ae8093cbdeb5afe6f851d7271838d589675153b";
        lq = "a6cbfa6b43d8b25cb70f2ba7c5684e8ffb9aac70f4f5ef1c40fb320d61196f33";
        hqMov = "eaaa553d59796ed7cadd2993b2667e3179b8ed24785f27fee0ae95b231b5652f";
      };
    };
    "swahili066.mp3" = {
      source = "2030670abc4644cb80605f580db5c8b97b8c80f21be4dd948df83d8e2984517d";
      computed = {
        hq = "943744c758fe92ace16e7beb7d067239add682f94e6ae3beec0641de47d2fa29";
        lq = "0e0ecd77dd00bb2c1e6cc46c1a0f23e506db8d4d466929b734a8be69e194ea5c";
        hqMov = "b590c1aa65a42d39c7e014b41781d6509eb2e69b0644da64850cb355ea2833ff";
      };
    };
    "swahili067.mp3" = {
      source = "3677f127c1b78bc2523d22b9d7e48d00994d0582d9855794450c326d90158fd1";
      computed = {
        hq = "6acfe98b84bdde1ed38c9206c276843889972285e8cec4807b47a783f7ef32d7";
        lq = "3522a8c804d82182f2d08e43dcb1e51d7095bf4bce1e4dcdb2982eed4061cb6b";
        hqMov = "9be687a99bedec34c4f70ee34e7f5539c28029e01ebe3f21a65869e4e58cbaac";
      };
    };
    "swahili068.mp3" = {
      source = "f76398dfbf3ef6a1f0387769c21d2ec597f642cfc60c2a9cbba06317ded17d86";
      computed = {
        hq = "291315e04080945f818bb0797c910f61ba4b63c2b97d9e47d6886fc702c550b7";
        lq = "b9c3fc4e8ff9ec46b87a7242620f2801429e8159f1e12bc5693c6f84b60118fa";
        hqMov = "d8fd21200ea3ad6d47651553a9fa31e3e27b355c42c9ff0f673082d98bfc96ad";
      };
    };
    "swahili069.mp3" = {
      source = "4e7189c6c9bde16f20439e16829b25ab5724ee226c8891a53e76628759dfb9df";
      computed = {
        hq = "a7ccb21264f5c91aa3363b1749f7a0f88c8ee9f98ab8dc48c53eff729a6af972";
        lq = "69c0cf59be359cbe2ff942f4f01a16dccbe686ea7304e546e3bb4a236f35be2d";
        hqMov = "19376d94f30dac7e7af082d8dbb83d5d24958fbb568f8daa7a81e264f210ca91";
      };
    };
    "swahili070.mp3" = {
      source = "e61f15cc76c0ea2d6a70c0e36f797580fb3821fdc65ed5550ce267bd4ca9e502";
      computed = {
        hq = "b68fae5ea3a4fd41265ee19c5c017aa7d3f3af29158919aed25fd0fdbbfbb3d6";
        lq = "37713069bc81f419b7d30f76e90c11c89fe736a00c12aeba3a2ca5e9b2c013a3";
        hqMov = "f7d7edec10f5a33f6954c7b3a4773defa7da0f3b23d9cd865e15fbfe6571a869";
      };
    };
    "swahili071.mp3" = {
      source = "8aed155feb9b6431356118dfff6d0c2e85bfb5d764de382d3a6b160a8b47f33d";
      computed = {
        hq = "b58ee733162f592c6980bc89919a1b292924c376185a4db6b1dca5e1b0299e78";
        lq = "959cb3e8e953eac78d2cb106a5bd4208617cafdff45cdf71a8a50de79e26fcea";
        hqMov = "0cbff26586d71d91ef5fc64395a4cec4cee6dbe15167e5ab4054c3f21e156588";
      };
    };
    "swahili072.mp3" = {
      source = "a70e11accbfca7a4a26ee4c037ecb2974aecd41b2b1f9f814f53a8117c1fa0e2";
      computed = {
        hq = "4d012d975794968b759112c9ba90b9a2ba6c0635608a73d10990bfd7cb8cf86d";
        lq = "571187a3888fd36f42aefe2d40caffd79e0adaf89af8ce1afddc046f7ddd770e";
        hqMov = "1b648d485313938ff17c9c3db4933e0a316ea8f68df2b1809e93007c8685c7b7";
      };
    };
    "swahili073.mp3" = {
      source = "b950db4a1d1cf150b42f7a1a26a1188a2dbaf496fbd1759c9f75b5766a7ab142";
      computed = {
        hq = "319928a27a8636b6b6cdb564b8b10bdf19f54d9892f07c958127a49cbb30626e";
        lq = "59a2773cf5737c3fba8b1fcba0847a6ab6c27858c9e49eeb1510394ea1b5177b";
        hqMov = "7bf77254f99780c2b19ff7e0334b0fc8feeb32c0f258fb7a3614f504a27432a2";
      };
    };
    "swahili074.mp3" = {
      source = "371c8dc0b3a37a229d79f888f2ed6e4bb3da1609bbfd5d4aeb77304202e034df";
      computed = {
        hq = "2c2c932e71921a1fceb5793d6ec0c105894107be5d9fec9ee015b39861907e22";
        lq = "3bc6920b0b742c72d5c33faebfd507eb2c9ac9f8dc5fe7c7c68553d996a061a5";
        hqMov = "286a064a8ad486cbc98e5d1bbef61669291a37a9b922031a539e5f86129f6f9f";
      };
    };
    "swahili075.mp3" = {
      source = "d6fe51606886897210136efa627b8548b93537d6eb94f954b4ce0c9de78c58f7";
      computed = {
        hq = "aeeb12d272c628292021c4fc2a3e4a295e866c91f53a694b89f397c161fe3a2c";
        lq = "52fbb9baeebd96937b2717fbb37ce5c935f5ea32686b624d3e150369b87b4de8";
        hqMov = "29e3a6901fa3eaf62c439139098169304e7a453794c1ff5b8d01170f509334af";
      };
    };
    "swahili076.mp3" = {
      source = "115cc4d14e8bd3d25e579e5607c49d02f5dc6642108f46afa91f450de5930c8e";
      computed = {
        hq = "832b765070a142b4408cf80a546a7a92d7c26703b4d8a2831c2888c08206fb0f";
        lq = "5f98bf1ad3603db4118e82d20b1fe5331afd54db4d87e8bd530f08518477ef0f";
        hqMov = "f4a6d40331f5b46a170d781b6639532df74023cdd03c2b165b9606cb5ff9ade8";
      };
    };
    "swahili077.mp3" = {
      source = "4df289ccf2f8a63af861925f8c4dcb6182636b9a4f69374dc91d96e091ca0c20";
      computed = {
        hq = "31f7891ad1bdea11a43980b4a74ebc839cf112978a0808aaaa34b9c851a0dade";
        lq = "341005948cff616d58006973a0ed24d31ca58d0ea50583af6baa4d6fc4269125";
        hqMov = "e168b47f33241ce21c6580272cdb0f3e9e368bdd2944bf42cf3c5669dc82b515";
      };
    };
    "swahili078.mp3" = {
      source = "70dc25e0c019d899a561ad541a16a1b8513ed30aacee6b52a8a30aa0153bc1a1";
      computed = {
        hq = "14ecd144dedb377313527a097c2cadae2ed3f5faf41a8c17d910dee53628e7c0";
        lq = "b25763fb950b4cadf2a325de7d95e10f9a347da6a546302889a1a81e265454d7";
        hqMov = "62cca9cd330e20ebe9b7cfa7b2ecd25768281c8969fbbd70e712b82037270a36";
      };
    };
    "swahili079.mp3" = {
      source = "ee140db9696a0458ffd3c338369e3af76abdc923641b209e23a7c3b63a7d711e";
      computed = {
        hq = "8ac20e4bbb4deff62fc1342518c63a3ab927ea3dc7d9833d87d62b1042a082ed";
        lq = "6afb90c83c12a5220e803debeff8f6c4289d0661df3ccdbd3e75e5cc6b5567bf";
        hqMov = "87794c808d61573bfebff29b127a396135973098337fcab02cccf094e69fa355";
      };
    };
    "swahili080.mp3" = {
      source = "a3dc191eecee74d316818e8da117fad4b0af45c012a47acbe2e5c1c463aaf194";
      computed = {
        hq = "23c0df29b2adfa84698c29fb4980b67e49abdb444c86d0669435d0e026f01c30";
        lq = "3d76de3c3572e936a3be62fc1f035a0e9f684059b4bb7a79d9e7b44e08f0564b";
        hqMov = "484683b6f55fb7de49fe7a473419d7150e970076c1e280465061de653115c42e";
      };
    };
    "swahili081.mp3" = {
      source = "900c3e476d7dc83945f7c83d2eea3f3df351b0a866b1197d0845c06c8b8ea5c9";
      computed = {
        hq = "d21bbbc5a76349a067a411249b8d4cae0c0c8583e82cdff34b11635016adeb71";
        lq = "a1f248c270ea5d1acffd7bf7673a126015d63a0e5896d615030bd189c07bd5e7";
        hqMov = "36d99e499180c01d628db2452665dcf61f5ac6d407fb192f6b99a6a411465042";
      };
    };
    "swahili082.mp3" = {
      source = "ffed11761617204748bd13fa3b73564e2cf69bfdcc1f6994463d33cd73757cca";
      computed = {
        hq = "897e7820bb2b16c753a17577328046d9b436f4731fff5fd6bfad1749820c9dbb";
        lq = "850494215bf9d6a7afb460bb01ba633bc10be7a6ee13791457b4fdf2fde61617";
        hqMov = "f72e57af2a6db64f32d7d5064f7dc52597e8a727449686634e6298397dabd5de";
      };
    };
    "swahili083.mp3" = {
      source = "86f48442f1f6c48f575f76067a9ab6f7a2a518058fdc3f85def7356552d856ee";
      computed = {
        hq = "b772b841b31dd77cefe14008a3e16feda9ce7e66d7b246372aaa2443d328e3fb";
        lq = "495659687db3abc6eb4a21be9648f8a5e2d7885163732a192863dbdd657677d6";
        hqMov = "48a00b2453b0619ab7e1acf8a7f7ca6d1511232edcf92848f77f0c1b94359d51";
      };
    };
    "swahili084.mp3" = {
      source = "15e236a106baa00032daf283c6cfa5da4ce01c10a5c08f3171d37812094c536e";
      computed = {
        hq = "feefbdc21154dd4211d65714909e77c92746cdc84fb3f4d37ab023346518798b";
        lq = "729175b8607e816640da761930030956946d72d8f442fc66ce55041bfbfd99c7";
        hqMov = "771b6baf2fdabb27181804a50eea7512616f32a13cdfd48cf60f9a515bbdfeca";
      };
    };
    "swahili085.mp3" = {
      source = "3c28f9a8826ec36f8ba723eaa2eddd8c434108ca699ed17d6d313bfcfc02db9a";
      computed = {
        hq = "d4dfdff4a21bc71b257d0679217170570ba68194a8612cc2c06c3a9e90c3ed40";
        lq = "908f28fbb34b1b9b1c62317fa0d0d3362dbda92e0cc9cbd90beaf9a8176ce2a3";
        hqMov = "f88f192dec7196930b4a89d1db77c52934501ae49bbf75908fc9b69783a6704b";
      };
    };
    "swahili086.mp3" = {
      source = "f75c47fa1feed3290901df0fbb19522b5c761961018bd944f0938be7e72638df";
      computed = {
        hq = "b6b7b1dc1cebc4009ce14d461720bc4ed86a3178bdb478169e31a84d5f587b73";
        lq = "871b55b31336a99ed6c2334badb3dac2c039f4535f3719538363f7c5985fa9da";
        hqMov = "08a3b5e7f6c78c556f2a9ff92349db5ca0876ce77e091fee975398c9cd47447d";
      };
    };
    "swahili087.mp3" = {
      source = "2fcad35f6a47a4304ac4ce1d859b7b52e26476c6f1515fe947483636a862f12e";
      computed = {
        hq = "84ee0e7c19e5d5b0677cbd8fb8d8d5580dce88476ccf8c0b8a7e30ef9af6f094";
        lq = "7eafa82e30f7c74975b27a3b655adb9528903230934c85561ff6b8648cf80625";
        hqMov = "2ccf366f825f546d801c8e3b5a59ee03b1c6e4d18b59df4c4539d2c6e1994707";
      };
    };
    "swahili088.mp3" = {
      source = "adbf1e606701328cfdcf21d0c8edd41dc24a5302da7d03273b95023ed91ab205";
      computed = {
        hq = "8969fbaadf36525c3c29c4583ea72b2ea6c3904e2bc7cce85de888419da9431a";
        lq = "cfde1562b8773040f0f4eb7be3383b5865e95caf761dee7ccf0155d1d08841f8";
        hqMov = "1a7d0fc07db05ed434654ccdf5cc8488df4f3e16f7edf179ca1633227639bbc0";
      };
    };
    "swahili089.mp3" = {
      source = "55ae7b162378437128d01050aebc23551317d18e8c7929677f7921ba3b3a1acc";
      computed = {
        hq = "0d66fe418cd44478f9e5d80066026691d6dd5d90d28a0502b7f771a0eb8972fb";
        lq = "dc123abd2b6f08123e1b6b7c8724cfb375188b5cc1dc96a20c2a4aebd88ff738";
        hqMov = "7ce593fb5d2484fea22226150827946f9c88d72302f2c94e5aff65db21249067";
      };
    };
    "swahili090.mp3" = {
      source = "cd017034394a7ad3b2a5dc475a3005f041ad910b5b4cd9bd49b861357038e7fc";
      computed = {
        hq = "49b5d26851383e6482a97d7f5f91d6029e70fe1c8d73f6787c50f72f50e03ff3";
        lq = "6acc39fa3a0ae12b6d67811d2f7625d013b93cab2f77e47acfc05f118ea30f13";
        hqMov = "f6cda083a4adb0b10db5a994c11ea2ecd21ea3a344c4231f9d71f3e44f9f4ac8";
      };
    };
    "swahili091.mp3" = {
      source = "4048ae6c2a62887ba07cf4503fa56ac52f668f67b7897ccba07bfaa263cc5bfc";
      computed = {
        hq = "21d38b74efaa84055eb377ce86d00771f1b197a35a7fb50265b31c641dc5b149";
        lq = "cd3271c9c71584314116f18f7fc81c78e108fac0af4466ed6428ced4a0b4a9e0";
        hqMov = "95e486dc96a55151bb495bcde01dd539778934d42bcf2536a8c50a4b5f23400e";
      };
    };
    "swahili092.mp3" = {
      source = "c65f3233adfad18ee9e21d6cf95ab3af6e60f50951294f33fd1451c1461479da";
      computed = {
        hq = "13d6f8edef919fa360fde59a44e613c5bcc0fa4142dd1b8efb70f0f454f75e58";
        lq = "558f0ef6b9655c3969dd829f6a49f56232b36ee7fab53a6583478d3f951bad56";
        hqMov = "892d49ad9a63b0a11556cc29982a0446f90710b07f91d8946caea8d9b94e1214";
      };
    };
    "swahili093.mp3" = {
      source = "82ec30b394869ee97e10b4d9bba8b36427258f809da8bb8c299040b95530850c";
      computed = {
        hq = "386e8e6baba323bcd9afbf7c520795a616e9a567c1cd2406b348daa7b5c0206a";
        lq = "aec09d3a250156ff9b1a2cc36de2cf02a07ff00a689a9a38c4d42e48af4b324e";
        hqMov = "db932e715f66711a99457f04f0b6754510de319fd43faa92cff1506de9a7a254";
      };
    };
    "swahili094.mp3" = {
      source = "d3b2cbe27a8dc04bbb8d2e8b76f4c9cf11385a7120df170dae15b8cdffaa1cde";
      computed = {
        hq = "888e7d2bc5c0c0e258f5cc632b1e9a0bf87697fd56359ba2a2af26ee78f4f803";
        lq = "a11ec89f05c679bb640eb1ac5386d757dd4339c3ee65cdcbe7247845b249d47b";
        hqMov = "9dfe787fd19c22bf131ad40666de0c7ea31bce18ad1a02d07afbf91324d7a0a0";
      };
    };
    "swahili095.mp3" = {
      source = "7dc4d22f8bf5543d39e398c395d68b67737eeb8e6482ec530f22bd96cf3ee7db";
      computed = {
        hq = "8c2f9315902d14b6055a45bcc6bce83814f3c0463bd0d7556f869271d2c98e5d";
        lq = "abcaaef93298cedc76c691650833e996c357030ade9b466aebf5cb946ef34895";
        hqMov = "da3b76c69d5a22ece503c814d8b2cd8e03fff5242c24cb696b1c02d7cea5ce3f";
      };
    };
    "swahili096.mp3" = {
      source = "440da3512fbe6c21ecb6ee2cca8d0911ff28f4dbb053165899d027cee50a7129";
      computed = {
        hq = "fed56775fc502bc350fac6b3abcabaff02609a6067a90567f174b133408b0a11";
        lq = "cf085b63215fa6d6223a19adfb1850795908b76ff8ea95e901a16ac3b1adde1b";
        hqMov = "13f5a104d4dbae8c7dc5011fa30d79051169d508929cbf5b079ec6ce3c207734";
      };
    };
    "swahili097.mp3" = {
      source = "393352e9fff61ba557a96db82d7e818ed33ac572ef4575dbb61d5349ebc801c3";
      computed = {
        hq = "134d6d9a0c8a8ec5e4013555bc42a503d59d41c6e1997bdb27520f8eacc9ac7b";
        lq = "e5654cd9932fb99365ec5a691a25c87c681d52122e1e35285a6c4f0e67bd000c";
        hqMov = "25a1aecdd4292b59cd9267ce46c1b2a79e69269abf53c72e77702d531a199682";
      };
    };
    "swahili098.mp3" = {
      source = "a268bcb0bc16054ede9e5dbef2775e87973514d1f0ae83d3140d77052a179132";
      computed = {
        hq = "cb8584201e571b479ec53843892e22d000880108b10ac71372c5e7e92e241c11";
        lq = "449b533ddc63a570a1ddb7cf40ddd2f3ec33aa9b82bb70e7c8f40a741ed1355f";
        hqMov = "7bee64fe6a89a18463f7c561392076c624257f7b05097e471797998951f8a6e4";
      };
    };
    "swahili099.mp3" = {
      source = "878c4cd279b810aac85c88d55335098c0dbbad5ffb31165137edd6a52b1ed9db";
      computed = {
        hq = "3079d08d86a8616c5027919d63fca5eff4167c34f44cab69c09b2b0af1ad9e8a";
        lq = "41107275855cfdd28be0b2f6be12ab57660a892feaf9c51db68afcd235b343db";
        hqMov = "e9cb9a31a346293191eef2e432d57e2d8f00760b805b94c356ad328c3ee2dfe0";
      };
    };
    "swahili100.mp3" = {
      source = "9f3fbcb2ef05e280f95508d72acc20d0622051e1ef4f0abaef6d05ab8111a0ce";
      computed = {
        hq = "52969fe028d1fb71140178a18eb6e5931e61b06e7652d70b06f24f68228028a9";
        lq = "4841da499508e2aa2b62195345d8b167d78e4e3a29d1b1c85ead7ee5697c7590";
        hqMov = "bb3f13427d3baa621c13fb5cf4ec9fd817ad129d206b1dc24aad416f2f70abe8";
      };
    };
    "swahili101.mp3" = {
      source = "c90c3da35a6832c491cfa0420ef43447cc6a23a198242043e6a1e8e4237c602e";
      computed = {
        hq = "daa6e42177ea17cab45673c216d0616cd6f7f02e7556880e602998467091927a";
        lq = "669f4478ba976800b616f47a09b803d880949ba3a50d4afaa5ecb350a14c776d";
        hqMov = "eca84782858898b3682a45d2d696cddf9686fb0a540c9fee76604191fa5d6f47";
      };
    };
    "swahili102.mp3" = {
      source = "472129d38c4edcae579d683e619e9ab27f288780830c84ef89b8ffefeba86984";
      computed = {
        hq = "b91d43ac70fefb638c731729faa7a2d4e2f5cfdd8a298e6a9b17457dffe064af";
        lq = "dc68a6e71c3c49d03cc4263d2694a49472ed1cf0494371a7c08112bbd692bf00";
        hqMov = "2d67c0e5ea79197ad39bf03eada367f04bed919947c345edb53335fbc102be70";
      };
    };
    "swahili103.mp3" = {
      source = "734fb5ed54b0139017e33d718b9d199ee60a7ec73a1eb38d10be0c4767b2f43f";
      computed = {
        hq = "e9abb09d1b436b80367365eddc2b0c36405f27e2032b17808480df0abb538ccf";
        lq = "311c5394959ab317c3812852418b4a6368cd6435657d1523312e5e40ab2e2dc7";
        hqMov = "c3016b83da74081278107188f2f22a8131b0ca31040dd5ffd72b48c0bf4c2fab";
      };
    };
    "swahili104.mp3" = {
      source = "4a3079dc21f876a7d228ce9aa363ca31a5694c50ada4aa27ab7f7ff9145ecd1d";
      computed = {
        hq = "d8fc158343d1f61e2988ddb9611fcbde9f5bc124e9a55287de5099abec7af4ce";
        lq = "02e299f3d60202d25cca0fc55fa4e2c2d4c1af6de1fe3a98e6504195fd1a20cc";
        hqMov = "5eb573bd03570d3425706c9c6d13c6a337bd7bce7cf6ba7ab6ff3b738a49fb49";
      };
    };
    "swahili105.mp3" = {
      source = "fe21e02c64c76acf20c023da9b73ced90a48efd23bbdb8822f6e238e84ebebef";
      computed = {
        hq = "f03bc108d6baaab01dd11a86dc29d1bd0f1dad2f047383e825d7eb9d9c6244fd";
        lq = "b95e6e42bb1335348c67c8604d35f13c02f3cb4779c479a66f8308b9aaf3bfce";
        hqMov = "1f0e18a740a388cf114cb5749b6067a869100684ec0ff160258486ea8289ef93";
      };
    };
    "swahili106.mp3" = {
      source = "85ff9961bfee8ca7710f413b38e16b84882f989db09eb3b32dbe3302b0a11aa6";
      computed = {
        hq = "bc69a1d2aac38975358a2a6db9a9ee6be4e7635fb11ad74b19718f3948f39e80";
        lq = "1c2e60f63155e5f55e0a8467dea0cdf8927430ef56f48e151c627313a30bd094";
        hqMov = "82fc64c36d3274d9ce615b000c9032972d610f6183b1a7b719dc3e15a8c438c3";
      };
    };
    "swahili107.mp3" = {
      source = "08e29dcb5831b0dac42ddae6e14f4ddd8e0c0e8a682eeb1cd06467d93e010140";
      computed = {
        hq = "5eab339ddc904afda63285caa9f0b1135190bc080fdf86ee44e5f276bb4a695d";
        lq = "afcf0b3d906e91a480eeccdcaf382fa3b01bc23785d30d2c6786ad477ce1ac3b";
        hqMov = "0123064e757e29635b9909da681c694c7edb85485b0c7bca79990bdc663c0baa";
      };
    };
    "swahili108.mp3" = {
      source = "dee16286dc3cca7be2f27089d3dc3078ed4b86f77427bc776cf15f02879352aa";
      computed = {
        hq = "628d909b127b519a8ae55484cc529a61345c930cf32baea39832fcb57f44d377";
        lq = "0eeee030a47e13a63b8e23bcec7803f2e6a4d84cd1fd5824fbf233e726c898af";
        hqMov = "95e09bd915e582d82987b42c91e75107d7a1a9d15befe7ab2865d8f3000f49af";
      };
    };
    "swahili109.mp3" = {
      source = "d1d9e86ecb0a1e6ff930a3106d3d6fbdac95c46772dae207e9b5a82a40c02ac5";
      computed = {
        hq = "9e75eae2c5fc4d7ae8fbed337aca324f9f5d27881bd6ff5c720a535f5d1aa87d";
        lq = "ee72925992915f3e84b75f2c939464e363f972771c1e06dfda71543168284168";
        hqMov = "5bb9023cf4abf7455c86bdb07dfd14300142e9b86464bbfa815da8fd08021696";
      };
    };
    "swahili110.mp3" = {
      source = "5c0f87a0bea9d0e5f19f672dd31f40dc2b50ab5ce7a89ba4d6f055d09f287ee4";
      computed = {
        hq = "94cb801de943246a6e0a11110d3c2df15da56fcf611b9834c9bb6029407d73a1";
        lq = "87c8eebfcbe3167bfd9d122dd03ac4f60355dc5d5725f2a765cb0f6c50d3ebd0";
        hqMov = "540511458bf16b36e814c76bac102458f7be85356276e2c57aa6f3694ce5ec61";
      };
    };
  };
}
