{ lib, series, ... }:
{
  id = "french";
  recipe = "mp3_8_0";
  tracks = series "french" "mp3" 1 40;

  # Flat SHA-256 hashes of source files and computed audio, not NAR hashes.
  pins = {
    "french001.mp3" = {
      source = "ae7591fd112e9d2ca864f28a5b8c434a514721b12fd7c2a5ecd3d043a5dbb800";
      computed = {
        hq = "12633d1572df41dc174a47a03e0b44e6fce820e519830065ed3bcfc4084dec3f";
        lq = "319087eb32662b17c51e192fc4f60ced413930ef9223fd246ee2903ec4740b98";
        hqMov = "34aafbb19a26208b07e9c77abe60a41349e46ff420df9392c41acca5dc0d602c";
      };
    };
    "french002.mp3" = {
      source = "7d090f44149136a58121cf253ba24218cedd4d759f6a798ebd491caeb1b451d1";
      computed = {
        hq = "3975a4290f0da398c31b72cc0d7d626eddc7e1385fefffcc54e64512344de65e";
        lq = "e2a0ca6d06d7b1437f34c7eb1cb847a268b77d418c4977597f88ac309042f8a5";
        hqMov = "75b43ecc24577d0493e3fe0ee46fda30a1c843d48fee4befc118476a467c05a8";
      };
    };
    "french003.mp3" = {
      source = "557089072b83a741319954782c314c0fb80b3871127b442cd4a7f4cbae263e11";
      computed = {
        hq = "3881806a8ddf936bbba4ed6318fb44d99d61429bf51dba3f4a301e4fe3373778";
        lq = "715e18bc70d3ed40e67c0f9d46c1e91fba0776f65a28db504a6b3eb3f613b38c";
        hqMov = "2727405532f2c81789eeb832e9b555dfd18497ddbc1769172e1bc73edcbe2388";
      };
    };
    "french004.mp3" = {
      source = "393af974486a7c9f5e47921f4d7bf260db58ae6ffc419c77f2aa345a7f770ebf";
      computed = {
        hq = "ea0352f647cd469a3a88d0185e1bc1c14c98f7a4ca7492fffcebbf6179a8906f";
        lq = "0b4f6fbb6bde6805235097dd44b45116a5f79554cf9c196ab748a371d18be2dc";
        hqMov = "660a3eba7d2f4460d82f0e724d1599016f0c26b3afdf6ad0dcd4e5f51a2da7b1";
      };
    };
    "french005.mp3" = {
      source = "24354b2fab7b7d852d809d833b2bc8bfcdb2a3cc25a037ef1993dfd6e0fb8550";
      computed = {
        hq = "55b359f848ba344e582ab688a2d2f009334621e240061a98d7064ce70d9bf5c1";
        lq = "a3a794b84bc1d67bb085f3b2e8bd76af69b0499a02c41e5c0c515ac050cd797b";
        hqMov = "c59d03d1b9ef4903455b2c3d6a95f7eca96f1909fdfc4c98590523f5de8183b2";
      };
    };
    "french006.mp3" = {
      source = "16369826c32502339a9a24f60cee561a024ae0329512cc4b06b16a90d02c9997";
      computed = {
        hq = "07c4637ebe24a16d16add808600936dfabeef3201fbf0f761de60a2198dbe140";
        lq = "e3bbcc0713b57423356838e3d0ad03b8d598723945ea283959dbeef5190264a4";
        hqMov = "b705238a30ed74a3c253b98c8cb756181a6a8943bd53ad27ca315a29bfdf727d";
      };
    };
    "french007.mp3" = {
      source = "a0e9c26854424018013f0d9ff02a53c513233b864e1771a8b761aafe09f2a7ea";
      computed = {
        hq = "0d886d67c3892a40c7b7c57fb04ea3b6e446015fc51f41050df7b7afe334a8a0";
        lq = "017110b635bbcce005cb17affe76405d51a04f5df6413bdb79f3f70710a4d7e6";
        hqMov = "26e3d795e92b3b63c98b1565beb7659dfb51c7d0a53edac9348b3f20f6a09a77";
      };
    };
    "french008.mp3" = {
      source = "c2b877080cd9a3cd72d4b17be054397d2b355d04165a26c45118e5d2f4ae4c52";
      computed = {
        hq = "16035ca754af357ff9c767a1b2d890c3bb49f133216ad37af7c25fb92dd03caa";
        lq = "bcbb3801851765e6a4b1976b0e9557a1f70d268c3cc9d5204fc25c5006c4bf10";
        hqMov = "8459f95a27f8c07c1eaa25526f0c781a4a326880a2f92d7c8cf97f6706d8d7db";
      };
    };
    "french009.mp3" = {
      source = "c2d82bc4452f701e65ae0622dc423829f7531770d3f201dbaa8b64c67c841ce8";
      computed = {
        hq = "f89309e801d423970d04e64971b9e5273f8e537596bc204761775efe4323b583";
        lq = "1aea8f2c884b06e8426d6ddf3acbaf4887606c3e1d089948a1d25d4d92025e34";
        hqMov = "8afae488b5b82b2246ba23f04ed969b1ed3d4ab7fa4a9cd49832cfbef0e0983b";
      };
    };
    "french010.mp3" = {
      source = "66a84c3568d7fcf5d3f37ec092d48ccbecbe7ee72e75b3c62ef00d26d18bc18b";
      computed = {
        hq = "6adf3d63fe63fcff933dc426d89648fb35afafc5226202f8aa9d59e8cc96e54d";
        lq = "0f24feb46459135cc3cbb8b0c98baa8a174914f4f30f040590055067ee1442b9";
        hqMov = "5a8ef3756d6009fec74893f4f67d2a76ff6de8e4d8f310e7e3fe4d6330360dfd";
      };
    };
    "french011.mp3" = {
      source = "4c8189219d58b3d0a83bda54a64f04d99a5bd5123a22c3f1d50525530ba33500";
      computed = {
        hq = "79c97cccc555de2ce2eda02715bd9edd5db40212bd00fb1008d71e4c3fa76a78";
        lq = "ba9f14933292b4b5ced711f5d601dd058dd48ae217ba1dd1be6b2d4ad9bf9227";
        hqMov = "600e5613932859c0d10d8533d1e9da4738d4d781ea24d84edb7494733bca766d";
      };
    };
    "french012.mp3" = {
      source = "f125f8e38a916214f97208b89857beb653729dab64bd59535a6b6fb3c59f71fc";
      computed = {
        hq = "43e20496de0cb818ebf88ce968c8702d9ffdda28f9c055a1a31d15df3975f8b2";
        lq = "d5a9ef8be110d16501059874bc5686b097694f67acf67ffbfacd5d1eaaa8837c";
        hqMov = "20c6b05f4b936ce085d2e77a69af2979752407c76d9deada10a7755b3e99b22b";
      };
    };
    "french013.mp3" = {
      source = "1c683627eeee52ed7929583c557f4e8b363695e4f937be2dbb4b1777b3f66c72";
      computed = {
        hq = "b1ae91bbcf4646bf777c184d7e22302736ee35e40337062567367fcb2c622081";
        lq = "d4962ec090245a9c55b07a5ae7a694d046745e61fbdc1fe7467c120c2e001070";
        hqMov = "00e03421449499a8bcadf67bf870ca186d143881b20c1bad9cf647222115fb5d";
      };
    };
    "french014.mp3" = {
      source = "6899b7f176d3911c66738209685cb67efdfc143ddc8380344550c9c8907df490";
      computed = {
        hq = "fb303c70371c0323399e325a54d24bea7a1812d863ff74b46af73d8852d864ae";
        lq = "3aea6b10ecfd086d2ffb13a091b4e1a389670cfcd1fb78eeea87165038420014";
        hqMov = "4bf5952bbf8ea50d1baf86a488962ff504e45d1ed89a2c6381c0dbfd90cf4bce";
      };
    };
    "french015.mp3" = {
      source = "e269c6520375b0e2570f78fa15112934e8498a898dffc9dc6b83f27a58a4ceb0";
      computed = {
        hq = "946c55ff2b3a9e1d3b76ebd46df643c7c5b6f4d61691578cec6cdf4036ec4b25";
        lq = "8583e056191a708fd77520d6c2008092bf09f216bc54d2fe920f53e1af7e99d4";
        hqMov = "af04da7b4d9cdcb09e039320e4443b9c604d4943b00e6a11e903ecb27467ba71";
      };
    };
    "french016.mp3" = {
      source = "28adb6c5bf656112f4ace6d4319f85819535ee70598d2c20283e055d5b2f931d";
      computed = {
        hq = "3a32f947d415430aea45576a2e8417c7f3034fd67d651154e325a46830fd1750";
        lq = "25e064743181426367c47cff3a3099eeba4d8af29dc7d60cfe1efd630b37ab42";
        hqMov = "f07bfe25d629da170270766421a75144e11e179e139b636ea7cd5afdd5178aca";
      };
    };
    "french017.mp3" = {
      source = "8d0fb5e0eaab1311f30b0ebe8918ce6f014721bba93087ee46412a8be381ee07";
      computed = {
        hq = "16853b16560ab2d32338de327ff880b12440c9b7a336a5c2bdf5a563b8111ed3";
        lq = "5138fd11c5ea6eb0bbd0c088b20b8655a5fcf26d974878eac80e7b68c6b91367";
        hqMov = "9a38dd550d617d031307160be0c35b0a6be816219e6a8d1cf98d5f0eeba1e577";
      };
    };
    "french018.mp3" = {
      source = "eab6d449b2200598855d704d16d37b997553cc1ada36254b99514c08227ecea3";
      computed = {
        hq = "40bb9eb0c759c7a3b2f4bb1e0b24b62698ce5756b45bb05fec3815c3b963a6f1";
        lq = "824c85572d5c364e0175318f67f6dfa036b6f9525845185f271346501b991a0a";
        hqMov = "decc1d2c05373c444e13611bb6a525a51b65bae0d82848dc0a556af2ecf1ff92";
      };
    };
    "french019.mp3" = {
      source = "8e3bcb673cf1c5ec1ff463f759af5f599bbbab0996bf08cd77b6207f0b6c3f3e";
      computed = {
        hq = "f299fecaeecae624adea90703d475fd97b4e1adc4fb7d811a83b2c6599b00a5a";
        lq = "eded4c735968b24916953329efc5c198fcd221ed29f7944f041a4797363bb521";
        hqMov = "5f44c80f9f2e27ec6474cfc2fba9694125fba4ea040b7dd719c72a81934735d9";
      };
    };
    "french020.mp3" = {
      source = "b38b987f64362a1bd42d2d140ab3d32dac5d32349522877327f9c1e3b32f1ca0";
      computed = {
        hq = "5b303b012212a3b3b667267a8cfe6f02d11861e9b51bf926a31176f5da05542c";
        lq = "f42781a9d60b2084b1da3727b89fb777d009bc005f675d744fc520408228469e";
        hqMov = "bd8679aaa1e3c7e6c028aacf85d5feaed08249640ce8b1f668f32c134897cb1a";
      };
    };
    "french021.mp3" = {
      source = "a198eee7bd38c3461543eddcd24248d77eab9f512f7b08cecc21c0753c257ca3";
      computed = {
        hq = "ed3ca200c622f4edddf4ff219a4621db85b641570e2dc9504e26a3a01531a486";
        lq = "142aba7703b66f17f2b2344b91d31987bcf49ba7673ae6511052ff76d83e2682";
        hqMov = "8d4accb7789aad8b85364b1d3f7f988032407d0b2ad18d95bda635801eb95eb1";
      };
    };
    "french022.mp3" = {
      source = "905ee592bc7302242aa14fccd8c4f93016fdf5bd26f0fb3c79c4762b64ec2557";
      computed = {
        hq = "314630d1666c9a2b4fc2d808bd0c43d0a84675853c939aac7a9df5dd2af14b06";
        lq = "73232c14daccd7d6c216d25c5a03c954632e6783ba11a6e7844cf8bbd4cb17e6";
        hqMov = "ea8a9f9be682043783ced549bcedb737eb6b53057e5c283f71ec2d2ae52d3193";
      };
    };
    "french023.mp3" = {
      source = "016b75f7d248e612d98d771c28dfefda955c308437b30db4e579d902995bccaf";
      computed = {
        hq = "4c51db2ba5f79db647f9ea488b3b9ce4660ea85fa2c4998d288d1b3183c1e732";
        lq = "e5d2efdf513b3d7900ad4dd36d4c85bac35d2bee1b88d0b47ba262d0a5569dd7";
        hqMov = "75a57ea64b21844cda0acdd71c26b08115adee674ca13cd6ac915a375e9ac5a1";
      };
    };
    "french024.mp3" = {
      source = "52e79c9f89eee577c1ddf01b676ff6dfe5d0b35fbf63c278b72e4c5300be18e5";
      computed = {
        hq = "8102f56dc0f55147c126bfa435a79cb1b97bc6112b1b98a1ed8910d18b99bb92";
        lq = "88650bc46edb2d7418d114bd640dfa7ffcfd9ea3a2ae2d8356d6c6fed78fe366";
        hqMov = "c51e4dd83d4d97363e9fbda2eb41999aaaa37e4786d8f9b3c106331cb9f28bf7";
      };
    };
    "french025.mp3" = {
      source = "d63342611e4c5a0561c9ee6d2bddcefd0078af9dedca40c6c5dc8b708260c64d";
      computed = {
        hq = "53ab54c4c3e53b34eba1d53906fc110666fb4e17d9b508172d889edc248b1831";
        lq = "15e55cfa561773a963b2af124b60e20a5b2066ec0c94fd20af5e9b36a9dad373";
        hqMov = "21bff148cd11cc9d145b4efc1979bcc0871d625bf01b47b4e1bfeda7a31d4e5f";
      };
    };
    "french026.mp3" = {
      source = "6d99cd834ef7cdeb44e55350f0b87a3967446997c51e5b6d76f0f471cad46f11";
      computed = {
        hq = "385a32de62be977bbdbad35508ccab2deaf926d853687606613250ada53aeb42";
        lq = "d9f2d61e1f6b0cbc8a567821af16b7b8877fca5bca7d8e27ced2fef1cb991d34";
        hqMov = "d5cf05497b0e157dfd647d95b6cf6068ffe9279793d336c9a2dd11256b93b8c0";
      };
    };
    "french027.mp3" = {
      source = "d0edef2a4ec44eb6d16314f2515048586fd1dac89e290566aa5d19bb8353b768";
      computed = {
        hq = "2d75b10152faa2740ad96561881fd0f542f1aae6d68667937c1609f913e4d05c";
        lq = "717fb8559bb94d4916caa8e4881c01b169d0a21872ce280760e30c2708ce1bb1";
        hqMov = "290c9a25aca14a7f86e66c33c0256931dd84c7861850c6dbfd15fd282dab3ddf";
      };
    };
    "french028.mp3" = {
      source = "a008c20e3e3765b7e48256aea67f7c10c59b7f5d29fbd0cc274aec0edc3348ce";
      computed = {
        hq = "ec82468e40bd19259bef82bc92653eea2c7c8fff52d279a368e45834c9e05eb8";
        lq = "7a22ec1c838665d22f1739d979a424feaaa61e9779d27d47696175c0e3855784";
        hqMov = "4a9771be6f83441ccbd9e953506391650c78a29557d8beef2b19ec8861c01005";
      };
    };
    "french029.mp3" = {
      source = "f0f339f3e7c98bf977b0f0272e419ca99a58c1ef575b40320378b5c2e8942b3b";
      computed = {
        hq = "faeaed848c06ee90c0f4dac4945d2d954fd8a404dae4d55d6eb0d5a833e0d18e";
        lq = "3dc92936fa768cce0adf859534998899ca7a45482cfc3b028ef656848c3a1b48";
        hqMov = "7d978db66d7e809151c08484363cf32f672599f56a530bd66aa03f91345686e0";
      };
    };
    "french030.mp3" = {
      source = "205f319938050fdf3092c703c9d92ed37201d53d5968577b75c6a93e43f1aac2";
      computed = {
        hq = "bb84200cc41b19ce57d4e4f6be25525c5ee96d32a3bc9c3bcb4163454dc4deb0";
        lq = "c69d38875638ec790df0f572c05130411346723eed7c0246e3c044f97ff4b9f8";
        hqMov = "466d80e79382518f87b977743703821fd7f4c5532ef1f5e531d60e1dd5d61f35";
      };
    };
    "french031.mp3" = {
      source = "9b008f905c5972940c8b9970ec0516a4b3660c53f377365f3b9117d713597977";
      computed = {
        hq = "9159e8d03d144110ed56cda6067a8f75bb4bd37dfdb701263b7248041a652f05";
        lq = "6129d91241c85d1697aa3ef6015c8618e6eb8cb668f41e2801274d95a141310d";
        hqMov = "0ccbe02605e479216822675c352e78823462983b92400a293942ef8d5be0deae";
      };
    };
    "french032.mp3" = {
      source = "b8452d4c308d72467cbab9f60e8dc0163ae2c3370e238cf36bebd98d5ec02650";
      computed = {
        hq = "98e83be0cab68e5eb9cc27d746e352cfbbd39f82b3bfbb08ccce86ce6e7ee978";
        lq = "9af390a4c359394ee07ae277ba02881f17040602e6e2b074fb2e014eac3978f9";
        hqMov = "b07e8491f9df5123396bc5f83c43f7d56d0b7060d919cd622a931f96c80d3fd9";
      };
    };
    "french033.mp3" = {
      source = "4c249195f5717bb965f911be2d64178b4897c991fe2ea40f1f699b4201d7ebdc";
      computed = {
        hq = "640509912c69013d6a47a632a2b98cb3c50261c63dc4d9040fb68164555015b0";
        lq = "846ca1c3e0152336ae6f5941931ff46c4b1dfe0912989baab4db9cbb64106a1b";
        hqMov = "f365b937437bb47cbda2c1f0c4638060c7e7958f347404a48005c3fa352e3c12";
      };
    };
    "french034.mp3" = {
      source = "be0859ed96ad00e122546be744fba01e308aa172048cbc4032fb713c1561b32d";
      computed = {
        hq = "ae5a43bfa014e981871bdad97d07cf8881d30b092729bd97e3a218d44974f3be";
        lq = "492874134d840a5ace003691b1c65ac2b4a937cbe54ab173c0d300da1c030ae6";
        hqMov = "7b483479454cfc179f7c6a5f696c0b2146798a1ef9c0fe0148f2d583b10b5e31";
      };
    };
    "french035.mp3" = {
      source = "b1a861c492c90002fde4b0ca3127c521759014219688d6475c1a4bc3fff5c54e";
      computed = {
        hq = "5609c80599d840a12a85a30a36a067c691ae2fa2652435621f7ecc63e9f51b95";
        lq = "d1a8755bfcafab9c347e5cdcbef3710fcd41c0350b88ea874444c838da067f49";
        hqMov = "be2cdf2fe23717b897b75cba08bf8901eba50c5a317506fd7d7e82868676fe31";
      };
    };
    "french036.mp3" = {
      source = "4d59db083496ff8cb79ba381298ebb870edb51212654e93c8aa7fa304fc68dcf";
      computed = {
        hq = "ba39271534951fdf59b01053128de117b21775c5470c4bcb005aa0dc823acba0";
        lq = "9e95ffb106478c6bcb29bbedafa42937be80be7dd20fd626338e42086cc8a37a";
        hqMov = "ad2129aa56b77f44918b01dfe0af84ecf8ce7ffbfaff96a0db72c7dde6491961";
      };
    };
    "french037.mp3" = {
      source = "c789bac9db960010a3c3010f91e31cbc44a99fa15a00c4925e76d921dbe46a50";
      computed = {
        hq = "b162d4eeb4f0d4cff9b8aa4b7381b196de2c2b56fcc413d2e16cbde51ca39c92";
        lq = "7623be1ed9768c43e7c8dc4532021d734dc89e299dce32ae60fc587b34148915";
        hqMov = "60f092842afc18c63dda928fe2560c18106f331fabc98cc0e2e2ea11c9c16df6";
      };
    };
    "french038.mp3" = {
      source = "38ccbb31cec5d574aab1ad98bb596664e6c62ab5ef28c9242868754fd8f6aabd";
      computed = {
        hq = "98e13d25aaf34ad0c757b7583620e56872042c3793172c62386bcb9881a30562";
        lq = "65b370b7e3ff9754ffbaaccede06e8480bb6ab6c140834f014719cf2c9969b1c";
        hqMov = "1751d171b51aefec0a6e478cc07f46174acfa303c573539ac87bace9457f8e8e";
      };
    };
    "french039.mp3" = {
      source = "a0152d4c98dfc896748928f97c8b7cd5e337408293b69f7e989755a45e429bab";
      computed = {
        hq = "cd0812e6c4dfb86423a723ea422bef25a9d8d4baac47f5a8b5d1217c7b1ba663";
        lq = "7e1389f2727d40e804d793a1378617c017a4d63fbdbd430e862e8cbcabdb4389";
        hqMov = "8deb3a8a578a3e72f331e7f836bc3571af4a1b7ceec38dca27e890aea5b9366b";
      };
    };
    "french040.mp3" = {
      source = "c749f5f08d4022016300719e069425d741088335430e920cc1fab258b5f6d9f2";
      computed = {
        hq = "6ae42b5c58c81ce125697340c4280ea0b36a2fcd582c73bcb73cf5ccd6531b9f";
        lq = "5a12a65a88a53101e260ba6668c6ac4ff1185e79aa271bd723268d1ef6168b16";
        hqMov = "56cf427f2e470053db1e4a22ac9664617ffc7cd1b406c9ab43bd9325649f0487";
      };
    };
  };
}
