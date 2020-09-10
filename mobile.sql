-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: mobile
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `blacklist_token`
--

DROP TABLE IF EXISTS `blacklist_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jti` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_token`
--

LOCK TABLES `blacklist_token` WRITE;
/*!40000 ALTER TABLE `blacklist_token` DISABLE KEYS */;
INSERT INTO `blacklist_token` VALUES (1,'13054e57-f9bb-47cb-b857-6adb40678456');
/*!40000 ALTER TABLE `blacklist_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `t_lahir` date DEFAULT NULL,
  `jl` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'Muhammad Shafa','Peteluan','2000-08-06','L'),(2,'Baiq Irma Yuliana','Lingkok Laki','2001-07-16','P'),(3,'Muhammad Agus Rizki Masri','Kengkang','2001-08-07','L'),(4,'Ayam','Goreng','1999-01-02','P'),(5,'Ayam','Gunung','2020-07-07','L'),(6,'Ayam','Gunung','2020-07-07','L'),(7,'Ayam','Gunung','2020-07-07','L'),(8,'Ayam','Gunung','2020-07-07','L'),(9,'Ayam','Gunung','2020-07-07','L'),(10,'saya','anda','2020-01-02','P'),(11,'anda','saya','2020-03-04','L'),(12,'anda','saya','2020-03-04','L'),(13,'oajpoajo','ckndajmcamlj','2012-12-12',''),(14,'laioafhf','sa;ojpoflmkkocmfl','1990-03-07','P'),(15,'laljejaiejd','xadjeian','1998-05-03','L'),(16,'NAma','Alamat','2000-09-09','L'),(17,'NAma','Alamt','2020-02-02','P'),(18,'Nur Muhammad','Peteluan','2017-06-17','L');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `t_lahir` date DEFAULT NULL,
  `jl` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Shafa','nms','$pbkdf2-sha256$29000$6r33nvOesxZiTOndGwOAEA$gNY7HEMZY6O6FrsujYjB4RiJ452nIMUCu..Bw4.ahIk','Peteluan','1999-01-02','L');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-10 12:03:28
