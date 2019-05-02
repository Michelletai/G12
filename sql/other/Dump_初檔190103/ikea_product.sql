-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ikea
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'《C&B》設計家座充日式床頭邊桌櫃','1999','38','56','40.5','C&B',1,'https://24h.pchome.com.tw/prod/DEABKQ-A900808W6?fq=/S/DEAB78'),(2,'【ikloo】日系上木板三層抽屜收納櫃','669','30','75','45','ikloo',1,'https://24h.pchome.com.tw/prod/DEABIK-A9007YXBB?fq=/S/DEAB78'),(3,'《HOPMA》五抽斗櫃-胡桃色','1580','40.3','95','80','HOPMA',1,'https://24h.pchome.com.tw/prod/DEABHV-A9005WBAG?fq=/S/DEAB78'),(4,'棉花田【萊歐】多段式獨立彈簧折疊和室椅','2099','17','120','30','萊歐',2,'https://24h.pchome.com.tw/prod/DEAB7F-A9007NRFH?fq=/S/DEAB7F'),(5,'【ikea】LANDSKRONA-雙人座沙發','22900','164','89','78','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/S99031743/'),(7,'【ikea】MALM-掀床','13400','166','209','38','ikea',4,'https://www.ikea.com/tw/zh/catalog/products/10404802/'),(8,'【ikea】MELLTORP-餐桌','1590','125','75','74','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/S39280033/'),(9,'【ikea】INGO-桌子','2190','120','75','73','ikea',3,'https://www.ikea.com/tw/zh/catalog/products/60161797/'),(10,'【ikea】FOLLAFOSS-雙人床框','8490','218','161','90','ikea',5,'https://www.ikea.com/tw/zh/catalog/products/S19281934/'),(11,'【ikea】TARVA-雙人床框','4990','209','160','92','ikea',5,'https://www.ikea.com/tw/zh/catalog/products/S09198515/'),(12,'【ikea】BÖRJE-餐椅','1490','44','55','100','ikea',2,'https://www.ikea.com/tw/zh/catalog/products/40410793/');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-03 21:00:40
