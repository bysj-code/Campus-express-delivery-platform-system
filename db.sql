/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyaunkuaidipingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyaunkuaidipingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyaunkuaidipingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 10:07:26'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 10:07:26'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-17 10:07:26'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-17 10:07:26'),(5,'dingdan_types','订单类型',1,'已发货',NULL,NULL,'2023-04-17 10:07:26'),(6,'dingdan_types','订单类型',2,'已收货',NULL,NULL,'2023-04-17 10:07:26'),(7,'kuaidi_types','快递类型',1,'快递类型1',NULL,NULL,'2023-04-17 10:07:26'),(8,'kuaidi_types','快递类型',2,'快递类型2',NULL,NULL,'2023-04-17 10:07:26'),(9,'kuaidi_types','快递类型',3,'快递类型3',NULL,NULL,'2023-04-17 10:07:26'),(10,'kuaidi_types','快递类型',4,'快递类型4',NULL,NULL,'2023-04-17 10:07:26'),(11,'jilu_types','快递记录类型',1,'中转',NULL,NULL,'2023-04-17 10:07:26'),(12,'jilu_types','快递记录类型',2,'待取',NULL,NULL,'2023-04-17 10:07:26');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `dingdan_wupin` varchar(200) DEFAULT NULL COMMENT '购买物品',
  `dingdan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `dingdan_dizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `dingdan_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `dingdan_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `dingdan_courier_number` int(11) DEFAULT NULL COMMENT '快递单号 Search111',
  `dingdan_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`dingdan_uuid_number`,`yonghu_id`,`buy_number`,`dingdan_wupin`,`dingdan_photo`,`dingdan_dizhi`,`dingdan_true_price`,`dingdan_courier_name`,`dingdan_courier_number`,`dingdan_types`,`insert_time`,`create_time`) values (1,'1681697267485',1,66,'购买物品1','upload/dingdan1.jpg','收货地址1','468.24','快递公司1',491,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(2,'1681697267446',2,31,'购买物品2','upload/dingdan2.jpg','收货地址2','196.85','快递公司2',317,1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(3,'1681697267418',3,465,'购买物品3','upload/dingdan3.jpg','收货地址3','789.13','快递公司3',146,1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(4,'1681697267511',2,151,'购买物品4','upload/dingdan4.jpg','收货地址4','610.69','快递公司4',53,1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(5,'1681697267480',2,134,'购买物品5','upload/dingdan5.jpg','收货地址5','742.13','快递公司5',223,1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(6,'1681697267489',1,298,'购买物品6','upload/dingdan6.jpg','收货地址6','209.80','快递公司6',2,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(7,'1681697267467',1,210,'购买物品7','upload/dingdan7.jpg','收货地址7','860.72','快递公司7',111,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(8,'1681697267412',1,73,'购买物品8','upload/dingdan8.jpg','收货地址8','660.03','快递公司8',391,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(9,'1681697267501',2,415,'购买物品9','upload/dingdan9.jpg','收货地址9','776.72','快递公司9',350,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(10,'1681697267493',2,400,'购买物品10','upload/dingdan10.jpg','收货地址10','155.60','快递公司10',245,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(11,'1681697267485',2,46,'购买物品11','upload/dingdan11.jpg','收货地址11','66.77','快递公司11',168,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(12,'1681697267470',1,220,'购买物品12','upload/dingdan12.jpg','收货地址12','296.38','快递公司12',435,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(13,'1681697267449',3,114,'购买物品13','upload/dingdan13.jpg','收货地址13','567.27','快递公司13',501,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(14,'1681697267441',2,154,'购买物品14','upload/dingdan14.jpg','收货地址14','529.35','快递公司14',18,2,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(15,'1681701863067',1,50,'生活用品','/upload/1681701883886.jpg','家里','500.00','111',123123,1,'2023-04-17 11:25:04','2023-04-17 11:25:04');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-17 10:07:47','公告详情1','2023-04-17 10:07:47'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-17 10:07:47','公告详情2','2023-04-17 10:07:47'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-17 10:07:47','公告详情3','2023-04-17 10:07:47'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-17 10:07:47','公告详情4','2023-04-17 10:07:47'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-17 10:07:47','公告详情5','2023-04-17 10:07:47'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-17 10:07:47','公告详情6','2023-04-17 10:07:47'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-17 10:07:47','公告详情7','2023-04-17 10:07:47'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-17 10:07:47','公告详情8','2023-04-17 10:07:47'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-17 10:07:47','公告详情9','2023-04-17 10:07:47'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-17 10:07:47','公告详情10','2023-04-17 10:07:47'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-17 10:07:47','公告详情11','2023-04-17 10:07:47'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-17 10:07:47','公告详情12','2023-04-17 10:07:47'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-17 10:07:47','公告详情13','2023-04-17 10:07:47'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-17 10:07:47','公告详情14','2023-04-17 10:07:47');

/*Table structure for table `jilu` */

DROP TABLE IF EXISTS `jilu`;

CREATE TABLE `jilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kuaidi_id` int(11) DEFAULT NULL COMMENT '快递',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jilu_name` varchar(200) DEFAULT NULL COMMENT '快递记录名称  Search111 ',
  `jilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '快递记录编号',
  `jilu_fachu_address` varchar(200) DEFAULT NULL COMMENT '发出地',
  `jilu_jieshou_address` varchar(200) DEFAULT NULL COMMENT '接受地',
  `jilu_types` int(11) DEFAULT NULL COMMENT '快递记录类型 Search111',
  `jilu_content` longtext COMMENT '快递记录介绍 ',
  `jilu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='快递记录';

