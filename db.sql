-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm856p8
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssm856p8`
--

/*!40000 DROP DATABASE IF EXISTS `ssm856p8`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm856p8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm856p8`;

--
-- Table structure for table `baomingrukou`
--

DROP TABLE IF EXISTS `baomingrukou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingrukou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiazhaoleixing` varchar(200) DEFAULT NULL COMMENT '驾照类型',
  `xuechefeiyong` int(11) DEFAULT NULL COMMENT '学车费用',
  `feiyongshuoming` longtext COMMENT '费用说明',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401395541 DEFAULT CHARSET=utf8 COMMENT='报名入口';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingrukou`
--

LOCK TABLES `baomingrukou` WRITE;
/*!40000 ALTER TABLE `baomingrukou` DISABLE KEYS */;
INSERT INTO `baomingrukou` VALUES (51,'2021-12-13 12:05:19','驾校账号1','驾校名称1','驾校地址1','upload/baomingrukou_tupian1.jpg','驾照类型1',1,'费用说明1','2021-12-13','2021-12-13 20:05:19',1),(52,'2021-12-13 12:05:19','驾校账号2','驾校名称2','驾校地址2','upload/1639397331206.jpg','驾照类型2',2,'费用说明2','2021-12-13','2021-12-13 20:08:47',3),(53,'2021-12-13 12:05:19','驾校账号3','驾校名称3','驾校地址3','upload/1639397338685.jpg','驾照类型3',3,'费用说明3','2021-12-13','2021-12-13 20:08:54',4),(54,'2021-12-13 12:05:19','驾校账号4','驾校名称4','驾校地址4','upload/baomingrukou_tupian4.jpg','驾照类型1',4,'费用说明4','2021-12-13','2021-12-13 20:28:24',6),(55,'2021-12-13 12:05:19','驾校账号5','驾校名称5','驾校地址5','upload/1639397347085.jpg','C1',5,'费用说明5','2021-12-13','2021-12-13 21:07:41',8),(1639401395540,'2021-12-13 13:16:35','5','中英驾校','太阳中路','upload/1639401355067.jpg','A1',5000,'DFRRDTYGTRYRTYRT','2021-12-13','2021-12-13 21:39:00',6);
/*!40000 ALTER TABLE `baomingrukou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1639401284236.jpg'),(2,'picture2','upload/1639397873538.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussbaomingrukou`
--

DROP TABLE IF EXISTS `discussbaomingrukou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussbaomingrukou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='报名入口评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussbaomingrukou`
--

