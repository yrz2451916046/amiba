/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : amiba

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-21 17:16:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for am_admin
-- ----------------------------
DROP TABLE IF EXISTS `am_admin`;
CREATE TABLE `am_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `pwd` char(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `auth` tinyint(4) NOT NULL DEFAULT '1',
  `photo` varchar(50) NOT NULL DEFAULT 'default.jpg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_admin
-- ----------------------------
INSERT INTO `am_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1', '2016-11-06/581ebc53859ea.jpg');
INSERT INTO `am_admin` VALUES ('10', 'sasadown', '4b871c40db6339036895aa5752c1469c', '1', '1', '2016-11-06/581ebeb3ce142.jpg');

-- ----------------------------
-- Table structure for am_adv
-- ----------------------------
DROP TABLE IF EXISTS `am_adv`;
CREATE TABLE `am_adv` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL DEFAULT '100.00',
  `url` char(50) NOT NULL,
  `des` text NOT NULL,
  `pic` char(255) NOT NULL,
  `place` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_adv
-- ----------------------------
INSERT INTO `am_adv` VALUES ('65', '78.00', 'study/admin.php/Adv/index.html', '       广告                         ', '2015-12-22/56796e4f89544.jpg', '3');
INSERT INTO `am_adv` VALUES ('49', '100.00', '__APP__type/index', '                 便宜实惠               ', '2015-12-20/56763f7aa4083.jpg', '0');
INSERT INTO `am_adv` VALUES ('50', '100.00', '__APP__type/index', '便宜实惠                       ', '2015-12-20/56763f6357bcf.jpg', '0');
INSERT INTO `am_adv` VALUES ('66', '435.00', 'study/admin.php/Adv/index.html', '           34543                     ', '2015-12-23/5679fc3faf79e.jpg', '0');
INSERT INTO `am_adv` VALUES ('61', '89.00', 'study/admin.php/Adv/index.html', '          广告                      ', '2015-12-22/56796e5faba95.jpg', '2');

-- ----------------------------
-- Table structure for am_advice
-- ----------------------------
DROP TABLE IF EXISTS `am_advice`;
CREATE TABLE `am_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `advice` text NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `relation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_advice
-- ----------------------------
INSERT INTO `am_advice` VALUES ('1', '5555555', '5555555', '19', '1450663850', 'ypl189@11.com');
INSERT INTO `am_advice` VALUES ('4', '11111111111', '1111111111111111', '27', '1450829421', '111@qq.com');
INSERT INTO `am_advice` VALUES ('5', '111111111', '111111111111', '27', '1450834632', '111@qq.com');