/*Data for the table `jilu` */

insert  into `jilu`(`id`,`kuaidi_id`,`yonghu_id`,`jilu_name`,`jilu_uuid_number`,`jilu_fachu_address`,`jilu_jieshou_address`,`jilu_types`,`jilu_content`,`jilu_delete`,`insert_time`,`create_time`) values (1,173,1,'快递记录名称1','1681697267513','发出地1','接受地1',1,'快递记录介绍1',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(2,90,2,'快递记录名称2','1681697267504','发出地2','接受地2',1,'快递记录介绍2',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(3,382,3,'快递记录名称3','1681697267446','发出地3','接受地3',2,'快递记录介绍3',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(4,299,3,'快递记录名称4','1681697267508','发出地4','接受地4',2,'快递记录介绍4',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(5,68,2,'快递记录名称5','1681697267499','发出地5','接受地5',1,'快递记录介绍5',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(6,12,1,'快递记录名称6','1681697267446','发出地6','接受地6',1,'快递记录介绍6',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(7,487,1,'快递记录名称7','1681697267509','发出地7','接受地7',2,'快递记录介绍7',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(8,135,3,'快递记录名称8','1681697267486','发出地8','接受地8',1,'快递记录介绍8',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(9,171,1,'快递记录名称9','1681697267456','发出地9','接受地9',1,'快递记录介绍9',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(10,365,3,'快递记录名称10','1681697267487','发出地10','接受地10',2,'快递记录介绍10',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(11,35,1,'快递记录名称11','1681697267462','发出地11','接受地11',2,'快递记录介绍11',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(12,291,2,'快递记录名称12','1681697267512','发出地12','接受地12',1,'快递记录介绍12',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(13,439,1,'快递记录名称13','1681697267508','发出地13','接受地13',1,'快递记录介绍13',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(14,13,1,'快递记录名称14','1681697267438','发出地14','接受地14',1,'快递记录介绍14',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(15,15,1,'记录','1681701971280','北京','上海',1,'<p>从北京发往上海中转中</p>',1,'2023-04-17 11:26:54','2023-04-17 11:26:54');

/*Table structure for table `kuaidi` */

DROP TABLE IF EXISTS `kuaidi`;

CREATE TABLE `kuaidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dingdan_id` int(11) DEFAULT NULL COMMENT '订单',
  `kuaidi_name` varchar(200) DEFAULT NULL COMMENT '快递名称  Search111 ',
  `kuaidi_uuid_number` varchar(200) DEFAULT NULL COMMENT '快递编号',
  `kuaidi_photo` varchar(200) DEFAULT NULL COMMENT '快递照片',
  `kuaidi_types` int(11) DEFAULT NULL COMMENT '快递类型 Search111',
  `kuaidi_content` longtext COMMENT '快递介绍 ',
  `kuaidi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='快递';

/*Data for the table `kuaidi` */

insert  into `kuaidi`(`id`,`yonghu_id`,`dingdan_id`,`kuaidi_name`,`kuaidi_uuid_number`,`kuaidi_photo`,`kuaidi_types`,`kuaidi_content`,`kuaidi_delete`,`insert_time`,`create_time`) values (1,1,338,'快递名称1','1681697267420','upload/kuaidi1.jpg',1,'快递介绍1',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(2,2,347,'快递名称2','1681697267498','upload/kuaidi2.jpg',1,'快递介绍2',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(3,3,365,'快递名称3','1681697267488','upload/kuaidi3.jpg',3,'快递介绍3',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(4,1,370,'快递名称4','1681697267493','upload/kuaidi4.jpg',3,'快递介绍4',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(5,2,21,'快递名称5','1681697267505','upload/kuaidi5.jpg',4,'快递介绍5',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(6,3,48,'快递名称6','1681697267501','upload/kuaidi6.jpg',3,'快递介绍6',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(7,1,224,'快递名称7','1681697267476','upload/kuaidi7.jpg',1,'快递介绍7',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(8,2,247,'快递名称8','1681697267483','upload/kuaidi8.jpg',3,'快递介绍8',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(9,3,25,'快递名称9','1681697267518','upload/kuaidi9.jpg',3,'快递介绍9',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(10,1,80,'快递名称10','1681697267431','upload/kuaidi10.jpg',4,'快递介绍10',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(11,2,250,'快递名称11','1681697267471','upload/kuaidi11.jpg',3,'快递介绍11',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(12,3,484,'快递名称12','1681697267456','upload/kuaidi12.jpg',3,'快递介绍12',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(13,1,489,'快递名称13','1681697267469','upload/kuaidi13.jpg',3,'快递介绍13',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(14,2,266,'快递名称14','1681697267502','upload/kuaidi14.jpg',3,'快递介绍14',1,'2023-04-17 10:07:47','2023-04-17 10:07:47'),(15,1,15,'快递','1681701915697','/upload/1681701939468.jpg',4,'<p>快递类型选择那个快递</p>',1,'2023-04-17 11:25:41','2023-04-17 11:25:41');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','qtcd96tgx8aibd21voaen9mxgl6xckbo','2023-04-17 10:13:58','2023-04-17 12:18:39'),(2,1,'admin','users','管理员','tx1psvi1x0ixp68wif2q1ncqduqypke9','2023-04-17 10:21:12','2023-04-17 12:30:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 10:07:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-17 10:07:47'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-17 10:07:47'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-17 10:07:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
