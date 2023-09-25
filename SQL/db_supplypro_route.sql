-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_supplypro
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` varchar(40) NOT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `max_time` time DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `path` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('1','thellipalai','10:00:00','KKS','jaffna town, kokkuvil, kondavil, inuvil, chunnakam, mallakam, Thellipalai'),('10','palai','05:00:00','neervely','jaffna town, nallur, kopay, achuvely, neervely'),('2','punnalaikkadduvan','03:00:00','Palali','jaffna town, kondavil, urumpirai, north punnalaikkadduvan, south pullalaikadduvan, palali Airport'),('3','chavakacheri','04:00:00','chava','jaffna town, ariyalai, kaithadi, chavakacheri,kodikamam '),('4','neerveli','05:00:00','neervely','jaffna town, nallur, kopay, achuvely, neervely'),('5','vada','00:00:00','vada','jaffna town, nallur, kopay, achuvely, thondaimanaru, point prdro '),('6','manipay','02:30:00','manipay','jaffna town, kokkuvil, manipay, marathanarmadam'),('7','keerimalai','04:00:00','keerimalai','jaffna town, chunnakam, alaveddi, maviddapuram, keerimali'),('8','vaddukoddai','05:00:00','vadduloddai','jaffna town, nallur, kopay, achuvely, vaddukoddai'),('9','pandatharippu','05:00:00','neervely','jaffna town, nallur, kopay, achuvely, neervely');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 18:44:16