-- ----------------------------
-- Table structure for am_ambnews
-- ----------------------------
DROP TABLE IF EXISTS `am_ambnews`;
CREATE TABLE `am_ambnews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `abstract` varchar(255) NOT NULL COMMENT '摘要',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用  1- 激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_ambnews
-- ----------------------------
INSERT INTO `am_ambnews` VALUES ('3', '采购成本分析与谈判策略', '李某某', '2017-09-13/59b8dd1a0903b.png', '*供应链管理、采购管理、物流管理、计划管理、库存控制等部门管理人员', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;有何收获？&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*掌握与供应商在合作前、合作中的谈判策略、方法与技巧&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*了解采购谈判与基于供应链成本控制为目标的谈判者使命&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*掌握当今企业采购供应管理工作的方法及其方向&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*了解如何控制与降低企业采购成本的方法与技巧&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908896');
INSERT INTO `am_ambnews` VALUES ('4', '如何成为一个好的故事家', '赵某某', '2017-09-13/59b8dd573e752.png', '不想被人说成无逻辑的“话唠”或者想说说不清的人', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;有货倒不出；被人说成无逻辑的“话唠“；讲了半天没人听懂；明明对他很重要的内容，他也不愿意听？&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;怎样才能使表达更有感染力呢？&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;本课程从人性出发，研究受众偏好；从逻辑入手，构建故事思路；从风格入手，优化呈现方式，使平铺直叙变得有结构有层次有故事有画面，使你成为一个好的故事家。&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908882');
INSERT INTO `am_ambnews` VALUES ('5', '全面薪酬管理与方案设计', '唐某某', '2017-09-13/59b8dd8602871.jpg', '理解与实践全面薪酬方案设计与管理的流程、方法、工具与技能，提升工作质量与效率', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;第一模块：薪酬战略管理&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 薪酬与业务经营战略的关系&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 企业需要的薪酬方案是什么&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 薪酬战略在提高员工绩效管理中体现的价值如何&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 职位建筑在薪酬设计与管理的重要作用&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908861');
INSERT INTO `am_ambnews` VALUES ('6', '员工调岗调薪及调整工作地点中，万万不能犯的N个错误', '配某某', '2017-09-14/59b9ec2eae7c3.png', '针对调岗调薪中的各种调整，从异动合规风险、异动环境及主体分析方面切入', '&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;5、业务出售&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;6、员工不胜任工作&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;7、员工医疗期满&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;8、员工违纪失职&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;9、员工与同事结婚&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;10、员工提出辞职后，但尚未离职前&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908652');
INSERT INTO `am_ambnews` VALUES ('7', '采购成本分析与谈判策略', '近某某', '2017-09-18/59bfc51e6be83.png', '供应链管理、采购管理、物流管理、计划管理、库存控制等部门管理人员', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;掌握与供应商在合作前、合作中的谈判策略、方法与技巧&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*了解采购谈判与基于供应链成本控制为目标的谈判者使命&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*掌握当今企业采购供应管理工作的方法及其方向&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;*了解如何控制与降低企业采购成本的方法与技巧&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908624');
INSERT INTO `am_ambnews` VALUES ('8', '数据驱动人才管理决策', '高某某', '2017-09-18/59bfc54a1ce87.png', '数据分析是体现人力资源管理的产出与价值的关键手段', '&lt;span style=&quot;color:#666666;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;从反应性统计（Level1）、高级分析（Level2）、战略分析（Level3）到模拟预测（Level4），从数字统计到信息整合，从逻辑分析到循证思维的转变，从确定分析内容、形式、结论、改进建议直至做到行动计划，用数据驱动见解和创造价值。&lt;/span&gt;', '1', '1505908615');
INSERT INTO `am_ambnews` VALUES ('9', ' 学习数据分析内容模型和关键方法', '杨某某', '2017-09-18/59bfc576dabd9.png', ' HR关键价值层级：效率、效能与影响力', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; 反应性统计：整理、计算与展示&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 高级分析：动态分析、基准分析与相关分析&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 业务与战略决策：业务驱动因素分析、激励与留任因素分析&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 模拟和预测&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908604');
INSERT INTO `am_ambnews` VALUES ('10', '数据分析过程三要素：来源、技术和应用', '黄某某', '2017-09-18/59bfc59d181c5.jpg', '从HR六大模块的数据分析到经营者思维下的人才数据决策', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp;现场练习：相关性分析、回归与验证&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 案例：某医药集团公司的人效分析要点&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 案例：某民营制造企业利用人效分析展开薪酬优化策略&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505908595');
INSERT INTO `am_ambnews` VALUES ('11', '报告：三成白领难休假 超八成人旅行时会工作', '陈某某', '2017-09-20/59c2524e7306a.png', '从行业看，从事金融行业的人最为忙碌，38%的金融人去年没有将年假休完', '&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;img src=&quot;/thinkphp3.2.3/Public/Upload/image/20170920/20170920113356_97517.png&quot; alt=&quot;&quot; /&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;虽然互联网人常常自称“加班狗”，但报告显示，互联网人并不是最难休假的。互联网人尽管常常“通宵作战”，但休假时间相对灵活，仍能找到度假放松的机会。&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;img src=&quot;/amiba/Public/Upload/image/20170921/20170921005008_58960.png&quot; alt=&quot;&quot; width=&quot;900&quot; height=&quot;500&quot; title=&quot;&quot; align=&quot;left&quot; /&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;从行业看，从事金融行业的人最为忙碌，&lt;span&gt;38%&lt;/span&gt;的金融人去年没有将年假休完，远高于看似“披星戴月”的互联网行业。对于从事金融行业的上班族来说，巨大的&lt;span&gt;KPI&lt;/span&gt;压力是阻碍他们出去旅游的最大绊脚石。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;在大多上班族看来，教育行业、媒体行业和娱乐行业的从业者拥有最多的假期，能够更多地旅行。然而数据显示，每年旅游次数最多的却反而是从事商业服务的上班族，如从事咨询、法律、检测、认证、中介服务等行业从业者，也就是常说的“乙方”——年均出游&lt;span&gt;3.8&lt;/span&gt;次。相比之下，因为假期相对集中，单次出游时长较长，从事教育或培训的上班族年均仅出游&lt;span&gt;2.9&lt;/span&gt;次。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;分岗位来看，从事产品研发、工程开发和项目管理岗位的人员，以及人力资源及财务人员，可能是一个公司里除老板以外最忙的人，他们中间，全年未休完年假的人数占比最高，分别达到&lt;span&gt;38.2%&lt;/span&gt;、&lt;span&gt;37.7%&lt;/span&gt;和&lt;span&gt;35.4%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;从城市来看，上海上班族最难休假，&lt;span&gt;37%&lt;/span&gt;的人没有将去年的年假休完。相比之下，北京和广州的上班族比较幸福，没有将年假休完的人群分别仅占到&lt;span&gt;28%&lt;/span&gt;和&lt;span&gt;29%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;88%&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;白领在旅行中工作，出差频次远高于旅行&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;另一个现实是，大多数上班族仍然会在旅途中工作。数据显示，仅有&lt;span&gt;12%&lt;/span&gt;的人会在旅途中屏蔽所有工作上的信息，来一场全身心放松的旅行。绝大多数人都需要在旅行中处理工作。比如，&lt;span&gt;64%&lt;/span&gt;的人需要通过手机处理工作，回复工作上的邮件和信息，甚至要来几场电话会议。&lt;span&gt;41%&lt;/span&gt;的上班族甚至会携带电脑去旅游，还会在旅途中随时抽时间办公，尽管这并不是一次商务旅行。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;虽然假期在不断增加，中国人的度假旅行频次，却远低于差旅频次。中国白领年均私人旅行的次数仅为&lt;span&gt;2.8&lt;/span&gt;次，但年均出差却达到&lt;span&gt;4.7&lt;/span&gt;次。过去一年中，近四成&lt;span&gt;(38%)&lt;/span&gt;的上班族出差次数超过&lt;span&gt;5&lt;/span&gt;次，相比之下，年均私人旅行&lt;span&gt;5&lt;/span&gt;次以上的上班族仅占到&lt;span&gt;10%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;如何休假考验“职场情商”，过半白领选择低调&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;按照《职工带薪年休假条例》规定，工作&lt;span&gt;1&lt;/span&gt;年以上，职工可享受为期至少&lt;span&gt;5&lt;/span&gt;天的带薪年休假。但现实职场中，相当一部分上班族休不完年假。报告显示，&lt;span&gt;35%&lt;/span&gt;的上班族表示，不休假的原因是没有其他同事能接手自己的工作。休不了假的另一大原因是无人陪伴。&lt;span&gt;33%&lt;/span&gt;的白领没有将年假休完的原因之一是朋友、家人无法凑在一起休假。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;值得注意的是，如何休假已经成为考验“职场情商”的重要环节。“休假旅行不仅关乎着人际关系，甚至可能影响晋升空间。”蚂蜂窝数据研究中心负责人马禹涛分析称，当今大多数白领存在这样的心理：申请休假前要看上司眼色，准备休假时又要考虑是否要告诉身边的同事。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;报告显示，中国白领的“职场智慧”首先来自于朋友圈分组，在朋友圈屏蔽度假信息已经成为趋势。&lt;span&gt;10%&lt;/span&gt;的受访者表示要低调休假，绝不会告诉身边的同事。另&lt;span&gt;46%&lt;/span&gt;的人会表现得相对谨慎，仅将要休假旅行的讯息分享给周围关系亲密的同事。有趣的是，由于工作性质的原因，领导们则一般无法隐瞒他们的休假旅行，&lt;span&gt;64%&lt;/span&gt;总监级别的白领必须将休假的消息“昭告天下”。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;寻美食玩蹦极，白领度假解压不仅靠“血拼？”&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;中国上班族偏爱有准备的旅行，他们将工作中的严谨和习惯延伸进旅行，学会精打细算地享受，在有限的时间和预算里，将旅行的快乐最大化。报告显示，&lt;span&gt;54%&lt;/span&gt;的白领会在出发前查看很多旅游攻略，获取灵感，并按照自己的喜好规划行程。粗略看下攻略的人群占到&lt;span&gt;41%&lt;/span&gt;，他们不会细致安排自己行程，大致了解目的地情况后跟着感觉走。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;不同职位级别的人对旅游攻略的依赖度各不相同，普通职员对旅游攻略的依赖远高于高层管理人员——&lt;span&gt;61%&lt;/span&gt;的普通职员习惯根据攻略中提供的信息制作行程规划，然而仅有&lt;span&gt;37%&lt;/span&gt;的总监及以上级别的人持相同态度。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;虽然互联网人常常自称“加班狗”，但报告显示，互联网人并不是最难休假的。互联网人尽管常常“通宵作战”，但休假时间相对灵活，仍能找到度假放松的机会。&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;从行业看，从事金融行业的人最为忙碌，&lt;span&gt;38%&lt;/span&gt;的金融人去年没有将年假休完，远高于看似“披星戴月”的互联网行业。对于从事金融行业的上班族来说，巨大的&lt;span&gt;KPI&lt;/span&gt;压力是阻碍他们出去旅游的最大绊脚石。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;在大多上班族看来，教育行业、媒体行业和娱乐行业的从业者拥有最多的假期，能够更多地旅行。然而数据显示，每年旅游次数最多的却反而是从事商业服务的上班族，如从事咨询、法律、检测、认证、中介服务等行业从业者，也就是常说的“乙方”——年均出游&lt;span&gt;3.8&lt;/span&gt;次。相比之下，因为假期相对集中，单次出游时长较长，从事教育或培训的上班族年均仅出游&lt;span&gt;2.9&lt;/span&gt;次。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;分岗位来看，从事产品研发、工程开发和项目管理岗位的人员，以及人力资源及财务人员，可能是一个公司里除老板以外最忙的人，他们中间，全年未休完年假的人数占比最高，分别达到&lt;span&gt;38.2%&lt;/span&gt;、&lt;span&gt;37.7%&lt;/span&gt;和&lt;span&gt;35.4%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;从城市来看，上海上班族最难休假，&lt;span&gt;37%&lt;/span&gt;的人没有将去年的年假休完。相比之下，北京和广州的上班族比较幸福，没有将年假休完的人群分别仅占到&lt;span&gt;28%&lt;/span&gt;和&lt;span&gt;29%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;88%&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;白领在旅行中工作，出差频次远高于旅行&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;另一个现实是，大多数上班族仍然会在旅途中工作。数据显示，仅有&lt;span&gt;12%&lt;/span&gt;的人会在旅途中屏蔽所有工作上的信息，来一场全身心放松的旅行。绝大多数人都需要在旅行中处理工作。比如，&lt;span&gt;64%&lt;/span&gt;的人需要通过手机处理工作，回复工作上的邮件和信息，甚至要来几场电话会议。&lt;span&gt;41%&lt;/span&gt;的上班族甚至会携带电脑去旅游，还会在旅途中随时抽时间办公，尽管这并不是一次商务旅行。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;虽然假期在不断增加，中国人的度假旅行频次，却远低于差旅频次。中国白领年均私人旅行的次数仅为&lt;span&gt;2.8&lt;/span&gt;次，但年均出差却达到&lt;span&gt;4.7&lt;/span&gt;次。过去一年中，近四成&lt;span&gt;(38%)&lt;/span&gt;的上班族出差次数超过&lt;span&gt;5&lt;/span&gt;次，相比之下，年均私人旅行&lt;span&gt;5&lt;/span&gt;次以上的上班族仅占到&lt;span&gt;10%&lt;/span&gt;。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;如何休假考验“职场情商”，过半白领选择低调&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;按照《职工带薪年休假条例》规定，工作&lt;span&gt;1&lt;/span&gt;年以上，职工可享受为期至少&lt;span&gt;5&lt;/span&gt;天的带薪年休假。但现实职场中，相当一部分上班族休不完年假。报告显示，&lt;span&gt;35%&lt;/span&gt;的上班族表示，不休假的原因是没有其他同事能接手自己的工作。休不了假的另一大原因是无人陪伴。&lt;span&gt;33%&lt;/span&gt;的白领没有将年假休完的原因之一是朋友、家人无法凑在一起休假。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;值得注意的是，如何休假已经成为考验“职场情商”的重要环节。“休假旅行不仅关乎着人际关系，甚至可能影响晋升空间。”蚂蜂窝数据研究中心负责人马禹涛分析称，当今大多数白领存在这样的心理：申请休假前要看上司眼色，准备休假时又要考虑是否要告诉身边的同事。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;报告显示，中国白领的“职场智慧”首先来自于朋友圈分组，在朋友圈屏蔽度假信息已经成为趋势。&lt;span&gt;10%&lt;/span&gt;的受访者表示要低调休假，绝不会告诉身边的同事。另&lt;span&gt;46%&lt;/span&gt;的人会表现得相对谨慎，仅将要休假旅行的讯息分享给周围关系亲密的同事。有趣的是，由于工作性质的原因，领导们则一般无法隐瞒他们的休假旅行，&lt;span&gt;64%&lt;/span&gt;总监级别的白领必须将休假的消息“昭告天下”。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#404040;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;strong&gt;&lt;span&gt;&lt;span style=&quot;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#333333;&quot;&gt;寻美食玩蹦极，白领度假解压不仅靠“血拼？”&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;中国上班族偏爱有准备的旅行，他们将工作中的严谨和习惯延伸进旅行，学会精打细算地享受，在有限的时间和预算里，将旅行的快乐最大化。报告显示，&lt;span&gt;54%&lt;/span&gt;的白领会在出发前查看很多旅游攻略，获取灵感，并按照自己的喜好规划行程。粗略看下攻略的人群占到&lt;span&gt;41%&lt;/span&gt;，他们不会细致安排自己行程，大致了解目的地情况后跟着感觉走。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;background-color:rgba(238, 238, 238, 0.38);&quot;&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-size:11.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#595959;&quot;&gt;不同职位级别的人对旅游攻略的依赖度各不相同，普通职员对旅游攻略的依赖远高于高层管理人员——&lt;span&gt;61%&lt;/span&gt;的普通职员习惯根据攻略中提供的信息制作行程规划，然而仅有&lt;span&gt;37%&lt;/span&gt;的总监及以上级别的人持相同态度。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:9.0pt;font-family:&amp;quot;微软雅黑&amp;quot;,&amp;quot;sans-serif&amp;quot;;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;&amp;nbsp;&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505961482');

-- ----------------------------
-- Table structure for am_app
-- ----------------------------
DROP TABLE IF EXISTS `am_app`;
CREATE TABLE `am_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(11) NOT NULL,
  `time` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_app
