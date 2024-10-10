-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: crowdfunding_db
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fundraiser`
--

DROP TABLE IF EXISTS `fundraiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fundraiser` (
  `FUNDRAISER_ID` int NOT NULL AUTO_INCREMENT,
  `ORGANIZER` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CAPTION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TARGET_FUNDING` decimal(10,2) NOT NULL,
  `CURRENT_FUNDING` decimal(10,2) NOT NULL,
  `CITY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`FUNDRAISER_ID`) USING BTREE,
  KEY `CATEGORY_ID` (`CATEGORY_ID`) USING BTREE,
  CONSTRAINT `fundraiser_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraiser`
--

LOCK TABLES `fundraiser` WRITE;
/*!40000 ALTER TABLE `fundraiser` DISABLE KEYS */;
INSERT INTO `fundraiser` VALUES (1,'Jackson','Help The Jackson\'s Rebuild After Flood',10000.00,7730.00,'Byron Bay',1,3,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,f_auto,h_312,w_648/ygtjsklcjhsscxk0csxl.jpg'),(2,'Maria','Support Local Education',5000.00,3250.00,'Sydney',1,2,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,f_auto,h_312,w_648/afrjyci83bcbizu3fwqi.jpg'),(3,'Tom','Medical Assistance for Children',15000.00,12000.00,'Melbourne',1,1,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,f_auto,h_273,w_273/lculx529mpmnhm86xyme.jpg'),(4,'Sarah','Community Garden Project',8000.00,4000.00,'Brisbane',1,3,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,f_auto,h_312,w_648/wtdojkxx6xls3tpirrzm.jpg'),(5,'Alex','Scholarship Fund',20000.00,15000.00,'Perth',1,2,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,f_auto,h_273,w_273/ic7xdnmfat9gyv3umz9x.jpg'),(6,'Jackson','Medical Aid for Children',15000.00,12000.00,'Sydney',1,1,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/lefaad4teoz4ee9xv5qh'),(7,'Maria','Education for Underprivileged Kids',12000.00,10000.00,'Melbourne',1,2,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/lculx529mpmnhm86xyme'),(8,'Tom','Social Impact in Rural Areas',20000.00,15000.00,'Byron Bay',1,3,'https://c4.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/xivwuuofag0mvqla8n8b'),(9,'Sarah','Medical Aid for the Elderly',18000.00,14000.00,'Brisbane',1,1,'https://c3.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/hijcwgoq96coo30brivt'),(10,'Alex','Education Support for Women',13000.00,9000.00,'Perth',1,2,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/c7v5wlzvxryicpy2ffla'),(11,'Jackson','Social Impact Fundraiser',17000.00,12000.00,'Melbourne',1,3,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/lpcxitew1tocggze1syb'),(12,'Maria','Medical Support for Cancer Patients',25000.00,20000.00,'Sydney',1,1,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/ikmtk2f3ahfhp5zjnxek'),(13,'Tom','Education Grants for STEM Students',10000.00,7000.00,'Perth',1,2,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/leg6psdxxpkqmcthlnlm'),(14,'Sarah','Social Impact for Local Communities',15000.00,11000.00,'Byron Bay',1,3,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/x5c9qtjjlaukx0yp70uc'),(15,'Alex','Medical Care for Rural Areas',20000.00,16000.00,'Brisbane',1,1,'https://c4.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/os2ay2rmsmi5ltfrekyc'),(16,'Jackson','Education Scholarships Fund',18000.00,15000.00,'Perth',1,2,'https://c3.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/tt1fgsrbcvyc33sug1wb'),(17,'Maria','Social Support for Homeless',16000.00,13000.00,'Byron Bay',1,3,'https://c4.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/hxe8vahkvupuths1gmbn'),(18,'Tom','Medical Aid for Low-income Families',22000.00,18000.00,'Sydney',1,1,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/tvjevyhajyuz3ir1px9s'),(19,'Sarah','Education Program for Girls',14000.00,10000.00,'Melbourne',1,2,'https://c3.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/wb5qu3de3ctvk1zfqq0w'),(20,'Alex','Social Impact for Marginalized Groups',19000.00,16000.00,'Brisbane',1,3,'https://c3.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/p0zpl8kwhzyon7irwool'),(21,'Jackson','Medical Relief for Disaster Victims',30000.00,25000.00,'Byron Bay',1,1,'https://c4.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/zfi4dmxus7utwaj9aefb'),(22,'Maria','Education Programs for Adults',12000.00,9000.00,'Sydney',1,2,'https://c4.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/dd7ouzaeln7vxf0bxecf'),(23,'Tom','Social Impact for Environmental Protection',17000.00,14000.00,'Melbourne',1,3,'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/iy6lmf0j5i4rti4onpzs'),(24,'Sarah','Medical Support for Disabled',20000.00,17000.00,'Perth',1,1,'https://c2.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/rb63b6arfjdbzm1pfjzo'),(25,'Alex','Education Programs for Vocational Training',13000.00,10000.00,'Brisbane',1,2,'https://c0.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill,g_center,q_auto,f_auto,h_312,w_312/gbco9ydxs0qyhdwbbed8');
/*!40000 ALTER TABLE `fundraiser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 17:05:22
