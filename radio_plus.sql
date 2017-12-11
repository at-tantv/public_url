-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: radio_plus
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `des` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'TRUYỆN MA',''),(2,'BLOG RADIO',''),(3,'TRUYỆN ĐÊM KHUYA',NULL),(4,'TIỂU THUYẾT TÌNH CẢM',NULL),(5,'TIỂU THUYẾT VIỆT NAM',NULL),(6,'TIỂU THUYẾT NƯỚC NGOÀI',NULL),(7,'TRUYỆN NGẮN',NULL),(8,'TRUYỆN CƯỜI',NULL),(9,'TRUYỆN CỔ TRANG - KIẾM HIỆP',NULL),(10,'TRUYỆN CỔ TÍCH - THIẾU NHI',NULL),(11,'THƠ',NULL),(12,'CỬA SỔ TÌNH YÊU',NULL),(13,'TIỂU THUYẾT NGÔN TÌNH',NULL),(14,'PHẬT PHÁP',NULL),(15,'NHẠC PHẬT GIÁO',NULL),(16,'CÔNG GIÁO',NULL),(17,'NHẠC CÔNG GIÁO',NULL),(18,'SÁCH GIÁO KHOA',NULL),(19,'RADIO TỔNG HỢP',NULL),(20,'THỂ LOẠI KHÁC',NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_channel`
--

DROP TABLE IF EXISTS `tbl_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(300) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `des` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`,`channel_id`),
  KEY `fk_category_id_idx` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_channel`
--

LOCK TABLES `tbl_channel` WRITE;
/*!40000 ALTER TABLE `tbl_channel` DISABLE KEYS */;
INSERT INTO `tbl_channel` VALUES (1,'UCSOxxqB1WmtJ5fXKGbQOeSw',1,'MC Nguyễn Thành',NULL),(2,'UCIAl0wSSaDG-8c5pNaZN00g',2,'Radio Plus',NULL),(3,'UCrSCMafZ6ruRDsdjfGq7XQg',3,'Đọc truyện đêm khuya',NULL),(4,'UCFPTBYxsQzxzodl09yiyRuA',4,'Truyện Audio Tình Cảm',NULL);
/*!40000 ALTER TABLE `tbl_channel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-08 16:31:38
