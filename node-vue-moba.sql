/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MongoDB
 Source Server Version : 40017
 Source Host           : 106.14.145.147:3001:27017
 Source Schema         : node-vue-moba

 Target Server Type    : MongoDB
 Target Server Version : 40017
 File Encoding         : 65001

 Date: 09/04/2020 14:49:10
*/


// ----------------------------
// Collection structure for adminusers
// ----------------------------
db.getCollection("adminusers").drop();
db.createCollection("adminusers");

// ----------------------------
// Documents of adminusers
// ----------------------------
db.getCollection("adminusers").insert([ {
    _id: ObjectId("5e77517201182c355837971f"),
    username: "admin",
    password: "$2a$10$.nX8YLMVRqFSjTkR/qUydOEUcZyyuubJisyRM4jrtdNnwhU0KY0ka",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for ads
// ----------------------------
db.getCollection("ads").drop();
db.createCollection("ads");

// ----------------------------
// Documents of ads
// ----------------------------
db.getCollection("ads").insert([ {
    _id: ObjectId("5e7740cd9c1d613d9c2ca673"),
    items: [
        {
            _id: ObjectId("5e7740f09c1d613d9c2ca674"),
            image: "http://106.14.145.147:3001/uploads/75f3eb480372fffd7a994f6e4f98974b",
            url: "http://pvp.qq.com/m/m201606/detail.shtml?G_Biz=18&e_code=507199&idataid=309195&tid=598983"
        },
        {
            _id: ObjectId("5e7741179c1d613d9c2ca676"),
            url: "http://pvp.qq.com/m/m201606/detail.shtml?G_Biz=18&e_code=507243&idataid=309264&tid=599237",
            image: "http://106.14.145.147:3001/uploads/19c5776bf56e2118d82f44c2812c81dc"
        },
        {
            _id: ObjectId("5e7741179c1d613d9c2ca677"),
            url: "http://pvp.qq.com/m/m201606/newCont.shtml?G_Biz=18&e_code=507229&idataid=309246&tid=447820",
            image: "http://106.14.145.147:3001/uploads/7c1749ed0c928d44070621a025b5b5a5"
        }
    ],
    name: "首页幻灯片",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for articles
// ----------------------------
db.getCollection("articles").drop();
db.createCollection("articles");

// ----------------------------
// Documents of articles
// ----------------------------
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7474"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e79c37ff86f4e06d07e76b0")
    ],
    title: "新皮肤爆料丨灵猫化身刺客，不知火舞新装登场~",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.638Z"),
    updatedAt: ISODate("2020-03-24T13:08:40.357Z"),
    body: "<p><br></p><p>传说灵猫会在月夜出没，与她对视之人，皆会失却魂魄。</p><p><br></p><p>身不由己，随灵猫去往寐语之地……</p><p class=\"ql-align-right\"><br></p><p class=\"ql-align-right\">——《时异·魅语篇》</p><p>&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/e2fb0ed364366c58f15deb5d59dc00cd/0\"></p><p>&nbsp;</p><p>某天深夜，妲己宝宝在逛野区时，突然发现闪过一个形似猫的身影……</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/1c54fb39877fbe473b5fbd1314c9686b/0\"></p><p>&nbsp;</p><p><strong>不知火舞-魅语</strong></p><p>&nbsp;</p><p>皮肤名：魅语</p><p>品级：史诗</p><p>上线时间：2020年3月24日更新后上线</p><p>获取方式：商城直售</p><p>皮肤关键词：SNK正版授权 灵猫刺客</p><p>&nbsp;</p><iframe class=\"ql-video ql-align-center\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://v.qq.com/txp/iframe/player.html?vid=r09371es7c4\" height=\"450\" width=\"700\"></iframe><p class=\"ql-align-center\"><br></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\">（建议在Wi-Fi环境下观看）</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>设计思路</strong></p><p>&nbsp;</p><p>在设计这款皮肤时，我们选择了<span style=\"color: rgb(165, 207, 254);\">“狮猫幻化成刺客”</span>的主题包装。狮猫品种稀有神秘、体态高贵而美丽，非常契合不知火舞外表性感、精通格斗的女忍者设定，希望在延续英雄气质的同时，带给玩家一些独特的皮肤体验。</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/51fca8c61fced08845994eb0c9feb7e5/0\"></p><p>&nbsp;</p><p>在设计之初，我们尝试了不同的方向，来表现这一皮肤角色的东方美感。</p><p>&nbsp;</p><p>在备选方案中，方案二采用了更具时尚感的<span style=\"color: rgb(165, 207, 254);\">扇形剪裁与蕾丝搭配</span>，用清爽柔和的蓝白配色混合张力十足的橘黄色，优雅的装扮配上犀利的服饰剪裁，很好地呈现出不知火舞<span style=\"color: rgb(165, 207, 254);\">“魅力女刺客”</span>的角色风格，也成为了我们最终选择的皮肤方案。</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/19ec56a8bfa9b77c470b4237e0fdf577/0\"></p><p>&nbsp;</p><p class=\"ql-align-center\">（方案二）</p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/3c54233ca5366e8173b2be169e75e9bc/0\"></p><p class=\"ql-align-center\">（方案一）</p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/93a5d6422ac4bcafcf2c12828206af16/0\"></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\">（方案三）</p><p>&nbsp;</p><p><strong>服饰设计</strong></p><p>&nbsp;</p><p>我们对东方服饰造型进行了解构，搭配现代的裁剪方式，使衣裙看起来既古典又不失时尚。</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/40cf76fbdf5db4a2cd68614fd49e43b8/0\"></p><p>&nbsp;</p><p>从皮肤的设定出发，使用原创的<span style=\"color: rgb(165, 207, 254);\">狮猫图案</span>作为服饰印花</p><p>&nbsp;</p><p>腰前蝴蝶结的<span style=\"color: rgb(165, 207, 254);\">明纹</span>与腿袜的<span style=\"color: rgb(165, 207, 254);\">暗纹</span>呼应，解读了“魅语者，与之对视之人，皆会失却魂魄”的主题</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/dd687cda58a3e68da88322ee4d864c4d/0\"></p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/e12dd16bc2d03f3c8557d94522246d5a/0\"></p><p>&nbsp;</p><p>背部的<span style=\"color: rgb(165, 207, 254);\">堆叠扇面</span>，是皮肤造型的常驻装饰，加强了攻击动作的视觉体验</p><p>&nbsp;</p><p>而<span style=\"color: rgb(165, 207, 254);\">猫尾</span>只在战斗中以特效的形式闪现，演绎狮猫幻化的神秘感~</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/8d4fb3a0ef3a4e171295d9e4f322d55c/0\"></p><p>&nbsp;</p><p>服饰剪裁的锐利感，也突显出了她的气质——擅长体术攻击的她，连招一气呵成，从不拖泥带水！</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/16f19e341f70b5f31f21c725c1ff2617/0\"></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>武器与装饰</strong></p><p>&nbsp;</p><p>在武器设计上，我们保留了<span style=\"color: rgb(165, 207, 254);\">折扇</span>的外形锚点，通过添加元素和丰富结构的方式，使其更加巧妙地呈现出皮肤的主题。</p><p>&nbsp;</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/0572c28870f12de0780b07feea38e121/0\"></p><p>&nbsp;</p><p>扇子边骨是立体的<span style=\"color: rgb(165, 207, 254);\">狮猫外形</span>，芯骨使用了金色质感的材料提亮，扇面隐约可见与服饰呼应的暗纹，扇钉则使用了猫尾元素，收拢后又形若一只猫</p><p>&nbsp;</p><p>以<span style=\"color: rgb(165, 207, 254);\">人脸猫面的面具</span>作为装饰，面具下姣好的面容摄人心魄，隐藏着极致的危险，这正是不知火舞在战斗时的风格体现</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/e8fa53d21d451e813f398de29099c836/0\"></p><p>&nbsp;</p><p><strong>展示动画设计</strong></p><p>&nbsp;</p><p>在展示动画中，贯穿<span style=\"color: rgb(165, 207, 254);\">猫</span>的元素作为表现主题，美丽的不知火舞缓缓现身。</p><p>&nbsp;</p><p>而当她进入战斗模式后，动作却变得异常迅敏，身后的猫尾也显现出来。扇子是不知火舞的人物核心锚点，也是她战斗的关键武器，展示动画突出表现了不知火舞<span style=\"color: rgb(165, 207, 254);\">摇扇</span>的招牌动作。</p><p>&nbsp;</p><p><strong>技能特效设计</strong></p><p>&nbsp;</p><p>在保留不知火舞“火”元素的流动感的基础上，选择了更为<span style=\"color: rgb(165, 207, 254);\">神秘的蓝色气焰效果</span>。同时还加入了扇形碎片、狮猫影子等元素作为辅助，使角色的包装更加丰满。</p><p>&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/62c652a840262f49b17e63b5f063f840/0\"></p><p>&nbsp;</p><p>为了突出狮猫幻化的身份，每次释放技能或被动触发时，都有猫尾残影显现</p><p>&nbsp;</p><p><strong>音频设计</strong></p><p>&nbsp;</p><p>在音效的设计上，我们延用娜可露露皮肤的设计思路——使用一种日本传统乐器作为主体进行演奏，选择了与不知火舞气质符合的<span style=\"color: rgb(165, 207, 254);\">“三味线”</span>。</p><p>&nbsp;</p><p>英雄玩法结合乐器的演奏技法特点，显得相得益彰，如果能完整打出一套技能，会让玩家有演奏“三味线”的感受。</p><p>&nbsp;</p><p>我们也请到了日本知名配音演员——在SNK原版游戏中为不知火舞配音的<span style=\"color: rgb(165, 207, 254);\">小清水亚美</span>女士，为皮肤献声，皮肤上线后，不知火舞英雄的语音也将替换为小清水亚美女士配音的版本，希望带给玩家带来原汁原味而又极具王者特色的声音体验。</p><p>&nbsp;</p><p><strong>海报设计思路</strong></p><p>&nbsp;</p><p>不知火舞在王者荣耀的女法师英雄中，有着特立独行的造型气质和战斗风格，她的技能动作灵动敏捷、张弛舒展，是SNK《拳皇》与王者荣耀游戏风格完美融合的体现。</p><p>&nbsp;</p><p>所以在海报的设计上，我们没有选择以往常用的表现女性温婉美的静态造型，而是选择了一帧<span style=\"color: rgb(165, 207, 254);\">不知火舞战斗的瞬间</span>，用更有张力的构图和笔触，展现出皮肤角色战斗时身段的悦目，是以静写动的大胆尝试，希望能带给召唤师们全新的视觉体验。</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>技能展示</strong></p><p>&nbsp;</p><p>&nbsp;</p><p class=\"ql-align-center\"><strong>普通攻击</strong></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/de1d07f281a8090a546b7333afc06ba6/0\"></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/6a28a678b321b9c52a47e5a48c7f4d9e/0\"></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><strong>一技能</strong></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><strong>二技能</strong></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/d997d7f82caace0018f07b4b0939dffa/0\"></p><p class=\"ql-align-center\">&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/604cc22c1ec941488ac0fa35b6fffa90/0\">\t</p><p>&nbsp;</p><p>&nbsp;</p><p class=\"ql-align-center\"><strong>三技能</strong></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><strong>局外展示</strong></p><p class=\"ql-align-center\">&nbsp;</p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/5689a7e639e3e5bba9ed625fdeb436ca/0\"></p><p>&nbsp;</p><p>&nbsp;</p><p class=\"ql-align-center\">*此为研发过程中录制，所展示内容仅供参考</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>皮肤故事站</strong></p><p>&nbsp;</p><p>除了不知火舞，橘右京的新衣服也在准备中啦！妲己宝宝还打听到，SNK系列皮肤各有一段神秘的故事呢~点击<span style=\"color: rgb(165, 207, 254);\">下方按钮</span>，即可查看故事~</p><p>&nbsp;</p><p class=\"ql-align-center\"><a href=\"https://pvp.qq.com/cp/a20200109snk/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(87, 107, 149);\"><u>点我查看故事</u></a></p><p class=\"ql-align-center\">&nbsp;</p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/5a3560ca9d12f0c2066688af205067e6/0\"></p><p class=\"ql-align-center\"><img src=\"http://shp.qpic.cn/cfwebcap/0/ea75716c543ce19447ed1be59569dcf1/0\"></p><p><img src=\"http://shp.qpic.cn/cfwebcap/0/528f2a42af0423b094d73097b4447667/0\"></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>月夜之时，灵猫化身刺客，这样神秘而帅气的不知火舞，妲己宝宝i了i了，召唤师们喜欢吗？</p>"
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7475"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e79c37ff86f4e06d07e76b0")
    ],
    title: "体验服爆料丨亲密关系升级，战队荣耀再续~",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7476"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "狄某有话说丨峡谷野区有状况！这种队友必须严惩！",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7477"),
    categories: [
        ObjectId("5e76cded534e951520ad3380"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "被CCTV记录的王者荣耀，国人自己的电竞舞台",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7478"),
    categories: [
        ObjectId("5e76cded534e951520ad3380"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "新皮肤爆料丨西子湖畔再续前缘，小乔换装化身青蛇~",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7479"),
    categories: [
        ObjectId("5e79c38af86f4e06d07e76b1"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "3月24日全服不停机更新公告",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747a"),
    categories: [
        ObjectId("5e76cded534e951520ad3380"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "3月24日体验服停机更新公告",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747b"),
    categories: [
        ObjectId("5e79c37ff86f4e06d07e76b0"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "不知火舞-魅语皮肤属性加成异常说明",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747c"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "3月21日体验服停机修复公告",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747d"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "实战模拟及困难人机玩法异常提示说明",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747e"),
    categories: [
        ObjectId("5e79c38af86f4e06d07e76b1"),
        ObjectId("5e79c37ff86f4e06d07e76b0")
    ],
    title: "小乔-天鹅之梦海报重绘方案点赞活动开启",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.639Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.639Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f747f"),
    categories: [
        ObjectId("5e79c38af86f4e06d07e76b1"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "不知火舞全新史诗皮肤上架 好礼伴春来临",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7480"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "峡谷寻宝——传说史诗皮肤自选夺活动开启",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7481"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "【手Q用户专属】买小乔-青蛇 新皮肤，抽取免单奖励",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7482"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "春暖花开聚峡谷 多重好礼领不停",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7483"),
    categories: [
        ObjectId("5e79c37ff86f4e06d07e76b0"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "触手王者荣耀新秀杯报名启动 全国大赛邀请赛名额等你来战",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7484"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e76cded534e951520ad3380")
    ],
    title: "名嘴之路即将启动！第二届王者荣耀高校解说大赛听你来说",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7485"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "赛事战令功能开启公告",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7486"),
    categories: [
        ObjectId("5e7727dd867d0c149cf7c6e4"),
        ObjectId("5e76cf1796b4bc0f943c76c1")
    ],
    title: "2020年KPL春季赛云开赛，今日18点看成都AG和重庆QG揭幕战！",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("5e79d6245f2ac142145f7487"),
    categories: [
        ObjectId("5e76cf1796b4bc0f943c76c1"),
        ObjectId("5e7727dd867d0c149cf7c6e4")
    ],
    title: "【KPL今日预报】成都AG超玩会 vs 重庆QG，揭幕战宿敌再遇谁能首胜？",
    __v: NumberInt("0"),
    createdAt: ISODate("2020-03-24T09:43:00.64Z"),
    updatedAt: ISODate("2020-03-24T09:43:00.64Z")
} ]);

// ----------------------------
// Collection structure for categories
// ----------------------------
db.getCollection("categories").drop();
db.createCollection("categories");

// ----------------------------
// Documents of categories
// ----------------------------
db.getCollection("categories").insert([ {
    _id: ObjectId("5e765e082230ec284841f0a1"),
    name: "新闻分类",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e76c44b07b881133002f8c7"),
    name: "英雄分类",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e76c49807b881133002f8c8"),
    name: "视频分类",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e76cded534e951520ad3380"),
    parent: ObjectId("5e765e082230ec284841f0a1"),
    name: "新闻",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e76cf0c96b4bc0f943c76c0"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "战士",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e76cf1796b4bc0f943c76c1"),
    parent: ObjectId("5e765e082230ec284841f0a1"),
    name: "公告",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e770e31bff72435980f0b9c"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "射手",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79c37ff86f4e06d07e76b0"),
    parent: ObjectId("5e765e082230ec284841f0a1"),
    name: "活动",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79c38af86f4e06d07e76b1"),
    parent: ObjectId("5e765e082230ec284841f0a1"),
    name: "赛事",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79f846885dc523649f53dc"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "法师",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79f851885dc523649f53dd"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "坦克",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79f860885dc523649f53de"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "刺客",
    __v: NumberInt("0")
} ]);
db.getCollection("categories").insert([ {
    _id: ObjectId("5e79f86b885dc523649f53df"),
    parent: ObjectId("5e76c44b07b881133002f8c7"),
    name: "辅助",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for heroes
// ----------------------------
db.getCollection("heroes").drop();
db.createCollection("heroes");

// ----------------------------
// Documents of heroes
// ----------------------------
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e0"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "赵云",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/107/107.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e1"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "墨子",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/108/108.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e2"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "钟无艳",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e3"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "吕布",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e4"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "夏侯惇",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/126/126.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e5"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "曹操",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/128/128.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e6"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "典韦",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/129/129.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e7"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "宫本武藏",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/130/130.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e8"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "达摩",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53e9"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "老夫子",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/139/139.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ea"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "关羽",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/140/140.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53eb"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "程咬金",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/144/144.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ec"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "露娜",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/146/146.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ed"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "花木兰",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/154/154.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ee"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "橘右京",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ef"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "亚瑟",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/166/166.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f0"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙悟空",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/167/167.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f1"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "刘备",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/170/170.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f2"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "钟馗",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/175/175.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f3"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "杨戬",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/178/178.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f4"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "雅典娜",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/183/183.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f5"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "哪吒",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/180/180.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f6"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "铠",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/193/193.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f7"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "苏烈",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/194/194.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f8"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "裴擒虎",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/502/502.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53f9"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "狂铁",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/503/503.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53fa"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙策",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/510/510.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53fb"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "李信",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/507/507.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53fc"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "盘古",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/529/529.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53fd"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "云中君",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/506/506.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53fe"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "曜",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/522/522.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f53ff"),
    categories: [
        ObjectId("5e76cf0c96b4bc0f943c76c0")
    ],
    items1: [ ],
    items2: [ ],
    name: "马超",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/518/518.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5400"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "小乔",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/106/106.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5401"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "墨子",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/108/108.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5402"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "妲己",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/109/109.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5403"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "嬴政",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/110/110.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5404"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "高渐离",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/115/115.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5405"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙膑",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5406"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "扁鹊",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5407"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "芈月",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5408"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "周瑜",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/124/124.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5409"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "甄姬",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/127/127.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540a"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "武则天",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/136/136.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540b"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "貂蝉",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/141/141.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540c"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "安琪拉",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/142/142.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540d"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "露娜",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/146/146.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540e"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "姜子牙",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/148/148.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f540f"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "王昭君",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/152/152.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5410"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "张良",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/156/156.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5411"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "不知火舞",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/157/157.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5412"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "钟馗",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/175/175.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5413"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "诸葛亮",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/190/190.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5414"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "干将莫邪",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/182/182.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5415"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "女娲",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/179/179.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5416"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "杨玉环",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/176/176.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5417"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "弈星",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/197/197.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5418"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "米莱狄",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/504/504.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5419"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc"),
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [
        ObjectId("5e76ec56674ef535907ef545"),
        ObjectId("5e7a24c86fe582273814a79d"),
        ObjectId("5e7a24d66fe582273814a79e"),
        ObjectId("5e7a24e06fe582273814a79f"),
        ObjectId("5e7a24ef6fe582273814a7a0"),
        ObjectId("5e7a24f96fe582273814a7a1")
    ],
    items2: [
        ObjectId("5e7a25066fe582273814a7a2"),
        ObjectId("5e76ec56674ef535907ef545"),
        ObjectId("5e7a24c86fe582273814a79d"),
        ObjectId("5e7a24d66fe582273814a79e"),
        ObjectId("5e7a24e06fe582273814a79f"),
        ObjectId("5e7a253a6fe582273814a7a7")
    ],
    name: "司马懿",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/137/137.jpg",
    skills: [
        {
            _id: ObjectId("5e7a23eb6fe582273814a798"),
            name: "静默之语",
            icon: "http://106.14.145.147:3001/uploads/1543b840f9029ece9958856c0cc523aa",
            description: "被动：司马懿能够获得2000范围内施法者的视野且在该范围内释放技能会为司马懿回复5点能量；司马懿基础拥有80点能量（每级提升3点能量上限），同时每次击杀或者助攻能够提升10点能量上限，最高可以提升到200点能量上限；释放技能会激活幽影之牙；幽影之牙：司马懿增加30点移动速度并将手持巨大的镰刀进行普通攻击，持续4秒，镰刀每击造成250（+40%法术加成）点法术伤害，召唤镰刀后的首次攻击可位移到目标身后造成500（+80%法术加成）点法术伤害",
            tips: "司马懿在前中期需要计算好能量分配情况，并且尽量的参与战斗叠加自身的能量上限",
            delay: "0",
            cost: "0"
        },
        {
            _id: ObjectId("5e7a24a76fe582273814a79a"),
            name: "幽影之咬",
            description: "司马懿释放无法被选中的灵体，持续两面，控制灵体时本体免疫控制；灵体穿过的敌人时造成100/120/140/160/180/200（+20%法术加成）点法术伤害，释放普通攻击或效果结束后本体将会移动至灵体的位置，并对路径上的敌人造成100/120/140/160/180/200（+20%法术加成）点法术伤害和50%减速，持续1秒",
            tips: "灵体的移动速度极快，并且使用普通会立即结束灵体状态",
            icon: "http://106.14.145.147:3001/uploads/6173d70bbb9c8acb2ed5ec025267feaf",
            delay: "9",
            cost: "40"
        },
        {
            _id: ObjectId("5e7a24a76fe582273814a79b"),
            name: "荒芜之域",
            icon: "http://106.14.145.147:3001/uploads/6d7e9586d1c2ab2d1540c908bd541302",
            description: "司马懿释放灵力，压制周围的区域造成300/340/380/420/460/500（+30%法术加成）点法术伤害与1秒沉默，如果司马懿2秒后还在被压制的区域中则会获得25/30/35/40/45/50点的能量；被动：司马懿吸收部分的法术伤害时，将其中30%在5秒内转化为生命值",
            tips: "被动并不能直接减免伤害，需要主要不要高估自身硬度",
            delay: "6",
            cost: "40"
        },
        {
            _id: ObjectId("5e7a24a76fe582273814a79c"),
            name: "死神降临",
            description: "司马懿化身死神，在短暂的蓄力后向指定地点冲击，造成700/875/1050（100%法术加成）点法术伤害，并且会对冲击路径触碰的敌人造成50%伤害",
            tips: "大招有一定的延迟，需要一定的预判",
            icon: "http://106.14.145.147:3001/uploads/421ec355ba4495511778f7854c97a48d",
            delay: "35/30/25",
            cost: "40"
        }
    ],
    partners: [
        {
            _id: ObjectId("5e7a2acc19342b2aac8bd0ac"),
            hero: ObjectId("5e79f88f885dc523649f5427"),
            description: "项羽有优秀的开团能力，并且随后可以通过技能降低敌方输出，为司马懿进场输出创造条件"
        },
        {
            _id: ObjectId("5e7a2acc19342b2aac8bd0ad"),
            hero: ObjectId("5e79f88f885dc523649f5414"),
            description: "干将的超远消耗能力，能让司马懿能在一次命中大量飞剑后，选择直接突进开启团战"
        }
    ],
    __v: NumberInt("0"),
    banner: "http://106.14.145.147:3001/uploads/4c74e6a29e1d393e95323f482e75fea8",
    battleTips: "1.前期司马懿十分缺乏能量，逼迫他走出沉默区域避免其回复能量能够持续作战;2.司马懿二技能的被动会将已经承受的部分法术伤害转化为治疗效果，并不能直接造成伤害减免",
    scores: {
        difficult: NumberInt("5"),
        skills: NumberInt("5"),
        attack: NumberInt("9"),
        survice: NumberInt("5")
    },
    teamTips: "长距离的突袭能力，让司马懿天生就能够轻松抵达敌方后排，但是刺客的身板不足以让其先手开团，所以，最好还是一边等待机会威吓对方后排输出，一边等待友方坦克战士开启团战",
    title: "寂灭之心",
    usageTips: "1.尽量参与战斗，司马懿通过击败或助攻增加的能量上限值，可以让司马懿提前达到最高限制 2、大招有一定的延迟，需要预判敌方走位计算提前量"
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541a"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "沈梦溪",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/312/312.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541b"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "上官婉儿",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/513/513.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541c"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "嫦娥",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/515/515.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541d"),
    categories: [
        ObjectId("5e79f846885dc523649f53dc")
    ],
    items1: [ ],
    items2: [ ],
    name: "西施",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/523/523.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541e"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "廉颇",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/105/105.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f541f"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "庄周",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/113/113.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5420"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "刘禅",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/114/114.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5421"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "钟无艳",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5422"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "白起",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5423"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "芈月",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5424"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "吕布",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5425"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "夏侯惇",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/126/126.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5426"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "达摩",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/134/134.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5427"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "项羽",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/135/135.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5428"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "程咬金",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/144/144.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5429"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "刘邦",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/149/149.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542a"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "亚瑟",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/166/166.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542b"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "牛魔",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/168/168.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542c"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "张飞",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/171/171.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542d"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "太乙真人",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/186/186.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542e"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "东皇太一",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/187/187.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f542f"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "铠",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/193/193.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5430"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "苏烈",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/194/194.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5431"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "梦奇",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/198/198.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5432"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙策",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/510/510.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5433"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "嫦娥",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/515/515.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5434"),
    categories: [
        ObjectId("5e79f851885dc523649f53dd")
    ],
    items1: [ ],
    items2: [ ],
    name: "猪八戒",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/511/511.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5435"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "赵云",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/107/107.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5436"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "阿轲",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5437"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "李白",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/131/131.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5438"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "貂蝉",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/141/141.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5439"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "韩信",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/150/150.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543a"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "兰陵王",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/153/153.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543b"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "花木兰",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/154/154.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543c"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "不知火舞",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/157/157.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543d"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "娜可露露",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/162/162.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543e"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "橘右京",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/163/163.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f543f"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙悟空",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/167/167.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5440"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "百里守约",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/196/196.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5441"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "百里玄策",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/195/195.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5442"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "裴擒虎",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/502/502.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5443"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "元歌",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/125/125.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5444"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "司马懿",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/137/137.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5445"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "上官婉儿",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/513/513.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5446"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "云中君",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/506/506.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5447"),
    categories: [
        ObjectId("5e79f860885dc523649f53de")
    ],
    items1: [ ],
    items2: [ ],
    name: "马超",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/518/518.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5448"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙尚香",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/111/111.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5449"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "鲁班七号",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/112/112.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544a"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "马可波罗",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544b"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "狄仁杰",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544c"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "后羿",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/169/169.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544d"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "李元芳",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/173/173.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544e"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "虞姬",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/174/174.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f544f"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "成吉思汗",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/177/177.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5450"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "黄忠",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/192/192.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5451"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "百里守约",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/196/196.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5452"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "公孙离",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/199/199.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5453"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "伽罗",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/508/508.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5454"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [ ],
    items2: [ ],
    name: "蒙犽",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/524/524.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5455"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "庄周",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/113/113.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5456"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "刘禅",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/114/114.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5457"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "孙膑",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5458"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "姜子牙",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/148/148.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5459"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "牛魔",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/168/168.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545a"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "张飞",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/171/171.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545b"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "蔡文姬",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/184/184.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545c"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "太乙真人",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/186/186.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545d"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "大乔",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/191/191.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545e"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "鬼谷子",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/189/189.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f545f"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "明世隐",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/501/501.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5460"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "杨玉环",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/176/176.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5461"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "盾山",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/509/509.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5462"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "瑶",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/505/505.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heroes").insert([ {
    _id: ObjectId("5e79f88f885dc523649f5463"),
    categories: [
        ObjectId("5e79f86b885dc523649f53df")
    ],
    items1: [ ],
    items2: [ ],
    name: "鲁班大师",
    avatar: "https://game.gtimg.cn/images/yxzj/img201606/heroimg/525/525.jpg",
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for heros
// ----------------------------
db.getCollection("heros").drop();
db.createCollection("heros");

// ----------------------------
// Documents of heros
// ----------------------------
db.getCollection("heros").insert([ {
    _id: ObjectId("5e7707b23df085266888beb7"),
    name: "项羽",
    avatar: "http://106.14.145.147:3001/uploads/ddcef59242441f658358347b8596e0b8",
    __v: NumberInt("0")
} ]);
db.getCollection("heros").insert([ {
    _id: ObjectId("5e7708943df085266888beb8"),
    name: "后裔",
    avatar: "http://106.14.145.147:3001/uploads/46d14ed8e1d535d41e01b6dc3e8db86b",
    __v: NumberInt("0"),
    categories: [
        ObjectId("5e770e31bff72435980f0b9c")
    ],
    items1: [
        ObjectId("5e76ec56674ef535907ef545"),
        ObjectId("5e771524867d0c149cf7c6cd"),
        ObjectId("5e771551867d0c149cf7c6ce"),
        ObjectId("5e771563867d0c149cf7c6cf"),
        ObjectId("5e7716b0867d0c149cf7c6d1"),
        ObjectId("5e77169d867d0c149cf7c6d0")
    ],
    items2: [
        ObjectId("5e76ec56674ef535907ef545"),
        ObjectId("5e771551867d0c149cf7c6ce"),
        ObjectId("5e77169d867d0c149cf7c6d0"),
        ObjectId("5e771563867d0c149cf7c6cf"),
        ObjectId("5e7716b0867d0c149cf7c6d1"),
        ObjectId("5e77171b867d0c149cf7c6d2")
    ],
    partners: [ ],
    skills: [
        {
            _id: ObjectId("5e771efa867d0c149cf7c6d3"),
            name: "惩戒射击",
            icon: "http://106.14.145.147:3001/uploads/00947668ea0cd48726d5e8f898ec7df2",
            description: "后羿的普攻命中敌人后增加自身5%攻击速度，可叠加至多3层。当攻速加成叠加到3层时，后羿的普攻将射出3支箭矢，每支箭矢造成原伤害的40%，强化持续3秒。（期间每次命中刷新持续时间）",
            tips: "后羿需要进行三次普攻命中来触发被动效果，一旦触发被动以后，将会造成高额伤害。"
        },
        {
            _id: ObjectId("5e771f61867d0c149cf7c6d6"),
            name: "多重箭矢",
            icon: "http://106.14.145.147:3001/uploads/2e9b34db15b4d26f95c3e6e3d5d82311",
            description: "后羿强化自身攻击，每次攻击造成160/208/256/304/352/400（+50%物理加成）点物理伤害（若触发惩戒射击则每支箭矢造成原伤害的40%）并对面前区域内另外2名敌人造成50%伤害，该效果持续5秒",
            tips: "主要输出技能，配合被动效果，每次普攻至多可发射9支箭矢，范围伤害能力极强。"
        },
        {
            _id: ObjectId("5e771fae867d0c149cf7c6d9"),
            name: "落日余晖",
            description: "后羿命令日炙塔对指定区域进行攻击，短暂时间后召唤一束激光打击指定位置。对命中的敌人造成300/350/400/450/500/550（+50%物理加成）点法术伤害和30%减速效果，持续2秒，被中心点命中的敌人将受到额外50%的伤害且受到50%的减速效果",
            tips: "后羿常规的控制技能，精准打击时也可以提供一定的爆发伤害。必要的时候可以在远处释放该技能骚扰敌人。",
            icon: "http://106.14.145.147:3001/uploads/bd0f0aac3a11ce14b00a344b3afd0702"
        },
        {
            _id: ObjectId("5e771fae867d0c149cf7c6da"),
            name: "灼日之矢",
            description: "后羿向指定方向射出火焰箭。击中敌方英雄时会将其眩晕并引发爆炸，爆照对范围内的敌人造成700/1000/1300（+90%物理加成）点物理伤害；被火焰箭直接命中的敌方英雄将会根据火焰箭的飞行距离眩晕0.5~3.5秒",
            tips: "非常强力的开团技能，一旦命中远处的敌人将造成长时间的晕眩效果。另外这是一个全屏释放的技能，意味着后羿可以随时释放大招支援远处的队友，不过距离较远时，需要对释放方向进行一定的预判。",
            icon: "http://106.14.145.147:3001/uploads/ef0ce3739512e88f0121b340e3422412"
        }
    ],
    title: "半神之弓",
    scores: {
        difficult: NumberInt("4"),
        skills: NumberInt("4"),
        attack: NumberInt("4"),
        survice: NumberInt("9")
    },
    usageTips: "在触发被动惩戒射击以后，再开启1技能-多重箭矢可以让后羿的普攻输出达到最大化。到达4级以后，时刻关注场上的变化，必要的时候利用大招支援队友。",
    battleTips: "后羿很脆弱，并且缺乏自保能力，在输出的时候要注意自己的位置，如果情况比较危险，不适合普攻输出，可以在远处不断利用2技能落日余晖来攻击敌人。",
    teamTips: "从较远处释放大招进行主动开团，一旦命中，可以集火该敌方英雄。因为多重箭矢的分裂箭，只会寻找后羿面前并且在普攻射程范围内的敌人，所以需要在攻击时，调整好自己的攻击朝向，让分裂箭尽可能的攻击到敌人。"
} ]);
db.getCollection("heros").insert([ {
    _id: ObjectId("5e7782777ff1133ddcfb745f"),
    categories: [ ],
    items1: [ ],
    items2: [ ],
    name: "妲己",
    avatar: "http://106.14.145.147:3001/uploads/55ce63ddff4cb8b601cdc64a88fc4afe",
    scores: {
        difficult: NumberInt("0"),
        skills: NumberInt("0"),
        attack: NumberInt("0"),
        survice: NumberInt("0")
    },
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heros").insert([ {
    _id: ObjectId("5e7783137ff1133ddcfb7460"),
    categories: [ ],
    items1: [ ],
    items2: [ ],
    name: "张良",
    avatar: "http://106.14.145.147:3001/uploads/e5a09ff7115c1092633714576d3dd089",
    scores: {
        difficult: NumberInt("0"),
        skills: NumberInt("0"),
        attack: NumberInt("0"),
        survice: NumberInt("0")
    },
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);
db.getCollection("heros").insert([ {
    _id: ObjectId("5e7783b17ff1133ddcfb7461"),
    categories: [ ],
    items1: [ ],
    items2: [ ],
    name: "百里守约",
    avatar: "http://106.14.145.147:3001/uploads/e120d9ca93376d46ec7251b0c9f208cd",
    scores: {
        difficult: NumberInt("0"),
        skills: NumberInt("0"),
        attack: NumberInt("0"),
        survice: NumberInt("0")
    },
    skills: [ ],
    partners: [ ],
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for items
// ----------------------------
db.getCollection("items").drop();
db.createCollection("items");

// ----------------------------
// Documents of items
// ----------------------------
db.getCollection("items").insert([ {
    _id: ObjectId("5e76ec56674ef535907ef545"),
    name: "急速战靴",
    __v: NumberInt("0"),
    icon: "http://106.14.145.147:3001/uploads/8a99c1a019b82a6c4423f5b11b427ab2"
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e771524867d0c149cf7c6cd"),
    name: "末世",
    icon: "http://106.14.145.147:3001/uploads/c6ced21c397a7b612892f6e14f31e998",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e771551867d0c149cf7c6ce"),
    name: "闪电匕首",
    icon: "http://106.14.145.147:3001/uploads/0814b6ccdd88fd72930c0a5787f209f8",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e771563867d0c149cf7c6cf"),
    name: "无尽战刃",
    icon: "http://106.14.145.147:3001/uploads/7d883f3fc0ee8b32a670f68030ba7ef0",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e77169d867d0c149cf7c6d0"),
    name: "泣血之刃",
    icon: "http://106.14.145.147:3001/uploads/54a60dee2afaf2cb9acf38a93ed1a712",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7716b0867d0c149cf7c6d1"),
    name: "破晓",
    icon: "http://106.14.145.147:3001/uploads/eaa29e1400318885aeb33be06d941a76",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e77171b867d0c149cf7c6d2"),
    name: "逐日之弓",
    icon: "http://106.14.145.147:3001/uploads/5aced2ab460718336f939cabb17156d1",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7782597ff1133ddcfb745e"),
    icon: "http://106.14.145.147:3001/uploads/a391a7515878525a148c4f820d3a2193",
    name: "打野刀",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a24c86fe582273814a79d"),
    name: "噬神之书",
    icon: "http://106.14.145.147:3001/uploads/e77f311ec8117e071f1484467fbf6be7",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a24d66fe582273814a79e"),
    name: "巫术法杖",
    icon: "http://106.14.145.147:3001/uploads/f1c08c7b126f264f3f466414a5900e54",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a24e06fe582273814a79f"),
    name: "博学者之怒",
    icon: "http://106.14.145.147:3001/uploads/d576a28c6585758b5feac63766e010f2",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a24ef6fe582273814a7a0"),
    name: "痛苦面具",
    icon: "http://106.14.145.147:3001/uploads/79ef18f82a64baecc6f9b400fb5bf627",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a24f96fe582273814a7a1"),
    name: "辉月",
    icon: "http://106.14.145.147:3001/uploads/dfe9c9463fd995d5b66fc19850375839",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a25066fe582273814a7a2"),
    name: "游击弯刀",
    icon: "http://106.14.145.147:3001/uploads/df02fae86d60795246a8a802021ab375",
    __v: NumberInt("0")
} ]);
db.getCollection("items").insert([ {
    _id: ObjectId("5e7a253a6fe582273814a7a7"),
    name: "虚无法杖",
    icon: "http://106.14.145.147:3001/uploads/fee406e6272f2a3327fbc8e254e251d6",
    __v: NumberInt("0")
} ]);
