/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: podfy
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB-0+deb13u1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `convidado`
--

DROP TABLE IF EXISTS `convidado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `convidado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `area_atuacao` varchar(50) DEFAULT NULL,
  `pais` enum('Brasil','Estados Unidos','Europa') DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convidado`
--

LOCK TABLES `convidado` WRITE;
/*!40000 ALTER TABLE `convidado` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `convidado` VALUES
(3,'Vin Martins','Desenvolvedor Java | Spring','Brasil'),
(4,'Paulo Silveira','CEO da alura','Brasil'),
(5,'Gustavo Guanabara','Instrutor de programacao','Brasil'),
(6,'Mano Deyvin','Podcaster | Desenvolvedor Ruby','Brasil'),
(7,'Nelio Alves','Instrutor de programacao','Brasil');
/*!40000 ALTER TABLE `convidado` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `detalhes_podcast`
--

DROP TABLE IF EXISTS `detalhes_podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalhes_podcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `podcast_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `site_oficial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `podcast_id` (`podcast_id`),
  CONSTRAINT `detalhes_podcast_ibfk_1` FOREIGN KEY (`podcast_id`) REFERENCES `podcast` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_podcast`
--

LOCK TABLES `detalhes_podcast` WRITE;
/*!40000 ALTER TABLE `detalhes_podcast` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `detalhes_podcast` VALUES
(1,1,'Podcast com o criador da plataforma Podfy','www.podfy.com'),
(2,2,'Podcast voltado para a área de tecnologia que  fala sobre programação e tudo relacionado a área tech','www.hightecbrasil.com');
/*!40000 ALTER TABLE `detalhes_podcast` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `episodio`
--

DROP TABLE IF EXISTS `episodio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `podcast_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `duracao_minutos` int(11) NOT NULL,
  `data_publicacao` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `podcast_id` (`podcast_id`),
  CONSTRAINT `episodio_ibfk_1` FOREIGN KEY (`podcast_id`) REFERENCES `podcast` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio`
--

LOCK TABLES `episodio` WRITE;
/*!40000 ALTER TABLE `episodio` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `episodio` VALUES
(1,1,'Como tudo começou',1,50,'2026-01-03'),
(2,2,'Tendências para 2026 e por que python é a linguagem de programação mais popular',1,80,'2026-01-03');
/*!40000 ALTER TABLE `episodio` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `participacao`
--

DROP TABLE IF EXISTS `participacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `participacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `episodio_id` int(11) DEFAULT NULL,
  `convidado_id` int(11) DEFAULT NULL,
  `papel` varchar(255) DEFAULT NULL,
  `tempo_participacao_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `episodio_id` (`episodio_id`),
  KEY `convidado_id` (`convidado_id`),
  CONSTRAINT `participacao_ibfk_1` FOREIGN KEY (`episodio_id`) REFERENCES `episodio` (`id`),
  CONSTRAINT `participacao_ibfk_2` FOREIGN KEY (`convidado_id`) REFERENCES `convidado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacao`
--

LOCK TABLES `participacao` WRITE;
/*!40000 ALTER TABLE `participacao` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `participacao` VALUES
(1,2,5,'Convidado Especial',80),
(2,1,6,'Fazer piadinhas e usar o soundboard como  trilha sonora',50);
/*!40000 ALTER TABLE `participacao` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `podcast`
--

DROP TABLE IF EXISTS `podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `criador` varchar(50) NOT NULL,
  `data_criacao` date NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcast`
--

LOCK TABLES `podcast` WRITE;
/*!40000 ALTER TABLE `podcast` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `podcast` VALUES
(1,'Podfy','Vin Martins','2026-01-03',1),
(2,'Hightec Brasil','Vin Martins','2026-01-03',1);
/*!40000 ALTER TABLE `podcast` ENABLE KEYS */;
UNLOCK TABLES;
commit;

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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-04 13:18:15
