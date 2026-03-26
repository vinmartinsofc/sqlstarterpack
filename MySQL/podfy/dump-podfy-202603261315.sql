/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: podfy
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
-- Table structure for table `convidado`
--

DROP TABLE IF EXISTS `convidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `convidado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `area_atuacao` varchar(50) DEFAULT NULL,
  `pais` enum('BR','US','EU') DEFAULT 'BR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convidado`
--

LOCK TABLES `convidado` WRITE;
/*!40000 ALTER TABLE `convidado` DISABLE KEYS */;
INSERT INTO `convidado` VALUES
(3,'Vin Martins','Desenvolvedor Java | Spring','BR'),
(4,'Paulo Silveira','CEO da alura','BR'),
(5,'Gustavo Guanabara','Instrutor de programacao','BR'),
(6,'Mano Deyvin','Podcaster | Desenvolvedor Ruby','BR'),
(7,'Nelio Alves','Instrutor de programacao','BR'),
(8,'Felipe Fontoura','Instrutor e desenvolvedor de software','BR');
/*!40000 ALTER TABLE `convidado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_podcast`
--

DROP TABLE IF EXISTS `detalhes_podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalhes_podcast` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `podcast_id` bigint(20) NOT NULL,
  `descricao` text NOT NULL,
  `site_oficial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_podcast`
--

LOCK TABLES `detalhes_podcast` WRITE;
/*!40000 ALTER TABLE `detalhes_podcast` DISABLE KEYS */;
INSERT INTO `detalhes_podcast` VALUES
(1,1,'Podcast com o criador da plataforma Podfy','www.podfy.com'),
(2,2,'Podcast voltado para a área de tecnologia que  fala sobre programação e tudo relacionado a área tech','www.hightecBR.com'),
(3,3,'Programação e filosofia de código, de segunda a sexta, a partir das 7 horas da manhã','www.dailydoseofcode.combr');
/*!40000 ALTER TABLE `detalhes_podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodio`
--

DROP TABLE IF EXISTS `episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `podcast_id` bigint(20) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `numero` bigint(20) NOT NULL,
  `duracao_minutos` bigint(20) NOT NULL,
  `data_publicacao` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `podcast_id` (`podcast_id`),
  CONSTRAINT `episodio_ibfk_1` FOREIGN KEY (`podcast_id`) REFERENCES `podcast` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio`
--

LOCK TABLES `episodio` WRITE;
/*!40000 ALTER TABLE `episodio` DISABLE KEYS */;
INSERT INTO `episodio` VALUES
(1,1,'Como tudo começou',1,50,'2026-01-03'),
(2,2,'Tendências para 2026 e por que python é a linguagem de programação mais popular',1,80,'2026-01-03'),
(3,3,'Todo o conteúdo do Dev Samurai disponível de graça e como dominiar o postgres',1,83,'2025-02-05');
/*!40000 ALTER TABLE `episodio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participacao`
--

DROP TABLE IF EXISTS `participacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `participacao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `episodio_id` bigint(20) DEFAULT NULL,
  `convidado_id` bigint(20) DEFAULT NULL,
  `papel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episodio_id` (`episodio_id`),
  KEY `convidado_id` (`convidado_id`),
  CONSTRAINT `participacao_ibfk_1` FOREIGN KEY (`episodio_id`) REFERENCES `episodio` (`id`),
  CONSTRAINT `participacao_ibfk_2` FOREIGN KEY (`convidado_id`) REFERENCES `convidado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacao`
--

LOCK TABLES `participacao` WRITE;
/*!40000 ALTER TABLE `participacao` DISABLE KEYS */;
INSERT INTO `participacao` VALUES
(1,2,5,'Convidado Especial'),
(2,1,6,'Fazer piadinhas e usar o soundboard como  trilha sonora'),
(3,3,8,'Convidado especial');
/*!40000 ALTER TABLE `participacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcast` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `criador` varchar(50) NOT NULL,
  `data_criacao` date NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
INSERT INTO `podcast` VALUES
(1,'Podfy','Vin Martins','2026-01-03',1),
(2,'Hightec Brasil','Vin Martins','2026-01-03',1),
(3,'Daily dose of code','Vin Martins','2026-01-25',1);
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'podfy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-26 13:15:40
