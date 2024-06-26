-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: mystore
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `rol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (100,'Admin'),(200,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `rol_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mariano','123',200),(2,'Rodrigo','Metallica1',100),(3,'121','$2b$10$xieA1tb4yX7upMn98hqRee0H1xm5q8wXIENRs1LYk255MEZ/bniB6',NULL),(4,'Lucia','$2b$10$j0BjYOz9bceZNUrmyohMRexv0jcacGVOGmXG.y4BCiGz/pTx.vUiy',NULL),(5,'Mariano','$2b$10$tSEukRviW4ey9..TGtfO5.TMYMS3YSacsABV1gbRLVavGlHs4557e',NULL),(6,'Mariano','$2b$10$mXdLu5Hcy0weBwAlUoPED.Ml3IId1wb4uTBKcJdCgBHm2c1In4Ckq',NULL),(7,'ElMariano','$2b$10$2QzcH01L6RZTG/RqavWWY.MWrWy9ZJJPx0nq88yg7t3S/qFGn0XgC',NULL),(8,'Lucy','$2b$10$i8/uM7BLkxjk54PvrNmtcO.JFy.F4pm0..wWal/cUdu1vtkeTob7m',NULL),(9,'fernandayanez','$2b$10$6jvVTJS/6Cn4XIGF5yTGfe/UAdhxFbZ4zjiRV9OHvpD/buCAkqOx2',NULL),(10,'asdf','$2b$10$GklwkO7lzIYYaIe8KyRLyOZj5Adv/8FZzOMOs4xy1AOSJISHlxexm',NULL),(11,'Prueba','$2b$10$hzIJJ4jvYd5KZ4lVN5EVRuOHhXQqgvi/JGb8xXn0QtKeLDgRe4VRm',NULL),(12,'Marianoyanez','$2b$10$pLKhIYO1gxrcpa4fm2/61upo19.phqwsxsxmT1pbL0CJx0.K1XI2u',NULL),(13,'MYA','$2b$10$BnEYKaZ8O0r7.3bJmhWQoOH3dcwlW4GoGDcImLUBdOTUFOce/Ne0G',NULL),(14,'M','$2b$10$fhYK84T.dtjl8Hv64i8useiL04u0Xn/Ut6544J6SrBhKL2OI9eva.',NULL),(15,'m','$2b$10$BNA7TCHhqIgsYbprdeGlauhEMdTxsQEcMR.05VyFAeGqOx9jaf4cK',NULL),(16,'m','$2b$10$cDKeGfZMe0.nS7PqTibDfuYxvAuBIZC2yG.CG5hG3lgU3uZkqgvgm',NULL),(17,'m','$2b$10$2T6GnOrQ5R79GpsUJwpyiutpfheq9W42m9v30Ab7czz4RcqvrVMiG',NULL),(18,'m','$2b$10$YLaJ8M9WrCQ.WnntBswpDeXQ87YD7OJiiB6V44dDm/DRIpnibyYjm',NULL),(19,'m','$2b$10$xalZ0m70bqzHbLXFBGrRxO0dLJnxHflapVyEB1R4nirM9fhp3ueD2',NULL),(20,'m','$2b$10$wIY8zr6MUFA.q3L5Jh6RlOYAaYD7EzB1Kfgys21pI0eh1PcQGSDnS',NULL),(21,'marianoya920@gmail.com','$2b$10$vF8cu8e2UfLqk271sziczOTpoY1ezuCmgsehbewiEanQ3L8wGcUbS',NULL),(22,'marianoya920@gmail.com','$2b$10$yLj82w9eIME44aDulokKH.WZa/CaXj2/vnhyPZGvUbUGGCfylEI/W',NULL),(23,'marianoya920@gmail.com','$2b$10$tG1fDxRFRMqNFI4p0TdETenrNh5hoKV6yre/LidDO/9OkDtWNkhbW',NULL),(24,'marianoya920@gmail.com','$2b$10$gV9qW.2/zqG/LITephWUoeLVVRtBm5IDXf1oaFPfWjULuKaQTPGWi',NULL),(25,'marianoya920@gmail.com','$2b$10$7uOl26bef/vaOlTH4RaWYOXmx8vWSOo.CXG.ufgnWhQ6WvSxqiepm',NULL),(26,'MYA','$2b$10$pnli7P3F6L8heRd218zqhORQu9jx2yxEcaM3baEVvMXziy/w3eBfq',NULL),(27,'M','$2b$10$kedX.VpoEzGFZ69rF34CHetZMnL/h45wacibJpjFIHeli/0s2Vi2.',NULL),(28,'M','$2b$10$Y5Xm.VUyL0laVutfk.5z9OxeBZLAyTtbqhAest9gHAa31hPPRxoCK',NULL),(29,'M','$2b$10$TiDvYGevwSm6dKH/rbRXfuWOxhNujT2UQSRTq/Six6W8eedWL7aGW',NULL),(30,'M','$2b$10$FCLKK3cx4Dlf9NgYFthUturY4XloIiF.UJW3AKJz.6N/.I9gOtAjG',NULL),(31,'M','$2b$10$fdLg74X3kFVymodPZmgBeuTIEhegkRcpiCCnUZozVCoL6m8c8AX/S',NULL),(32,'M','$2b$10$ZXof0HQmoLPojtMe2DGsZ.qr..dir3Yv6kwBmBOqAWcq3YN36G8WS',NULL),(33,'M','$2b$10$jm9AExSRVGNSohNW2u8mNupD17b1w/nC0gz9KTGc0CWE1Ddh//72m',NULL),(34,'M','$2b$10$AN1oxDUaVH1.8pwYuMebE.9ElztvXaCyWAcazTTBd1Xd7pq6gv8Pe',NULL),(35,'M','$2b$10$4I6S3Qhq4yW3iOpd42BWlemwL4XlTjYy0v7KAVrZl2wLscOsnItsi',NULL),(36,'M','$2b$10$0OSefptbSrEwobW11zQ4bO7Q6PxNdUVYFJQrukRAldjfX/0F/TZoS',NULL),(37,'M','$2b$10$HdRFOA/NEWqRCatAZvgDNuQ78TUklv3JQyalAECAPtQzDs1Kq0ue2',NULL),(38,'M','$2b$10$n40bsJSwBZRk7UITP8v4qOlJs7cid8dtEG4hhN11bhfbjPxjWlh.O',NULL),(39,'M','$2b$10$3jj8/8SR8ZX/clAc34I/UO12DXf1lTOyvd9Uv8yyW.MzCQ9bFl.hK',NULL),(40,'M','$2b$10$s03em7qDRw0nF0byEBP9xuJcGtwwI1wXMel5qYkQ2ytK5zzq0uAL2',NULL),(41,'M','$2b$10$dRET0P2eFaGHOM.9Im6ekuYTpWjftQNKM6sT2HRXu7QSq44HU5Sm.',NULL),(42,'M','$2b$10$CJOKJ.0/va1AVzlZpg9i/OiiWaYyunMWahrHwr3BRoQKh0oVylWYK',NULL),(43,'Prueba126','$2b$10$OA2cpm1ueJaap9lMLsKyOOUk3E8Fo4rECvxWupDBE8K3WiwnWeh62',NULL),(44,'Prueba126','$2b$10$Pwa6yM2P0RNhj2CGkSnen.SiX2xyldrhRtX5T3Mvo8BGKb6kncK8i',NULL),(45,'j','$2b$10$VxAVW.tfEMIPyEylWHa5DepGKSPbhPF3MRRKf0uNQNWiQ2dAKfYoW',NULL),(46,'Her','$2b$10$72kCvLo7h3JyrRPZm3ZeAe3gMsBWmAlX0l8D1yeyzRyrqGG3QKOyq',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  4:48:21
