/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.20 : Database - seckill
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seckill` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `seckill`;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int NOT NULL DEFAULT '0',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `item` */

insert  into `item`(`id`,`title`,`price`,`description`,`sales`,`img_url`) values 
(9,'iphone99',888,'最好的苹果手机',55,''),
(10,'iphone99',888,'最好的苹果手机',44,''),
(11,'iphone99',888,'最好的苹果手机',69,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3014857443,347649732&fm=26&gp=0.jpg'),
(12,'iphone88',666,'最好的苹果手机',33,'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3014857443,347649732&fm=26&gp=0.jpg');

/*Table structure for table `item_stock` */

DROP TABLE IF EXISTS `item_stock`;

CREATE TABLE `item_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `item_stock` */

insert  into `item_stock`(`id`,`stock`,`item_id`) values 
(7,100,9),
(9,95,11),
(11,100,10),
(12,100,12);

/*Table structure for table `order_info` */

DROP TABLE IF EXISTS `order_info`;

CREATE TABLE `order_info` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `item_price` double NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `order_price` double NOT NULL DEFAULT '0',
  `promo_id` int NOT NULL DEFAULT '0' COMMENT '默认是0，非0表示秒杀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `order_info` */

insert  into `order_info`(`id`,`user_id`,`item_id`,`item_price`,`amount`,`order_price`,`promo_id`) values 
('2020081300000000',5,11,0,1,0,0),
('2020081300000100',5,11,888,1,888,0),
('2020081300000200',5,11,888,1,888,0),
('2020081300000300',5,11,888,1,888,0),
('2020081500000400',5,11,50,1,50,1);

/*Table structure for table `promo` */

DROP TABLE IF EXISTS `promo`;

CREATE TABLE `promo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_id` int NOT NULL DEFAULT '0',
  `promo_item_price` double NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `promo` */

insert  into `promo`(`id`,`promo_name`,`start_date`,`item_id`,`promo_item_price`,`end_date`) values 
(1,'iphone4抢购活动','2020-08-13 13:13:22',11,50,'2020-08-31 10:22:11'),
(2,'华为手机抢购活动','2020-08-16 11:06:00',9,1,'2020-08-29 11:06:17');

/*Table structure for table `sequence_info` */

DROP TABLE IF EXISTS `sequence_info`;

CREATE TABLE `sequence_info` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int NOT NULL DEFAULT '0',
  `step` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sequence_info` */

insert  into `sequence_info`(`name`,`current_value`,`step`) values 
('order_info',5,1);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint NOT NULL DEFAULT '0' COMMENT '//1代表男性，2代表女性',
  `age` int NOT NULL DEFAULT '0',
  `telphone` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '//byphone,bywechat,byalipay',
  `third_pary_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telphone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`name`,`gender`,`age`,`telphone`,`register_mode`,`third_pary_id`) values 
(1,'张三',1,30,'18610769771','byphone',''),
(5,'teambition',1,20,'1312345678','byphone',''),
(10,'nick',1,200,'13345678901','byphone','');

/*Table structure for table `user_password` */

DROP TABLE IF EXISTS `user_password`;

CREATE TABLE `user_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user_password` */

insert  into `user_password`(`id`,`encrpt_password`,`user_id`) values 
(1,'abcdef',1),
(5,'4QrcOUm6Wau+VuBX8g+IPg==',5),
(6,'4QrcOUm6Wau+VuBX8g+IPg==',10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
