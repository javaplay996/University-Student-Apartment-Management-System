/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshenggongyuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshenggongyuguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshenggongyuguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图11111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-18 10:01:28'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-18 10:01:28'),(3,'sushe_types','宿舍类型',1,'宿舍类型1',NULL,NULL,'2023-03-18 10:01:28'),(4,'sushe_types','宿舍类型',2,'宿舍类型2',NULL,NULL,'2023-03-18 10:01:28'),(5,'sushe_types','宿舍类型',3,'宿舍类型3',NULL,NULL,'2023-03-18 10:01:28'),(6,'sushe_types','宿舍类型',4,'宿舍类型4',NULL,NULL,'2023-03-18 10:01:28'),(7,'louceng_types','楼层',1,'楼层1',NULL,NULL,'2023-03-18 10:01:28'),(8,'louceng_types','楼层',2,'楼层2',NULL,NULL,'2023-03-18 10:01:28'),(9,'danyuan_types','单元',1,'单元1',NULL,NULL,'2023-03-18 10:01:28'),(10,'danyuan_types','单元',2,'单元2',NULL,NULL,'2023-03-18 10:01:28'),(11,'sushe_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-18 10:01:28'),(12,'sushe_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-18 10:01:28'),(13,'sushe_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-18 10:01:28'),(14,'sushe_tuisu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-18 10:01:28'),(15,'sushe_tuisu_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-18 10:01:28'),(16,'sushe_tuisu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-18 10:01:28'),(17,'xuesheng_kaoqin_types','学生考勤类型',1,'日常考勤',NULL,NULL,'2023-03-18 10:01:28'),(18,'xuesheng_kaoqin_types','学生考勤类型',2,'考勤类型2',NULL,NULL,'2023-03-18 10:01:28'),(19,'xuesheng_kaoqin_list_types','打卡状态',1,'未打卡',NULL,NULL,'2023-03-18 10:01:28'),(20,'xuesheng_kaoqin_list_types','打卡状态',2,'已打卡',NULL,NULL,'2023-03-18 10:01:28'),(21,'sushe_tousu_types','投诉类型',1,'投诉类型1',NULL,NULL,'2023-03-18 10:01:28'),(22,'sushe_tousu_types','投诉类型',2,'投诉类型2',NULL,NULL,'2023-03-18 10:01:29'),(23,'sushe_tousu_types','投诉类型',3,'投诉类型3',NULL,NULL,'2023-03-18 10:01:29'),(24,'sushe_tousu_zhuangtai_types','投诉状态',1,'已投诉',NULL,NULL,'2023-03-18 10:01:29'),(25,'sushe_tousu_zhuangtai_types','投诉状态',2,'已处理',NULL,NULL,'2023-03-18 10:01:29'),(26,'gonggao_types','宿舍公告类型',1,'宿舍公告类型1',NULL,NULL,'2023-03-18 10:01:29'),(27,'gonggao_types','宿舍公告类型',2,'宿舍公告类型2',NULL,NULL,'2023-03-18 10:01:29'),(28,'news_types','校园资讯类型',1,'校园资讯类型1',NULL,NULL,'2023-03-18 10:01:29'),(29,'news_types','校园资讯类型',2,'校园资讯类型2',NULL,NULL,'2023-03-18 10:01:29'),(30,'shangpin_types','商品类型',1,'二手商品类型1',NULL,NULL,'2023-03-18 10:01:29'),(31,'shangpin_types','商品类型',2,'二手商品类型2',NULL,NULL,'2023-03-18 10:01:29'),(32,'shangpin_types','商品类型',3,'二手商品类型3',NULL,NULL,'2023-03-18 10:01:29'),(33,'shangpin_types','商品类型',4,'二手商品类型4',NULL,NULL,'2023-03-18 10:01:29'),(34,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-18 10:01:29'),(35,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-18 10:01:29'),(36,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-18 10:01:29'),(37,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-18 10:01:29'),(38,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-18 10:01:29'),(39,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-18 10:01:29'),(40,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-18 10:01:29'),(41,'xuesheng_kaoqin_types','学生考勤类型',3,'考勤类型3',NULL,'','2023-03-18 11:54:04');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '宿舍公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '宿舍公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '宿舍公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '宿舍公告发布时间 ',
  `gonggao_content` longtext COMMENT '宿舍公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宿舍公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'宿舍公告名称1','upload/gonggao1.jpg',2,'2023-03-18 10:03:15','宿舍公告详情1','2023-03-18 10:03:15'),(2,'宿舍公告名称2','upload/gonggao2.jpg',2,'2023-03-18 10:03:15','宿舍公告详情2','2023-03-18 10:03:15'),(3,'宿舍公告名称3','upload/gonggao3.jpg',1,'2023-03-18 10:03:15','宿舍公告详情3','2023-03-18 10:03:15'),(4,'宿舍公告名称4','upload/gonggao4.jpg',2,'2023-03-18 10:03:15','宿舍公告详情4','2023-03-18 10:03:15'),(5,'宿舍公告名称5','upload/gonggao5.jpg',1,'2023-03-18 10:03:15','宿舍公告详情5','2023-03-18 10:03:15'),(6,'宿舍公告名称6','upload/gonggao6.jpg',1,'2023-03-18 10:03:15','宿舍公告详情6','2023-03-18 10:03:15'),(7,'宿舍公告名称7','upload/gonggao7.jpg',2,'2023-03-18 10:03:15','宿舍公告详情7','2023-03-18 10:03:15'),(8,'宿舍公告名称8','upload/gonggao8.jpg',2,'2023-03-18 10:03:15','宿舍公告详情8','2023-03-18 10:03:15'),(9,'宿舍公告名称9','upload/gonggao9.jpg',1,'2023-03-18 10:03:15','宿舍公告详情9','2023-03-18 10:03:15'),(10,'宿舍公告名称10','upload/gonggao10.jpg',2,'2023-03-18 10:03:15','宿舍公告详情10','2023-03-18 10:03:15'),(11,'宿舍公告名称11','upload/gonggao11.jpg',1,'2023-03-18 10:03:15','宿舍公告详情11','2023-03-18 10:03:15'),(12,'宿舍公告名称12','upload/gonggao12.jpg',1,'2023-03-18 10:03:15','宿舍公告详情12','2023-03-18 10:03:15'),(13,'宿舍公告名称13','upload/gonggao13.jpg',1,'2023-03-18 10:03:15','宿舍公告详情13','2023-03-18 10:03:15'),(14,'宿舍公告名称14','upload/gonggao14.jpg',1,'2023-03-18 10:03:15','宿舍公告详情14','2023-03-18 10:03:15');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '校园资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '校园资讯图片 ',
  `news_types` int(11) NOT NULL COMMENT '校园资讯类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '校园资讯发布时间 ',
  `news_content` longtext COMMENT '校园资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='校园资讯信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'校园资讯名称1','upload/news1.jpg',2,'2023-03-18 10:03:15','校园资讯详情1','2023-03-18 10:03:15'),(2,'校园资讯名称2','upload/news2.jpg',2,'2023-03-18 10:03:15','校园资讯详情2','2023-03-18 10:03:15'),(3,'校园资讯名称3','upload/news3.jpg',1,'2023-03-18 10:03:15','校园资讯详情3','2023-03-18 10:03:15'),(4,'校园资讯名称4','upload/news4.jpg',1,'2023-03-18 10:03:15','校园资讯详情4','2023-03-18 10:03:15'),(5,'校园资讯名称5','upload/news5.jpg',1,'2023-03-18 10:03:15','校园资讯详情5','2023-03-18 10:03:15'),(6,'校园资讯名称6','upload/news6.jpg',2,'2023-03-18 10:03:15','校园资讯详情6','2023-03-18 10:03:15'),(7,'校园资讯名称7','upload/news7.jpg',1,'2023-03-18 10:03:15','校园资讯详情7','2023-03-18 10:03:15'),(8,'校园资讯名称8','upload/news8.jpg',1,'2023-03-18 10:03:15','校园资讯详情8','2023-03-18 10:03:15'),(9,'校园资讯名称9','upload/news9.jpg',1,'2023-03-18 10:03:15','校园资讯详情9','2023-03-18 10:03:15'),(10,'校园资讯名称10','upload/news10.jpg',2,'2023-03-18 10:03:15','校园资讯详情10','2023-03-18 10:03:15'),(11,'校园资讯名称11','upload/news11.jpg',2,'2023-03-18 10:03:15','校园资讯详情11','2023-03-18 10:03:15'),(12,'校园资讯名称12','upload/news12.jpg',2,'2023-03-18 10:03:15','校园资讯详情12','2023-03-18 10:03:15'),(13,'校园资讯名称13','upload/news13.jpg',1,'2023-03-18 10:03:15','校园资讯详情13','2023-03-18 10:03:15'),(14,'校园资讯名称14','upload/news14.jpg',2,'2023-03-18 10:03:15','校园资讯详情14','2023-03-18 10:03:15');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '二手商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '二手商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '二手商品照片',
  `shangpin_address` varchar(200) DEFAULT NULL COMMENT '交易位置',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '二手数量',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '二手商品热度',
  `shangpin_content` longtext COMMENT '二手商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='二手商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`xuesheng_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_address`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,3,'二手商品名称1','1679104995374','upload/shangpin1.jpg','交易位置1',2,101,'17.31',118,'二手商品介绍1',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,3,'二手商品名称2','1679104995377','upload/shangpin2.jpg','交易位置2',3,99,'270.65',391,'二手商品介绍2',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,2,'二手商品名称3','1679104995346','upload/shangpin3.jpg','交易位置3',3,103,'27.56',237,'二手商品介绍3',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,1,'二手商品名称4','1679104995367','upload/shangpin4.jpg','交易位置4',3,104,'274.96',293,'二手商品介绍4沟沟壑壑',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,2,'二手商品名称5','1679104995386','upload/shangpin5.jpg','交易位置5',3,105,'335.10',240,'二手商品介绍5',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(6,2,'二手商品名称6','1679104995371','upload/shangpin6.jpg','交易位置6',4,106,'230.59',357,'二手商品介绍6',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,3,'二手商品名称7','1679104995394','upload/shangpin7.jpg','交易位置7',3,107,'257.76',271,'二手商品介绍7',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,1,'二手商品名称8','1679104995324','upload/shangpin8.jpg','交易位置8',1,108,'403.68',88,'二手商品介绍8',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,3,'二手商品名称9','1679104995336','upload/shangpin9.jpg','交易位置9',1,109,'150.48',141,'二手商品介绍9',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,2,'二手商品名称10','1679104995379','upload/shangpin10.jpg','交易位置10',4,1010,'339.41',147,'二手商品介绍10',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(11,1,'二手商品名称11','1679104995368','upload/shangpin11.jpg','交易位置11',4,1011,'332.82',184,'二手商品介绍11',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,2,'二手商品名称12','1679104995365','upload/shangpin12.jpg','交易位置12',1,1012,'249.46',228,'二手商品介绍12',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(13,3,'二手商品名称13','1679104995350','upload/shangpin13.jpg','交易位置13',4,1011,'38.69',423,'二手商品介绍13',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,3,'二手商品名称14','1679104995356','upload/shangpin14.jpg','交易位置14',3,1014,'153.92',462,'二手商品介绍14',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(15,4,'标题111','1679110984350','upload/1679110991196.jpg','位置1111',3,222,'99.80',1,'辉丰股份都够烦的',1,'2023-03-18 11:43:20','2023-03-18 11:43:20');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '二手商品',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='二手商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`xuesheng_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,2,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,3,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,4,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,5,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(6,6,3,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,7,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,8,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,9,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,10,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(11,11,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,12,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(13,13,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,14,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '二手商品',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='二手商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`xuesheng_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-18 10:03:15','回复信息1','2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,2,1,'评价内容2','2023-03-18 10:03:15','回复信息2','2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,3,3,'评价内容3','2023-03-18 10:03:15','回复信息3','2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,4,1,'评价内容4','2023-03-18 10:03:15','回复信息4','2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,5,2,'评价内容5','2023-03-18 10:03:15','回复信息5','2023-03-18 10:03:15','2023-03-18 10:03:15'),(6,6,3,'评价内容6','2023-03-18 10:03:15','回复信息6','2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,7,3,'评价内容7','2023-03-18 10:03:15','回复信息7','2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,8,3,'评价内容8','2023-03-18 10:03:15','回复信息8','2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,9,2,'评价内容9','2023-03-18 10:03:15','回复信息9','2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,10,3,'评价内容10','2023-03-18 10:03:15','回复信息10','2023-03-18 10:03:15','2023-03-18 10:03:15'),(11,11,2,'评价内容11','2023-03-18 10:03:15','回复信息11','2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,12,2,'评价内容12','2023-03-18 10:03:15','回复信息12挂号哈哈哈','2023-03-18 11:58:09','2023-03-18 10:03:15'),(13,13,1,'评价内容13','2023-03-18 10:03:15','回复信息13','2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,14,1,'评价内容14','2023-03-18 10:03:15','回复信息14','2023-03-18 10:03:15','2023-03-18 10:03:15'),(15,13,1,'广东佛山的','2023-03-18 10:48:49',NULL,NULL,'2023-03-18 10:48:49'),(16,13,4,'ghhh懂法守法啥地方','2023-03-18 11:42:58',NULL,NULL,'2023-03-18 11:42:58');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '二手商品',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='二手商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`xuesheng_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1679106887711',2,1,3,'811.95',101,1,'2023-03-18 10:34:48','2023-03-18 10:34:48'),(2,'1679107283924',13,1,1,'38.69',105,1,'2023-03-18 10:41:24','2023-03-18 10:41:24'),(3,'1679110929794',13,4,1,'38.69',105,1,'2023-03-18 11:42:10','2023-03-18 11:42:10');

/*Table structure for table `suguan` */

DROP TABLE IF EXISTS `suguan`;

CREATE TABLE `suguan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `suguan_name` varchar(200) DEFAULT NULL COMMENT '宿管姓名 Search111 ',
  `suguan_phone` varchar(200) DEFAULT NULL COMMENT '宿管手机号',
  `suguan_id_number` varchar(200) DEFAULT NULL COMMENT '宿管身份证号',
  `suguan_photo` varchar(200) DEFAULT NULL COMMENT '宿管头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `suguan_email` varchar(200) DEFAULT NULL COMMENT '宿管邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿管';

/*Data for the table `suguan` */

insert  into `suguan`(`id`,`username`,`password`,`suguan_name`,`suguan_phone`,`suguan_id_number`,`suguan_photo`,`sex_types`,`suguan_email`,`create_time`) values (1,'a1','123456','宿管姓名1','17703786901','410224199010102001','upload/suguan1.jpg',1,'1@qq.com','2023-03-18 10:03:15'),(2,'a2','123456','宿管姓名2','17703786902','410224199010102002','upload/suguan2.jpg',1,'2@qq.com','2023-03-18 10:03:15'),(3,'a3','123456','宿管姓名3','17703786903','410224199010102003','upload/suguan3.jpg',2,'3@qq.com','2023-03-18 10:03:15');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_name` varchar(200) DEFAULT NULL COMMENT '宿舍名称  Search111 ',
  `sushe_uuid_number` varchar(200) DEFAULT NULL COMMENT '宿舍编号',
  `sushe_photo` varchar(200) DEFAULT NULL COMMENT '宿舍照片',
  `sushe_address` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `louceng_types` int(11) DEFAULT NULL COMMENT '楼层 Search111',
  `danyuan_types` int(11) DEFAULT NULL COMMENT '单元 Search111',
  `sushe_types` int(11) DEFAULT NULL COMMENT '宿舍类型 Search111',
  `sushe_clicknum` int(11) DEFAULT NULL COMMENT '宿舍热度',
  `sushe_content` text COMMENT '宿舍备注',
  `sushe_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宿舍';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`sushe_name`,`sushe_uuid_number`,`sushe_photo`,`sushe_address`,`louceng_types`,`danyuan_types`,`sushe_types`,`sushe_clicknum`,`sushe_content`,`sushe_delete`,`insert_time`,`create_time`) values (1,'宿舍名称1','1679104995393','upload/sushe1.jpg','宿舍位置1',2,1,1,410,'宿舍备注1',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,'宿舍名称2','1679104995357','upload/sushe2.jpg','宿舍位置2',2,1,1,118,'宿舍备注2',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,'宿舍名称3','1679104995363','upload/sushe3.jpg','宿舍位置3',2,1,4,14,'宿舍备注3',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,'宿舍名称4','1679104995386','upload/sushe4.jpg','宿舍位置4',1,1,3,178,'宿舍备注4',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,'宿舍名称5','1679104995333','upload/sushe5.jpg','宿舍位置5',1,2,4,316,'宿舍备注5',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(6,'宿舍名称6','1679104995339','upload/sushe6.jpg','宿舍位置6',2,2,2,284,'宿舍备注6',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,'宿舍名称7','1679104995324','upload/sushe7.jpg','宿舍位置7',2,2,3,57,'宿舍备注7',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,'宿舍名称8','1679104995392','upload/sushe8.jpg','宿舍位置8',2,1,1,426,'宿舍备注8',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,'宿舍名称9','1679104995339','upload/sushe9.jpg','宿舍位置9',2,2,2,3,'宿舍备注9',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,'宿舍名称10','1679104995395','upload/sushe10.jpg','宿舍位置10',2,1,1,347,'宿舍备注10',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(11,'宿舍名称11','1679104995383','upload/sushe11.jpg','宿舍位置11',2,1,2,423,'宿舍备注11',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,'宿舍名称12','1679104995388','upload/sushe12.jpg','宿舍位置12',2,2,1,149,'宿舍备注12',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(13,'宿舍名称13','1679104995355','upload/sushe13.jpg','宿舍位置13',2,2,4,473,'宿舍备注13',1,'2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,'宿舍名称14','1679104995329','upload/sushe14.jpg','宿舍位置14',2,2,4,113,'<p>宿舍备注14方法固定车标行程表</p>',1,'2023-03-18 10:03:15','2023-03-18 10:03:15');

/*Table structure for table `sushe_tousu` */

DROP TABLE IF EXISTS `sushe_tousu`;

CREATE TABLE `sushe_tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_tousu_uuid_number` varchar(200) DEFAULT NULL COMMENT '投诉编号 Search111 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `sushe_tousu_text` text COMMENT '投诉事由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `sushe_tousu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111 ',
  `sushe_tousu_zhuangtai_types` int(11) DEFAULT NULL COMMENT '投诉状态 Search111 ',
  `xuesheng_kaoqin_content` text COMMENT '投诉回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='退宿投诉';

/*Data for the table `sushe_tousu` */

insert  into `sushe_tousu`(`id`,`sushe_tousu_uuid_number`,`xuesheng_id`,`sushe_id`,`sushe_tousu_text`,`insert_time`,`sushe_tousu_types`,`sushe_tousu_zhuangtai_types`,`xuesheng_kaoqin_content`,`create_time`) values (1,'1679104995383',1,1,'投诉事由1','2023-03-18 10:03:15',1,1,'投诉回复1','2023-03-18 10:03:15'),(2,'1679104995396',1,2,'投诉事由2','2023-03-18 10:03:15',3,1,'投诉回复2','2023-03-18 10:03:15'),(3,'1679104995357',1,3,'投诉事由3','2023-03-18 10:03:15',3,2,'投诉回复3','2023-03-18 10:03:15'),(4,'1679104995336',1,4,'投诉事由4','2023-03-18 10:03:15',2,2,'投诉回复4','2023-03-18 10:03:15'),(5,'1679104995414',1,5,'投诉事由5','2023-03-18 10:03:15',1,1,'投诉回复5','2023-03-18 10:03:15'),(6,'1679104995388',2,6,'投诉事由6','2023-03-18 10:03:15',3,1,'投诉回复6','2023-03-18 10:03:15'),(7,'1679104995411',1,7,'投诉事由7','2023-03-18 10:03:15',3,1,'投诉回复7','2023-03-18 10:03:15'),(8,'1679104995328',3,8,'投诉事由8','2023-03-18 10:03:15',2,1,'投诉回复8','2023-03-18 10:03:15'),(9,'1679104995328',2,9,'投诉事由9','2023-03-18 10:03:15',2,2,'投诉回复9','2023-03-18 10:03:15'),(10,'1679104995342',1,10,'投诉事由10','2023-03-18 10:03:15',2,1,'投诉回复10','2023-03-18 10:03:15'),(11,'1679104995356',2,11,'投诉事由11','2023-03-18 10:03:15',3,1,'投诉回复11','2023-03-18 10:03:15'),(12,'1679104995405',1,12,'投诉事由12','2023-03-18 10:03:15',3,2,'投诉回复12','2023-03-18 10:03:15'),(13,'1679104995405',1,13,'投诉事由13','2023-03-18 10:03:15',1,2,'投诉回复13','2023-03-18 10:03:15'),(14,'1679104995422',1,14,'投诉事由14','2023-03-18 10:03:15',1,1,'投诉回复14','2023-03-18 10:03:15'),(17,'1679108932254',1,12,'供电公司发的广泛地好发的','2023-03-18 11:08:57',3,1,NULL,'2023-03-18 11:08:57'),(18,'1679111104680',4,12,'非广东省广东省广东省公司的','2023-03-18 11:45:09',2,2,'<p>官方回复的话费电话费的回答骨灰盒</p>','2023-03-18 11:45:09');

/*Table structure for table `sushe_tuisu` */

DROP TABLE IF EXISTS `sushe_tuisu`;

CREATE TABLE `sushe_tuisu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_tuisu_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `sushe_tuisu_text` text COMMENT '申请缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '退宿申请时间',
  `sushe_tuisu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `sushe_tuisu_yesno_text` text COMMENT '审核回复',
  `sushe_tuisu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='退宿申请';

/*Data for the table `sushe_tuisu` */

insert  into `sushe_tuisu`(`id`,`sushe_tuisu_uuid_number`,`sushe_id`,`xuesheng_id`,`sushe_tuisu_text`,`insert_time`,`sushe_tuisu_yesno_types`,`sushe_tuisu_yesno_text`,`sushe_tuisu_shenhe_time`,`create_time`) values (17,'1679111329132',11,4,'换衣服发的个梵蒂冈','2023-03-18 11:48:51',2,'和范甘迪个地方规划','2023-03-18 11:49:13','2023-03-18 11:48:51');

/*Table structure for table `sushe_yuyue` */

DROP TABLE IF EXISTS `sushe_yuyue`;

CREATE TABLE `sushe_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sushe_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `sushe_yuyue_text` text COMMENT '申请理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '宿舍申请时间',
  `sushe_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `sushe_yuyue_yesno_text` text COMMENT '审核回复',
  `sushe_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='入住申请';

/*Data for the table `sushe_yuyue` */

insert  into `sushe_yuyue`(`id`,`sushe_yuyue_uuid_number`,`sushe_id`,`xuesheng_id`,`sushe_yuyue_text`,`insert_time`,`sushe_yuyue_yesno_types`,`sushe_yuyue_yesno_text`,`sushe_yuyue_shenhe_time`,`create_time`) values (16,'1679111124525',1,4,'合格符合规定','2023-03-18 11:45:25',2,'辉丰股份个梵蒂冈地方','2023-03-18 11:45:45','2023-03-18 11:45:25'),(17,'1679111191662',11,4,'加工费辉丰股份','2023-03-18 11:46:32',2,'广东佛山的发的','2023-03-18 11:46:47','2023-03-18 11:46:32');

/*Table structure for table `sushexuesheng` */

DROP TABLE IF EXISTS `sushexuesheng`;

CREATE TABLE `sushexuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='宿舍学生';

/*Data for the table `sushexuesheng` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ow6ddu3kxh08j2zsyno87zsjaldknhtu','2023-03-18 10:09:06','2023-03-18 14:05:10'),(2,1,'a1','xuesheng','学生','di31ubp8g13zex8ryghwh20pnpkk8kvj','2023-03-18 10:34:03','2023-03-18 11:48:37'),(3,3,'a3','xuesheng','学生','e1lyt05l698faf3dfugc05ez1zmhdt2v','2023-03-18 10:42:01','2023-03-18 12:42:25'),(4,4,'a5','xuesheng','学生','6vu6yaw7yv2ijwyzxg8450eorhy6gyqi','2023-03-18 11:40:18','2023-03-18 12:42:48'),(5,1,'a1','suguan','宿管','kwjiwbf7e419d0wbdza2p4zuu2qhpjs6','2023-03-18 11:45:31','2023-03-18 12:50:19'),(6,2,'a2','xuesheng','学生','xvk2gm7zspq20femhqfvo73kz3onbqnb','2023-03-18 11:49:55','2023-03-18 12:49:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-18 10:01:28');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`new_money`,`xuesheng_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/xuesheng1.jpg',2,'999576.23','1@qq.com','2023-03-18 10:03:15'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/xuesheng2.jpg',1,'297.51','2@qq.com','2023-03-18 10:03:15'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/xuesheng3.jpg',2,'1717.12','3@qq.com','2023-03-18 10:03:15'),(4,'a5','123456','张5','17789998888','777888999914111211','upload/1679110908805.jpg',2,'999960.31','5@qq.com','2023-03-18 11:40:13');

/*Table structure for table `xuesheng_kaoqin` */

DROP TABLE IF EXISTS `xuesheng_kaoqin`;

CREATE TABLE `xuesheng_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_kaoqin_uuid_number` varchar(200) DEFAULT NULL COMMENT '考勤唯一编号 Search111 ',
  `xuesheng_kaoqin_name` varchar(200) DEFAULT NULL COMMENT '考勤标题 Search111 ',
  `xuesheng_kaoqin_types` int(11) DEFAULT NULL COMMENT '学生考勤类型 Search111',
  `xuesheng_kaoqin_content` text COMMENT '考勤详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '考勤发起时间',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '考勤截止时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生考勤';

/*Data for the table `xuesheng_kaoqin` */

insert  into `xuesheng_kaoqin`(`id`,`xuesheng_kaoqin_uuid_number`,`xuesheng_kaoqin_name`,`xuesheng_kaoqin_types`,`xuesheng_kaoqin_content`,`insert_time`,`jiezhi_time`,`create_time`) values (1,'1679104995383','考勤标题1',1,'考勤详情1','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,'1679104995423','考勤标题2',2,'考勤详情2','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,'1679104995416','考勤标题3',1,'考勤详情3','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,'1679104995368','考勤标题4',2,'考勤详情4','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,'1679104995353','考勤标题5',1,'考勤详情5','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(6,'1679104995408','考勤标题6',1,'考勤详情6','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,'1679104995342','考勤标题7',1,'考勤详情7','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,'1679104995400','考勤标题8',2,'考勤详情8','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,'1679104995417','考勤标题9',2,'考勤详情9','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,'1679104995426','考勤标题10',2,'考勤详情10','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(11,'1679104995357','考勤标题11',1,'考勤详情11','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,'1679104995394','考勤标题12',1,'考勤详情12','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(13,'1679104995405','考勤标题13',1,'考勤详情13','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,'1679104995345','考勤标题14',1,'考勤详情14','2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(15,'1679106771145','发打发斯蒂芬',1,'<p>的三分大赛公司大概多少</p>','2023-03-18 10:33:01','2023-03-20 00:00:00','2023-03-18 10:33:01'),(16,'1679111588729','考勤1111',2,'<p>好办法功夫格斗</p>','2023-03-18 11:53:18','2023-03-23 00:00:00','2023-03-18 11:53:18');

/*Table structure for table `xuesheng_kaoqin_list` */

DROP TABLE IF EXISTS `xuesheng_kaoqin_list`;

CREATE TABLE `xuesheng_kaoqin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `xuesheng_kaoqin_id` int(11) DEFAULT NULL COMMENT '考勤',
  `xuesheng_kaoqin_list_types` int(11) DEFAULT NULL COMMENT '打卡状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='学生考勤详情';

/*Data for the table `xuesheng_kaoqin_list` */

insert  into `xuesheng_kaoqin_list`(`id`,`xuesheng_id`,`xuesheng_kaoqin_id`,`xuesheng_kaoqin_list_types`,`insert_time`,`update_time`,`create_time`) values (1,2,1,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(2,1,2,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(3,2,3,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(4,2,4,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(5,3,5,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(7,3,7,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(8,1,8,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(9,2,9,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(10,3,10,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(12,2,12,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(14,3,14,1,'2023-03-18 10:03:15','2023-03-18 10:03:15','2023-03-18 10:03:15'),(15,1,15,2,'2023-03-18 10:33:01','2023-03-18 11:06:23','2023-03-18 10:33:01'),(16,2,15,2,'2023-03-18 10:33:01','2023-03-18 11:50:07','2023-03-18 10:33:01'),(17,3,15,1,'2023-03-18 10:33:01',NULL,'2023-03-18 10:33:01'),(18,1,16,1,'2023-03-18 11:53:18',NULL,'2023-03-18 11:53:18'),(19,2,16,1,'2023-03-18 11:53:18',NULL,'2023-03-18 11:53:18'),(20,3,16,1,'2023-03-18 11:53:18',NULL,'2023-03-18 11:53:18'),(21,4,16,1,'2023-03-18 11:53:18',NULL,'2023-03-18 11:53:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
