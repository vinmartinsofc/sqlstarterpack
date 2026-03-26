/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: jmotors
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `unique_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES
(1,'Joao da Silva','CPF021'),
(2,'Maria Betânea','CPF022'),
(3,'Cleiton de Melo Braga','CPF023'),
(4,'Ricardo Albuquerque','CPF024'),
(5,'Ana Silva','CPF001'),
(6,'Bruno Santos','CPF002'),
(7,'Carlos Oliveira','CPF003'),
(8,'Daniela Costa','CPF004'),
(9,'Eduardo Lima','CPF005'),
(10,'Fernanda Rocha','CPF006'),
(11,'Gabriel Alves','CPF007'),
(12,'Helena Pereira','CPF008'),
(13,'Igor Martins','CPF009'),
(14,'Juliana Nogueira','CPF010'),
(15,'Lucas Barros','CPF011'),
(16,'Mariana Teixeira','CPF012'),
(17,'Nicolas Farias','CPF013'),
(18,'Olivia Pacheco','CPF014'),
(19,'Paulo Ribeiro','CPF015'),
(20,'Renata Guedes','CPF016'),
(21,'Sergio Araujo','CPF017'),
(22,'Tatiane Melo','CPF018'),
(23,'Ulysses Franco','CPF019'),
(24,'Vanessa Duarte','CPF020');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  `rentdays` bigint(20) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `paid` tinyint(1) NOT NULL,
  `rent_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `vehicle_id` (`vehicle_id`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES
(1,4,20,10,919.5,1,'2025-01-25'),
(2,2,1,15,1559.95,1,'2025-01-25'),
(3,1,5,3,182.85,0,'2025-01-25'),
(4,4,27,7,724.08,1,'2026-01-25'),
(5,2,24,7,769.65,1,'2026-01-25'),
(6,1,30,14,1905.54,1,'2026-01-01'),
(7,3,25,7,769.65,1,'2025-12-20'),
(98,2,5,5,1100,1,'2025-01-07'),
(99,3,1,2,240,0,'2025-01-10'),
(100,4,4,7,1400,1,'2025-01-12'),
(101,5,2,4,600,0,'2025-01-15'),
(102,6,6,1,250,1,'2025-01-18'),
(103,7,7,6,1800,1,'2025-01-20'),
(104,8,8,3,840,0,'2025-01-22'),
(105,9,9,2,320,1,'2025-01-24'),
(106,10,10,5,700,0,'2025-01-26'),
(107,11,11,4,760,1,'2025-01-28'),
(108,12,12,3,630,1,'2025-02-01'),
(109,15,15,1,170,1,'2025-02-07'),
(110,16,16,5,775,0,'2025-02-09'),
(111,17,17,7,2170,1,'2025-02-11'),
(112,20,20,2,330,1,'2025-02-17');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `dailyprice` double NOT NULL,
  `vehicle_year` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES
(1,'VW T-Cross 1.0 Turbo',103.95,NULL),
(2,'Jeep Renegade 1.3',103.95,NULL),
(4,'GM Tracker 1.0',103.95,NULL),
(5,'Fiat Mobi 1.0',60.95,NULL),
(6,'Renault Kwid',60.95,NULL),
(7,'Fiat Argo 1.0',62.95,NULL),
(8,'VW Polo 1.0',62.95,NULL),
(9,'Hyundai HB20 1.0',62.95,NULL),
(10,'Hyundai HB20S 1.0',71.95,NULL),
(11,'GM Onix 1.0,',71.95,NULL),
(12,'Fiat Cronos 1.0,',71.95,NULL),
(15,'GM Onix LTZ 1.0 AT',89.95,NULL),
(16,'Fiat Cronos 1.3',78.95,NULL),
(17,'GM Onix Plus 1.0',78.95,NULL),
(20,'Hyundai HB20S 1.0 Turbo AT',91.95,NULL),
(21,'Volkswagen Tera 1.0 AT',97.95,NULL),
(22,'Fiat Pulse 1.0 Turbo',97.95,NULL),
(23,'C3 Aircross 1.0',97.95,NULL),
(24,'VW T-Cross Highline 1.4 TSI AT',109.95,NULL),
(25,'Tracker Premier 1.2 turbo',109.95,NULL),
(26,'Jeep Compass 1.3 Turbo',219.95,NULL),
(27,'Wolkswagen Up',103.44,NULL),
(28,'Fiat Mobi',103.52,NULL),
(29,'Peugeot 208',114.73,NULL),
(30,'Renault Kardian',136.11,NULL),
(31,'Onix',120,'2018-01-01'),
(32,'HB20',150,'2019-01-01'),
(33,'Corolla',180,'2020-01-01'),
(34,'Civic',200,'2021-01-01'),
(35,'Compass',220,'2022-01-01'),
(36,'Renegade',250,'2023-01-01'),
(37,'Hilux',300,'2020-01-01'),
(38,'Ranger',280,'2019-01-01'),
(39,'Argo',160,'2018-01-01'),
(40,'Gol',140,'2017-01-01'),
(41,'Cruze',190,'2021-01-01'),
(42,'Taos',210,'2022-01-01'),
(43,'T-Cross',230,'2023-01-01'),
(44,'HR-V',260,'2021-01-01'),
(45,'Ka',170,'2019-01-01'),
(46,'Sandero',155,'2018-01-01'),
(47,'SW4',310,'2022-01-01'),
(48,'Commander',290,'2021-01-01'),
(49,'Uno',135,'2017-01-01'),
(50,'208',165,'2020-01-01');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jmotors'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-26 13:15:17
