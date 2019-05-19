CREATE DATABASE  IF NOT EXISTS `ikea` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `ikea`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ikea
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'櫃子'),(2,'椅子'),(3,'桌子'),(4,'沙發'),(5,'床');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `export` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `export_date` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `p_price` varchar(45) DEFAULT NULL,
  `total_price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export`
--

LOCK TABLES `export` WRITE;
/*!40000 ALTER TABLE `export` DISABLE KEYS */;
/*!40000 ALTER TABLE `export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (3,'tommy','男','新北市淡水區北新路184巷23號6樓','cy94295@gmail.com'),(4,'harry','男','新北市淡水區北新路184巷22號6樓','HarryLuo227@gmail.com'),(5,'michelletai','女','新北市淡水區北新路184巷21號6樓','Michelletai@gmail.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `width` varchar(45) DEFAULT NULL COMMENT 'cm\n',
  `depth` varchar(45) DEFAULT NULL COMMENT 'cm\n',
  `height` varchar(45) DEFAULT NULL COMMENT 'cm\n',
  `vendor` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `source` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'【ikloo】日系上木板三層抽屜收納櫃','669','30','75','45','ikloo',1,'https://24h.pchome.com.tw/prod/DEABIK-A9007YXBB?fq=/S/DEAB78'),(3,'《HOPMA》五抽斗櫃-胡桃色','1580','40.3','95','80','HOPMA',1,'https://24h.pchome.com.tw/prod/DEABHV-A9005WBAG?fq=/S/DEAB78'),(4,'棉花田【萊歐】多段式獨立彈簧折疊和室椅','2099','17','120','30','萊歐',2,'https://24h.pchome.com.tw/prod/DEAB7F-A9007NRFH?fq=/S/DEAB7F'),(5,'【ikea】LANDSKRONA-雙人座沙發','22900','164','89','78','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/S99031743/'),(7,'【ikea】MALM-掀床','13400','166','209','38','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/10404802/'),(8,'【ikea】MELLTORP-餐桌','1590','125','75','74','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/S39280033/'),(9,'【ikea】INGO-桌子','2190','120','75','73','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/60161797/'),(10,'【ikea】FOLLAFOSS-雙人床框','8490','218','161','90','ikea',5,'https://www.ikea.com/tw/zh/catalog/products/S19281934/'),(11,'【ikea】TARVA-雙人床框','4990','209','160','92','ikea',5,'https://www.ikea.com/tw/zh/catalog/products/S09198515/'),(12,'【ikea】BÖRJE-餐椅','1490','44','55','100','ikea',2,'https://www.ikea.com/tw/zh/catalog/products/40410793/'),(22,'坦菲膚色皮餐椅','1499','44','49','89.5','東稻家居',2,'https://www.hdlife.com.tw/ItemInfo/21999'),(23,'原木色實木四層架','2299','78','41','115','東稻家居',1,'https://www.hdlife.com.tw/ItemInfo/20443'),(24,'《NITORI》Hil2 布質單人沙發','6700','72','88','91','NITORI',4,'https://www.nitori-net.tw/Goods/ItemDetail_1130343_01.htm'),(25,'《NITORI》BESZE 實木餐桌','3740','135','80','74','NITORI',3,'https://www.nitori-net.tw/Goods/ItemDetail_4002096_01.htm'),(26,'《NITORI》DYNASTY 大理石質感餐桌','12740','135','60','77','NITORI',3,'https://www.nitori-net.tw/Goods/ItemDetail_4011700_01.htm'),(27,'《NITORI》ALNUS LBR/LGY 榿木餐椅','2490','45','50.5','74.5','NITORI',2,'https://www.nitori-net.tw/Goods/ItemDetail_4019850_01.htm'),(28,'《NITORI》ALAND 長凳','3380','107','38','45','NITORI',2,'https://www.nitori-net.tw/Goods/ItemDetail_4010123_01.htm'),(29,'《NITORI》GRAND 布質3人沙發','11000','186','97','87','NITORI',4,'https://www.nitori-net.tw/Goods/ItemDetail_1101255_01.htm'),(30,'《NITORI》MELLISSA3  MDF板單人床架','6700','105','189','85','NITORI',5,'https://www.nitori-net.tw/Goods/ItemDetail_2012970_01.htm'),(31,'《NITORI》N BAHAMA 雙人床座 (橡膠木,鋼)','5990','156','196','90','NITORI',5,'https://www.nitori-net.tw/Goods/ItemDetail_2208570_01.htm'),(32,'《NITORI》RANDAM 120LC 拼色矮整理衣櫃','6990','120','43','76','NITORI',1,'https://www.nitori-net.tw/Goods/ItemDetail_0540978_01.htm'),(33,'【ikea】FJÄLLBO 咖啡桌','2495','90','46','46','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/30340381/'),(34,'【ikea】FJÄLLBO 電視櫃','4995','150','36','54','ikea',1,'https://www.ikea.com/tw/zh/catalog/products/30339293/'),(35,'【ikea】BRIMNES 玻璃門櫃','5990','85','35 ','190','ikea',1,'https://www.ikea.com/tw/zh/catalog/products/30409889/'),(36,'【ikea】NORRARYD 吧台椅附靠背','3490','46','47','103','ikea',2,'https://www.ikea.com/tw/zh/catalog/products/70408449/'),(37,'【ikea】MARTIN 餐椅','890','49','52','86','ikea',2,'https://www.ikea.com/tw/zh/catalog/products/S89219528/'),(41,'【ikea】EKENÄSET 雙人座沙發','7990','118.5','78','75','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/10331373/'),(42,'【ikea】KLIPPAN 雙人座沙發','5990','180','88','66','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/S89251778/'),(43,'【ikea】GALANT 附門收納櫃','6990','80','45','120','ikea',1,'https://www.ikea.com/tw/zh/catalog/products/30365140/'),(44,'【ikea】SVÄRTA 上下舖床框','7990','208','97','159','ikea',5,'https://www.ikea.com/tw/zh/catalog/products/90247974/'),(45,'MEADE米德簡約風舒適懶骨頭腳凳','999','47','66','38','東稻家居',4,'https://www.hdlife.com.tw/ItemInfo/18450'),(46,'CHIKA千夏和風超微粒舒適懶人沙發(圓形)','4999','72','72','64','東稻家居',4,'https://www.hdlife.com.tw/ItemInfo/6131'),(47,'LEVI李維工業風個性鐵架書架型書桌','2499','100','50','92','東稻家居',3,'https://www.hdlife.com.tw/ItemInfo/12587'),(48,'經典回憶小鴨書桌','4088','90','60','165','時尚屋',3,'https://mall.pchome.com.tw/prod/QFAA9N-A9008GDV0?fq=/S/QFAB6N'),(49,'白板書架收納書桌','3688','90','88','165','生活市集',3,'https://www.buy123.com.tw/'),(50,'無印生活床頭櫃','2899','45','35','60','東稻家居',1,'https://www.hdlife.com.tw/ItemInfo/19341'),(51,'高背網布辦公椅黑','3299','61','61','130','東稻家居',2,'https://www.hdlife.com.tw/ItemInfo/21465'),(52,'COCOA可可連結式彈簧懶人床','4299','97','195','35','東稻家居',5,'https://www.hdlife.com.tw/ItemInfo/17700'),(53,'FL 質感亞麻灰扶手布單椅 / 餐椅','5400','58','64','83','滿屋生活 Full Living',2,'https://www.full-living.com.tw/main/living-room/chairs/5548a-detail.html'),(54,'FL 現代山毛櫸木灰色布餐椅 ','6800','49','57','78','滿屋生活 Full Living',2,'https://www.full-living.com.tw/main/living-room/chairs/5575s-1458-detail.html'),(55,'ICHIBA 日系工業復古皮革單椅','5800','45','50','70.5','ICHIBA',2,'https://www.full-living.com.tw/main/living-room/chairs/anc-2552br-detail.html'),(56,'ICHIBA 日系皮革升降辦公椅','7500','68.5','73','82.5','ICHIBA',2,'https://www.full-living.com.tw/main/living-room/chairs/ch-2800dbr-be-detail.html'),(57,'Zero Chair 零重力休閒椅','2980','55','81.5','96','安得士 ATEX',2,'https://www.full-living.com.tw/main/living-room/chairs/hit200br-gr-detail.html'),(58,'法國復古學生單椅','4980','41','54','88','銅公園 BRASS PARK',2,'https://www.full-living.com.tw/main/living-room/chairs/ch0002-detail.html'),(59,'FL Explorer 探索家 - 米白皮扣實木高背床架','14000','163','211','120','滿屋生活 Full Living',5,'https://full-living.com.tw/main/fullliving-bed/fl-explorer-%E6%8E%A2%E7%B4%A2%E5%AE%B6-%E7%B1%B3%E7%99%BD%E7%9A%AE%E6%89%A3%E5%AF%A6%E6%9C%A8%E9%AB%98%E8%83%8C%E5%BA%8A%E6%9E%B6-detail.html'),(60,'FL Hols 荷斯 - 灰織紋布邊實木高背床架','15500','164','207','108','滿屋生活 Full Living',5,'https://full-living.com.tw/main/fullliving-bed/fl-hols-%E8%8D%B7%E6%96%AF-%E7%81%B0%E7%B9%94%E7%B4%8B%E5%B8%83%E9%82%8A%E5%AF%A6%E6%9C%A8%E9%AB%98%E8%83%8C%E5%BA%8A%E6%9E%B6-detail.html'),(61,'FL Lavender blue 混織慵藍-鉚釘實木高背床架','14500','163','204','126','滿屋生活 Full Living',5,'https://full-living.com.tw/main/fullliving-bed/p15bd02bl0203-589-detail.html'),(62,'FL Morpheus 穆斯-美式暖棕實木床架','7000','160','201','18','滿屋生活 Full Living',5,'https://full-living.com.tw/main/fullliving-bed/fl-morpheus-%E7%A9%86%E6%96%AF-%E7%BE%8E%E5%BC%8F%E6%9A%96%E6%A3%95%E5%AF%A6%E6%9C%A8%E5%BA%8A%E6%9E%B6-detail.html'),(63,'FL 吉維斯- 美式鄉村風實木餐桌','8200','140','85','76','滿屋生活 Full Living',3,'https://full-living.com.tw/main/fullliving-diningtable/s092-dt01-1195-detail.html'),(64,'FL 北歐簡約圓角實木餐桌','8200','90','153','76','滿屋生活 Full Living',3,'https://full-living.com.tw/main/fullliving-diningtable/5575-detail.html'),(65,'FL 四角斜邊橡木餐桌','9300','183','102','75','滿屋生活 Full Living',3,'https://full-living.com.tw/main/fullliving-diningtable/ts201407001-111-271-275-detail.html'),(66,'【ikea】NORDBY 餐桌','4490','125','75','75','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/60237783/');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wish_list` (
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `add_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mid`,`pid`),
  KEY `pid_idx` (`pid`),
  CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `member` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pid` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish_list`
--

LOCK TABLES `wish_list` WRITE;
/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
INSERT INTO `wish_list` VALUES (3,2,'2019-01-02 20:19:50'),(3,3,'2019-01-02 20:19:50'),(4,4,'2019-01-02 20:19:50'),(4,35,'2019-01-02 20:19:50'),(5,5,'2019-01-02 20:19:50'),(5,37,'2019-01-02 20:19:50');
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-02 17:34:35
