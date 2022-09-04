/*
 Navicat Premium Data Transfer

 Source Server         : czh
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : blogs

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 05/09/2022 06:02:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_articles
-- ----------------------------
DROP TABLE IF EXISTS `t_articles`;
CREATE TABLE `t_articles`  (
  `article_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '博文ID',
  `user_id` bigint(0) NOT NULL COMMENT '发表用户ID',
  `article_title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文标题',
  `article_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博文内容',
  `article_views` bigint(0) NOT NULL COMMENT '浏览量',
  `article_comment_count` bigint(0) NOT NULL COMMENT '评论总数',
  `article_date` datetime(0) NULL DEFAULT NULL COMMENT '发表时间',
  `article_like_count` bigint(0) NOT NULL COMMENT '点赞数',
  `article_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '博文描述',
  `article_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `t_articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_articles
-- ----------------------------
INSERT INTO `t_articles` VALUES (3, 3, '大厂裁员下，程序员如何做“副业”？', '<h1>大厂裁员下，程序员如何做“副业”？</h1>\r\n\r\n						<img src=\"https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5e7d37251bc04bf48caafe62eae2991e~tplv-k3u1fbpfcp-zoom-crop-mark:1304:1304:1304:734.awebp?\"\r\n							alt=\"\">\r\n						<p>大家好，我是杨成功。</p><br>\r\n						<p>前几天有幸看了<i\r\n								class=\"s\">尤雨溪</i>尤大的直播，他们谈到一个话题，是说目前前端人，或者是整个程序员群体如何做副业？近年来互联网行情下降，好多人都在思考要不要搞个副业来抵御风险。\r\n						</p><br>\r\n						<p>这不又来事了，这两天又爆了互联网大裁员。继阿里“向社会输送人才”之后，京东又搞了个“毕业礼”，整的小伙伴们人心惶惶。副业的关注度又一波升级。<br>\r\n						</p>\r\n						<p>那今天我们就来聊聊，程序员做副业这件事。</p><br>\r\n						<h2>为什么程序员都想着做副业？</h2>\r\n						<p>我理解今天的程序员为什么都有做副业的想法，原因不外乎两个方面。</p><br>\r\n						<p>一是互联网的爆发期已过，以前程序员体量小，会点基本技能就可以不愁工作，薪资也非常可观，但现在随着大量人员涌入，各种名校高学历的加入内卷，我们突然发现没什么竞争优势了。</p><br>\r\n						<p>二是互联网开发圈这种畸形的工作氛围，熬夜加班过于严重，消耗生命力来赶进度。特别是大厂，钱是给的多，但是透支强度懂得都懂，说句不好听的是拿命换钱。\r\n						</p><br>\r\n						<p>以前大家听这些可能只是自嘲一下，随着脉脉上不断爆出大厂程序员加班猝死的消息，大家开始慌了，原来比起收入，健康才是我们终身的财富。\r\n						</p><br>\r\n						<p>当然还有一个原因，不只是程序员的职业阴霾，但程序员首当其冲，那就是 <i class=\"s\">“35 岁危机”</i>。</p><br>\r\n						<p>程序员是拼学习能力和创造能力的职业，不进则退的规则远大于其他行业。35 以后，如果你不是真的热爱这个行业，那么你会发现，20\r\n							多岁的那种学习钻研的毅力已经没有了。再加上身体状况大不如前，加班扛不动，各方面你怎么和新来的小伙子们拼？</p><br>\r\n						<p>以上的种种情况，再加上网络上疯狂的制造焦虑，我们自己也突然有了种随时会降薪，随时会被裁，随时要加入内卷，甚至随时会没命的担忧，开始想后路了。不行搞点副业？不行创个业？</p><br>\r\n						<p>所以如果你今天在技术社区发一篇“程序员如何搞副业”的文章，点击率一定翻倍。根本原因，就是大家对未来的担忧。</p><br>\r\n						<p>卷不动怎么办？遇到 35 岁危机怎么办？大家都想着规避风险，这才不得不去关注副业。</p><br>\r\n						<h2>怎么看 “加班内卷” 和 “35 岁危机”？</h2>\r\n						<p>这两个现象是程序员焦虑的主要来源，看似避无可避，可有没有想过根本原因是什么？</p><br>\r\n						<p>我们再往深剖一下这两个问题，其实大家担心的是：“如果这种加班状态持续到 35 岁，我能不能撑得住？到时候竞争力下降，我会不会被新人替代？”</p><br>\r\n						<p class=\"p\">但是我想说一个误区，就是初中级别的程序员，需要大量的写代码来提升自己的技术能力，不断的投入时间学习，研究，拓宽视野。但是到了高级别的程序员，比如带团队的\r\n							leader，架构师，写代码一定是越来越少的。</p><br>\r\n						<p>对于这些人来说，他们不需要通过加班来发挥价值，他们有自己的核心竞争力和不可替代性，写代码也是写一些核心的关键的代码，更多的时间关注技术选型和解决问题的方案。所以说程序员的职业生涯不会一直伴随着加班，当你拥有核心竞争力，你的工作方式反而会很自由。\r\n						</p><br>\r\n						<p>那什么是核心竞争力？我说一句话大家一定会有体会：你的技术 leader，一个决策可以让团队的开发效率提升 10 倍，也可能让团队的开发效率降低 10\r\n							倍，有可能最后还出不了成果，甚至告诉你这个不行得重来！</p><br>\r\n						<p>这就是核心竞争力呀！一个程序员对技术选型，解决方案的评估和判断，这才是他的核心竞争力。这种竞争力不是你刷一堆算法，背一堆八股文，学很多面试技巧，他就能有的。这些东西是需要你经过几年大量的\r\n							写代码+学习+尝试+思考 才能培养出的能力。</p><br>\r\n						<p>所以说，我们所谓的 “加班内卷” 和 “35 岁危机”，得分两个阶段来看。</p><br>\r\n\r\n						<h3>工作五年内</h3>\r\n						<p>如果你是工作的前五年，这个阶段你精力旺盛，学习能力强劲，那就是要卷的啊。趁着职业上升的黄金时期，花大量的时间和精力做积累，不断做加法，尽力尝试着去拓宽技术视野，让自己成为一个独当一面的人。这样你才能积累到别人无法超越的高度。\r\n						</p><br>\r\n						<p>如果这个阶段你躺平了，你想着反正大家都在卷，我不想参与其中，每天上班空闲摸个鱼也挺好的。那这样持续几年，除了业务代码熟练一些，你在技术深度广度上都没多大的长进。当你发现公司的新人越来越厉害，他们带来的技术让你应接不暇的时候，你突然发现卧槽，危机真的来了，这个时候再卷是不是晚了？\r\n						</p><br>\r\n						<p>我不是鼓励大家内卷，相反我很反对做那些没什么意义光是自我消耗的事情。但是努力和积累永远不是卷，更不是不想奋斗的借口。如果卷真的避免不了，那一定要“卷的有价值”。</p><br>\r\n						<p>比起内卷，其实我更鼓励大家“外卷”。外卷到意思就是当你在某个领域积累了一定经验后，要试着跳出当前的圈子，去探索一下外面的世界。</p><br>\r\n						<p class=\"p\">比如你是一个前端程序员，尽管你的 Title\r\n							是“前端”，但你不能一直只在前端的圈子里打转。作为一个程序员，只要涉及到程序开发的，前端后端产品服务器，你都要接触，这样你的视野才会变的更广，看问题的角度更多，随之你的判断能力和才会得到提升。\r\n						</p><br>\r\n						<p>大家总觉得，一个前端就该专攻\r\n							js，只有准备向全栈发展才会接触后端。其实不是的，接触并不代表一定要做，了解整体可以培养你的全局观。比如你遇到了一个难题，你只会在前端的范畴研究，可能这个问题在后端处理只是一行代码的事情，可你不知道呀，所以会浪费很多时间。\r\n						</p><br>\r\n\r\n						<h2>代码片段</h2>\r\n						<div class=\"pre\">\r\n							<!-- 代码高亮 -->\r\n							<pre style=\"margin:0;\">\r\n									<b><code contenteditable=\"false\" class=\"language-javascript\" >\r\n function unique(arr) {\r\n    if (!Array.isArray(arr)) {\r\n        console.log(\'type error!\')\r\n        return\r\n    }\r\n    var array = [];\r\n    for (var i = 0; i < arr.length; i++) {\r\n        if (array .indexOf(arr[i]) === -1) {\r\n            array .push(arr[i])\r\n        }\r\n    }\r\n    return array;\r\n }\r\n									</code></b>\r\n    							</pre>\r\n							<!-- 调用代码高亮 -->\r\n							<script>\r\n								hljs.initHighlightingOnLoad();\r\n							</script>\r\n						</div>', 0, 0, '2022-08-26 20:57:04', 0, '最近大厂裁员不断，好多人思考要不要搞个副业抵御风险。那你知道程序员的副业怎么做吗？来和我一探究竟吧～', 'https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5e7d37251bc04bf48caafe62eae2991e~tplv-k3u1fbpfcp-zoom-crop-mark:1304:1304:1304:734.awebp?');
INSERT INTO `t_articles` VALUES (4, 3, '一个96年前端的2022年中总结 (落户,看房,还贷,被裁)', '<h1>大厂裁员下，程序员如何做“副业”？</h1>\r\n\r\n						<img src=\"https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5e7d37251bc04bf48caafe62eae2991e~tplv-k3u1fbpfcp-zoom-crop-mark:1304:1304:1304:734.awebp?\"\r\n							alt=\"\">\r\n						<p>大家好，我是杨成功。</p><br>\r\n						<p>前几天有幸看了<i\r\n								class=\"s\">尤雨溪</i>尤大的直播，他们谈到一个话题，是说目前前端人，或者是整个程序员群体如何做副业？近年来互联网行情下降，好多人都在思考要不要搞个副业来抵御风险。\r\n						</p><br>\r\n						<p>这不又来事了，这两天又爆了互联网大裁员。继阿里“向社会输送人才”之后，京东又搞了个“毕业礼”，整的小伙伴们人心惶惶。副业的关注度又一波升级。<br>\r\n						</p>\r\n						<p>那今天我们就来聊聊，程序员做副业这件事。</p><br>\r\n						<h2>为什么程序员都想着做副业？</h2>\r\n						<p>我理解今天的程序员为什么都有做副业的想法，原因不外乎两个方面。</p><br>\r\n						<p>一是互联网的爆发期已过，以前程序员体量小，会点基本技能就可以不愁工作，薪资也非常可观，但现在随着大量人员涌入，各种名校高学历的加入内卷，我们突然发现没什么竞争优势了。</p><br>\r\n						<p>二是互联网开发圈这种畸形的工作氛围，熬夜加班过于严重，消耗生命力来赶进度。特别是大厂，钱是给的多，但是透支强度懂得都懂，说句不好听的是拿命换钱。\r\n						</p><br>\r\n						<p>以前大家听这些可能只是自嘲一下，随着脉脉上不断爆出大厂程序员加班猝死的消息，大家开始慌了，原来比起收入，健康才是我们终身的财富。\r\n						</p><br>\r\n						<p>当然还有一个原因，不只是程序员的职业阴霾，但程序员首当其冲，那就是 <i class=\"s\">“35 岁危机”</i>。</p><br>\r\n						<p>程序员是拼学习能力和创造能力的职业，不进则退的规则远大于其他行业。35 以后，如果你不是真的热爱这个行业，那么你会发现，20\r\n							多岁的那种学习钻研的毅力已经没有了。再加上身体状况大不如前，加班扛不动，各方面你怎么和新来的小伙子们拼？</p><br>\r\n						<p>以上的种种情况，再加上网络上疯狂的制造焦虑，我们自己也突然有了种随时会降薪，随时会被裁，随时要加入内卷，甚至随时会没命的担忧，开始想后路了。不行搞点副业？不行创个业？</p><br>\r\n						<p>所以如果你今天在技术社区发一篇“程序员如何搞副业”的文章，点击率一定翻倍。根本原因，就是大家对未来的担忧。</p><br>\r\n						<p>卷不动怎么办？遇到 35 岁危机怎么办？大家都想着规避风险，这才不得不去关注副业。</p><br>\r\n						<h2>怎么看 “加班内卷” 和 “35 岁危机”？</h2>\r\n						<p>这两个现象是程序员焦虑的主要来源，看似避无可避，可有没有想过根本原因是什么？</p><br>\r\n						<p>我们再往深剖一下这两个问题，其实大家担心的是：“如果这种加班状态持续到 35 岁，我能不能撑得住？到时候竞争力下降，我会不会被新人替代？”</p><br>\r\n						<p class=\"p\">但是我想说一个误区，就是初中级别的程序员，需要大量的写代码来提升自己的技术能力，不断的投入时间学习，研究，拓宽视野。但是到了高级别的程序员，比如带团队的\r\n							leader，架构师，写代码一定是越来越少的。</p><br>\r\n						<p>对于这些人来说，他们不需要通过加班来发挥价值，他们有自己的核心竞争力和不可替代性，写代码也是写一些核心的关键的代码，更多的时间关注技术选型和解决问题的方案。所以说程序员的职业生涯不会一直伴随着加班，当你拥有核心竞争力，你的工作方式反而会很自由。\r\n						</p><br>\r\n						<p>那什么是核心竞争力？我说一句话大家一定会有体会：你的技术 leader，一个决策可以让团队的开发效率提升 10 倍，也可能让团队的开发效率降低 10\r\n							倍，有可能最后还出不了成果，甚至告诉你这个不行得重来！</p><br>\r\n						<p>这就是核心竞争力呀！一个程序员对技术选型，解决方案的评估和判断，这才是他的核心竞争力。这种竞争力不是你刷一堆算法，背一堆八股文，学很多面试技巧，他就能有的。这些东西是需要你经过几年大量的\r\n							写代码+学习+尝试+思考 才能培养出的能力。</p><br>\r\n						<p>所以说，我们所谓的 “加班内卷” 和 “35 岁危机”，得分两个阶段来看。</p><br>\r\n\r\n						<h3>工作五年内</h3>\r\n						<p>如果你是工作的前五年，这个阶段你精力旺盛，学习能力强劲，那就是要卷的啊。趁着职业上升的黄金时期，花大量的时间和精力做积累，不断做加法，尽力尝试着去拓宽技术视野，让自己成为一个独当一面的人。这样你才能积累到别人无法超越的高度。\r\n						</p><br>\r\n						<p>如果这个阶段你躺平了，你想着反正大家都在卷，我不想参与其中，每天上班空闲摸个鱼也挺好的。那这样持续几年，除了业务代码熟练一些，你在技术深度广度上都没多大的长进。当你发现公司的新人越来越厉害，他们带来的技术让你应接不暇的时候，你突然发现卧槽，危机真的来了，这个时候再卷是不是晚了？\r\n						</p><br>\r\n						<p>我不是鼓励大家内卷，相反我很反对做那些没什么意义光是自我消耗的事情。但是努力和积累永远不是卷，更不是不想奋斗的借口。如果卷真的避免不了，那一定要“卷的有价值”。</p><br>\r\n						<p>比起内卷，其实我更鼓励大家“外卷”。外卷到意思就是当你在某个领域积累了一定经验后，要试着跳出当前的圈子，去探索一下外面的世界。</p><br>\r\n						<p class=\"p\">比如你是一个前端程序员，尽管你的 Title\r\n							是“前端”，但你不能一直只在前端的圈子里打转。作为一个程序员，只要涉及到程序开发的，前端后端产品服务器，你都要接触，这样你的视野才会变的更广，看问题的角度更多，随之你的判断能力和才会得到提升。\r\n						</p><br>\r\n						<p>大家总觉得，一个前端就该专攻\r\n							js，只有准备向全栈发展才会接触后端。其实不是的，接触并不代表一定要做，了解整体可以培养你的全局观。比如你遇到了一个难题，你只会在前端的范畴研究，可能这个问题在后端处理只是一行代码的事情，可你不知道呀，所以会浪费很多时间。\r\n						</p><br>\r\n\r\n						<h2>代码片段</h2>\r\n						<div class=\"pre\">\r\n							<!-- 代码高亮 -->\r\n							<pre style=\"margin:0;\">\r\n									<b><code contenteditable=\"false\" class=\"language-javascript\" >\r\n function unique(arr) {\r\n    if (!Array.isArray(arr)) {\r\n        console.log(\'type error!\')\r\n        return\r\n    }\r\n    var array = [];\r\n    for (var i = 0; i < arr.length; i++) {\r\n        if (array .indexOf(arr[i]) === -1) {\r\n            array .push(arr[i])\r\n        }\r\n    }\r\n    return array;\r\n }\r\n									</code></b>\r\n    							</pre>\r\n							<!-- 调用代码高亮 -->\r\n							<script>\r\n								hljs.initHighlightingOnLoad();\r\n							</script>\r\n						</div>', 0, 0, '2022-08-26 21:00:51', 0, '「时光不负，创作不停，本文正在参加2022年中总结征文大赛」 落户 关于落户这个事, 就是一个很突然的想法,很突然,\r\n								得知天津有个\"海河英才计划\",只要是本科生, 就比较容易落户,所以就想着试一试,', 'https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/720d976d5b5947c187b8f7039126c10e~tplv-k3u1fbpfcp-zoom-crop-mark:3024:3024:3024:1702.awebp?');
INSERT INTO `t_articles` VALUES (5, 2, '从Spring为什么要用IoC的支点，我撬动了整个Spring的源码脉络！', '<h1>大厂裁员下，程序员如何做“副业”？</h1>\r\n\r\n						<img src=\"https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5e7d37251bc04bf48caafe62eae2991e~tplv-k3u1fbpfcp-zoom-crop-mark:1304:1304:1304:734.awebp?\"\r\n							alt=\"\">\r\n						<p>大家好，我是杨成功。</p><br>\r\n						<p>前几天有幸看了<i\r\n								class=\"s\">尤雨溪</i>尤大的直播，他们谈到一个话题，是说目前前端人，或者是整个程序员群体如何做副业？近年来互联网行情下降，好多人都在思考要不要搞个副业来抵御风险。\r\n						</p><br>\r\n						<p>这不又来事了，这两天又爆了互联网大裁员。继阿里“向社会输送人才”之后，京东又搞了个“毕业礼”，整的小伙伴们人心惶惶。副业的关注度又一波升级。<br>\r\n						</p>\r\n						<p>那今天我们就来聊聊，程序员做副业这件事。</p><br>\r\n						<h2>为什么程序员都想着做副业？</h2>\r\n						<p>我理解今天的程序员为什么都有做副业的想法，原因不外乎两个方面。</p><br>\r\n						<p>一是互联网的爆发期已过，以前程序员体量小，会点基本技能就可以不愁工作，薪资也非常可观，但现在随着大量人员涌入，各种名校高学历的加入内卷，我们突然发现没什么竞争优势了。</p><br>\r\n						<p>二是互联网开发圈这种畸形的工作氛围，熬夜加班过于严重，消耗生命力来赶进度。特别是大厂，钱是给的多，但是透支强度懂得都懂，说句不好听的是拿命换钱。\r\n						</p><br>\r\n						<p>以前大家听这些可能只是自嘲一下，随着脉脉上不断爆出大厂程序员加班猝死的消息，大家开始慌了，原来比起收入，健康才是我们终身的财富。\r\n						</p><br>\r\n						<p>当然还有一个原因，不只是程序员的职业阴霾，但程序员首当其冲，那就是 <i class=\"s\">“35 岁危机”</i>。</p><br>\r\n						<p>程序员是拼学习能力和创造能力的职业，不进则退的规则远大于其他行业。35 以后，如果你不是真的热爱这个行业，那么你会发现，20\r\n							多岁的那种学习钻研的毅力已经没有了。再加上身体状况大不如前，加班扛不动，各方面你怎么和新来的小伙子们拼？</p><br>\r\n						<p>以上的种种情况，再加上网络上疯狂的制造焦虑，我们自己也突然有了种随时会降薪，随时会被裁，随时要加入内卷，甚至随时会没命的担忧，开始想后路了。不行搞点副业？不行创个业？</p><br>\r\n						<p>所以如果你今天在技术社区发一篇“程序员如何搞副业”的文章，点击率一定翻倍。根本原因，就是大家对未来的担忧。</p><br>\r\n						<p>卷不动怎么办？遇到 35 岁危机怎么办？大家都想着规避风险，这才不得不去关注副业。</p><br>\r\n						<h2>怎么看 “加班内卷” 和 “35 岁危机”？</h2>\r\n						<p>这两个现象是程序员焦虑的主要来源，看似避无可避，可有没有想过根本原因是什么？</p><br>\r\n						<p>我们再往深剖一下这两个问题，其实大家担心的是：“如果这种加班状态持续到 35 岁，我能不能撑得住？到时候竞争力下降，我会不会被新人替代？”</p><br>\r\n						<p class=\"p\">但是我想说一个误区，就是初中级别的程序员，需要大量的写代码来提升自己的技术能力，不断的投入时间学习，研究，拓宽视野。但是到了高级别的程序员，比如带团队的\r\n							leader，架构师，写代码一定是越来越少的。</p><br>\r\n						<p>对于这些人来说，他们不需要通过加班来发挥价值，他们有自己的核心竞争力和不可替代性，写代码也是写一些核心的关键的代码，更多的时间关注技术选型和解决问题的方案。所以说程序员的职业生涯不会一直伴随着加班，当你拥有核心竞争力，你的工作方式反而会很自由。\r\n						</p><br>\r\n						<p>那什么是核心竞争力？我说一句话大家一定会有体会：你的技术 leader，一个决策可以让团队的开发效率提升 10 倍，也可能让团队的开发效率降低 10\r\n							倍，有可能最后还出不了成果，甚至告诉你这个不行得重来！</p><br>\r\n						<p>这就是核心竞争力呀！一个程序员对技术选型，解决方案的评估和判断，这才是他的核心竞争力。这种竞争力不是你刷一堆算法，背一堆八股文，学很多面试技巧，他就能有的。这些东西是需要你经过几年大量的\r\n							写代码+学习+尝试+思考 才能培养出的能力。</p><br>\r\n						<p>所以说，我们所谓的 “加班内卷” 和 “35 岁危机”，得分两个阶段来看。</p><br>\r\n\r\n						<h3>工作五年内</h3>\r\n						<p>如果你是工作的前五年，这个阶段你精力旺盛，学习能力强劲，那就是要卷的啊。趁着职业上升的黄金时期，花大量的时间和精力做积累，不断做加法，尽力尝试着去拓宽技术视野，让自己成为一个独当一面的人。这样你才能积累到别人无法超越的高度。\r\n						</p><br>\r\n						<p>如果这个阶段你躺平了，你想着反正大家都在卷，我不想参与其中，每天上班空闲摸个鱼也挺好的。那这样持续几年，除了业务代码熟练一些，你在技术深度广度上都没多大的长进。当你发现公司的新人越来越厉害，他们带来的技术让你应接不暇的时候，你突然发现卧槽，危机真的来了，这个时候再卷是不是晚了？\r\n						</p><br>\r\n						<p>我不是鼓励大家内卷，相反我很反对做那些没什么意义光是自我消耗的事情。但是努力和积累永远不是卷，更不是不想奋斗的借口。如果卷真的避免不了，那一定要“卷的有价值”。</p><br>\r\n						<p>比起内卷，其实我更鼓励大家“外卷”。外卷到意思就是当你在某个领域积累了一定经验后，要试着跳出当前的圈子，去探索一下外面的世界。</p><br>\r\n						<p class=\"p\">比如你是一个前端程序员，尽管你的 Title\r\n							是“前端”，但你不能一直只在前端的圈子里打转。作为一个程序员，只要涉及到程序开发的，前端后端产品服务器，你都要接触，这样你的视野才会变的更广，看问题的角度更多，随之你的判断能力和才会得到提升。\r\n						</p><br>\r\n						<p>大家总觉得，一个前端就该专攻\r\n							js，只有准备向全栈发展才会接触后端。其实不是的，接触并不代表一定要做，了解整体可以培养你的全局观。比如你遇到了一个难题，你只会在前端的范畴研究，可能这个问题在后端处理只是一行代码的事情，可你不知道呀，所以会浪费很多时间。\r\n						</p><br>\r\n\r\n						<h2>代码片段</h2>\r\n						<div class=\"pre\">\r\n							<!-- 代码高亮 -->\r\n							<pre style=\"margin:0;\">\r\n									<b><code contenteditable=\"false\" class=\"language-javascript\" >\r\n function unique(arr) {\r\n    if (!Array.isArray(arr)) {\r\n        console.log(\'type error!\')\r\n        return\r\n    }\r\n    var array = [];\r\n    for (var i = 0; i < arr.length; i++) {\r\n        if (array .indexOf(arr[i]) === -1) {\r\n            array .push(arr[i])\r\n        }\r\n    }\r\n    return array;\r\n }\r\n									</code></b>\r\n    							</pre>\r\n							<!-- 调用代码高亮 -->\r\n							<script>\r\n								hljs.initHighlightingOnLoad();\r\n							</script>\r\n						</div>', 0, 0, '2022-08-26 21:00:51', 0, '把镜头拉回到使用Spring后最大变化是什么？先从使用Spring的角度来看源码，好像事情也并没有那么错综复杂。', 'https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/d12a45feaa59431fb4addf63f5719f37~tplv-k3u1fbpfcp-zoom-crop-mark:3024:3024:3024:1702.awebp?');

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments`  (
  `comment_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` bigint(0) NOT NULL COMMENT '发表用户ID',
  `article_id` bigint(0) NOT NULL COMMENT '评论博文ID',
  `comment_like_count` bigint(0) NOT NULL COMMENT '点赞数',
  `comment_date` datetime(0) NULL DEFAULT NULL COMMENT '评论日期',
  `comment_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `parent_comment_id` bigint(0) NOT NULL COMMENT '父评论ID',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE,
  INDEX `comment_date`(`comment_date`) USING BTREE,
  INDEX `parent_comment_id`(`parent_comment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_labels
-- ----------------------------
DROP TABLE IF EXISTS `t_labels`;
CREATE TABLE `t_labels`  (
  `label_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `label_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `label_alias` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签别名',
  `label_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签描述',
  PRIMARY KEY (`label_id`) USING BTREE,
  INDEX `label_name`(`label_name`) USING BTREE,
  INDEX `label_alias`(`label_alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_labels
-- ----------------------------
INSERT INTO `t_labels` VALUES (3, '置顶', 'tags_red', '最上方显示');
INSERT INTO `t_labels` VALUES (4, '推荐', 'tags_yellow', '浏览量多');
INSERT INTO `t_labels` VALUES (5, '精品', 'tags_purple', '点赞数多');

-- ----------------------------
-- Table structure for t_set_artitle_label
-- ----------------------------
DROP TABLE IF EXISTS `t_set_artitle_label`;
CREATE TABLE `t_set_artitle_label`  (
  `article_id` bigint(0) NOT NULL COMMENT '文章ID',
  `label_id` bigint(0) NOT NULL,
  INDEX `label_id`(`label_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_set_artitle_label
-- ----------------------------
INSERT INTO `t_set_artitle_label` VALUES (3, 3);
INSERT INTO `t_set_artitle_label` VALUES (3, 4);
INSERT INTO `t_set_artitle_label` VALUES (3, 5);
INSERT INTO `t_set_artitle_label` VALUES (4, 3);

-- ----------------------------
-- Table structure for t_set_artitle_sort
-- ----------------------------
DROP TABLE IF EXISTS `t_set_artitle_sort`;
CREATE TABLE `t_set_artitle_sort`  (
  `article_id` bigint(0) NOT NULL COMMENT '文章ID',
  `sort_id` bigint(0) NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`article_id`, `sort_id`) USING BTREE,
  INDEX `sort_id`(`sort_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_set_artitle_sort
-- ----------------------------
INSERT INTO `t_set_artitle_sort` VALUES (3, 2);
INSERT INTO `t_set_artitle_sort` VALUES (4, 3);
INSERT INTO `t_set_artitle_sort` VALUES (5, 3);

-- ----------------------------
-- Table structure for t_sorts
-- ----------------------------
DROP TABLE IF EXISTS `t_sorts`;
CREATE TABLE `t_sorts`  (
  `sort_id` bigint(0) NOT NULL COMMENT '分类ID',
  `sort_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `sort_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类别名',
  `sort_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '分类描述',
  `parent_sort_id` bigint(0) NULL DEFAULT NULL COMMENT '父分类ID',
  PRIMARY KEY (`sort_id`) USING BTREE,
  INDEX `sort_name`(`sort_name`) USING BTREE,
  INDEX `sort_alias`(`sort_alias`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sorts
-- ----------------------------
INSERT INTO `t_sorts` VALUES (1, '首页', './index.html', 'iconfont icon-shouye', NULL);
INSERT INTO `t_sorts` VALUES (2, '开发记录', './index.html', 'iconfont icon-bijiben1', NULL);
INSERT INTO `t_sorts` VALUES (3, '大后端', './index.html', 'iconfont icon-yuandaima', NULL);
INSERT INTO `t_sorts` VALUES (4, '框架', './index.html', 'iconfont icon-zuzhijiagou1', NULL);
INSERT INTO `t_sorts` VALUES (5, '扩展', './index.html', 'iconfont icon-zhuti1', NULL);
INSERT INTO `t_sorts` VALUES (6, 'Java', './index.html', '', 3);
INSERT INTO `t_sorts` VALUES (7, 'MySQL', './index.html', '', 3);
INSERT INTO `t_sorts` VALUES (8, 'Redis', './index.html', '', 3);
INSERT INTO `t_sorts` VALUES (9, 'MongoDB', './index.html', '', 3);
INSERT INTO `t_sorts` VALUES (10, 'ElasticSearch', './index.html', '', 3);
INSERT INTO `t_sorts` VALUES (11, 'Spring', './index.html', '', 4);
INSERT INTO `t_sorts` VALUES (12, 'SpringBoot', './index.html', '', 4);
INSERT INTO `t_sorts` VALUES (13, 'SpringCloud', './index.html', '', 4);
INSERT INTO `t_sorts` VALUES (14, 'MyBatis', './index.html', '', 4);
INSERT INTO `t_sorts` VALUES (15, 'MyBatis-Plus', './index.html', '', 4);
INSERT INTO `t_sorts` VALUES (16, '人脉圈', './index.html', '', 5);
INSERT INTO `t_sorts` VALUES (17, '朋友圈', './index.html', '', 5);
INSERT INTO `t_sorts` VALUES (18, '大数据', './index.html', '', 5);

-- ----------------------------
-- Table structure for t_user_friends
-- ----------------------------
DROP TABLE IF EXISTS `t_user_friends`;
CREATE TABLE `t_user_friends`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '标识ID',
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `user_friends_id` bigint(0) NOT NULL COMMENT '好友ID',
  `user_note` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '好友备注',
  `user_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '好友状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户IP',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户邮箱',
  `user_profile_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_registration_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `user_birthday` date NULL DEFAULT NULL COMMENT '用户生日',
  `user_age` tinyint(0) NULL DEFAULT NULL COMMENT '用户年龄',
  `user_telephone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
  `user_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_name`(`user_name`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE,
  INDEX `user_email`(`user_email`) USING BTREE,
  INDEX `user_telephone_number`(`user_telephone_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6938593101678600813 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (1, '127.0.0.1', 'czh', 'c4ca4238a0b923820dcc509a6f75849b', 'c262222zh@163.com', './image/user.png', NULL, NULL, NULL, '123', '1');
INSERT INTO `t_users` VALUES (2, '0:0:0:0:0:0:0:1', '陈治桦', '7694f4a66316e53c8cdd9d9954bd611d', '2622259725@qq.com', './image/user.png', '2022-08-25 23:11:02', NULL, NULL, '17377460224', 'qwer');
INSERT INTO `t_users` VALUES (3, '0:0:0:0:0:0:0:1', '陈治桦', 'c4ca4238a0b923820dcc509a6f75849b', 'c262222zh@163.com', './image/user.png', '2022-08-25 20:56:42', NULL, NULL, '10086', 'czh');

SET FOREIGN_KEY_CHECKS = 1;
