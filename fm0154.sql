/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.21 : Database - fm0154
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fm0154` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `fm0154`;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `imgUrl` text,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`id`,`name`,`user_id`,`imgUrl`,`info`) values 
(1,'全聯全新BODUM美式濾滴咖啡機星巴克可參考',2,'1-1.jpg,1-2.jpg','保固到2021/2/1/n運作皆正常'),
(2,'艦隊Collection 小說 1-7 已完結',3,'2-1.jpg','前3集書角有髒污/n其他保存完善/九成五新'),
(3,'打工勇者 輕小說 1-4集 二手書 九成五新',5,'3-1.jpg,3-2.jpg',NULL),
(4,'二手漫畫 浪漫時鐘 槙陽子 8成新',1,'4-1.jpg,4-2.jpg','運作正常/n已使用2年/n8成新'),
(5,'舊書',4,'5-1.jpg,5-2.jpg,5-3.jpg','人生哲理書\r\n'),
(6,'伊坂幸太郎 推理小說 二手書',1,'6-1.jpg',NULL),
(7,'Asus外接式薄型光碟機(二手良品)',2,'7-1.jpg,7-2.jpg',NULL),
(8,'全新chanel唇膏 YSL 圓管 雪絨唇釉 GA 紅管 黑管 唇露 專櫃唇膏',3,'8-1.jpg,7-3.jpg',NULL),
(9,'硅膠貓爪筆袋',4,'9-1.jpg',NULL),
(10,'五月花厚衛生紙一串',5,'10-1.jpg,10-2.jpg,10-3.jpg',NULL),
(11,'男用夾腳拖 美國帶回 12吋',1,'11-1.jpg',NULL),
(12,'水邊動物腳踏墊 海獺',2,'12-1.jpg,12-2.jpg,12-3.jpg,12-4.jpg',NULL),
(13,'軟殼筆電保護套',3,'13-1.jpg,13-2.jpg',NULL),
(14,'一番賞 海賊王 H賞 玻璃杯 杯子 FULL FORCE 航海王 ONE PIECE 和之國',4,'14-1.jpg,14-2.jpg',NULL),
(15,'Android 手機傳輸線 充電線',5,'15-1.jpg,15-2.jpg,15-3.jpg,15-4.jpg,15-5.jpg',NULL),
(16,'圓滾滾海豹抱枕',3,'16-1.jpg,16-2.jpg,16-3.jpg',NULL),
(17,'哈利波特限量口罩',2,'17-1.jpg',NULL);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createTime` date DEFAULT NULL,
  `lastOnlineTime` datetime DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` text,
  `verification` tinyint(1) DEFAULT '0',
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `member` */

insert  into `member`(`id`,`name`,`email`,`createTime`,`lastOnlineTime`,`phone`,`password`,`profile_image`,`verification`,`address`) values 
(1,'Wendy','wendy.yang@gmail.com','2019-10-01','2021-03-01 10:22:21','0921551249','Do!mg123',NULL,0,NULL),
(2,'鮭魚','sonia.chang@gmail.com','2019-10-07','2021-02-06 11:01:45','0937951249','Do!ng123',NULL,0,NULL),
(3,'海綿寶寶','ann.chen@gmail.com','2019-11-18','2021-03-07 09:17:05','0910772249','Do!ng123',NULL,0,NULL),
(4,'管理員','rock.lin@gmail.com','2020-01-05','2021-02-01 11:50:56','0989162337','Do!ng123',NULL,0,NULL),
(5,'黃柏凱','chars0629@gmail.com','2020-01-05','2021-02-01 11:50:10','0912345678','Do!ng123',NULL,0,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTIme` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `content` text,
  `imgUrl` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`id`,`name`,`createTime`,`updateTIme`,`title`,`subtitle`,`author`,`tag`,`content`,`imgUrl`) values 
(1,'News','2021-02-20 11:00:48','2021-02-21 10:45:22','紙餐具應回收 回收處理量足夠','廢棄物管理','管理員','環保','\"行政院環境保護署為源頭減量，持續推動少用一次性產品，並加強紙餐具回收分類，執行成效顯著提升，相關說明如下:\\r\\n\"\r\n						+ \"											<br>\\r\\n\"\r\n						+ \"											紙餐具不是紙類，紙餐具、紙類都要回收，而且分開回收。紙餐具如碗、盤、杯等是公告應回收容器，為了防水及油漬與使用便利，生產時會在表面塗上一層聚乙烯（polyethylene，PE）或以浸臘處理。因此，後端的處理需先將塑膠膜與紙材分離，再將塑膠粒和紙漿分開利用，處理程序與紙類不同，故需分開收集處理。\\r\\n\"\r\n						+ \"											\\r\\n\"\r\n						+ \"											<p>\\r\\n\"\r\n						+ \"											紙餐具具有回收價值，回收處理產業鏈完整。紙餐具回收後，送到3家專業紙餐具專業回收廠，該3家處理廠設備總設計處理量每年能處理24萬9,600公噸，遠大於109年回收的15萬9,897公噸。因此，仍有很大剩餘的容量處理回收的紙餐具。紙餐具回收後，經過脫膜、散漿等一連串處理單元，最後產生塑膠粒及紙漿，作為其他塑膠與紙製品。109年經過稽核認證的回收量為15萬9,897公噸，其再利用量高達14萬4,200公噸，其他剩餘不能物質再利用的，再做熱值利用。\\r\\n\"\r\n						+ \"											加強產生源回收分類，推動清分疊「紙餐具循環友善店家計畫」。	\\r\\n\"\r\n						+ \"											<p>\\r\\n\"\r\n						+ \"											為增加紙餐具的回收量，環保署持續加強宣導廢紙餐具回收分類習慣，109年與各地方環保局攜手推動「紙餐具循環友善店家計畫」，輔導補助自助餐及便當店業者店內設置廢紙餐具專用回收設施，將回收桶併設垃圾筒及廚餘筒、設置語音播放器提醒設備、張貼宣導海報等，引導業者改善用餐環境，便利並教育民眾分類回收，提高資源回收品質，以利再利用，最高上限為新臺幣6,500元。輔導後約有8成計2,900家自助餐及便當業者完成設施的設置。為使紙餐具清分疊更為落實，110年1月4日預告「應設置紙餐具回收設施之販賣業者範圍、設施設置、規格及其他應遵行事項」草案，明定自助餐及便當店業者應設置紙餐具專用回收設施，目標於下半年正式上路。現階段都還在輔導期間，請業者提早因應。\"','blog-item-list-1.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
