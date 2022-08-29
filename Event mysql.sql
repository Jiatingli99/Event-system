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
(1,'Four-day tour of Beijing
','/picture/1581305022672.jpg','/picture/1581305022677.jpg','/picture/1581305022685.jpg',899,'the Palace Museum+Badaling Great Wall+Old Summer palace+the "Water Cube"+birds nest',30,1),
(2,'Three day tour in Chengdu','/picture/1581305382309.jpg','/picture/1581305382310.jpg','/picture/1581305382313.jpg',699,'DAY1:Wide and narrow alley → Wuhou Temple → Jinli -- Wide and narrow alley；DAY2:Jinsha Site Museum → Du Fu Thatched Cottage → Peoples Park -→ Cultural park - Qingyang Palace - Jinsha Site Museum；DAY3Chengdu Research Base of Giant Panda Breeding → Wenshu Academy → Chunxi Road
',30,1),
(3,'Three-day tour in Hemu ','/picture/1581305626226.jpg','/picture/1581305626233.jpg','/picture/1581305626239.jpg',699,'Take you to appreciate the charm of ethnic minorities with Xinjiang characteristics! Experience, traditional costume, horse riding, etc',30,2),
(5,'Harbin Snow 3-day tour','/picture/1581306216327.jpg','/picture/1581306216410.jpg','/picture/1581306216419.jpg',699,'Beautiful scenery, honest folk customs, unique climate "China snow town" Shuangfeng scenic area is an important part of the sea forest wind scenic area, snow during the snow, the white snow in the role of the wind with the shape, in all shapes and forms. From the early winter ice flowers put clear to the early spring rime trickling graceful, all the time sending out the charm of snow. At night, the white snow as white as jade in the light of the red lanterns, just like the clouds in the sky falling down on earth, endless fantasy. Snow, red sun, cedar, auspicious cloud perfect combination together constitute a beautiful and holy picture of snow country.
',30,3),
(6,'3-day tour in Kanas','/picture/1581306381902.jpg','/picture/1581306381904.jpg','/picture/1581306381905.jpg',899,'Kanas Lake: National AAAAA level scenic spot, National Geological Park, National Forest Park, National Nature Reserve of China, National Natural Heritage, National Low-carbon Tourism Experimental Area, the most beautiful lake in China, Kanas Lake with its snow-capped peaks and green slopes, beautiful scenery, known as "fairyland on earth, gods garden". Tickets for each scenic spot in the scenic area
',30,4);

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
(1,899,1,3,2,'Tom','12345678910','US','2021-02-10 04:13:56',34),
(2,699,1,2,1,'Kate','12345678901','UK','2021-01-06 18:29:30',33);

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
(1,'city tour'),
(2,'Charm of country'),
(3,'snow country'),
(4,'mountains and rivers');


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
(6,'admin','1347845688@qq.com','admin',' Li','15112345678',' Athlon','','\0'),
(24,'wang','1357845688@qq.com','wl1997','wang','13022500400',' China','\0','\0'),
(25,'1','1','1',' Lin','13022500400',' China',NULL,NULL),
(32,'IT','12456@qq.com','123456',' LLL','13022500400',' China','\0','\0'),
(33,'user','test@126.com','123456',' Tony','12345678901',' UK','\0','\0'),
(34,'aa','12345678@qq.com','123456',' Lily','12345678910',' US','\0','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
