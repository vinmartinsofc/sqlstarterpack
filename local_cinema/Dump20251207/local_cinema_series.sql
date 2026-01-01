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
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `series_id` int NOT NULL AUTO_INCREMENT,
  `series_name` varchar(50) NOT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `year_release` year NOT NULL,
  PRIMARY KEY (`series_id`),
  UNIQUE KEY `series_name` (`series_name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (12,'Alien: Earth','Noah Hawley','Sci Fi/Horror/Thriller/Slasher',2025),(13,'True Detective','Nic Pizzolatto/Issa López','Crime',2014),(14,'The Outer Limits','Leslie Stevens','Sci Fi',1995),(15,'The Simpsons','Matt Groening/James L. Brooks/Sam Simon','Animation',1989),(16,'The X Files','Chris Carter','Sci Fi/Crime',1993),(17,'Millennium','Chris Carter','Sci Fi/Crime',1996),(18,'Lost','J.J. Abrams/Jeffrey Lieber/Damon Lindelof','Sci Fi/Drama/Mystery/Adventure',2004),(19,'The Walking Dead','Frank Darabont','Apocalyptic/Zombie/Zombie Drama/Horror/Thruller/Dystopian',2010),(20,'Breaking Bad','Vince Gilligan','Sci Fi/Drama/Crime',2008),(21,'Game Of Thrones','David Benioff/D.B. Weiss','Epic/Fantasy/Dark Fantasy/Drama',2011),(22,'Pluribus','Vince Gilligan','Dystopian Sci Fi/Sci Fi',2025);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-07 22:52:42
