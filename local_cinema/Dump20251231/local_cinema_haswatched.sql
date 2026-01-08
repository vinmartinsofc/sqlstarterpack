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
  `series_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `title_id` (`title_id`),
  KEY `series_id` (`series_id`),
  CONSTRAINT `haswatched_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `haswatched_ibfk_2` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`),
  CONSTRAINT `haswatched_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `series` (`series_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haswatched`
--

LOCK TABLES `haswatched` WRITE;
/*!40000 ALTER TABLE `haswatched` DISABLE KEYS */;
INSERT INTO `haswatched` VALUES (1,1,172,'2025-12-01',1,'Typical Sci Fi movie from 80s/90s it was worth watching','3',NULL),(2,1,173,'2025-12-04',1,'An average horror movie','3',NULL),(3,1,7563,'2025-12-14',1,'I am still preferring the 40s version','3',NULL),(4,1,7564,'2025-12-17',1,'Amazing, its perfect','5',NULL),(5,1,7565,'2025-12-23',1,'Not so good','3',NULL),(6,1,131,'2025-12-23',3,'Love it','4',NULL),(7,1,117,'2024-01-01',1,'Love it, but could have been better and I have forgotten the exact day I watched it','4',NULL),(8,1,116,'2024-01-01',1,'Love it','4',NULL),(9,1,134,'2024-01-01',1,'Love it','4',NULL),(10,1,226,'2024-01-01',1,'Must have watched lots of time, but never in english','5',NULL),(11,1,127,'2024-01-01',1,'Love it','4',NULL),(12,2,119,'2025-12-28',1,'Um clássico!','5',NULL),(13,2,6,'2025-05-28',1,'Muito bom, hostei','3',NULL),(14,2,203,'2020-12-28',1,'Não entendi nada','5',NULL),(15,5,42,'2024-01-01',1,'Muito legal','4',NULL),(16,5,13,'2025-12-28',1,'Muito bom','5',NULL),(17,3,8,'2020-09-30',1,'loved to see it in  the cinema','4',NULL),(18,3,46,'2024-12-20',1,'Very interesting','4',NULL),(19,4,4694,'2025-12-28',1,'One of the best movies of all time','5',NULL),(20,4,143,'2025-12-28',1,'Liked it very much','5',NULL),(21,1,NULL,'2025-12-25',1,'<3','4',22),(22,1,7567,'2025-12-30',2,'has some positive and negative points, its worth watching but not surpass the olders','3',NULL),(23,1,7566,'2025-12-31',1,'It was good to watch','4',NULL),(24,1,529,'2025-12-29',1,'Sci-fi combined with action, great movie','5',NULL),(25,1,227,'2025-12-28',1,'One of my favorites','5',NULL);
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

-- Dump completed on 2025-12-31 21:17:14
