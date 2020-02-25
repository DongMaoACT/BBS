-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: my_forum
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_board`
--

DROP TABLE IF EXISTS `t_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_board` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论坛版块ID',
  `board_name` varchar(150) NOT NULL DEFAULT '' COMMENT '论坛版块名',
  `board_desc` varchar(255) DEFAULT NULL COMMENT '论坛版块描述',
  `topic_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子数目',
  PRIMARY KEY (`board_id`),
  KEY `AK_Board_NAME` (`board_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_board`
--

LOCK TABLES `t_board` WRITE;
/*!40000 ALTER TABLE `t_board` DISABLE KEYS */;
INSERT INTO `t_board` VALUES (1,'生活','生活是比生存更高层面的一种状态，也是人生的一种乐观的态度。',8),(2,'情感','情绪是身体对行为成功的可能性乃至必然性，在生理反应上的评价和体验，包括喜、怒、忧、思、悲、恐、惊七种。',1),(3,'大学','我的大学',1),(4,'旅游','这是关于旅游的描述',1),(5,'美食','这是关于美食的描述',1);
/*!40000 ALTER TABLE `t_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_board_manager`
--

DROP TABLE IF EXISTS `t_board_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_board_manager` (
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`board_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_board_manager`
--

LOCK TABLES `t_board_manager` WRITE;
/*!40000 ALTER TABLE `t_board_manager` DISABLE KEYS */;
INSERT INTO `t_board_manager` VALUES (1,1),(2,2),(3,1),(4,4),(5,3);
/*!40000 ALTER TABLE `t_board_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_log`
--

DROP TABLE IF EXISTS `t_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_login_log` (
  `login_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(30) NOT NULL DEFAULT '',
  `login_datetime` datetime NOT NULL,
  PRIMARY KEY (`login_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_log`
--

LOCK TABLES `t_login_log` WRITE;
/*!40000 ALTER TABLE `t_login_log` DISABLE KEYS */;
INSERT INTO `t_login_log` VALUES (75,1,'0:0:0:0:0:0:0:1','2018-07-21 00:00:00'),(76,1,'0:0:0:0:0:0:0:1','2018-07-22 00:00:00'),(77,1,'0:0:0:0:0:0:0:1','2018-07-28 00:00:00'),(78,1,'0:0:0:0:0:0:0:1','2018-07-29 00:00:00'),(79,1,'0:0:0:0:0:0:0:1','2018-07-29 00:00:00'),(80,1,'0:0:0:0:0:0:0:1','2018-07-29 00:00:00'),(81,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(82,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(83,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(84,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(85,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(86,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(87,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(88,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(89,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(90,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(91,1,'0:0:0:0:0:0:0:1','2018-07-30 00:00:00'),(92,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(93,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(94,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(95,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(96,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(97,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(98,1,'0:0:0:0:0:0:0:1','2018-07-31 00:00:00'),(99,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(100,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(101,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(102,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(103,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(104,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(105,3,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(106,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(107,1,'0:0:0:0:0:0:0:1','2018-08-01 00:00:00'),(108,1,'0:0:0:0:0:0:0:1','2018-08-02 00:00:00'),(109,1,'0:0:0:0:0:0:0:1','2018-08-02 00:00:00'),(110,1,'0:0:0:0:0:0:0:1','2018-08-02 00:00:00'),(111,1,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00'),(112,3,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00'),(113,4,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00'),(114,5,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00'),(115,1,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00'),(116,1,'0:0:0:0:0:0:0:1','2018-08-03 00:00:00');
/*!40000 ALTER TABLE `t_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_post`
--

DROP TABLE IF EXISTS `t_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL DEFAULT '0' COMMENT '论坛ID',
  `topic_id` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '发表者ID',
  `post_type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '帖子类型 1:主帖子 2:回复帖子',
  `post_title` varchar(50) NOT NULL DEFAULT '""' COMMENT '帖子标题',
  `post_text` text NOT NULL COMMENT '帖子内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`post_id`),
  KEY `IDX_POST_TOPIC_ID` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='帖子';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_post`
--

LOCK TABLES `t_post` WRITE;
/*!40000 ALTER TABLE `t_post` DISABLE KEYS */;
INSERT INTO `t_post` VALUES (2,1,2,1,1,'\"\"','话说有没有陪本妲己来企鹅电竞看直播的？','2018-06-06 00:00:00'),(3,1,1,2,1,'\"\"','<p>balabala<p/>','2018-04-25 00:00:00'),(4,1,2,2,0,'\"\"','真有傻子会看别人踢球娱乐自己吗？还搞商业赛事？ 很久以前人说：真有傻子会在网上买东西吗？还把网络平台建到国外去？ 这世界很少有人会有人会有长远眼光。 ','2018-07-09 00:00:00'),(28,1,2,1,0,'\"\"','<b>我不知道</b><img src=\"http://localhost:8080/statics/images/face/34.gif\" alt=\"[钱]\">','2018-07-11 00:00:00'),(30,1,1,1,0,'\"\"','<img src=\"http://localhost:8080/statics/images/face/54.gif\" alt=\"[good]\">','2018-07-14 00:00:00'),(34,1,9,1,1,'\"\"','你永远不知道下一颗什么味道<img src=\"http://localhost:8080/statics/images/face/29.gif\" alt=\"[拜拜]\">','2018-07-15 00:00:00'),(35,1,9,1,0,'\"\"','<img src=\"http://localhost:8080/statics/images/face/39.gif\" alt=\"[鼓掌]\">','2018-07-15 00:00:00'),(36,2,10,1,1,'\"\"','<img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\"><img src=\"http://localhost:8080/statics/images/face/25.gif\" alt=\"[抱抱]\"><b>aqwsdeawse</b><img src=\"http://localhost:8080/statics/images/face/41.gif\" alt=\"[悲伤]\">','2018-07-17 00:00:00'),(37,5,11,1,1,'\"\"','<img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\">','2018-07-17 00:00:00'),(39,1,2,1,0,'\"\"','<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>','2018-07-18 00:00:00'),(40,1,2,1,0,'\"\"','<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>','2018-07-18 00:00:00'),(41,1,2,1,0,'\"\"','<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>','2018-07-18 00:00:00'),(42,1,2,1,0,'\"\"','<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>','2018-07-18 00:00:00'),(43,1,2,1,0,'\"\"','<p><span>分页测试</span><img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\"></p>','2018-07-18 00:00:00'),(44,1,9,1,0,'\"\"','<img src=\"http://localhost:8080/statics/images/face/48.gif\" alt=\"[伤心]\">','2018-07-18 00:00:00'),(45,1,9,1,0,'\"\"','<img src=\"http://localhost:8080/statics/images/face/36.gif\" alt=\"[酷]\">','2018-07-18 00:00:00'),(46,1,2,1,0,'\"\"','spring<img src=\"http://localhost:8080/statics/images/face/48.gif\" alt=\"[伤心]\">','2018-07-18 00:00:00'),(47,1,2,1,0,'\"\"','水电费水电费<img src=\"http://localhost:8080/statics/images/face/0.gif\" alt=\"[微笑]\">','2018-07-18 00:00:00'),(48,1,12,1,1,'\"\"','<p><span style=\"text-align: left;\">\r\n                    </span><div class=\"action atl-reply\" style=\"text-align: right;\">\r\n                    	\r\n                    	 <span style=\"text-align: right;\"></span></div></p><div class=\"content\" style=\"text-align: justify;\"><b>高学历的人会很有钱，低学历的人也不会下岗</b></div>','2018-07-20 00:00:00'),(49,1,13,1,1,'\"\"','<p><span style=\"text-align: justify;\">“激进左派”，亦称“极左派”，以“反资反美”、激进革命、底层动员、刺激民粹为其核心观点标识，崛起于“民间”，靠激发和集聚底层民众的积怨积愤，裹挟底层民众的“乌合之力”，以期相争相抗于政学两界。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　“激进左派”的极端民族主义言论的肆意泛滥，在网络空间中更是无限放大传播，具有了极其强大的“激进宣示”和“战略宣示”功效。如果任其“无底线”泛滥，极有可能引起国内外各界的“战略误判”和“政策误读”。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　“激进左派”言论，存在严重的学理缺陷和“极化思维”，其理论推演中存在多重“逻辑缺陷”，其随意诋毁学术对手主张为“汉奸言论”，其肆意挤压自由、民主、法治等核心价值观，日渐成为中国学术界的“公害”。而这一切，是值得警惕和防范的“变异”趋向。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　“激进左派”，亦称“极左派”，是当代中国“左翼阵营”的“后起之秀”，以其政治立场的极端坚定、极化观点的暴烈鲜明而卓然于世。他们以某些“左翼网站”和地下边缘刊物为主要发声平台，以“反资反美”、激进革命、底层动员、刺激民粹为其核心观点标识，近年来的崛起大有“盖过”其新、老“左派”前辈的势头。但“激进左派”的话语体系及其政治主张中，存在着自身难以克服的“逻辑陷阱”，其急欲促发的学术舆论或社会运动，更具有难以估量的“公害”甚或社会危害。对此，值得政学两界给予理性关注和剖析警惕。</span><br style=\"text-align: justify;\"></p>','2018-07-20 00:00:00'),(51,3,14,1,1,'\"\"','<p><span style=\"text-align: left;\">\r\n                </span><div class=\"action atl-reply\" style=\"text-align: right;\">\r\n                    <span style=\"text-align: right;\">\r\n                        \r\n                        <a class=\"act-share\"></a></span></div></p><div class=\"text\" style=\"text-align: justify;\"><i>去年元月，川普上台，自从去年年底访华后，对华政策越来越硬，南海不断挑事，东南频打台湾牌，经济上又开打贸易战，老美选出这样一号人物，大家都来谈谈，究竟对我们是福是祸？<img src=\"http://localhost:8080/statics/images/face/28.gif\" alt=\"[馋嘴]\"><img src=\"http://localhost:8080/statics/images/face/25.gif\" alt=\"[抱抱]\">\r\n                </i></div>','2018-07-21 00:00:00'),(52,1,2,1,0,'\"\"','<p><span>图片格式在数据库中就是选IMAGE，存储及读取一般是用流的方式，我给你一段代码，分别是上传附件与下载附件的功能：</span><br><span>\n上传：</span><br><span>\n</span><br><span>\nvar</span><br><span>\nfs:TFileStream;</span><br><span>\nFtpStr:string;</span><br><span>\n</span><br><span>\nbegin</span><br><span>\n</span><br><span>\nFtpStr:=edt3.Text;//这里主要是用DlgOpen控件选择的文件名</span><br><span>\nfs:=Tfilestream.Create(FtpStr,……</span></p>','2018-07-28 00:00:00'),(54,1,2,1,0,'\"\"','<p><br><span>\n　　2.&nbsp;图像数据的读取及显示</span><br><span>\n</span><br><span>\nprocedure&nbsp;Tform1.ADOTable1AfterScroll(DataSet:&nbsp;TDataSet);&nbsp;//ADOTable1的AfterScroll事件方法程序</span><br><span>\n　var</span><br><span>\n　　jpegimage:tjpegimage;</span><br><span>\n　begin</span><br><span>\n　　image1.Picture.Graphic&nbsp;:=nil;&nbsp;</span><br><span>\n　　//下边BMP、JPEG两种图像数据必需分别处理</span><br><span>\n　　if&nbsp;adotable1.fieldbyname(isbmp).Asstring&nbsp;=&nbsp;1&nbsp;then&nbsp;//BMP型图像数据</span><br><span>\n　　　image1.Picture.bitmap.Assign(adotable1.fieldbyname(myimage))</span><br><span>\n　　　//上边语句中的bitmap不能为graphic,否则会出错</span><br><span>\n　　else&nbsp;if&nbsp;adotable1.fieldbyname(isbmp).asstring&nbsp;=&nbsp;0&nbsp;then&nbsp;//JPEG型图像数据</span><br><span>\n　　　begin&nbsp;//begin2</span><br><span>\n　　　　jpegimage&nbsp;:=&nbsp;tjpegimage.Create&nbsp;;&nbsp;//通过jpegimage将图像显示在image1,否则会出错</span><br><span>\n　　　　try</span><br><span>\n　　　　　jpegimage.Assign(adotable1.fieldbyname(myimage));</span><br><span>\n　　　　　image1.Picture.Graphic&nbsp;:=jpegimage;</span><br><span>\n　　　　finally</span><br><span>\n　　　　　jpegimage.Free&nbsp;;</span><br><span>\n　　　　end;&nbsp;//end&nbsp;try</span><br><span>\n　　end;&nbsp;//end&nbsp;begin2</span><br><span>\nend;&nbsp;</span></p>','2018-07-28 00:00:00'),(55,1,2,1,0,'\"\"','<p><br><span>\n　　2.&nbsp;图像数据的读取及显示</span><br><span>\n</span><br><span>\nprocedure&nbsp;Tform1.ADOTable1AfterScroll(DataSet:&nbsp;TDataSet);&nbsp;//ADOTable1的AfterScroll事件方法程序</span><br><span>\n　var</span><br><span>\n　　jpegimage:tjpegimage;</span><br><span>\n　begin</span><br><span>\n　　image1.Picture.Graphic&nbsp;:=nil;&nbsp;</span><br><span>\n　　//下边BMP、JPEG两种图像数据必需分别处理</span><br><span>\n　　if&nbsp;adotable1.fieldbyname(isbmp).Asstring&nbsp;=&nbsp;1&nbsp;then&nbsp;//BMP型图像数据</span><br><span>\n　　　image1.Picture.bitmap.Assign(adotable1.fieldbyname(myimage))</span><br><span>\n　　　//上边语句中的bitmap不能为graphic,否则会出错</span><br><span>\n　　else&nbsp;if&nbsp;adotable1.fieldbyname(isbmp).asstring&nbsp;=&nbsp;0&nbsp;then&nbsp;//JPEG型图像数据</span><br><span>\n　　　begin&nbsp;//begin2</span><br><span>\n　　　　jpegimage&nbsp;:=&nbsp;tjpegimage.Create&nbsp;;&nbsp;//通过jpegimage将图像显示在image1,否则会出错</span><br><span>\n　　　　try</span><br><span>\n　　　　　jpegimage.Assign(adotable1.fieldbyname(myimage));</span><br><span>\n　　　　　image1.Picture.Graphic&nbsp;:=jpegimage;</span><br><span>\n　　　　finally</span><br><span>\n　　　　　jpegimage.Free&nbsp;;</span><br><span>\n　　　　end;&nbsp;//end&nbsp;try</span><br><span>\n　　end;&nbsp;//end&nbsp;begin2</span><br><span>\nend;&nbsp;</span></p>','2018-07-28 00:00:00'),(56,3,14,1,0,'\"\"','不知道','2018-07-29 00:00:00'),(60,1,1,1,0,'\"\"','要得','2018-07-30 00:00:00'),(61,1,1,1,0,'\"\"','asdas','2018-07-30 14:21:40'),(62,4,1235,1,1,'\"\"','<p><span style=\"text-align: justify;\">　我叫龙飞，是个孤儿，从小跟我师父相依为命。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我一出生，身边就伴随诸多不详，自幼体弱多病，所以我几乎打小就是泡着“药罐子”长大的。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　后来我才知道，原来我在娘胎里就遭人暗算，本就不该出生在这世上，是我师父硬从我母亲的棺材里，把我救了出来。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　好不容易熬到了十八岁，我也终于考上了本市的一所重点大学，师父这才松了口气。说我命中的“第一劫”，总算是安然度过了。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　那时的我，尚还有些懵懂，自然不太明白，师父所谓的“第一劫”，到底对我意味着什么。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我只记得，在我生日的那一晚，师父非常的高兴，破例喝了很多的酒，以至最后酩酊大醉。直到我第二天起床，他的房间里，依然时不时传来打鼾的声音。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我并没有吵醒我师父，而是趁机偷了他的猎枪，一个人悄悄上山去了。&nbsp;</span></p>','2018-08-03 14:28:27'),(63,1,1236,1,1,'\"\"','<p><span style=\"text-align: justify;\">都知道现在是暑天正热的时候，今年的夏季与往年不同的是经常下雨，但是同样的也经常停电，每次的理由都是检修电路。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\r\n　　实际是因为夏季用电量过大，城里不能停电，因为影响太大，而农村就不牵扯，热了可以给山里奔。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\r\n　　可以在水里光着脚丫。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\r\n　　夏季七八月停电都成了一种常态。隔一周几乎就会又一次，大家也都习惯了</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\r\n　　这段时间没有太多的农活，就是日常的拔草，锄地，浇地，所以俺们村老少妇幼的生活也显得逍遥自在，因为八月后的季节就是丰收的季节</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\r\n　　</span></p>','2018-08-03 14:29:20'),(64,1,1237,1,1,'\"\"','<p><span style=\"text-align: justify;\">　能维持房屋楼价保持平稳状态的等价交换之房屋险水池</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　顾名思义，如果各位有看我本人在这两天的发帖名叫:等价交换的股票险水池。不难发现，本文的等价交换之房屋险水池，也是同一意思。有点智慧的人也会知道是啥意思玩意。如果你们需要我写出本文的内容，那我乐意写，相信有点文化知识的人也知道我写什么。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　当楼价下跌时，根据浮动慰问金，不至于亏本，能保值。同等，在等价交换的原则基础上，当楼价上升时，房屋险水池根据安稳金，买卖时，业主的等价交换，收取一定的楼升费用，能有效抑制楼价飙升至一个不合理的程度。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　例如，当楼价下跌时，100万的房价下跌到80万，保底+浮动慰问金。当楼价上升时，100万的房价上升到120万元时，获利时从利润20万中收取一部分的水池安稳金。&nbsp;</span></p>','2018-08-03 14:29:49'),(65,1,1238,1,1,'\"\"','<p><span style=\"text-align: justify;\">這陣子又消失一段蠻長的時間，因為我收拾了簡單的行囊，跑到了</span><span class=\"highlight\" linkurl=\"http://page.tianya.cn/tyk000005441\" style=\"text-align: justify;\">台北</span><span style=\"text-align: justify;\">市，新的開始有點忙有點特別，然後非常熱~~~~</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我從一個喜歡發表政治評論觀察社會的網路嘴砲者，到真正走入現實面對紛紛擾擾的政治和抗爭，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　雖然我還在很邊緣很邊緣的地方，但已然能感受到這條路有多麼複雜不易。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　前幾天終於二度跟新黨青年軍之一女將蘇恆會面(她的立場是兩次啦，不過我見過她本人三次了XD)</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我們相談甚歡。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　她邀請我進入她的團隊，成為她的助理，這對我目前的狀態是一個大突破，雖然我很開心，但我在以核養綠公投小組還有一些計劃和承諾沒有完成。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　所以我預計會在八月底新黨黨慶之前加入新黨 ，並且加入蘇恆的團隊，成為她的戰力，她的夥伴，她的助選員。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　蘇恆所在的</span><span class=\"highlight\" linkurl=\"http://page.tianya.cn/tyk000183604\" style=\"text-align: justify;\">中山</span><span class=\"highlight\" linkurl=\"http://page.tianya.cn/tyk000005317\" style=\"text-align: justify;\">大同</span><span style=\"text-align: justify;\">區是北市最綠最本土的一塊，年底選戰可能勝算極低而且非常艱辛，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　不過對一個這幾年反對公投門檻調低、覺得民主政治是個屁的人而言，我回到一個我所鄙視的制度去作戰，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我不贊成這個制度，但我仍然要回到這個制度去解決問題。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　這聽起來雖然很矛盾，但如同我前一篇文章所言，在現在的台灣，如果沒有發言權，就沒有人聽見你的理念，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　台灣人永遠只聽見綠色的聲音和立場，卻沒有足夠的對立的音量，去讓島民檢視國民兩黨所灌輸的概念，去用全方位的視野進行思辨。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我想我要做的事情很多，心得也很多，日後一一跟大家分享。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我現在想說的是，在我踏上這段路途，起腳的第一步，我非常堅持要使用南南兒這個名字， </span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　堅持到我在填寫“恆毅力”申請單的時候， 因為沒有填寫本名，應該直接被蘇恆團隊放棄。。。XP</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　不過還好我沒有錯過她，我們最終沒有錯過彼此。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　堅持使用南南兒，是因為我知道我身上背負了很多這四年以來支持我喜歡我的大陸朋友的期待，也明白如果沒有涯友們的支持鼓舞幫助，這條路我一定走不下去。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　不管你相不相信，從以前到日後，每一個對我友善的留言，就算只是一個頂帖，都會成為我前進的動力。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　所以今天我在這裡，在這個南南兒的起點，尋求各位版友的支持，我會代表台版走出去，走入台灣統派的生活裡，正式走在促進兩岸統一的征途上，你們是我的支柱，更是我的戰友，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　這些年以來，好多好多大陸網友告訴我，我不孤單，</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　我無時或忘，銘記在心。</span><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　現在我會帶著這些溫馨的話語，開啟我的戰鬥，就從幫助蘇恆開始。</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">　　請關注蘇恆→微博搜尋蘇恆-台灣， 臉書搜尋蘇恆，蘇恆的四色牌。</span><br style=\"text-align: justify;\"></p>','2018-08-03 14:30:08');
/*!40000 ALTER TABLE `t_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic`
--

DROP TABLE IF EXISTS `t_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `board_id` int(11) NOT NULL COMMENT '所属论坛',
  `topic_title` varchar(100) NOT NULL DEFAULT '' COMMENT '帖子标题',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '发表用户',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `last_post` datetime NOT NULL DEFAULT '1990-01-01 00:00:00' COMMENT '最后回复时间',
  `topic_views` int(11) NOT NULL DEFAULT '1' COMMENT '浏览数',
  `topic_replies` int(11) NOT NULL DEFAULT '0' COMMENT '回复数',
  `digest` int(11) NOT NULL DEFAULT '0' COMMENT '0:不是精华话题 1:是精华话题',
  PRIMARY KEY (`topic_id`),
  KEY `IDX_TOPIC_USER_ID` (`user_id`),
  KEY `IDX_TOPIC_TITLE` (`topic_title`)
) ENGINE=InnoDB AUTO_INCREMENT=1239 DEFAULT CHARSET=utf8 COMMENT='话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic`
--

LOCK TABLES `t_topic` WRITE;
/*!40000 ALTER TABLE `t_topic` DISABLE KEYS */;
INSERT INTO `t_topic` VALUES (1,1,'我以前流产过，要不要告诉现在的男朋友？',2,'2016-03-07 00:00:00','2018-07-30 14:21:40',119,3,1),(2,1,'激动人心！王者KPL春季赛决赛来了，两支队伍你PICK谁？',1,'2016-03-07 00:00:00','2018-07-28 00:00:00',943,12,1),(9,1,'生活就像一盒巧克力',1,'2018-07-15 00:00:00','2018-07-18 00:00:00',13,4,0),(10,2,'踢个球 球被两妹子借去摆拍了',1,'2018-07-17 00:00:00','2018-07-17 00:00:00',18,1,0),(11,5,'美食测试',1,'2018-07-17 00:00:00','2018-07-17 00:00:00',6,1,0),(12,1,'中国制造2025会不会导致低学历人士失业？',1,'2018-07-20 00:00:00','2018-07-20 00:00:00',3,1,0),(13,1,'社科院学者：“激进左派”渐成中国学术界“公害”',1,'2018-07-20 00:00:00','2018-07-20 00:00:00',3,1,0),(14,3,'川普上任对我们到底是好事还是坏事？',1,'2018-07-21 00:00:00','2018-07-29 00:00:00',7,2,0),(1235,4,'打猎伤了一只狐狸，却惹上了百狐围村',1,'2018-08-03 14:28:27','2018-08-03 14:28:27',2,1,0),(1236,1,'炎炎夏日老停电,乡村生活之光着脚丫，小孩成群，河水中嬉戏打闹 （下）',1,'2018-08-03 14:29:20','2018-08-03 14:29:20',2,1,0),(1237,1,'能维持房屋楼价保持平稳状态的等价交换之房屋险水池',1,'2018-08-03 14:29:49','2018-08-03 14:29:49',2,1,0),(1238,1,'當南南兒從被罵黨工到真的黨工~版友請支持我成為新黨女將蘇恆的左右手~',1,'2018-08-03 14:30:08','2018-08-03 14:30:08',3,1,0);
/*!40000 ALTER TABLE `t_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '密码',
  `user_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:普通用户 2:管理员',
  `locked` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:未锁定 1:锁定',
  `credit` int(11) DEFAULT NULL COMMENT '积分',
  `last_visit` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_ip` varchar(20) DEFAULT NULL COMMENT '最后登陆IP',
  PRIMARY KEY (`user_id`),
  KEY `AK_AK_USER_USER_NAME` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','admin',2,0,650,'2018-08-03 14:43:03','0:0:0:0:0:0:0:1'),(2,'jack','jack',1,1,100,NULL,NULL),(3,'tom','tom',1,0,10,'2018-08-03 13:11:39','0:0:0:0:0:0:0:1'),(4,'john','john',1,0,60,'2018-08-03 13:12:03','0:0:0:0:0:0:0:1'),(5,'charles','charles',1,0,5,'2018-08-03 13:13:25','0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_detailed`
--

DROP TABLE IF EXISTS `t_user_detailed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_detailed` (
  `user_id` int(11) NOT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  `e_mail` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `user_signature` varchar(45) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `sign_time` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_detailed`
--

LOCK TABLES `t_user_detailed` WRITE;
/*!40000 ALTER TABLE `t_user_detailed` DISABLE KEYS */;
INSERT INTO `t_user_detailed` VALUES (1,'/userPic/285bd9a321044d7d890ca766e67387aa.jpg','orochi1972@163.com','18325213331','苦心选中今天想车你回家','男','2018-06-02 00:00:00'),(2,'/userPic/21251e0c76784753824ec27aae8c8cc6.jpg','sc@126.com','18412389132','苦心选中今天想车你回家','女','2018-06-07 00:00:00'),(3,'/userPic/23ee44a88e70427dbd00ca046b602106.jpg','fgbn@qq.com','17843800943','苦心选中今天想车你回家','男','2018-06-05 00:00:00'),(4,'/userPic/8c989aae87574a078dbd4800d5ae8cfd.jpg','423411231@qq.com','18120712215','苦心选中今天想车你回家','女','2018-06-04 00:00:00'),(5,'/userPic/4595e85e04b84595b7d4b3a4089d1747.jpg','whatis@163.com','18377648907','苦心选中今天想车你回家','男','2018-05-06 00:00:00');
/*!40000 ALTER TABLE `t_user_detailed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-21 14:45:18
