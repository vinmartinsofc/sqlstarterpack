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
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_name` varchar(100) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `year_release` year NOT NULL,
  `genre` varchar(50) NOT NULL,
  `category` enum('Movie','Serie','Documentary','Animation') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_name` (`title_name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES (1,'Cat People','Jacques Tourneur',1942,'Horror','Movie'),(2,'Day Of The Warrior','Andy Sidaris',1996,'Action/Adventure','Movie'),(3,'Deathstalker','James Sbardellati',1983,'Action/Adventure/Medieval/Dark Fantasy','Movie'),(4,'Deathstalker (2025)','Steven Kostanski',2025,'Action/Adventure/Medieval/Dark Fantasy','Movie'),(6,'F1: The Movie','Joseph Kosinski',2025,'Action/Race/Sport','Movie'),(8,'I Am Joe Frazier','Pete McCormack',2025,'Documentary','Documentary'),(9,'Jurassic World: Rebirth','Gareth Edwards',2025,'Action/Adventure','Movie'),(10,'Les Diaboliques','Henri-Georges Clouzot',1955,'Horror/Mistery','Movie'),(11,'Oblivion','Joseph Kosinski',2013,'Sci Fi/Action','Movie'),(12,'One Battle After Another','Paul Thomas Anderson',2025,'Drama/Action','Movie'),(13,'Soylenth Green','Richard Fleischer',1973,'Sci Fi/Thriller','Movie'),(14,'The Black Cat','Edgar G. Ulmer',1934,'Horror/Mistery','Movie'),(15,'The Divide','Xavier Gens',2011,'Sci Fi/Dystopian/Horror','Movie'),(16,'The Occupant','Hugo Keijzer',2025,'Sci Fi/Mystery/Suspense/Drama','Movie'),(17,'The Relic','Peter Hyams',1997,'Suspense/Horror/Sci Fi/Mystery','Movie'),(18,'The Ritual','David Bruckner',2017,'Horror/Thriller','Movie'),(19,'The Night Of The Hunter','',1955,'Noir/Drama/Suspense/Crime/Horror','Movie'),(20,'This Island Earth','Joseph M. Newman/Jack Arnold',1955,'Sci Fi/Horror/Mystery','Movie'),(21,'Vampyr','Carl Theodor Dreyer',1932,'Dark Fantasy/Horror','Movie'),(22,'Godzilla','Ishirō Honda',1954,'Sci Fi/Horror','Movie'),(23,'The Warrior And The Sorceress','John Broderick',1984,'Dark Fantasy/Medieval','Movie'),(24,'Threads','Mick Jackson',1984,'Sci Fi/Dystopian/Horror','Movie'),(43,'Alien','Ridley Scott',1979,'Sci-Fi/Thriller','Movie'),(44,'Aliens','James Cameron',1986,'Sci-Fi/Thriller','Movie'),(45,'Alien³','David Fincher',1992,'Sci-Fi/Thriller','Movie'),(46,'Blade Runner 2049','Denis Villeneuve',2017,'Sci-Fi','Movie'),(47,'Blade Runner','Ridley Scott',1982,'Sci-Fi','Movie'),(48,'Dead Of Night','Bob Clark',1974,'Horror/Drama/Thriller','Movie'),(49,'The Evil Dead (Evil Dead I)','',1981,'Horror/Thriller/Slasher','Movie'),(50,'Evil Dead II','Sam Raimi',1987,'Horror/Thriller/Slasher','Movie'),(51,'Army Of Darkness (Evil Dead III)','Sam Raimi',1982,'Horror/Thriller/Slasher','Movie'),(52,'Evil Dead IV','Fede Alvarez',2013,'Horror/Thriller/Slasher','Movie'),(53,'Evil Dead Raise (Evil Dead V)','Lee Cronin',2023,'Horror/Thriller/Slasher','Movie'),(54,'Hellraiser','Clive Barker',1987,'Horror/Thriller/Slasher','Movie'),(55,'Hellraiser (2022)','David Bruckner',2022,'Horror/Thriller/Slasher','Movie'),(56,'Hellraiser: Hellbound (Hellraiser II)','Tony Randel',1988,'Horror/Thriller/Slasher','Movie'),(57,'Hereditary','Ari Aster',2018,'Horror/Thriller','Movie'),(58,'House Of Wax','André De Toth',1953,'Horror/Thriller','Movie'),(59,'Sinners','Ryan Coogler',2025,'Action/Drama/Horror','Movie'),(60,'Animatrix','Peter Chung/Andrew R. Jones/Yoshiaki Kawajiri',2003,'Sci-Fi','Animation');
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
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
