-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: licensingtable3
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SOnumber` varchar(255) NOT NULL,
  `POnumber` varchar(255) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CustomerName` (`CustomerName`),
  UNIQUE KEY `CustomerName_2` (`CustomerName`),
  UNIQUE KEY `CustomerName_3` (`CustomerName`),
  UNIQUE KEY `CustomerName_4` (`CustomerName`),
  UNIQUE KEY `CustomerName_5` (`CustomerName`),
  UNIQUE KEY `CustomerName_6` (`CustomerName`),
  UNIQUE KEY `CustomerName_7` (`CustomerName`),
  UNIQUE KEY `CustomerName_8` (`CustomerName`),
  UNIQUE KEY `CustomerName_9` (`CustomerName`),
  UNIQUE KEY `CustomerName_10` (`CustomerName`),
  UNIQUE KEY `CustomerName_11` (`CustomerName`),
  UNIQUE KEY `CustomerName_12` (`CustomerName`),
  UNIQUE KEY `CustomerName_13` (`CustomerName`),
  UNIQUE KEY `CustomerName_14` (`CustomerName`),
  UNIQUE KEY `CustomerName_15` (`CustomerName`),
  UNIQUE KEY `CustomerName_16` (`CustomerName`),
  UNIQUE KEY `CustomerName_17` (`CustomerName`),
  UNIQUE KEY `CustomerName_18` (`CustomerName`),
  UNIQUE KEY `CustomerName_19` (`CustomerName`),
  UNIQUE KEY `CustomerName_20` (`CustomerName`),
  UNIQUE KEY `CustomerName_21` (`CustomerName`),
  UNIQUE KEY `CustomerName_22` (`CustomerName`),
  UNIQUE KEY `CustomerName_23` (`CustomerName`),
  UNIQUE KEY `CustomerName_24` (`CustomerName`),
  UNIQUE KEY `CustomerName_25` (`CustomerName`),
  UNIQUE KEY `CustomerName_26` (`CustomerName`),
  UNIQUE KEY `CustomerName_27` (`CustomerName`),
  UNIQUE KEY `CustomerName_28` (`CustomerName`),
  UNIQUE KEY `CustomerName_29` (`CustomerName`),
  UNIQUE KEY `CustomerName_30` (`CustomerName`),
  UNIQUE KEY `CustomerName_31` (`CustomerName`),
  UNIQUE KEY `CustomerName_32` (`CustomerName`),
  UNIQUE KEY `CustomerName_33` (`CustomerName`),
  UNIQUE KEY `CustomerName_34` (`CustomerName`),
  UNIQUE KEY `CustomerName_35` (`CustomerName`),
  UNIQUE KEY `CustomerName_36` (`CustomerName`),
  UNIQUE KEY `CustomerName_37` (`CustomerName`),
  UNIQUE KEY `CustomerName_38` (`CustomerName`),
  UNIQUE KEY `CustomerName_39` (`CustomerName`),
  UNIQUE KEY `CustomerName_40` (`CustomerName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,'HOLA12','Hola1','Prueba','2024-04-14 20:45:49','2024-04-14 20:45:49'),(2,'HOLA121212','Hola1123123','Prueba2131','2024-04-14 20:46:50','2024-04-14 20:46:50'),(3,'12345','9876','HEB','2024-04-14 20:48:08','2024-04-14 20:48:08'),(5,'Prueba','Prueba','Prueba1','2024-04-14 23:29:23','2024-04-14 23:29:23'),(6,'234567','12890','Oxxo','2024-04-15 07:56:03','2024-04-15 07:56:03'),(7,'78901','PO34567','Jungle','2024-04-15 10:33:02','2024-04-15 10:33:02');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  4:47:17