LOCK TABLES `discussbaomingrukou` WRITE;
/*!40000 ALTER TABLE `discussbaomingrukou` DISABLE KEYS */;
INSERT INTO `discussbaomingrukou` VALUES (181,'2021-12-13 12:05:19',1,1,'用户名1','评论内容1','回复内容1'),(182,'2021-12-13 12:05:19',2,2,'用户名2','评论内容2','回复内容2'),(183,'2021-12-13 12:05:19',3,3,'用户名3','评论内容3','回复内容3'),(184,'2021-12-13 12:05:19',4,4,'用户名4','评论内容4','回复内容4'),(185,'2021-12-13 12:05:19',5,5,'用户名5','评论内容5','回复内容5'),(186,'2021-12-13 12:05:19',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussbaomingrukou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiakaowenzhang`
--

DROP TABLE IF EXISTS `discussjiakaowenzhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiakaowenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402724269 DEFAULT CHARSET=utf8 COMMENT='驾考文章评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiakaowenzhang`
--

LOCK TABLES `discussjiakaowenzhang` WRITE;
/*!40000 ALTER TABLE `discussjiakaowenzhang` DISABLE KEYS */;
INSERT INTO `discussjiakaowenzhang` VALUES (171,'2021-12-13 12:05:19',1,1,'用户名1','评论内容1','回复内容1'),(172,'2021-12-13 12:05:19',2,2,'用户名2','评论内容2','回复内容2'),(173,'2021-12-13 12:05:19',3,3,'用户名3','评论内容3','回复内容3'),(174,'2021-12-13 12:05:19',4,4,'用户名4','评论内容4','回复内容4'),(175,'2021-12-13 12:05:19',5,5,'用户名5','评论内容5','回复内容5'),(176,'2021-12-13 12:05:19',6,6,'用户名6','评论内容6','回复内容6'),(1639398209707,'2021-12-13 12:23:29',1639398025803,1639398187581,'1','很实用','可以回复评论，也可以删除'),(1639398779668,'2021-12-13 12:32:59',1639398025803,1639398722897,'4','可以评论',''),(1639402562823,'2021-12-13 13:36:01',1639401384292,1639402534653,'7','很实用',''),(1639402724268,'2021-12-13 13:38:43',1639401384292,1639402701758,'8','ERFEW','');
/*!40000 ALTER TABLE `discussjiakaowenzhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskaoshixinxi`
--

DROP TABLE IF EXISTS `discusskaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402588634 DEFAULT CHARSET=utf8 COMMENT='考试信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskaoshixinxi`
--

LOCK TABLES `discusskaoshixinxi` WRITE;
/*!40000 ALTER TABLE `discusskaoshixinxi` DISABLE KEYS */;
INSERT INTO `discusskaoshixinxi` VALUES (191,'2021-12-13 12:05:19',1,1,'用户名1','评论内容1','回复内容1'),(192,'2021-12-13 12:05:19',2,2,'用户名2','评论内容2','回复内容2'),(193,'2021-12-13 12:05:19',3,3,'用户名3','评论内容3','回复内容3'),(194,'2021-12-13 12:05:19',4,4,'用户名4','评论内容4','回复内容4'),(195,'2021-12-13 12:05:19',5,5,'用户名5','评论内容5','回复内容5'),(196,'2021-12-13 12:05:19',6,6,'用户名6','评论内容6','回复内容6'),(1639398830390,'2021-12-13 12:33:50',1639398080794,1639398722897,'4','fdt',''),(1639402588633,'2021-12-13 13:36:28',106,1639402534653,'7','ddwre','');
/*!40000 ALTER TABLE `discusskaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '理论考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401090393 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1639401090392,'2021-12-13 13:11:30','科目四考试',30,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401273845 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1639401173608,'2021-12-13 13:12:53',1639401090392,'科目四考试','下长坡时，控制车速最正确做法是','[{\"text\":\"A.空档滑行\",\"code\":\"A\"},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\"},{\"text\":\"C.踩下离合器踏板滑行\",\"code\":\"C\"},{\"text\":\"D.挂低速挡\",\"code\":\"D\"}]',30,'D','填写正确答案解析',0,1),(1639401209573,'2021-12-13 13:13:28',1639401090392,'科目四考试','眼睛明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',30,'B','会影响行车安全',2,3),(1639401273844,'2021-12-13 13:14:33',1639401090392,'科目四考试','驾驶汽车在冰雪道路上怎么安全行驶','[{\"text\":\"A.开启雾灯行驶\",\"code\":\"A\"},{\"text\":\"B.利用发动机制动\",\"code\":\"B\"},{\"text\":\"C.必须降低车速\",\"code\":\"C\"},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\"}]',40,'B,C,D','FRTRE',1,2);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402859108 DEFAULT CHARSET=utf8 COMMENT='理论考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1639398249980,'2021-12-13 12:24:09',1639398187581,'1',1639397641381,'科目四考试',1639397735188,'下长坡时，控制车速的正确方法是什么','[{\"text\":\"A.空档滑行\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.彩霞离合踏板滑行\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.挂低速挡\",\"code\":\"D\",\"checked\":true}]',30,'D','填写正确答案解析',30,'D'),(1639398255407,'2021-12-13 12:24:14',1639398187581,'1',1639397641381,'科目四考试',1639397863506,'驾驶汽车在冰雪道路上怎样安全行车','[{\"text\":\"A.开启雾行驶\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.利用发动机制动\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.必须降低车速\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\",\"checked\":true}]',40,'B,C,D','DSRFSER',40,'B,C,D'),(1639398257711,'2021-12-13 12:24:16',1639398187581,'1',1639397641381,'科目四考试',1639397785684,'驾驶机动车在隧道行驶时，眼睛的明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',30,'B','会影响行车安全',0,'A'),(1639399070147,'2021-12-13 12:37:49',1639398722897,'4',1639397641381,'科目四考试',1639397735188,'下长坡时，控制车速的正确方法是什么','[{\"text\":\"A.空档滑行\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.彩霞离合踏板滑行\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.挂低速挡\",\"code\":\"D\",\"checked\":true}]',30,'D','填写正确答案解析',30,'D'),(1639399074373,'2021-12-13 12:37:53',1639398722897,'4',1639397641381,'科目四考试',1639397863506,'驾驶汽车在冰雪道路上怎样安全行车','[{\"text\":\"A.开启雾行驶\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.利用发动机制动\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.必须降低车速\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\",\"checked\":true}]',40,'B,C,D','DSRFSER',40,'B,C,D'),(1639399077547,'2021-12-13 12:37:57',1639398722897,'4',1639397641381,'科目四考试',1639397785684,'眼睛的明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',30,'B','会影响行车安全',0,'A'),(1639400906331,'2021-12-13 13:08:25',1639398187581,'1',1639400429439,'科目四考试',1639400516110,'下长坡时，控制车速的正确方法是什么','[{\"text\":\"A.空挡滑行\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.踩下礼盒器踏板滑行\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.挂低速挡\",\"code\":\"D\",\"checked\":true}]',30,'D','填写正确答案解析',30,'D'),(1639400909639,'2021-12-13 13:08:28',1639398187581,'1',1639400429439,'科目四考试',1639400645192,'驾驶汽车在冰雪道路上怎么安全行驶','[{\"text\":\"A.开启雾灯行驶\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.利用发动机制动\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.必须挂低速挡\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\",\"checked\":true}]',40,'B,C,D','FSDFRD',40,'B,C,D'),(1639400913724,'2021-12-13 13:08:33',1639398187581,'1',1639400429439,'科目四考试',1639400567500,'眼睛的明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',30,'B','会影响行车安全',0,'A'),(1639401472078,'2021-12-13 13:17:51',1639398187581,'1',1639401090392,'科目四考试',1639401173608,'下长坡时，控制车速最正确做法是','[{\"text\":\"A.空档滑行\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.踩下离合器踏板滑行\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.挂低速挡\",\"code\":\"D\",\"checked\":true}]',30,'D','填写正确答案解析',30,'D'),(1639401475265,'2021-12-13 13:17:54',1639398187581,'1',1639401090392,'科目四考试',1639401273844,'驾驶汽车在冰雪道路上怎么安全行驶','[{\"text\":\"A.开启雾灯行驶\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.利用发动机制动\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.必须降低车速\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\",\"checked\":true}]',40,'B,C,D','FRTRE',40,'B,C,D'),(1639401477903,'2021-12-13 13:17:57',1639398187581,'1',1639401090392,'科目四考试',1639401209573,'眼睛明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',30,'B','会影响行车安全',0,'A'),(1639402854078,'2021-12-13 13:40:53',1639402701758,'8',1639401090392,'科目四考试',1639401173608,'下长坡时，控制车速最正确做法是','[{\"text\":\"A.空档滑行\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.使用驻车制动器\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.踩下离合器踏板滑行\",\"code\":\"C\",\"checked\":false},{\"text\":\"D.挂低速挡\",\"code\":\"D\",\"checked\":true}]',30,'D','填写正确答案解析',30,'D'),(1639402856917,'2021-12-13 13:40:56',1639402701758,'8',1639401090392,'科目四考试',1639401273844,'驾驶汽车在冰雪道路上怎么安全行驶','[{\"text\":\"A.开启雾灯行驶\",\"code\":\"A\",\"checked\":false},{\"text\":\"B.利用发动机制动\",\"code\":\"B\",\"checked\":true},{\"text\":\"C.必须降低车速\",\"code\":\"C\",\"checked\":true},{\"text\":\"D.必要时安装防滑链\",\"code\":\"D\",\"checked\":true}]',40,'B,C,D','FRTRE',40,'B,C,D'),(1639402859107,'2021-12-13 13:40:59',1639402701758,'8',1639401090392,'科目四考试',1639401209573,'眼睛明暗适应过程不会影响行车安全','[{\"text\":\"A.对\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.错\",\"code\":\"B\",\"checked\":false}]',30,'B','会影响行车安全',0,'A');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiakaowenzhang`
--

DROP TABLE IF EXISTS `jiakaowenzhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiakaowenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401384293 DEFAULT CHARSET=utf8 COMMENT='驾考文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiakaowenzhang`
--

LOCK TABLES `jiakaowenzhang` WRITE;
/*!40000 ALTER TABLE `jiakaowenzhang` DISABLE KEYS */;
INSERT INTO `jiakaowenzhang` VALUES (31,'2021-12-13 12:05:19','标题1','upload/jiakaowenzhang_fengmian1.jpg','内容1','2021-12-13','驾校账号1','驾校名称1'),(32,'2021-12-13 12:05:19','标题2','upload/1639397304704.jpg','<p>内容2</p>','2021-12-13','驾校账号2','驾校名称2'),(33,'2021-12-13 12:05:19','标题3','upload/jiakaowenzhang_fengmian3.jpg','内容3','2021-12-13','驾校账号3','驾校名称3'),(35,'2021-12-13 12:05:19','标题5','upload/1639397313548.jpg','<p>内容5</p>','2021-12-13','驾校账号5','驾校名称5'),(36,'2021-12-13 12:05:19','标题6','upload/1639397321402.jpg','<p>内容6</p>','2021-12-13','驾校账号6','驾校名称6'),(1639401384292,'2021-12-13 13:16:24','倒车入库技巧','upload/1639401365893.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">“倒车入库的技巧如下： 1、技巧一： 学会判断停车位是否合格。 2、技巧二： 后视镜观察车库边线，决定倒车时方向盘的角度。 3、技巧三： 并排时的间隙应多预留些距离。”</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://localhost:8080/ssm856p8/upload/1639401382668.jpg\"></p>','2021-12-13','5','中英驾校');
/*!40000 ALTER TABLE `jiakaowenzhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaxiao`
--

DROP TABLE IF EXISTS `jiaxiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaozhanghao` varchar(200) NOT NULL COMMENT '驾校账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaxiaomingcheng` varchar(200) NOT NULL COMMENT '驾校名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaxiaozhanghao` (`jiaxiaozhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401346810 DEFAULT CHARSET=utf8 COMMENT='驾校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaxiao`
--

LOCK TABLES `jiaxiao` WRITE;
/*!40000 ALTER TABLE `jiaxiao` DISABLE KEYS */;
INSERT INTO `jiaxiao` VALUES (21,'2021-12-13 12:05:19','驾校账号1','123456','驾校名称1','upload/jiaxiao_tupian1.jpg','联系人1','13823888881','440300199101010001','驾校地址1'),(22,'2021-12-13 12:05:19','驾校账号2','123456','驾校名称2','upload/jiaxiao_tupian2.jpg','联系人2','13823888882','440300199202020002','驾校地址2'),(23,'2021-12-13 12:05:19','驾校账号3','123456','驾校名称3','upload/jiaxiao_tupian3.jpg','联系人3','13823888883','440300199303030003','驾校地址3'),(24,'2021-12-13 12:05:19','驾校账号4','123456','驾校名称4','upload/jiaxiao_tupian4.jpg','联系人4','13823888884','440300199404040004','驾校地址4'),(25,'2021-12-13 12:05:19','驾校账号5','123456','驾校名称5','upload/jiaxiao_tupian5.jpg','联系人5','13823888885','440300199505050005','驾校地址5'),(26,'2021-12-13 12:05:19','驾校账号6','123456','驾校名称6','upload/jiaxiao_tupian6.jpg','联系人6','13823888886','440300199606060006','驾校地址6'),(1639401346809,'2021-12-13 13:15:46','5','5','中英驾校','upload/1639401355067.jpg','张张','12345678978','123456456789789456','太阳中路');
/*!40000 ALTER TABLE `jiaxiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhaoleixing`
--

DROP TABLE IF EXISTS `jiazhaoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhaoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhaoleixing` varchar(200) NOT NULL COMMENT '驾照类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiazhaoleixing` (`jiazhaoleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401054485 DEFAULT CHARSET=utf8 COMMENT='驾照类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhaoleixing`
--

LOCK TABLES `jiazhaoleixing` WRITE;
/*!40000 ALTER TABLE `jiazhaoleixing` DISABLE KEYS */;
INSERT INTO `jiazhaoleixing` VALUES (41,'2021-12-13 12:05:19','驾照类型1'),(42,'2021-12-13 12:05:19','驾照类型2'),(43,'2021-12-13 12:05:19','驾照类型3'),(1639397595973,'2021-12-13 12:13:15','A1'),(1639401054484,'2021-12-13 13:10:54','C1');
/*!40000 ALTER TABLE `jiazhaoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshichangci`
--

DROP TABLE IF EXISTS `kaoshichangci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshichangci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshichangci` varchar(200) NOT NULL COMMENT '考试场次',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoshichangci` (`kaoshichangci`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401076784 DEFAULT CHARSET=utf8 COMMENT='考试场次';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshichangci`
--

LOCK TABLES `kaoshichangci` WRITE;
/*!40000 ALTER TABLE `kaoshichangci` DISABLE KEYS */;
INSERT INTO `kaoshichangci` VALUES (91,'2021-12-13 12:05:19','考试场次1'),(92,'2021-12-13 12:05:19','考试场次2'),(93,'2021-12-13 12:05:19','考试场次3'),(94,'2021-12-13 12:05:19','考试场次4'),(95,'2021-12-13 12:05:19','考试场次5'),(96,'2021-12-13 12:05:19','考试场次6'),(1639400413622,'2021-12-13 13:00:13','第一场'),(1639401076783,'2021-12-13 13:11:16','第二场');
/*!40000 ALTER TABLE `kaoshichangci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshichangdi`
--

DROP TABLE IF EXISTS `kaoshichangdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshichangdi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshichangdi` varchar(200) NOT NULL COMMENT '考试场地',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoshichangdi` (`kaoshichangdi`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401066454 DEFAULT CHARSET=utf8 COMMENT='考试场地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshichangdi`
--

LOCK TABLES `kaoshichangdi` WRITE;
/*!40000 ALTER TABLE `kaoshichangdi` DISABLE KEYS */;
INSERT INTO `kaoshichangdi` VALUES (81,'2021-12-13 12:05:19','考试场地1'),(82,'2021-12-13 12:05:19','考试场地2'),(83,'2021-12-13 12:05:19','考试场地3'),(84,'2021-12-13 12:05:19','考试场地4'),(85,'2021-12-13 12:05:19','考试场地5'),(86,'2021-12-13 12:05:19','考试场地6'),(1639400393468,'2021-12-13 12:59:52','中英驾校'),(1639401066453,'2021-12-13 13:11:06','城西驾校');
/*!40000 ALTER TABLE `kaoshichangdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshixinxi`
--

DROP TABLE IF EXISTS `kaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshikemu` varchar(200) DEFAULT NULL COMMENT '考试科目',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `kaoshineirong` longtext COMMENT '考试内容',
  `kaoshichangdi` varchar(200) DEFAULT NULL COMMENT '考试场地',
  `kaoshiriqi` date DEFAULT NULL COMMENT '考试日期',
  `kaoshichangci` varchar(200) DEFAULT NULL COMMENT '考试场次',
  `jiezhishijian` datetime DEFAULT NULL COMMENT '截止时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401428921 DEFAULT CHARSET=utf8 COMMENT='考试信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshixinxi`
--

LOCK TABLES `kaoshixinxi` WRITE;
/*!40000 ALTER TABLE `kaoshixinxi` DISABLE KEYS */;
INSERT INTO `kaoshixinxi` VALUES (101,'2021-12-13 12:05:19','科目二','upload/kaoshixinxi_fengmiantu1.jpg','考试内容1','考试场地1','2021-12-13','考试场次1','2021-12-13 20:05:19','驾校账号1','驾校名称1'),(102,'2021-12-13 12:05:19','科目二','upload/kaoshixinxi_fengmiantu2.jpg','考试内容2','考试场地2','2021-12-13','考试场次2','2021-12-13 20:05:19','驾校账号2','驾校名称2'),(103,'2021-12-13 12:05:19','科目二','upload/1639397403824.jpg','考试内容3','考试场地3','2021-12-13','考试场次3','2021-12-13 20:05:19','驾校账号3','驾校名称3'),(104,'2021-12-13 12:05:19','科目二','upload/1639397411764.jpg','考试内容4','考试场地4','2021-12-13','考试场次4','2021-12-13 20:05:19','驾校账号4','驾校名称4'),(105,'2021-12-13 12:05:19','科目二','upload/kaoshixinxi_fengmiantu5.jpg','考试内容5','考试场地5','2021-12-13','考试场次5','2021-12-13 20:05:19','驾校账号5','驾校名称5'),(106,'2021-12-13 12:05:19','科目二','upload/1639397423907.jpg','考试内容6','考试场地6','2021-12-13','考试场次6','2021-12-13 20:05:19','驾校账号6','驾校名称6'),(1639401428920,'2021-12-13 13:17:08','科目二','upload/1639401404507.jpg','包括了倒车左右入库、侧方停车、曲线行驶、直角转弯、坡道定点停车和起步五个内容。','中英驾校','2021-12-25','第二场','2021-12-21 20:00:00','5','中英驾校');
/*!40000 ALTER TABLE `kaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshiyuyue`
--

DROP TABLE IF EXISTS `kaoshiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshikemu` varchar(200) DEFAULT NULL COMMENT '考试科目',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `kaoshichangdi` varchar(200) DEFAULT NULL COMMENT '考试场地',
  `kaoshiriqi` varchar(200) DEFAULT NULL COMMENT '考试日期',
  `kaoshichangci` varchar(200) DEFAULT NULL COMMENT '考试场次',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402755306 DEFAULT CHARSET=utf8 COMMENT='考试预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshiyuyue`
--

LOCK TABLES `kaoshiyuyue` WRITE;
/*!40000 ALTER TABLE `kaoshiyuyue` DISABLE KEYS */;
INSERT INTO `kaoshiyuyue` VALUES (111,'2021-12-13 12:05:19','考试科目1','upload/kaoshiyuyue_fengmiantu1.jpg','考试场地1','考试日期1','考试场次1','2021-12-13 20:05:19','驾校账号1','驾校名称1','学员账号1','学员姓名1','手机1','身份证1','是','',1),(112,'2021-12-13 12:05:19','考试科目2','upload/kaoshiyuyue_fengmiantu2.jpg','考试场地2','考试日期2','考试场次2','2021-12-13 20:05:19','驾校账号2','驾校名称2','学员账号2','学员姓名2','手机2','身份证2','是','',2),(113,'2021-12-13 12:05:19','考试科目3','upload/1639397431898.jpg','考试场地3','考试日期3','考试场次3','2021-12-13 20:05:19','驾校账号3','驾校名称3','学员账号3','学员姓名3','手机3','身份证3','是','',3),(114,'2021-12-13 12:05:19','考试科目4','upload/kaoshiyuyue_fengmiantu4.jpg','考试场地4','考试日期4','考试场次4','2021-12-13 20:05:19','驾校账号4','驾校名称4','学员账号4','学员姓名4','手机4','身份证4','是','',4),(115,'2021-12-13 12:05:19','考试科目5','upload/kaoshiyuyue_fengmiantu5.jpg','考试场地5','考试日期5','考试场次5','2021-12-13 20:05:19','驾校账号5','驾校名称5','学员账号5','学员姓名5','手机5','身份证5','是','',5),(116,'2021-12-13 12:05:19','考试科目6','upload/kaoshiyuyue_fengmiantu6.jpg','考试场地6','考试日期6','考试场次6','2021-12-13 20:05:19','驾校账号6','驾校名称6','学员账号6','学员姓名6','手机6','身份证6','是','',6),(1639401457358,'2021-12-13 13:17:36','科目二','upload/1639401404507.jpg','中英驾校','2021-12-25','第二场','2021-12-13 21:17:35','5','中英驾校','1','陈一','12345678941','123456789789456123','是','ok',1639398187581),(1639402592817,'2021-12-13 13:36:32','科目二','upload/1639397423907.jpg','考试场地6','2021-12-13','考试场次6','2021-12-13 21:36:29','驾校账号6','驾校名称6','7','陈一','12345678978','123456789789456123','','',1639402534653),(1639402755305,'2021-12-13 13:39:14','科目二','upload/1639401404507.jpg','中英驾校','2021-12-25','第二场','2021-12-13 21:39:11','5','中英驾校','8','陈一','12345678978','123456456789789123','是','ok',1639402701758);
/*!40000 ALTER TABLE `kaoshiyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liancheyuyue`
--

DROP TABLE IF EXISTS `liancheyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liancheyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `yuyuekemu` varchar(200) DEFAULT NULL COMMENT '预约科目',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402818207 DEFAULT CHARSET=utf8 COMMENT='练车预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liancheyuyue`
--

LOCK TABLES `liancheyuyue` WRITE;
/*!40000 ALTER TABLE `liancheyuyue` DISABLE KEYS */;
INSERT INTO `liancheyuyue` VALUES (71,'2021-12-13 12:05:19','驾校账号1','驾校名称1','upload/liancheyuyue_tupian1.jpg','驾校地址1','科目二','2021-12-13 20:05:19','学员账号1','学员姓名1','手机1','是','',1),(72,'2021-12-13 12:05:19','驾校账号2','驾校名称2','upload/1639397375653.jpg','驾校地址2','科目二','2021-12-13 20:05:19','学员账号2','学员姓名2','手机2','是','',2),(73,'2021-12-13 12:05:19','驾校账号3','驾校名称3','upload/liancheyuyue_tupian3.jpg','驾校地址3','科目二','2021-12-13 20:05:19','学员账号3','学员姓名3','手机3','是','',3),(74,'2021-12-13 12:05:19','驾校账号4','驾校名称4','upload/liancheyuyue_tupian4.jpg','驾校地址4','科目二','2021-12-13 20:05:19','学员账号4','学员姓名4','手机4','是','',4),(75,'2021-12-13 12:05:19','驾校账号5','驾校名称5','upload/1639397385981.jpg','驾校地址5','科目二','2021-12-13 20:05:19','学员账号5','学员姓名5','手机5','是','',5),(76,'2021-12-13 12:05:19','驾校账号6','驾校名称6','upload/1639397394625.jpg','驾校地址6','科目二','2021-12-13 20:05:19','学员账号6','学员姓名6','手机6','是','',6),(1639401537650,'2021-12-13 13:18:56','5','中英驾校','upload/1639401355067.jpg','太阳中路','科目二','2021-12-14 14:00:00','1','陈一','12345678941','是','ok',1639398187581),(1639402818206,'2021-12-13 13:40:17','5','中英驾校','upload/1639401355067.jpg','太阳中路','科目二','2021-12-14 14:40:09','8','陈一','12345678978','','',1639402701758);
/*!40000 ALTER TABLE `liancheyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639401319553 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (162,'2021-12-13 12:05:19','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/1639397453608.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(163,'2021-12-13 12:05:19','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/1639397461627.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(164,'2021-12-13 12:05:19','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/1639397470089.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(165,'2021-12-13 12:05:19','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/1639397478744.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(166,'2021-12-13 12:05:19','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/1639397487614.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1639401319552,'2021-12-13 13:15:19','可以发布公告信息','简介内容','upload/1639401300208.jpg','<p>公告内容LJSKALRFRELSDTGTFLYHT</p><p><img src=\"http://localhost:8080/ssm856p8/upload/1639401318139.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402751357 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1639398771930,'2021-12-13 12:32:51',1639398722897,1639398025803,'jiakaowenzhang','倒车入库技巧','upload/1639398015886.jpg','1'),(1639402557258,'2021-12-13 13:35:56',1639402534653,1639401384292,'jiakaowenzhang','倒车入库技巧','upload/1639401365893.jpg','1'),(1639402570691,'2021-12-13 13:36:09',1639402534653,1639401395540,'baomingrukou','中英驾校','upload/1639401355067.jpg','1'),(1639402718735,'2021-12-13 13:38:37',1639402701758,1639401384292,'jiakaowenzhang','倒车入库技巧','upload/1639401365893.jpg','1'),(1639402736153,'2021-12-13 13:38:55',1639402701758,1639401395540,'baomingrukou','中英驾校','upload/1639401355067.jpg','1');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','sq2curte2j4jfg4svgvl6y6jcc3ykgcc','2021-12-13 12:08:01','2021-12-13 14:20:05'),(2,1639397951679,'2','jiaxiao','驾校','ip49ajtwkv5on3w1r7qenzpzrrm52frf','2021-12-13 12:19:17','2021-12-13 13:34:38'),(3,1639398187581,'1','xueyuan','学员','cecoi6o6w7tb1457a43psw5kz9fpe0rh','2021-12-13 12:23:11','2021-12-13 14:07:39'),(4,1639398589684,'3','xueyuan','学员','zhajihqkyj7l8hy9omc0mq7f8ah0nkih','2021-12-13 12:30:33','2021-12-13 13:30:33'),(5,1639398722897,'4','xueyuan','学员','afi301ynvf96j91wpcowzav9kz4iecm9','2021-12-13 12:32:39','2021-12-13 13:32:40'),(6,1639400721288,'2','jiaxiao','驾校','9pn3jgeq1itw0vznictpf4tlig709wnd','2021-12-13 13:05:26','2021-12-13 14:05:26'),(7,1639401346809,'5','jiaxiao','驾校','3ql6qj31jxkq29fb6c2l0t7fkx45sxx5','2021-12-13 13:15:51','2021-12-13 14:37:12'),(8,1639402483202,'6','xueyuan','学员','5lpr0l2m2aq5j6p3cd9zsawddf2hr99j','2021-12-13 13:34:49','2021-12-13 14:34:50'),(9,1639402534653,'7','xueyuan','学员','urs1wxwm5c4spj4a6m8gf4ay9e7v682g','2021-12-13 13:35:38','2021-12-13 14:35:39'),(10,1639402701758,'8','xueyuan','学员','iozqbj2ofiae34o3bzp863cey8xy537u','2021-12-13 13:38:25','2021-12-13 14:38:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-12-13 12:05:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) NOT NULL COMMENT '学员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueyuanxingming` varchar(200) NOT NULL COMMENT '学员姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuanzhanghao` (`xueyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402701759 DEFAULT CHARSET=utf8 COMMENT='学员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (11,'2021-12-13 12:05:19','学员账号1','123456','学员姓名1',1,'男','upload/xueyuan_touxiang1.jpg','13823888881','440300199101010001'),(12,'2021-12-13 12:05:19','学员账号2','123456','学员姓名2',2,'男','upload/xueyuan_touxiang2.jpg','13823888882','440300199202020002'),(13,'2021-12-13 12:05:19','学员账号3','123456','学员姓名3',3,'男','upload/xueyuan_touxiang3.jpg','13823888883','440300199303030003'),(14,'2021-12-13 12:05:19','学员账号4','123456','学员姓名4',4,'男','upload/xueyuan_touxiang4.jpg','13823888884','440300199404040004'),(15,'2021-12-13 12:05:19','学员账号5','123456','学员姓名5',5,'男','upload/xueyuan_touxiang5.jpg','13823888885','440300199505050005'),(16,'2021-12-13 12:05:19','学员账号6','123456','学员姓名6',6,'男','upload/xueyuan_touxiang6.jpg','13823888886','440300199606060006'),(1639398187581,'2021-12-13 12:23:07','1','1','陈一',25,'女','upload/1639398195713.jpg','12345678941','123456789789456123'),(1639402483202,'2021-12-13 13:34:43','6','6','陈一',25,'女','upload/1639402504684.jpg','12345678978','123456789789456123'),(1639402534653,'2021-12-13 13:35:34','7','7','陈一',26,'女','upload/1639402542856.jpg','12345678978','123456789789456123'),(1639402701758,'2021-12-13 13:38:21','8','8','陈一',25,'女','upload/1639402709777.png','12345678978','123456456789789123');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuanbaoming`
--

DROP TABLE IF EXISTS `xueyuanbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuanbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '驾校账号',
  `jiaxiaomingcheng` varchar(200) DEFAULT NULL COMMENT '驾校名称',
  `jiaxiaodizhi` varchar(200) DEFAULT NULL COMMENT '驾校地址',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiazhaoleixing` varchar(200) DEFAULT NULL COMMENT '驾照类型',
  `xuechefeiyong` varchar(200) DEFAULT NULL COMMENT '学车费用',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1639402739061 DEFAULT CHARSET=utf8 COMMENT='学员报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuanbaoming`
--

LOCK TABLES `xueyuanbaoming` WRITE;
/*!40000 ALTER TABLE `xueyuanbaoming` DISABLE KEYS */;
INSERT INTO `xueyuanbaoming` VALUES (61,'2021-12-13 12:05:19','驾校账号1','驾校名称1','驾校地址1','upload/xueyuanbaoming_tupian1.jpg','驾照类型1','学车费用1','2021-12-13','学员账号1','学员姓名1','手机1','身份证1','是','','未支付',1),(62,'2021-12-13 12:05:19','驾校账号2','驾校名称2','驾校地址2','upload/1639397364315.jpg','驾照类型2','学车费用2','2021-12-13','学员账号2','学员姓名2','手机2','身份证2','是','','未支付',2),(63,'2021-12-13 12:05:19','驾校账号3','驾校名称3','驾校地址3','upload/xueyuanbaoming_tupian3.jpg','驾照类型3','学车费用3','2021-12-13','学员账号3','学员姓名3','手机3','身份证3','是','','未支付',3),(64,'2021-12-13 12:05:19','驾校账号4','驾校名称4','驾校地址4','upload/xueyuanbaoming_tupian4.jpg','驾照类型4','学车费用4','2021-12-13','学员账号4','学员姓名4','手机4','身份证4','是','','未支付',4),(65,'2021-12-13 12:05:19','驾校账号5','驾校名称5','驾校地址5','upload/xueyuanbaoming_tupian5.jpg','驾照类型5','学车费用5','2021-12-13','学员账号5','学员姓名5','手机5','身份证5','是','','未支付',5),(66,'2021-12-13 12:05:19','驾校账号6','驾校名称6','驾校地址6','upload/xueyuanbaoming_tupian6.jpg','驾照类型6','学车费用6','2021-12-13','学员账号6','学员姓名6','手机6','身份证6','是','','未支付',6),(1639401440119,'2021-12-13 13:17:19','5','中英驾校','太阳中路','upload/1639401355067.jpg','A1','5000','2021-12-13','1','陈一','12345678941','123456789789456123','是','ok','已支付',1639398187581),(1639402573122,'2021-12-13 13:36:13','5','中英驾校','太阳中路','upload/1639401355067.jpg','A1','5000','2021-12-13','7','陈一','12345678978','123456789789456123','是','ok','已支付',1639402534653),(1639402739060,'2021-12-13 13:38:58','5','中英驾校','太阳中路','upload/1639401355067.jpg','A1','5000','2021-12-13','8','陈一','12345678978','123456456789789123','是','ok','已支付',1639402701758);
/*!40000 ALTER TABLE `xueyuanbaoming` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-19 12:57:11
