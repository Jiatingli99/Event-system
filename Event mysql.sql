/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.40 : Database - jsp_huodong_fabusys
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jsp_huodong_fabusys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `jsp_huodong_fabusys`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`cover`,`image1`,`image2`,`price`,`intro`,`stock`,`type_id`) values 
(1,'北京四日游活动','/picture/1581305022672.jpg','/picture/1581305022677.jpg','/picture/1581305022685.jpg',899,'天安门+毛泽东纪念堂+人民英雄纪念碑+故宫+八达岭长城+圆明园+水立方+鸟巢',30,1),
(2,'成都三日游活动','/picture/1581305382309.jpg','/picture/1581305382310.jpg','/picture/1581305382313.jpg',699,'DAY1:宽窄巷子→武侯祠→锦里-- 宽窄巷子；DAY2:金沙遗址博物馆→杜甫草堂→人民公园-→ 文化公园-青羊宫--  金沙遗址博物馆；DAY3成都大熊猫繁育研究基地(→ 文殊院→ 春熙路',30,1),
(3,'新疆禾木村三日游活动','/picture/1581305626226.jpg','/picture/1581305626233.jpg','/picture/1581305626239.jpg',699,'带你领略新疆特色少数名族的魅力！可体验，传统名族服饰，骑马等',30,2),
(5,'哈尔滨雪乡3日游活动','/picture/1581306216327.jpg','/picture/1581306216410.jpg','/picture/1581306216419.jpg',699,'景色秀丽、民风淳朴、气候独特的“中国雪乡”双峰景区是大海林风景区的重要组成部分，积雪期间，皑皑白雪在风力的作用下随物具形，千姿百态。从初冬冰花乍放的清晰到早春雾凇涓流的婉约，无时无刻不散发着雪的神韵。夜晚，洁白如玉的白雪在大红灯笼的照耀下，宛如天上的朵朵白云飘落人间，幻化无穷。白雪，红日，雪松，祥云完美的结合在一起构成了雪乡一幅美丽圣洁的图画。',30,3),
(6,'新疆喀纳斯3日游活动','/picture/1581306381902.jpg','/picture/1581306381904.jpg','/picture/1581306381905.jpg',899,'喀纳斯湖(Kanas Lake):国家AAAAA级旅游景区、国家地质公园、国家森林公园、中国自然保护区、国家自然遗产、全国低碳旅游实验区、中国最美湖泊，喀纳斯湖雪峰耸峙绿坡墨林，湖光山色美不胜收，被誉为\"人间仙境、神的花园\"。景区内各景点门票',30,4);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`total`,`amount`,`status`,`paytype`,`name`,`phone`,`address`,`datetime`,`user_id`) values 
(1,899,1,3,2,'张三','12345678910','甘肃省','2021-02-10 04:13:56',34),
(2,699,1,2,1,'张三','12345678901','江苏省南京市','2021-01-06 18:29:30',33);

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`id`,`price`,`amount`,`goods_id`,`order_id`) values 
(1,899,1,1,1),
(2,699,1,2,2);

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `recommend` */

insert  into `recommend`(`id`,`type`,`goods_id`) values 
(1,1,1),
(2,1,2),
(4,1,6),
(5,2,1),
(6,2,3),
(7,2,5),
(8,3,6),
(9,3,2);

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `type` */

insert  into `type`(`id`,`name`) values 
(1,'城市旅游'),
(2,'魅力乡村'),
(3,'雪乡风情'),
(4,'名山大川');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`email`,`password`,`name`,`phone`,`address`,`isadmin`,`isvalidate`) values 
(6,'admin','1347845688@qq.com','admin','贺婷婷','15112345678','陕西省西安市','','\0'),
(24,'王磊','1357845688@qq.com','wl1997','王磊','13022500400','内蒙古自治区呼和浩特市赛罕区大学西路内蒙古大学','\0','\0'),
(25,'1','1','1','魏志林','13022500400','内蒙古自治区呼和浩特市赛罕区大学西路内蒙古大学',NULL,NULL),
(32,'IT实战营','12456@qq.com','123456','可爱精灵','13022500400','可爱精灵大厦','\0','\0'),
(33,'user','test@126.com','123456','张三','12345678901','江苏省南京市','\0','\0'),
(34,'aa','12345678@qq.com','123456','张三','12345678910','甘肃省','\0','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
