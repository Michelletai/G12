CREATE DATABASE  IF NOT EXISTS `home` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `home`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: home
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `websitedesc`
--

DROP TABLE IF EXISTS `websitedesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `websitedesc` (
  `realname` varchar(100) NOT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`realname`),
  KEY `name` (`realname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websitedesc`
--

LOCK TABLES `websitedesc` WRITE;
/*!40000 ALTER TABLE `websitedesc` DISABLE KEYS */;
INSERT INTO `websitedesc` VALUES ('dowana','網路平價家具品牌，實體電商整合同步，網站萬件家具種類眾多，以實惠價格提供顧客符合需求的家具。網站．實體門市．價格同步。網站萬件商品一律批發價。台灣平價家具首選。品牌: 諾雅度, 微量元'),('fullliving','Full living滿屋生活提供您最舒適且平價的歐美風進口家具及居家裝飾配件,即日起全館免運費,更多優惠請上官方購物網站.'),('good-de','產品上架手續繁雜,新品陸續上架中尚有眾多未上架商品,可至(目錄相簿)瀏覽下載,數萬件家具全部都在相簿裡(內有詳細說明) ...'),('hdlife','質感家具趁優惠購買，便宜也有好貨，聰明生活、質感生活一次擁有。各式沙發、電視櫃、雙人床墊，聲聲呼喚你，不是花錢買家具，而是將你的傢俱帶回家 they want you。平價實惠家具。市區家具配送免運費。精選L型沙發。日系木作家具。類型: 客廳, 臥房, 書店, 餐廳, 居家飾品, 居家收納。'),('homecmf','僑美家具，創立至今將近四十個年頭，為一專業家具批發公司，客戶遍及全台灣。總部位於新北市蘆洲區，分公司位於台中霧峰區。三十多年來本公司均不斷的在求新求 ...'),('ikea','IKEA 提供沙發,床墊,桌椅,衣櫃,廚具,燈具,收納系統櫃等超過8500項家具家飾，讓你線上立即買，並提供本島運送及超商取貨的服務。還能享有卡友優惠每月商品折扣， ...'),('nitori','日本最大家具家飾連鎖專賣店，讓您輕鬆搭配具整體感的居家環境。沙發、和室椅、寢具、廚具、床、居家生活用品。'),('pbof','品歐家具引進多款鄉村/北歐風格家具家，不論是外宿族/小資族/新婚夫妻都能輕鬆打造理想居家！ 每月品牌優惠日。彰化以北免運費。服務: 客廳沙發, 廚房家飾, 餐廳桌椅, 臥房衣櫃。'),('trplus','年中感謝慶，全站滿千現折$100，最高折$1200，新會員註冊送$50，只在特力家購物網！');
/*!40000 ALTER TABLE `websitedesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websiteurl`
--

DROP TABLE IF EXISTS `websiteurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `websiteurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`realname`),
  KEY `name_idx` (`realname`),
  CONSTRAINT `name` FOREIGN KEY (`realname`) REFERENCES `websitedesc` (`realname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websiteurl`
--

LOCK TABLES `websiteurl` WRITE;
/*!40000 ALTER TABLE `websiteurl` DISABLE KEYS */;
INSERT INTO `websiteurl` VALUES (1,'ikea','IKEA','https://www.ikea.com/tw/zh/','2018-01-01 00:00:00'),(2,'pbof','品歐家具','https://www.pbof.com.tw/','2019-05-18 00:00:00'),(3,'fullliving','FULL LIVING','https://www.full-living.com.tw','2019-05-18 00:00:00'),(5,'dowana','多瓦娜家居','https://www.dowana.com.tw/','2019-05-19 00:00:00'),(7,'hdlife','H&D東稻家居','https://www.hdlife.com.tw/','2019-05-20 10:58:27'),(8,'trplus','特力屋','https://www.trplus.com.tw','2019-05-20 10:58:27'),(9,'homecmf','僑美家具','http://tw.homecmf.com/','2019-05-20 10:58:27'),(10,'nitori','宜得利家居','https://www.nitori.com.tw/','2019-05-20 12:05:27'),(11,'good-de','固的家具','http://www.good-de.com.tw/','2019-05-20 12:05:27');
/*!40000 ALTER TABLE `websiteurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'home'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-20 13:44:14