-- ----------------------------
INSERT INTO `am_app` VALUES ('22', 'unknow', '1450663524', '安卓版', '127.0.0.1');
INSERT INTO `am_app` VALUES ('23', 'unknow', '1450685512', 'iPhone版', '127.0.0.1');
INSERT INTO `am_app` VALUES ('24', 'unknow', '1450769296', 'iPhone版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('25', 'unknow', '1450769299', 'iPad版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('26', '26', '1450769319', 'iPad版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('27', '27', '1450770643', 'iPhone版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('28', '27', '1450770648', 'iPhone版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('29', '27', '1450829344', 'iPad版', '192.168.121.112');
INSERT INTO `am_app` VALUES ('30', '27', '1450834654', 'iPad版', '192.168.121.112');

-- ----------------------------
-- Table structure for am_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `am_auth_group`;
CREATE TABLE `am_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_auth_group
-- ----------------------------
INSERT INTO `am_auth_group` VALUES ('3', '超级管理', '1', '1,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,3');
INSERT INTO `am_auth_group` VALUES ('10', '用户管理', '1', '1,2,4,5,6,7');

-- ----------------------------
-- Table structure for am_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `am_auth_group_access`;
CREATE TABLE `am_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_auth_group_access
-- ----------------------------
INSERT INTO `am_auth_group_access` VALUES ('3', '3');
INSERT INTO `am_auth_group_access` VALUES ('4', '1');
INSERT INTO `am_auth_group_access` VALUES ('5', '2');
INSERT INTO `am_auth_group_access` VALUES ('6', '7');
INSERT INTO `am_auth_group_access` VALUES ('7', '5');
INSERT INTO `am_auth_group_access` VALUES ('8', '8');
INSERT INTO `am_auth_group_access` VALUES ('9', '3');
INSERT INTO `am_auth_group_access` VALUES ('10', '3');

-- ----------------------------
-- Table structure for am_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `am_auth_rule`;
CREATE TABLE `am_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_auth_rule
-- ----------------------------
INSERT INTO `am_auth_rule` VALUES ('1', 'index/index', '后台首页', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('2', 'User/index', '用户首页', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('4', 'user/mod', '用户的修改', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('5', 'user/add', '用户的添加', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('6', 'user/del', '用户的删除', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('7', 'user/status', '用户的状态', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('8', 'admin/index', '管理员列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('9', 'admin/add', '添加管理员', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('10', 'admin/mod', '修改管理员', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('11', 'admin/del', '管理员删除', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('12', 'admin/status', '管理员状态', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('13', 'auth/ruleIndex', '权限列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('14', 'auth/addRule', '添加权限', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('15', 'auth/modRule', '修改权限', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('16', 'auth/delRule', '删除权限', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('17', 'auth/modStatus', '修改状态', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('18', 'adv/index', '广告列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('19', 'adv/add', '添加广告', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('20', 'adv/mod', '修改广告', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('21', 'adv/del', '删除广告', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('22', 'config/index', '网站配置的列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('23', 'config/status', '修改网站状态', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('24', 'config/mod', '修改网站配置', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('25', 'group/index', '管理组列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('26', 'group/mod', '修改管理组', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('27', 'group/add', '添加管理组', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('28', 'group/del', '删除管理组', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('29', 'group/status', '修改管理组状态', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('30', 'advice/index', '反馈意见列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('31', 'advice/del', '删除反馈意见', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('32', 'course/index', '目录列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('33', 'course/mod', '修改目录', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('34', 'course/add', '添加目录', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('35', 'course/del', '删除目录', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('36', 'news/index', '新闻列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('37', 'news/add', '添加新闻', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('38', 'news/mod', '修改新闻', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('39', 'news/del', '删除新闻', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('40', 'organ./index', '机构列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('41', 'organ/add', '添加机构', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('42', 'organ/mod', '修改机构', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('43', 'organ/del', '删除机构', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('44', 'teacher/index', '讲师列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('45', 'teacher/add', '添加讲师', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('46', 'teacher/mod', '修改讲师', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('47', 'teacher/del', '删除讲师', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('48', 'type/index', '视频分类列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('49', 'type/add_parent', '添加一级分类', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('50', 'type/add_son', '添加二级分类', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('51', 'type/select', '查询二级分类内容', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('52', 'type/del_video', '删除二级分类视频', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('53', 'type/add_video', '添加视频', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('54', 'type/del', '删除分类', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('55', 'type/mod_parent', '修改一级分类', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('56', 'type/mod_son', '修改二级分类', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('57', 'video/index', '视频列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('58', 'video/mod', '修改视频', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('60', 'video/del', '删除视频', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('61', 'user/select', '查询用户详情', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('62', 'download/index', '下载列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('64', 'info/index', '公告列表', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('65', 'info/add', '添加公告', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('66', 'info/mod', '修改公告', '1', '1', '');
INSERT INTO `am_auth_rule` VALUES ('68', 'info/del', '删除公告', '1', '1', '');

-- ----------------------------
-- Table structure for am_carousel
-- ----------------------------
DROP TABLE IF EXISTS `am_carousel`;
CREATE TABLE `am_carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用  1-激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_carousel
-- ----------------------------
INSERT INTO `am_carousel` VALUES ('1', '业务导向的工业品品牌战略与组织', 'www.baidu.com', '2017-09-13/59b8ec6861942.png', '1', '1505291368');
INSERT INTO `am_carousel` VALUES ('2', '供应商开发、评估与管理', 'www.baidu.com', '2017-09-13/59b8ecd48894c.png', '1', '1505291476');
INSERT INTO `am_carousel` VALUES ('3', '基于3P的薪酬体系建立', 'www.baidu.com', '2017-09-13/59b8ed00a1bee.jpg', '1', '1505291520');
INSERT INTO `am_carousel` VALUES ('4', '第五项修炼——系统思考应用实务', 'www.baidu.com', '2017-09-13/59b8ed1d642bd.png', '1', '1505291549');
INSERT INTO `am_carousel` VALUES ('5', '非人力资源经理的人力资源管理', 'www.baidu.com', '2017-09-14/59b9e52063954.png', '1', '1505355040');

-- ----------------------------
-- Table structure for am_category
-- ----------------------------
DROP TABLE IF EXISTS `am_category`;
CREATE TABLE `am_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用 1-激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_category
-- ----------------------------
INSERT INTO `am_category` VALUES ('1', '阿米巴介绍', '1', '1505281744');
INSERT INTO `am_category` VALUES ('2', '阿米巴课程', '1', '1505281734');
INSERT INTO `am_category` VALUES ('3', '阿米巴内训', '1', '1505281767');
INSERT INTO `am_category` VALUES ('4', '阿米巴研究', '1', '1505281780');

-- ----------------------------
-- Table structure for am_config
-- ----------------------------
DROP TABLE IF EXISTS `am_config`;
CREATE TABLE `am_config` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_config
-- ----------------------------
INSERT INTO `am_config` VALUES ('9', '莎莎源码论坛【http://bbs.sasadown.cn】', '', '', '', '2016-11-06/581ebddb80d6e.png', '1');

-- ----------------------------
-- Table structure for am_course
-- ----------------------------
DROP TABLE IF EXISTS `am_course`;
CREATE TABLE `am_course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL,
  `name` char(32) NOT NULL,
  `url` char(50) NOT NULL DEFAULT 'www.itxdl.com',
  `tid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_course
-- ----------------------------
INSERT INTO `am_course` VALUES ('35', '126', ' 软件的设置与准备工作', '3424', '0', '34');
INSERT INTO `am_course` VALUES ('30', '126', '新的版本新的生产力', '___APP___Paly/index', '0', '3333');
INSERT INTO `am_course` VALUES ('34', '127', ' 软件的设置与准备工作', '324', '0', '344');
INSERT INTO `am_course` VALUES ('31', '125', '新的版本新的生产力', '4324', '0', '32');
INSERT INTO `am_course` VALUES ('33', '124', '新的版本新的生产力', '3434', '0', '343');
INSERT INTO `am_course` VALUES ('32', '125', '新的版本新的生产力', '23432', '0', '43');
INSERT INTO `am_course` VALUES ('29', '127', 'eeeeeeeeee', '___APP___Paly/index', '0', '2222');
INSERT INTO `am_course` VALUES ('36', '125', ' 软件的设置与准备工作', '434', '0', '343');
INSERT INTO `am_course` VALUES ('37', '124', ' 软件的设置与准备工作', '34', '0', '34');
INSERT INTO `am_course` VALUES ('38', '127', '其他编辑小技巧b（还有，不要在评价区问问题，因为那样我看不到', '32432', '0', '32');
INSERT INTO `am_course` VALUES ('39', '126', '其他编辑小技巧b（还有，不要在评价区问问题，因为那样我看不到', '434', '0', '43');
INSERT INTO `am_course` VALUES ('40', '124', '其他编辑小技巧b（还有，不要在评价区问问题，因为那样我看不到', '3434', '0', '234');
INSERT INTO `am_course` VALUES ('41', '127', '快捷键 快速访问栏', '545', '0', '54');
INSERT INTO `am_course` VALUES ('42', '126', 'qqqqqqqqqqq', '___APP___Paly/index', '0', '99999999');
INSERT INTO `am_course` VALUES ('48', '125', '广告', '', '0', '0');
INSERT INTO `am_course` VALUES ('49', '126', 'aspku测试', '', '0', '0');
INSERT INTO `am_course` VALUES ('50', '0', '士大夫', '', '0', '0');

-- ----------------------------
-- Table structure for am_coursenote
-- ----------------------------
DROP TABLE IF EXISTS `am_coursenote`;
CREATE TABLE `am_coursenote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `content` char(255) NOT NULL,
  `ntime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_coursenote
-- ----------------------------

-- ----------------------------
-- Table structure for am_coursereply
-- ----------------------------
DROP TABLE IF EXISTS `am_coursereply`;
CREATE TABLE `am_coursereply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `content` char(255) NOT NULL,
  `reply_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_coursereply
-- ----------------------------

-- ----------------------------
-- Table structure for am_coursetalk
-- ----------------------------
DROP TABLE IF EXISTS `am_coursetalk`;
CREATE TABLE `am_coursetalk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `descriptione` char(255) NOT NULL DEFAULT '欢迎进入课程讨论区，畅所欲言吧!',
  `content` char(255) NOT NULL,
  `talk_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_coursetalk
-- ----------------------------

-- ----------------------------
-- Table structure for am_incourse
-- ----------------------------
DROP TABLE IF EXISTS `am_incourse`;
CREATE TABLE `am_incourse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `abstract` varchar(255) NOT NULL COMMENT '摘要',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用 1-激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_incourse
-- ----------------------------
INSERT INTO `am_incourse` VALUES ('5', '绩效变革：失败案例与创新实践', '2017-09-13/59b8d80c002ba.png', '效管理的失败案例讲述了EPM的三个核心要素：绩效领导力、有效设计与执行。', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;2.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 价值观引导而非绩效指标约束&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;3.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 对接动态关键目标，而非常态工作职责&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;4.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 对接激励因子，发展“人才”而非管理“坏孩子”&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;5.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 平衡绩效与“能力、潜力、任职资格”等人才管理要素&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;6.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 平衡绩效与“计划、会议、目标、盘点、述职”等支撑要素&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505286156');
INSERT INTO `am_incourse` VALUES ('6', '全面薪酬管理与方案设计', '2017-09-13/59b8d87c87723.png', '理解与实践全面薪酬方案设计与管理的流程、方法、工具与技能，提升工作质量与效率', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 薪酬与业务经营战略的关系&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 企业需要的薪酬方案是什么&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 薪酬战略在提高员工绩效管理中体现的价值如何&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 职位建筑在薪酬设计与管理的重要作用&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 简介职位管理体系&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 没有分配的公平性就没有激励性&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505286268');
INSERT INTO `am_incourse` VALUES ('7', '打造前瞻性的人才梯队与继任计划', '2017-09-14/59b9e1ba8c24f.png', '知晓打造人才梯队要做的“定义、评鉴、发展”三项核心工作 ', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;为何参加？&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;span&gt;&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;随着企业面对环境的快速变化与外部竞争的压力，单单为员工提供培训满足不了业务的需求，系统打造人才梯队成为很多企业关注的重点。本课程帮助你了解打造人才梯队的关键任务，及可选方法。&lt;/span&gt; \r\n&lt;/p&gt;', '1', '1505354170');
INSERT INTO `am_incourse` VALUES ('8', '寻找有针对性的管理激励方案', '2017-09-18/59bfb8daa5f19.png', '不一样的新生代（案例与数据解析）', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;margin-left:14.2pt;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;text-indent:-14.2pt;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;1.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;普遍认知的新生代&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;margin-left:14.2pt;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;text-indent:-14.2pt;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;2.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;新生代普遍的人格特质&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;3. &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;新生代主流价值观&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;margin-left:16.45pt;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;text-indent:-16.45pt;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;4.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;新生代主流职业动机&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505736922');
INSERT INTO `am_incourse` VALUES ('9', '从培训游戏到游戏化学习', '2017-09-18/59bfb92018a4b.png', '提升学习意愿和参与度的游戏设计策略；', '&lt;span style=&quot;color:#666666;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;是否经常困惑自己的游戏设计不是那么契合培训内容？对于培训目标的达成起不了很大的作用？其实在培训中设计一套与目标相匹配的游戏非常重要，既能给参训者耳目一新的感觉，又能让培训效果直接传递给参训者。何乐而不为呢？&lt;/span&gt;', '1', '1505736992');
INSERT INTO `am_incourse` VALUES ('10', 'HR如何成为业务伙伴', '2017-09-18/59bfb94b5ac4e.png', '对HR支持业务发展有更高期望的HR总监、经理、主管', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 知晓HRBP的角色由来，能够说出HRBP与业务价值关系，和角色在组织中定位&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 理解3H模型，能够反思分享个人实践中的信念和行动人力资源业务伙伴的信念和行动&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 学习探寻组织有效性的流程、方法，能够应用GRPR梳理组织有效性，并提供有效的解决方案&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505737035');
INSERT INTO `am_incourse` VALUES ('11', '战略解码--华为如何持续激发组织活力', '2017-09-18/59bfb98954ae2.png', '科学的战略规划，细致、可行的战略解码', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;掌握从公司级战略到一级部门、二级部门乃至关键岗位的自上而下分解和自下而上的沟通理解方法论；&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;掌握战略解码的通用流程、工具、方法及模板；&lt;/span&gt;&lt;span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;color:#666666;line-height:2;&quot;&gt;理解企业实践案例，导入到本企业中实践。&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505737097');
INSERT INTO `am_incourse` VALUES ('12', '富于影响力的商务演说', '2017-09-18/59bfb9b1b8064.png', '马上面临一个重要演讲或经常需要在众人面前演讲', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 知晓商务演说的不同类型及场景&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 理解商务演讲内容设计的思路和方法&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 学会告知型演讲的设计并演练技能&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;* 学会说服型演讲的设计并演练技能&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505737137');

-- ----------------------------
-- Table structure for am_info
-- ----------------------------
DROP TABLE IF EXISTS `am_info`;
CREATE TABLE `am_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_info
-- ----------------------------
INSERT INTO `am_info` VALUES ('11', '双十一活动通知', '价格半折', '1450592737');
INSERT INTO `am_info` VALUES ('13', '呦呦呦', '										语言', '1450593038');
INSERT INTO `am_info` VALUES ('14', 'uuuu', '										翻番 ', '1450594505');
INSERT INTO `am_info` VALUES ('15', '1111', '				1111111						', '1450834683');

-- ----------------------------
-- Table structure for am_lecturer
-- ----------------------------
DROP TABLE IF EXISTS `am_lecturer`;
CREATE TABLE `am_lecturer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `introduce` text NOT NULL COMMENT '介绍',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用  1-激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_lecturer
-- ----------------------------
INSERT INTO `am_lecturer` VALUES ('4', '陈老师', '&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;资深培训师、顾问&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;欧洲工商管理学院（INSEAD）MBA&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;美国伊利诺大学香槟分校人力资源硕士&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;宾州大学沃顿(Wharton)商学院薪酬管理专家(CMS)&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;变革管理三次方的讲师与开发者&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;美世（Mercer）咨询大中华区合伙人，也曾任职于华信惠悦(Watson Wyatt)伦敦分公司&lt;/span&gt;\r\n&lt;/p&gt;', '1', '1505358153');

-- ----------------------------
-- Table structure for am_news
-- ----------------------------
DROP TABLE IF EXISTS `am_news`;
CREATE TABLE `am_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(32) NOT NULL,
  `content` char(255) NOT NULL,
  `ntime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_news
-- ----------------------------
INSERT INTO `am_news` VALUES ('11', '和秋叶一起学职场技能', '       和秋叶一起学职场技能', '1450537862');
INSERT INTO `am_news` VALUES ('10', '手把手教你读财报', '              手把手教你读财报', '1450537869');
INSERT INTO `am_news` VALUES ('18', 'qwe', '                qwe', '1450834934');
INSERT INTO `am_news` VALUES ('13', '    18招教你运营好微信公众账号  雷子思维导图', '                 18招教你运营好微信公众账号  雷子思维导图', '1450537820');

-- ----------------------------
-- Table structure for am_organ
-- ----------------------------
DROP TABLE IF EXISTS `am_organ`;
CREATE TABLE `am_organ` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `organ` char(32) NOT NULL,
  `url` char(50) NOT NULL,
  `name` char(32) NOT NULL,
  `description` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_organ
-- ----------------------------
INSERT INTO `am_organ` VALUES ('23', '', 'study/admin.php/Organ/index.html', '河南', '         教育基地');
INSERT INTO `am_organ` VALUES ('17', '', 'study/admin.php/Organ/index.html', '开课吧', '             汽车驾驶大百科 影想力摄影教育 育英科技 浙江工业大学之江学院');
INSERT INTO `am_organ` VALUES ('24', '', 'study/admin.php/Organ/index.html', 'daxw', '          asd qwdsad');

-- ----------------------------
-- Table structure for am_teacher
-- ----------------------------
DROP TABLE IF EXISTS `am_teacher`;
CREATE TABLE `am_teacher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` char(255) NOT NULL DEFAULT 'default.jpg',
  `tname` char(32) NOT NULL,
  `organ` char(32) NOT NULL,
  `description` char(255) NOT NULL DEFAULT '德育教人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_teacher
-- ----------------------------
INSERT INTO `am_teacher` VALUES ('46', '2015-12-18/567372134c4b4.png', '钟平', '兄弟连', '                     德育教人');
INSERT INTO `am_teacher` VALUES ('45', '2015-12-18/56736e6d00000.png', '肖扬', '兄弟连', '德育教人');
INSERT INTO `am_teacher` VALUES ('49', '2015-12-18/5673f3b341663.png', '魏文庆', '兄弟连', '     网易高级总监，曾担任网易泡泡，网易UU产品总监，易信产品总经理，网易产品经理评审委员会委员');
INSERT INTO `am_teacher` VALUES ('50', '2015-12-18/5673f4b87e6f3.jpg', '彭国军', '兄弟连', '                     武汉大学计算机学院副教授，博士生导师，全国网络与信息安全防护峰会联合发起人');
INSERT INTO `am_teacher` VALUES ('47', '2015-12-18/56736ec22625a.png', '李涛', '兄弟连', '    德育教人');
INSERT INTO `am_teacher` VALUES ('52', '2015-12-22/56789b4989544.png', '李松', '兄弟连', '            aaaaaaaaaaaaaaaaaaaaaaaa');

-- ----------------------------
-- Table structure for am_traincourse
-- ----------------------------
DROP TABLE IF EXISTS `am_traincourse`;
CREATE TABLE `am_traincourse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `starttime` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `goout` varchar(255) NOT NULL COMMENT '出行',
  `area` varchar(100) NOT NULL,
  `language` varchar(30) NOT NULL,
  `consult` varchar(150) NOT NULL COMMENT '咨询',
  `icon` varchar(255) NOT NULL,
  `overview` text NOT NULL COMMENT '概述',
  `lecintroduce` text NOT NULL COMMENT '讲师介绍',
  `discount` text NOT NULL COMMENT '优惠',
  `outline` text NOT NULL COMMENT '纲要',
  `addtime` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 - 禁用  1-激活',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_traincourse
-- ----------------------------
INSERT INTO `am_traincourse` VALUES ('6', '经营哲学：阿米巴经营管理模式', '1505725200', '深圳富苑皇冠假日酒店', '地铁龙岗线老街站', '深圳', '中文', 'Vinky：021-61536928；13918141008', '2017-09-18/59bfa7bdd3bd7.png', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;&lt;span style=&quot;color:#666666;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;拥有十年以上的咨询和企业管理实战经验，为数十家企业进行人力资源管理 策划与咨询，研究领域涉及企业发展战略、人力资源规划、组织管理、薪酬 福利、绩效管理、中长期激励、员工发展与培训、人力资源信息化管理等多 方面。现任中央国务院国资委、天津人社局、广州人社局、宁波人社局等地 方薪酬调查项目指导人，擅长收入分配专题研究。&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–发型、脸部修饰及妆面要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–口气、体味、手部修饰要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–站姿、坐姿、行姿、蹲姿、综合肢体语言的魅力&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–哪些服饰不宜出现在职业场合&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–配饰的选择：饰品、眼镜、丝巾、鞋袜、包袋&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;互动练习：了解适合自己的个人色彩与风格&lt;/span&gt; \r\n&lt;/p&gt;', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–发型、脸部修饰及妆面要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–口气、体味、手部修饰要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–站姿、坐姿、行姿、蹲姿、综合肢体语言的魅力&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–哪些服饰不宜出现在职业场合&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–配饰的选择：饰品、眼镜、丝巾、鞋袜、包袋&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;互动练习：了解适合自己的个人色彩与风格&lt;/span&gt; \r\n&lt;/p&gt;', '&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–发型、脸部修饰及妆面要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–口气、体味、手部修饰要求&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–站姿、坐姿、行姿、蹲姿、综合肢体语言的魅力&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–哪些服饰不宜出现在职业场合&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;–配饰的选择：饰品、眼镜、丝巾、鞋袜、包袋&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; align=&quot;left&quot; style=&quot;color:#333333;font-family:微软雅黑, 宋体, Arial, Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;span style=&quot;line-height:2;color:#666666;&quot;&gt;互动练习：了解适合自己的个人色彩与风格&lt;/span&gt; \r\n&lt;/p&gt;', '1505809461', '1');

-- ----------------------------
-- Table structure for am_type
-- ----------------------------
DROP TABLE IF EXISTS `am_type`;
CREATE TABLE `am_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` char(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_type
-- ----------------------------
INSERT INTO `am_type` VALUES ('60', 'IT互联网', '0', '0');
INSERT INTO `am_type` VALUES ('61', '移动开发', '60', '0-60');
INSERT INTO `am_type` VALUES ('65', '办公技能', '64', '0-64');
INSERT INTO `am_type` VALUES ('62', '编程语言', '60', '0-60');
INSERT INTO `am_type` VALUES ('63', '产品设计', '60', '0-60');
INSERT INTO `am_type` VALUES ('64', '职场技能', '0', '0');
INSERT INTO `am_type` VALUES ('66', '职业考试', '64', '0-64');
INSERT INTO `am_type` VALUES ('67', '人力资源', '64', '0-64');
INSERT INTO `am_type` VALUES ('68', '语言学习', '0', '0');
INSERT INTO `am_type` VALUES ('69', '实用英语', '68', '0-68');
INSERT INTO `am_type` VALUES ('70', '韩语', '68', '0-68');
INSERT INTO `am_type` VALUES ('71', '托福雅思', '68', '0-68');
INSERT INTO `am_type` VALUES ('72', '兴趣爱好', '0', '0');
INSERT INTO `am_type` VALUES ('73', '唱歌', '72', '0-72');
INSERT INTO `am_type` VALUES ('74', '跳舞', '72', '0-72');
INSERT INTO `am_type` VALUES ('75', '摄影', '72', '0-72');
INSERT INTO `am_type` VALUES ('76', '更多分类', '0', '0');
INSERT INTO `am_type` VALUES ('77', '育儿', '76', '0-76');
INSERT INTO `am_type` VALUES ('78', '中学', '76', '0-76');
INSERT INTO `am_type` VALUES ('79', '大学', '76', '0-76');

-- ----------------------------
-- Table structure for am_user
-- ----------------------------
DROP TABLE IF EXISTS `am_user`;
CREATE TABLE `am_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pwd` char(32) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '1 -禁用  2-激活',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_user
-- ----------------------------
INSERT INTO `am_user` VALUES ('33', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2', '1505899441');

-- ----------------------------
-- Table structure for am_userdetail
-- ----------------------------
DROP TABLE IF EXISTS `am_userdetail`;
CREATE TABLE `am_userdetail` (
  `id` int(10) unsigned NOT NULL,
  `username` char(32) NOT NULL,
  `sex` enum('0','2','1') NOT NULL,
  `description` char(255) NOT NULL DEFAULT '这个家伙很懒，什么都没有留下!',
  `realname` char(32) DEFAULT '',
  `qq` int(11) NOT NULL,
  `special` char(100) DEFAULT '我知道你会的多',
  `edu` char(32) NOT NULL DEFAULT '高中',
  `cardid` varchar(17) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_userdetail
-- ----------------------------
INSERT INTO `am_userdetail` VALUES ('27', 'qqq', '1', '这个家伙很懒，什么都没有留下!																', '卢伟11111', '11111', '我知道你会的多1111', '大学', '1111111111111', '1111111');
INSERT INTO `am_userdetail` VALUES ('0', '', '0', '这个家伙很懒，什么都没有留下!', '', '0', '', '高中', null, null);
INSERT INTO `am_userdetail` VALUES ('18', 'hahaa为', '', '这个家伙很懒，什么都没有留下!																								', '', '0', '', '高中学', '', '');
INSERT INTO `am_userdetail` VALUES ('19', 'fsdf', '', '这个家伙很懒，什么都没有留下!																								', '', '0', '我知道你会的多', '高中学', '', '');
INSERT INTO `am_userdetail` VALUES ('20', '爱你', '', '这个家伙很懒，什么都没有留下!								', '喻佩玲', '594173463', '我知道你会的多', '大学', '121435456457', '15600449981');
INSERT INTO `am_userdetail` VALUES ('21', '李彦宏', '', '这个家伙很懒，什么都没有留下!																', '', '0', '我知道你会的多', '高中学', '', '');
INSERT INTO `am_userdetail` VALUES ('24', '', '0', '这个家伙很懒，什么都没有留下!', '', '0', '我知道你会的多', '高中', null, null);
INSERT INTO `am_userdetail` VALUES ('26', '卢伟', '1', '这个家伙很懒，什么都没有留下!								', '卢伟', '123123123', '呵呵', '大学', '2312321321', '12345678091');

-- ----------------------------
-- Table structure for am_video
-- ----------------------------
DROP TABLE IF EXISTS `am_video`;
CREATE TABLE `am_video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `title` char(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `video` char(255) NOT NULL DEFAULT 'pic.png',
  `number` int(11) NOT NULL DEFAULT '0',
  `des` char(255) NOT NULL DEFAULT '新手入门，简单易懂',
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of am_video
-- ----------------------------
INSERT INTO `am_video` VALUES ('126', '61', '46', ' 	30分钟轻松制作', '0.00', '2016-10-08/57f911054cc55.jpg', '8', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('125', '61', '46', '30分钟轻松制作', '0.00', '2015-12-18/567372da03d09.jpg', '1', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('124', '61', '46', '30分钟轻松制作', '0.00', '2015-12-18/56737294487ab.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('133', '61', '47', ' 	C++的应用', '222.00', '2015-12-18/567374926ea05.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('131', '65', '49', ' 	C++的应用', '33.00', '2015-12-18/5673742dc28cb.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('130', '65', '49', 'C++的应用', '100.00', '2015-12-18/567373e522551.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('129', '62', '46', 'PHP零基础教学', '0.00', '2015-12-18/5673737fdd40a.png', '3', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('128', '65', '45', ' 	30分钟轻松制作', '0.00', '2015-12-18/5673733a81b32.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('139', '61', '45', ' 	C++的应用', '12.00', '2015-12-18/567377b7c65d4.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('138', '61', '46', ' 	C++的应用', '23.00', '2015-12-18/567377a6d1cef.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('137', '61', '49', ' 	C++的应用', '544.00', '2015-12-18/5673859157bcf.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('136', '62', '47', ' 	C++的应用', '122.00', '2015-12-18/5673776ab34a7.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('134', '61', '47', ' 	C++的应用', '77.00', '2015-12-18/5673772d03d09.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('140', '65', '49', ' 	C++的应用', '90.00', '2015-12-18/567377cc89544.png', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('141', '65', '46', ' 	C++的应用', '43.00', '2015-12-18/567377eacdfe6.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('142', '65', '45', ' 	C++的应用', '65.00', '2015-12-18/567378032dc6c.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('143', '65', '45', '30分钟学会制作H5', '23.00', '2015-12-18/56737ca7487ab.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('144', '65', '49', ' 	30分钟学会制作H5', '55.00', '2015-12-18/567385710b71b.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('145', '65', '45', ' 	30分钟学会制作H5', '66.00', '2015-12-18/56738588ec82e.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('146', '62', '47', ' 	30分钟学会制作H5', '0.00', '2015-12-18/567385ba487ab.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('147', '62', '49', ' 	30分钟学会制作H5', '6.00', '2015-12-18/567385cf501bd.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('148', '62', '45', ' 	30分钟学会制作H5', '8.00', '2015-12-18/567385e6ca2dd.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('149', '63', '46', ' 	30分钟学会制作H5', '0.00', '2015-12-18/5673867f81b32.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('150', '63', '45', ' 	30分钟学会制作H5', '6.00', '2015-12-18/567386903d090.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('151', '63', '49', '21', '0.00', '2015-12-18/567386a08d24d.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('152', '63', '45', ' 	30分钟学会制作H5', '0.00', '2015-12-18/567386ae44aa2.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('153', '63', '49', ' 	30分钟学会制作H5', '4.00', '2015-12-18/567386c5ec82e.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('154', '61', '46', '30分钟学会制作H5', '2.00', '2015-12-18/567388c6cdfe6.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('155', '65', '45', 'style=&quot;color:red;font-size:20px&quot;', '0.00', '2015-12-18/567388eea037a.png', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('156', '65', '45', '30分钟学会制作H5', '0.00', '2015-12-18/56738909501bd.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('157', '65', '49', '30分钟学会制作H5', '5.00', '2015-12-18/5673891ae1113.jpg', '0', '新手入门，简单易懂', '64');
INSERT INTO `am_video` VALUES ('158', '62', '46', '30分钟学会制作H5', '0.00', '2015-12-18/5673895d57bcf.png', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('159', '62', '45', '30分钟学会制作H5', '8.00', '2015-12-18/5673896bf0537.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('160', '62', '45', '30分钟学会制作H5', '0.00', '2015-12-18/567389784c4b4.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('161', '62', '45', '30分钟学会制作H5', '34.00', '2015-12-18/56738984bebc2.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('162', '63', '46', '30分钟学会制作H5', '0.00', '2015-12-18/567389920b71b.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('163', '63', '49', '30分钟学会制作H5', '44.00', '2015-12-18/567389a481b32.jpg', '0', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('164', '63', '49', '30分钟学会制作H5', '0.00', '2015-12-18/567389ae07a12.jpg', '1', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('165', '63', '47', '30分钟学会制作H5', '66.00', '2015-12-18/567389ba7a120.jpg', '5', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('166', '73', '45', '零基础快速上手', '0.00', '2015-12-18/56738a695f5e1.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('167', '73', '45', '零基础快速上手', '1.00', '2015-12-18/56738a94d9701.png', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('168', '73', '45', '零基础快速上手', '0.00', '2015-12-18/56738aa922551.png', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('169', '74', '46', '零基础快速上手', '22.00', '2015-12-18/56738ab6e4e1c.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('170', '74', '45', '零基础快速上手', '0.00', '2015-12-18/56738ac95f5e1.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('171', '74', '45', '零基础快速上手', '66.00', '2015-12-18/56738ad966ff3.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('172', '75', '46', '零基础快速上手', '21.00', '2015-12-18/56738aed90f56.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('173', '75', '45', '零基础快速上手', '8.00', '2015-12-18/56738af8af79e.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('174', '75', '47', '零基础快速上手', '0.00', '2015-12-18/56738b0303d09.jpg', '0', '新手入门，简单易懂', '72');
INSERT INTO `am_video` VALUES ('179', '63', '45', '11', '11.00', '2015-12-22/5678e808af79e.png', '2', '新手入门，简单易懂', '60');
INSERT INTO `am_video` VALUES ('185', '66', '46', '测试', '11.00', '2016-10-08/57f90ffe1c5f2.jpg', '0', '新手入门，简单易懂', '64');

-- ----------------------------
-- Procedure structure for addScore
-- ----------------------------
DROP PROCEDURE IF EXISTS `addScore`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addScore`(_uid int, _amount float)
begin
	
	declare bonus float;
	select `value` into bonus from xy_params where name='scoreProp' limit 1;
	
	set bonus=bonus*_amount;
	
	if bonus then
		update xy_members u, xy_params p set u.score = u.score+bonus, u.scoreTotal=u.scoreTotal+bonus where u.`uid`=_uid;
	end if;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for auto_clearData
-- ----------------------------
DROP PROCEDURE IF EXISTS `auto_clearData`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `auto_clearData`()
begin

	declare endDate int;
	set endDate = UNIX_TIMESTAMP(now())-30*24*3600;

	-- 采集记录
	delete from xy_data where time < endDate;
	-- 会员登录session
	delete from xy_member_session where accessTime < endDate;
	-- 投注
	delete from xy_bets where kjTime < endDate and lotteryNo <> '';
	-- 管理员日志
	delete from xy_admin_log where actionTime < endDate;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cancelBet
-- ----------------------------
DROP PROCEDURE IF EXISTS `cancelBet`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cancelBet`(_zhuiHao varchar(255))
begin

	declare amount float;
	declare _uid int;
	declare _id int;
	declare _type int;
	
	declare info varchar(255) character set utf8;
	declare liqType int default 5;
	
	declare done int default 0;
	declare cur cursor for
	select id, `mode` * beiShu * actionNum * (fpEnable+1), `uid`, `type` from xy_bets where serializeId=_zhuiHao and lotteryNo='' and isDelete=0;
	declare continue HANDLER for not found set done=1;
	
	open cur;
		repeat
			fetch cur into _id, amount, _uid, _type;
			if not done then
				update xy_bets set isDelete=1 where id=_id;
				set info='追号撤单';
				call setCoin(amount, 0, _uid, liqType, _type, info, _id, '', '');
			end if;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clearData
-- ----------------------------
DROP PROCEDURE IF EXISTS `clearData`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clearData`(dateInt int(11))
begin

	declare endDate int;
	set endDate = dateInt;
	-- set endDate = unix_timestamp(dateString)+24*3600;

	-- 投注
	delete from xy_bets where kjTime < endDate and lotteryNo <> '';
	-- 帐变
	delete from xy_coin_log where actionTime < endDate;
	-- 管理员日志
	delete from xy_admin_log where actionTime < endDate;
	-- 会员登录session
	delete from xy_member_session where accessTime < endDate;
	-- 提现
	delete from xy_member_cash where actionTime < endDate and state <> 1;
	-- 充值
	delete from xy_member_recharge where actionTime < endDate and state <> 0;
	delete from xy_member_recharge where actionTime < endDate-24*3600 and state = 0;
	-- 开奖记录
	delete from xy_data where time < endDate;
		
	-- select 1, _fanDian, _parentId;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clearData2
-- ----------------------------
DROP PROCEDURE IF EXISTS `clearData2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clearData2`(dateInt int(11))
begin

	declare endDate int;
	set endDate = dateInt;

	-- 采集记录
	delete from xy_data where time < endDate;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for conComAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `conComAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conComAll`(baseAmount float, parentAmount float, parentLevel int)
begin

	declare conUid int;
	declare conUserName varchar(255);
	declare tjAmount float;
	declare done int default 0;	
	declare dateTime int default unix_timestamp(curdate());

	declare cur cursor for
	select b.uid, b.username, sum(b.`mode` * b.actionNum * b.beiShu) _tjAmount from xy_bets b where b.kjTime>=dateTime and b.uid not in(select distinct l.extfield0 from xy_coin_log l where l.liqType=53 and l.actionTime>=dateTime and l.extfield2=parentLevel) group by b.uid having _tjAmount>=baseAmount;
	declare continue HANDLER for not found set done=1;

	-- select baseAmount , parentAmount , parentLevel;
	
	open cur;
		repeat fetch cur into conUid, conUserName, tjAmount;
		-- select conUid, conUserName, tjAmount;
		if not done then
			call conComSingle(conUid, parentAmount, parentLevel);
		end if;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for conComSingle
-- ----------------------------
DROP PROCEDURE IF EXISTS `conComSingle`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conComSingle`(conUid int, parentAmount float, parentLevel int)
begin

	declare parentId int;
	declare superParentId int;
	declare conUserName varchar(255) character set utf8;
	declare p_username varchar(255) character set utf8;

	declare liqType int default 53;
	declare info varchar(255) character set utf8;

	declare done int default 0;
	declare cur cursor for
	select p.uid, p.parentId, p.username, u.username from xy_members p, xy_members u where u.parentId=p.uid and u.`uid`=conUid; 
	declare continue HANDLER for not found set done=1;

	open cur;
		repeat fetch cur into parentId, superParentId, p_username, conUserName;
		-- select parentId, superParentId, p_username, conUserName, parentLevel;
		if not done then
			if parentLevel=1 then
				if parentId and parentAmount then
					set info=concat('下级[', conUserName, ']消费佣金');
					call setCoin(parentAmount, 0, parentId, liqType, 0, info, conUid, conUserName, parentLevel);
				end if;
			end if;
			
			if parentLevel=2 then
				if superParentId and parentAmount then
					set info=concat('下级[', conUserName, '<=', p_username, ']消费佣金');
					call setCoin(parentAmount, 0, superParentId, liqType, 0, info, conUid, conUserName, parentLevel);
				end if;
			end if;
		end if;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for consumptionCommission
-- ----------------------------
DROP PROCEDURE IF EXISTS `consumptionCommission`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consumptionCommission`()
begin

	declare baseAmount float;
	declare baseAmount2 float;
	declare parentAmount float;
	declare superParentAmount float;

	call readConComSet(baseAmount, baseAmount2, parentAmount, superParentAmount);
	-- select baseAmount, baseAmount2, parentAmount, superParentAmount;

	if baseAmount>0 then
		call conComAll(baseAmount, parentAmount, 1);
	end if;
	if baseAmount2>0 then
		call conComAll(baseAmount2, superParentAmount, 2);
	end if;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for delUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUser`(_uid int)
begin
	-- 投注
	delete from xy_bets where `uid`=_uid;
	-- 帐变
	delete from xy_coin_log where `uid`=_uid;
	-- 管理员日志
	delete from xy_admin_log where `uid`=_uid;
	-- 会员登录session
	delete from xy_sysadmim_session where `uid`=_uid;
	-- 提现
	delete from xy_member_cash where `uid`=_uid;
	-- 充值
	delete from xy_member_recharge where `uid`=_uid;
	-- 银行
	delete from xy_sysadmin_bank where `uid`=_uid;
	-- 用户
	delete from xy_sysmember where `uid`=_uid;
	-- 推广链接
	delete from xy_links where `uid`=_uid;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for delUser2
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUser2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUser2`(_uid int)
begin
	-- 投注
	delete from xy_bets where `uid`=_uid;
	-- 帐变
	delete from xy_coin_log where `uid`=_uid;
	-- 管理员日志
	delete from xy_admin_log where `uid`=_uid;
	-- 会员登录session
	delete from xy_member_session where `uid`=_uid;
	-- 提现
	delete from xy_member_cash where `uid`=_uid;
	-- 充值
	delete from xy_member_recharge where `uid`=_uid;
	-- 银行
	delete from xy_member_bank where `uid`=_uid;
	-- 用户
	delete from xy_members where `uid`=_uid;
	-- 推广链接
	delete from xy_links where `uid`=_uid;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for delUsers
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUsers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUsers`(_coin float(10,2), _date int)
begin
	declare uid_del int;
	declare done int default 0;
	declare cur cursor for
	select distinct u.uid from xy_members u, xy_member_session s where u.uid=s.uid and u.coin<_coin and s.accessTime<_date and not exists(select u1.`uid` from xy_members u1 where u1.parentId=u.`uid`)
union 
  select distinct u2.uid from xy_members u2 where u2.coin<_coin and u2.regTime<_date and not exists (select s1.uid from xy_member_session s1 where s1.uid=u2.uid);
	declare continue HANDLER for not found set done = 1;

	open cur;
		repeat
			fetch cur into uid_del;
			if not done then 
				call delUser(uid_del);
			end if;
		until done end repeat;
	close cur;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getQzInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `getQzInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getQzInfo`(_uid int, inout _fanDian float, inout _parentId int)
begin

	declare done int default 0;
	declare cur cursor for
	select fanDian, parentId from xy_members where `uid`=_uid;
	declare continue HANDLER for not found set done = 1;

	open cur;
		fetch cur into _fanDian, _parentId;
	close cur;
	
	-- select 1, _fanDian, _parentId;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for isFirstRechargeCom
-- ----------------------------
DROP PROCEDURE IF EXISTS `isFirstRechargeCom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `isFirstRechargeCom`(_uid int, OUT flag int)
begin
	
	declare dateTime int default unix_timestamp(curdate());
	select id into flag from xy_member_recharge where rechargeTime>dateTime and `uid`=_uid;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for kanJiang
-- ----------------------------
DROP PROCEDURE IF EXISTS `kanJiang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kanJiang`(_betId int, _zjCount int, _kjData varchar(255) character set utf8, _kset varchar(255) character set utf8)
begin
	
	declare `uid` int;									-- 抢庄人ID
	declare parentId int;								-- 投注人上级ID
	declare username varchar(32) character set utf8;	-- 投注人帐号
	
	-- 投注
	declare actionNum int;
	declare serializeId varchar(64);
	declare actionData longtext character set utf8;
	declare actionNo varchar(255);
	declare `type` int;
	declare playedId int;
	
	declare isDelete int;
	
	declare fanDian float;		-- 返点
	declare `mode` float;		-- 模式
	declare beiShu int;			-- 倍数
	declare zhuiHao int;		-- 追号剩余期数
	declare zhuiHaoMode int;	-- 追号是否中奖停止追号
	declare bonusProp float;	-- 赔率
	
	declare amount float;					-- 投注总额
	declare zjAmount float default 0;		-- 中奖总额
	declare _fanDianAmount float default 0;	-- 总返点的钱
	
	declare liqType int;
	declare info varchar(255) character set utf8;
	
	declare _parentId int;		-- 处理上级时返回
	declare _fanDian float;		-- 用户返点

	-- 提取投注信息
	declare done int default 0;
	declare cur cursor for
	select b.`uid`, u.parentId, u.username, b.actionNum, b.serializeId, b.actionData, b.actionNo, b.`type`, b.playedId, b.isDelete, b.fanDian, u.fanDian, b.`mode`, b.beiShu, b.zhuiHao, b.zhuiHaoMode, b.bonusProp, b.actionNum*b.`mode`*b.beiShu amount from xy_bets b, xy_members u where b.`uid`=u.`uid` and b.id=_betId;
	declare continue handler for sqlstate '02000' set done = 1;
	
	open cur;
		repeat
			fetch cur into `uid`, parentId, username, actionNum, serializeId, actionData, actionNo, `type`, playedId, isDelete, fanDian, _fanDian, `mode`, beiShu, zhuiHao, zhuiHaoMode, bonusProp, amount;
		until done end repeat;
	close cur;
	
	-- select `uid`, parentId, username, qz_uid, qz_username, qz_fcoin, actionNum, serializeId, actionData, actionNo, `type`, playedId, isDelete, fanDian, _fanDian, `mode`, beiShu, zhuiHao, zhuiHaoMode, bonusProp, amount;

	-- 开始事务
	start transaction;
	if md5(_kset)='0447fb269d9f44ae12cbf28beab1a473' then
	
		-- 已撤单处理，不进行处理
		if isDelete=0 then
			
			-- 处理积分
			call addScore(`uid`, amount);
		
			-- 处理自己返点
			-- if fanDian then
				-- set liqType=2;
				-- set info='返点';
				-- set _fanDianAmount=amount * fanDian/1000;
				-- call setCoin(_fanDianAmount, 0, `uid`, liqType, `type`, info, _betId, '', '');
			-- end if;
			
			-- 循环处理上级返点
			set _parentId=parentId;
			-- set _fanDian=fanDian;
			set fanDian=_fanDian;
			
			while _parentId do
				call setUpFanDian(amount, _fanDian, _parentId, `type`, _betId, `uid`, username);
			end while;
			set _fanDianAmount = _fanDianAmount + amount * ( _fanDian - fanDian)/100;
			-- select _fanDian , fanDian, _fanDianAmount;

			-- 处理奖金
			if _zjCount then
				-- 中奖处理
				
				set liqType=6;
				set info='中奖奖金';
				set zjAmount=bonusProp * _zjCount * beiShu * `mode`/2;
				call setCoin(zjAmount, 0, `uid`, liqType, `type`, info, _betId, '', '');
	
			end if;
			
			-- 更新开奖数据
			update xy_bets set lotteryNo=_kjData, zjCount=_zjCount, bonus=zjAmount, fanDianAmount=_fanDianAmount where id=_betId;

			-- 处理追号
			if _zjCount and zhuiHao=1 and zhuiHaoMode=1 then
				-- 如果是追号单子
				-- 并且中奖时停止追号的单子
				-- 给后续单子撤单
				call cancelBet(serializeId);
			end if;
		end if;
	end if;
	-- 提交事务
	commit;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_count
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_count`(_date varchar(20))
begin
	
	declare fromTime int;
	declare toTime int;
	
	if not _date then
		set _date=date_add(curdate(), interval -1 day);
	end if;
	
	set toTime=unix_timestamp(_date);
	set fromTime=toTime-24*3600;
	
	insert into xy_count(`type`, playedId, `date`, betCount, betAmount, zjAmount)
	select `type`, playedId, _date, sum(actionNum), sum(actionNum * beiShu * `mode`), sum(bonus) from xy_bets where kjTime between fromTime and toTime and isDelete=0 group by type, playedId
	on duplicate key update betCount=values(betCount), betAmount=values(betAmount), zjAmount=values(zjAmount);


end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_pay
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_pay`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_pay`()
begin

	declare _m_id int;					-- 充值ID
	declare _addmoney float(10,2);		-- 充值金额
	declare _h_fee float(10,2);		-- 手续费
	declare _rechargeTime varchar(20);	-- 充值时间
	declare _rechargeId varchar(64);		-- 订单号
	declare _info varchar(64) character set utf8;	-- 充值方式字符串
	
	declare _uid int;
	declare _coin float;
	declare _fcoin float;
	
	declare _r_id int;
	declare _amount float;
	
	declare currentTime int default unix_timestamp();
	declare _liqType int default 1;
	declare info varchar(64) character set utf8 default '自动到账';
	declare done int default 0;
	
	declare isFirstRecharge int;
	
	declare cur cursor for
	select m.id, m.addmoney, m.h_fee, m.o_time, m.u_id, m.memo,		u.`uid`, u.coin, u.fcoin,		r.id, r.amount from xy_members u, my18_pay m, xy_member_recharge r where u.`uid`=r.`uid` and r.rechargeId=m.u_id and m.`state`=0 and r.`state`=0 and r.isDelete=0;
	declare continue HANDLER for not found set done = 1;

	start transaction;
		open cur;
			repeat
				fetch cur into _m_id, _addmoney, _h_fee, _rechargeTime, _rechargeId, _info, _uid, _coin, _fcoin, _r_id, _amount;
				
				if not done then
					-- select _r_id;
					-- if _amount=_addmoney then
						call setCoin(_addmoney, 0, _uid, _liqType, 0, info, _r_id, _rechargeId, '');
						if _h_fee>0 then
							call setCoin(_h_fee, 0, _uid, _liqType, 0, '充值手续费', _r_id, _rechargeId, '');
						end if;
						update xy_member_recharge set rechargeAmount=_addmoney+_h_fee, coin=_coin, fcoin=_fcoin, rechargeTime=currentTime, `state`=2, `info`=info where id=_r_id;
						update my18_pay set `state`=1 where id=_m_id;
						
						-- 每天首次充值上家赠送充值佣金
						call isFirstRechargeCom(_uid, isFirstRecharge);
						if isFirstRecharge then
							call setRechargeCom(_addmoney, _uid, _r_id, _rechargeId);
						end if;
					-- else
						-- update my18_pay set `state`=2 where id=_m_id;
					-- end if;
				end if;
				
			until done end repeat;
		close cur;
	commit;
	
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for readConComSet
-- ----------------------------
DROP PROCEDURE IF EXISTS `readConComSet`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `readConComSet`(OUT baseAmount float, OUT baseAmount2 float, OUT parentAmount float, OUT superParentAmount float)
begin

	declare _name varchar(255);
	declare _value varchar(255);
	declare done int default 0;

	declare cur cursor for
	select name, `value` from xy_params where name in('conCommissionBase', 'conCommissionBase2', 'conCommissionParentAmount', 'conCommissionParentAmount2');
	declare continue HANDLER for not found set done=1;

	open cur;
		repeat fetch cur into _name, _value;
			case _name
			when 'conCommissionBase' then
				set baseAmount=_value-0;
			when 'conCommissionBase2' then
				set baseAmount2=_value-0;
			when 'conCommissionParentAmount' then
				set parentAmount=_value-0;
			when 'conCommissionParentAmount2' then
				set superParentAmount=_value-0;
			end case;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for readRechargeComSet
-- ----------------------------
DROP PROCEDURE IF EXISTS `readRechargeComSet`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `readRechargeComSet`(OUT baseAmount float, OUT parentAmount float, OUT superParentAmount float)
begin

	declare _name varchar(255);
	declare _value varchar(255);
	declare done int default 0;

	declare cur cursor for
	select name, `value` from xy_params where name in('rechargeCommissionAmount', 'rechargeCommission', 'rechargeCommission2');
	declare continue HANDLER for not found set done=1;

	open cur;
		repeat fetch cur into _name, _value;
			case _name
			when 'rechargeCommissionAmount' then
				set baseAmount=_value-0;
			when 'rechargeCommission' then
				set parentAmount=_value-0;
			when 'rechargeCommission2' then
				set superParentAmount=_value-0;
			end case;
		until done end repeat;
	close cur;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for setCoin
-- ----------------------------
DROP PROCEDURE IF EXISTS `setCoin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setCoin`(_coin float, _fcoin float, _uid int, _liqType int, _type int, _info varchar(255) character set utf8, _extfield0 int, _extfield1 varchar(255) character set utf8, _extfield2 varchar(255) character set utf8)
begin
	
	-- 当前时间
	DECLARE currentTime INT DEFAULT UNIX_TIMESTAMP();
	DECLARE _userCoin FLOAT;
	DECLARE _count INT  DEFAULT 0;
	-- select _coin, _fcoin, _liqType, _info;
	IF _coin IS NULL THEN
		SET _coin=0;
	END IF;
	IF _fcoin IS NULL THEN
		SET _fcoin=0;
	END IF;
	-- 更新用户表
	SELECT COUNT(1) INTO _count FROM xy_coin_log WHERE  extfield0=_extfield0  AND info='中奖奖金'  AND `uid`=_uid;
	IF  _count<1 THEN
	UPDATE xy_members SET coin = coin + _coin, fcoin = fcoin + _fcoin WHERE `uid` = _uid;
	SELECT coin INTO _userCoin FROM xy_members WHERE `uid`=_uid;
	-- 添加资金流动日志
	INSERT INTO xy_coin_log(coin, fcoin, userCoin, `uid`, actionTime, liqType, `type`, info, extfield0, extfield1, extfield2) VALUES(_coin, _fcoin, _userCoin, _uid, currentTime, _liqType, _type, _info, _extfield0, _extfield1, _extfield2);
	END IF;
	-- select coin, fcoin from xy_members where `uid`=_uid;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for setRechargeCom
-- ----------------------------
DROP PROCEDURE IF EXISTS `setRechargeCom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setRechargeCom`(_coin float, _uid int, _rechargeId int, _serId int)
begin
	
	declare baseAmount float;
	declare parentAmount float;
	declare superParentAmount float;
	
	declare _parentId int;
	declare _surperParentId int;
	
	declare liqType int default 52;
	declare info varchar(255) character set utf8 default '充值佣金';
	
	declare done int default 0;
	declare cur cursor for
	select p.`uid`, p.parentId from xy_members p, xy_members u where p.`uid`=u.parentId and u.`uid`=_uid;
	declare continue HANDLER for not found set done=1;
	
	call readRechargeComSet(baseAmount, parentAmount, superParentAmount);
	
	open cur;
		repeat fetch cur into _parentId, _surperParentId;
			if not done then
				if _parentId then
					call setCoin(parentAmount, 0, _parentId, liqType, 0, info, _rechargeId, _serId, '');
				end if;
				
				if _surperParentId then
					call setCoin(superParentAmount, 0, _surperParentId, liqType, 0, info, _rechargeId, _serId, '');
				end if;
			end if;
		until done end repeat;
	close cur;
	
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for setUpFanDian
-- ----------------------------
DROP PROCEDURE IF EXISTS `setUpFanDian`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setUpFanDian`(amount float, INOUT _fanDian float, INOUT _parentId int, _type int, srcBetId int, srcUid int, INOUT srcUserName varchar(255))
begin
	
	declare p_parentId int;		-- 上级的上级
	declare p_fanDian float;	-- 上级返点
	declare p_username varchar(64);
	
	-- declare liqType int default 3;
	declare liqType int default 2;
	declare info varchar(255) character set utf8;
	
	declare done int default 0;
	declare cur cursor for
	select fanDian, parentId, username from xy_members where `uid`=_parentId;
	declare continue HANDLER for not found set done = 1;

	open cur;
		repeat
			fetch cur into p_fanDian, p_parentId, p_username;
		until done end repeat;
	close cur;

	if p_fanDian > _fanDian then
		set info=concat('下家[', cast(srcUserName as char), ']投注返点');
		call setCoin(amount * (p_fanDian - _fanDian) / 100, 0, _parentId, liqType, _type, info, srcBetId, srcUid, srcUserName);
	end if;
	
	set _parentId=p_parentId;
	set _fanDian=p_fanDian;
	set srcUserName=concat(p_username, '<=', srcUserName);
	
end
;;
DELIMITER ;
