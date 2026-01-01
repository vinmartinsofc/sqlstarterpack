CREATE DATABASE  IF NOT EXISTS `local_cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `local_cinema`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: local_cinema
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `haswatched`
--

DROP TABLE IF EXISTS `haswatched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haswatched` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title_id` int DEFAULT NULL,
  `watch_date` date NOT NULL,
  `watch_count` int NOT NULL,
  `user_comment` text,
  `user_stars` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `haswatched_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `haswatched_ibfk_2` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haswatched`
--

LOCK TABLES `haswatched` WRITE;
/*!40000 ALTER TABLE `haswatched` DISABLE KEYS */;
INSERT INTO `haswatched` VALUES (1,1,172,'2025-12-01',1,'Typical Sci Fi movie from 80s/90s it was worth watching','3'),(2,1,173,'2025-12-04',1,'An average horror movie','3'),(3,1,7563,'2025-12-14',1,'I am still preferring the 40s version','3'),(4,1,7564,'2025-12-17',1,'Amazing, its perfect','5'),(5,1,7565,'2025-12-23',1,'Not so good','3'),(6,1,131,'2025-12-23',3,'Love it','4'),(7,1,117,'2024-01-01',1,'Love it, but could have been better and I have forgotten the exact day I watched it','4'),(8,1,116,'2024-01-01',1,'Love it','4'),(9,1,134,'2024-01-01',1,'Love it','4'),(10,1,226,'2024-01-01',1,'Must have watched lots of time, but never in english','5'),(11,1,127,'2024-01-01',1,'Love it','4'),(12,2,119,'2025-12-28',1,'Um clássico!','5'),(13,2,6,'2025-05-28',1,'Muito bom, hostei','3'),(14,2,203,'2020-12-28',1,'Não entendi nada','5'),(15,5,42,'2024-01-01',1,'Muito legal','4'),(16,5,13,'2025-12-28',1,'Muito bom','5'),(17,3,8,'2020-09-30',1,'loved to see it in  the cinema','4'),(18,3,46,'2024-12-20',1,'Very interesting','4'),(19,4,4694,'2025-12-28',1,'One of the best movies of all time','5'),(20,4,143,'2025-12-28',1,'Liked it very much','5');
/*!40000 ALTER TABLE `haswatched` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  1:42:45
