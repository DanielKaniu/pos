-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: ipos
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name` (`cat_name`),
  UNIQUE KEY `cat_name_2` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (8,'Bread'),(7,'cooking Oil');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoice`
--

DROP TABLE IF EXISTS `tbl_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_invoice` (
  `invoice_id` int NOT NULL AUTO_INCREMENT,
  `cashier_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `time_order` varchar(50) NOT NULL,
  `total` float NOT NULL,
  `paid` float NOT NULL,
  `due` float NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoice`
--

LOCK TABLES `tbl_invoice` WRITE;
/*!40000 ALTER TABLE `tbl_invoice` DISABLE KEYS */;
INSERT INTO `tbl_invoice` VALUES (34,'Koko','2019-10-26','10:47',440000,450000,-10000),(35,'aji','2019-11-04','21:20',440000,450000,-10000),(36,'aji','2019-11-04','22:11',290000,300000,-10000),(38,'aji','2019-11-05','13:13',380000,500000,-120000),(41,'aji','2019-11-26','11:12',320000,330000,-10000),(44,'aji','2019-11-26','12:07',285000,300000,-15000),(46,'aji','2019-11-27','18:42',412000,415000,-3000),(47,'aji','2019-12-01','11:45',190000,200000,-10000),(49,'aji','2019-12-02','22:26',22000,23000,-1000),(50,'aji','2019-12-02','22:32',520000,600000,-80000),(51,'aji','2019-12-03','09:17',88000,90000,-2000),(63,'aji','2019-12-03','15:51',66000,200000,66000),(64,'aji','2019-12-03','15:52',66000,66000,0),(65,'aji','2019-12-03','15:52',66000,66000,0),(66,'aji','2019-12-03','15:52',66000,66000,0),(67,'aji','2019-12-03','15:58',329000,330000,-1000),(68,'aji','2019-12-03','15:58',44000,44000,0),(69,'aji','2019-12-03','16:01',285000,300000,-15000),(70,'aji','2019-12-03','16:01',285000,300000,-15000),(71,'aji','2019-12-03','16:08',285000,300000,-15000),(72,'aji','2019-12-03','16:15',950000,1000000,-50000),(73,'aji','2019-12-03','16:17',190000,200000,-10000),(74,'aji','2019-12-03','16:20',66000,66000,0),(75,'aji','2019-12-03','16:26',760000,770000,-10000),(76,'aji','2019-12-03','16:27',950000,1000000,-50000),(77,'aji','2019-12-03','16:34',190000,200000,-10000),(78,'aji','2019-12-03','16:41',44000,44000,0),(79,'aji','2019-12-03','16:43',88000,90000,-2000),(80,'aji','2019-12-03','16:43',88000,90000,-2000),(81,'aji','2019-12-03','16:57',22000,30000,-8000),(82,'aji','2019-12-03','16:58',380000,400000,-20000),(83,'aji','2019-12-03','17:00',475000,500000,-25000),(84,'aji','2019-12-03','17:02',190000,200000,-10000),(85,'aji','2019-12-04','11:28',95000,100000,-5000),(86,'aji','2019-12-04','11:30',190000,200000,-10000),(87,'aji','2021-09-15','18:06',330000,330000,0),(88,'aji','2021-09-15','21:31',22000,12000,10000),(89,'Hallelujah','2021-09-15','21:39',22000,22000,0),(90,'Hallelujah','2021-09-15','22:42',22000,22000,0),(91,'Hallelujah','2021-09-17','14:46',3500,3500,0),(92,'Hallelujah','2021-09-17','14:47',7000,7000,0),(93,'Hallelujah','2021-09-18','07:21',100000,100000,0),(94,'Hallelujah','2021-09-18','14:00',20000,19000,1000),(95,'Hallelujah','2021-09-18','17:41',1500,1500,0),(96,'Hallelujah','2021-09-18','20:25',430,430,0),(97,'Dan','2021-09-18','22:00',210,210,0),(98,'Hallelujah','2021-09-19','16:07',330,330,0),(99,'Hallelujah','2021-09-19','16:08',1320,1320,0),(100,'Hallelujah','2021-09-20','01:38',460,460,0);
/*!40000 ALTER TABLE `tbl_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoice_detail`
--

DROP TABLE IF EXISTS `tbl_invoice_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_invoice_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_code` char(6) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` int NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoice_detail`
--

LOCK TABLES `tbl_invoice_detail` WRITE;
/*!40000 ALTER TABLE `tbl_invoice_detail` DISABLE KEYS */;
INSERT INTO `tbl_invoice_detail` VALUES (47,31,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-10-25'),(48,31,12,'TT0040','Triplek Sedang',1,95000,95000,'2019-10-25'),(49,32,14,'RR0022','Round Cable Clips',2,35000,70000,'2019-10-26'),(50,32,15,'DA0001','Bola Lampu Philips',3,65000,195000,'2019-10-26'),(52,34,16,'BL0004','Bola Lampu Philips',2,125000,250000,'2019-10-26'),(53,34,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-10-26'),(54,35,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-11-04'),(55,35,16,'BL0004','Bola Lampu Philips',2,125000,250000,'2019-11-04'),(56,36,17,'BLH001','Bola Lampu Hannochs',2,20000,40000,'2019-11-04'),(57,36,16,'BL0004','Bola Lampu Philips',2,125000,250000,'2019-11-04'),(58,37,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-11-04'),(59,37,12,'TT0040','Triplek Sedang',1,95000,95000,'2019-11-04'),(60,38,12,'TT0040','Triplek Sedang',4,95000,380000,'2019-11-05'),(61,39,2,'TT0001','Triplek Tipis',2,22000,44000,'2019-11-22'),(62,40,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-11-26'),(63,41,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-11-26'),(64,41,14,'RR0022','Round Cable Clips',1,35000,35000,'2019-11-26'),(65,42,12,'TT0040','Triplek Sedang',3,95000,285000,'0000-00-00'),(66,43,12,'TT0040','Triplek Sedang',2,95000,190000,'0000-00-00'),(67,44,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-11-26'),(68,45,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-11-26'),(69,45,14,'RR0022','Round Cable Clips',2,35000,70000,'2019-11-26'),(70,46,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-11-27'),(71,46,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-11-27'),(72,46,14,'RR0022','Round Cable Clips',3,35000,105000,'2019-11-27'),(73,47,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-12-01'),(74,48,20,'TT0022','Test',2,22000,44000,'2019-12-01'),(75,49,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-12-02'),(76,50,15,'DA0001','Bola Lampu Philips',8,65000,520000,'2019-12-02'),(87,0,12,'TT0040','Triplek Sedang',0,95000,0,'2019-12-02'),(88,0,14,'RR0022','Round Cable Clips',0,35000,0,'2019-12-02'),(89,0,14,'RR0022','Round Cable Clips',0,35000,0,'2019-12-03'),(90,0,14,'RR0022','Round Cable Clips',0,35000,0,'2019-12-03'),(91,0,14,'RR0022','Round Cable Clips',2,35000,70000,'2019-12-03'),(92,0,14,'RR0022','Round Cable Clips',0,35000,0,'2019-12-03'),(93,0,14,'RR0022','Round Cable Clips',0,35000,0,'2019-12-03'),(94,0,16,'BL0004','Bola Lampu Philips',0,125000,0,'2019-12-03'),(95,0,15,'DA0001','Bola Lampu Philips',0,65000,0,'2019-12-03'),(96,0,18,'BB0002','Lorem Ipsum',0,22000,0,'2019-12-03'),(97,0,21,'RR0002','Rounded Rumble',3,24000,72000,'2019-12-03'),(98,0,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(99,51,2,'TT0001','Triplek Tipis',4,22000,88000,'2019-12-03'),(103,55,2,'TT0001','Triplek Tipis',0,22000,0,'2019-12-03'),(104,56,2,'TT0001','Triplek Tipis',0,22000,0,'2019-12-03'),(106,58,2,'TT0001','Triplek Tipis',0,22000,0,'2019-12-03'),(107,59,2,'TT0001','Triplek Tipis',0,22000,0,'2019-12-03'),(110,62,2,'TT0001','Triplek Tipis',0,22000,0,'2019-12-03'),(111,63,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(112,64,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(113,65,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(114,66,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(115,67,2,'TT0001','Triplek Tipis',2,22000,44000,'2019-12-03'),(116,67,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-12-03'),(117,68,2,'TT0001','Triplek Tipis',2,22000,44000,'2019-12-03'),(118,69,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-12-03'),(119,70,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-12-03'),(120,71,12,'TT0040','Triplek Sedang',3,95000,285000,'2019-12-03'),(121,72,12,'TT0040','Triplek Sedang',10,95000,950000,'2019-12-03'),(122,73,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-12-03'),(123,74,2,'TT0001','Triplek Tipis',3,22000,66000,'2019-12-03'),(124,75,12,'TT0040','Triplek Sedang',8,95000,760000,'2019-12-03'),(125,76,12,'TT0040','Triplek Sedang',10,95000,950000,'2019-12-03'),(126,77,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-12-03'),(127,78,2,'TT0001','Triplek Tipis',2,22000,44000,'2019-12-03'),(128,79,2,'TT0001','Triplek Tipis',4,22000,88000,'2019-12-03'),(129,80,2,'TT0001','Triplek Tipis',4,22000,88000,'2019-12-03'),(130,81,2,'TT0001','Triplek Tipis',1,22000,22000,'2019-12-03'),(131,82,12,'TT0040','Triplek Sedang',4,95000,380000,'2019-12-03'),(132,83,12,'TT0040','Triplek Sedang',5,95000,475000,'2019-12-03'),(133,84,12,'TT0040','Triplek Sedang',2,95000,190000,'2019-12-03'),(134,85,12,'TT0040','Triplek Sedang',1,95000,95000,'2019-12-04'),(135,86,12,'TT0040','Triplek Sedang',1,95000,95000,'2019-12-04'),(136,86,12,'TT0040','Triplek Sedang',1,95000,95000,'2019-12-04');
/*!40000 ALTER TABLE `tbl_invoice_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_code` char(200) DEFAULT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `purchase_price` float(10,0) NOT NULL,
  `sell_price` float(10,0) NOT NULL,
  `stock` int NOT NULL,
  `min_stock` int NOT NULL,
  `product_satuan` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `id_code` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (153,'1','ufuta','cooking Oil',430,460,99,50,'2L','Premium cooking oil from Bidco Africa.','6147747febb032.20799781.jpeg'),(162,'3','hihuihi','Bread',78,89,788,78,'250g','giiuiu','61480012d6bb26.26396361.png'),(168,'2','fsddanlkn','Bread',32,323,323,32,'250g','lkafkdsajk','6148a2c860abf7.06431582.jpeg'),(172,'6161101530743','nffgfnf','Bread',322,5343,434,32,'250g','fwewfw','6148a351ce9fc4.77940972.jpeg');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_satuan`
--

DROP TABLE IF EXISTS `tbl_satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_satuan` (
  `kd_satuan` int NOT NULL AUTO_INCREMENT,
  `nm_satuan` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_satuan`),
  UNIQUE KEY `nm_satuan` (`nm_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_satuan`
--

LOCK TABLES `tbl_satuan` WRITE;
/*!40000 ALTER TABLE `tbl_satuan` DISABLE KEYS */;
INSERT INTO `tbl_satuan` VALUES (21,'250g'),(20,'2L'),(18,'500g '),(16,'Kg'),(19,'set');
/*!40000 ALTER TABLE `tbl_satuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(15) NOT NULL,
  `is_active` tinyint NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (6,'Hallelujah','Daniel Kaniu','Godwins+$','Admin',1),(7,'Dan','Daniel Kaniu','Godwins+$','Operator',1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 14:29:40
