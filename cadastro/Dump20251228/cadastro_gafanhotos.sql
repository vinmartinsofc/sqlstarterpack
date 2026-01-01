CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
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
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('F','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Brasil',
  `profissao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cursopreferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'Ana Souza','1998-04-12','F',58.40,1.65,'Brasil','Desenvolvedora Frontend',22),(2,'Carlos Pereira','1995-09-23','M',82.30,1.78,'Brasil','Engenheiro de Software',17),(3,'Mariana Lima','2001-01-05','F',54.20,1.62,'Brasil','Analista de Sistemas',12),(4,'João Mendes','1992-11-30','M',90.50,1.85,'Brasil','Arquiteto de Software',30),(5,'Fernanda Alves','1999-06-18','F',61.80,1.70,'Brasil','Analista de QA',8),(6,'Lucas Rocha','2003-02-14','M',74.60,1.75,'Brasil','Desenvolvedor Backend',1),(7,'Beatriz Nogueira','1997-08-09','F',56.90,1.64,'Brasil','UX Designer',3),(8,'Rafael Costa','1994-12-01','M',88.20,1.82,'Brasil','Engenheiro DevOps',5),(9,'Paula Teixeira','2000-07-22','F',60.10,1.68,'Brasil','Product Owner',9),(10,'Thiago Freitas','1996-03-10','M',92.40,1.88,'Brasil','Administrador de Banco de Dados',15),(11,'Sofia Martins','1998-10-03','F',57.30,1.66,'Portugal','Desenvolvedora Full Stack',11),(12,'Miguel Carvalho','1993-04-28','M',80.90,1.76,'Portugal','Cloud Engineer',55),(13,'Juan Pérez','1995-02-19','M',85.70,1.79,'Argentina','Data Engineer',40),(14,'Lucía Fernández','2001-09-15','F',59.40,1.67,'Argentina','Cientista de Dados',39),(15,'Diego González','1997-06-06','M',83.10,1.74,'Chile','Analista de Segurança da Informação',22),(16,'Camila Rojas','2002-12-25','F',55.80,1.63,'Chile','QA Automation Engineer',50),(17,'Luis Hernández','1991-01-17','M',89.60,1.80,'México','Tech Lead',51),(18,'María López','1999-11-08','F',58.90,1.65,'México','Scrum Master',52),(19,'Marco Bianchi','1994-07-14','M',78.40,1.73,'Itália','Mobile Developer',53),(20,'Giulia Rossi','2003-05-02','F',54.70,1.61,'Itália','Frontend Engineer',49),(21,'Pierre Dubois','1996-10-26','M',81.20,1.77,'França','Backend Engineer',48),(22,'Claire Moreau','2001-08-30','F',56.10,1.64,'França','UI Designer',41),(23,'Hans Müller','1989-01-12','M',87.90,1.83,'Alemanha','Systems Engineer',1),(24,'Anna Schneider','1999-03-21','F',60.00,1.69,'Alemanha','Business Analyst',12),(25,'James Smith','1998-05-18','M',84.30,1.80,'Estados Unidos','Software Engineer',19),(26,'Emily Johnson','2002-07-07','F',57.60,1.66,'Estados Unidos','Data Analyst',30),(27,'Oliver Brown','1993-04-04','M',79.80,1.75,'Reino Unido','Site Reliability Engineer',25),(28,'Charlotte Wilson','2001-02-07','F',55.90,1.63,'Reino Unido','Product Manager',45),(29,'Akira Tanaka','1990-02-02','M',70.40,1.72,'Japão','Embedded Systems Engineer',48),(30,'Yuki Sato','2003-12-13','F',52.30,1.58,'Japão','Game Developer',39),(31,'Andrés Morales','1998-09-09','M',86.10,1.78,'Colômbia','Machine Learning Engineer',37),(32,'Valentina Cruz','2000-06-01','F',59.20,1.67,'Colômbia','BI Analyst',36),(62,'Pedro Oliveira','1993-08-19','M',76.50,1.74,'Brasil','Programador',NULL),(63,'Juliana Santos','1996-12-05','F',63.20,1.71,'Brasil','Programador',NULL),(64,'Mateus Costa','2000-03-22','M',69.80,1.76,'Brasil','Programador',NULL),(65,'Larissa Silva','1998-07-14','F',58.10,1.66,'Brasil','Desenvolvedora Frontend',NULL),(66,'Ricardo Souza','1991-11-30','M',91.20,1.84,'Brasil','Engenheiro de Dados',NULL),(67,'Patrícia Rocha','1999-02-18','F',62.50,1.69,'Brasil','Analista de BI',NULL),(68,'Felipe Martins','1997-04-25','M',77.30,1.78,'Brasil','Programador',NULL),(69,'Aline Pereira','2002-09-11','F',55.90,1.63,'Brasil','Programador',NULL),(70,'Roberto Almeida','1994-01-09','M',85.60,1.82,'Brasil','DevOps Engineer',NULL),(71,'Tatiane Fernandes','1996-06-28','F',60.40,1.67,'Brasil','QA Engineer',NULL),(72,'Bruno Lima','1992-05-15','M',88.70,1.83,'Brasil','Tech Lead',NULL),(73,'Daniela Castro','2001-08-03','F',57.80,1.65,'Brasil','UX/UI Designer',NULL),(74,'Eduardo Nunes','1995-10-22','M',79.50,1.79,'Brasil','Programador',NULL),(75,'Vanessa Oliveira','1998-12-07','F',61.20,1.70,'Brasil','Product Manager',NULL),(76,'Gustavo Henrique','1993-03-16','M',82.40,1.81,'Brasil','Backend Developer',NULL),(77,'Isabela Cardoso','2000-11-29','F',59.70,1.68,'Brasil','Frontend Developer',NULL),(78,'Hugo Barros','1997-07-12','M',75.90,1.77,'Brasil','Programador',NULL),(79,'Renata Vieira','1999-04-04','F',56.30,1.64,'Brasil','Data Scientist',NULL),(80,'Leonardo Dias','1994-09-21','M',87.20,1.85,'Brasil','Cloud Architect',NULL),(81,'Carolina Mendes','2002-01-17','F',54.80,1.62,'Brasil','Programador',NULL),(82,'Rodrigo Xavier','1996-08-08','M',80.10,1.80,'Brasil','Mobile Developer',NULL),(83,'Amanda Torres','1998-05-30','F',63.80,1.72,'Brasil','Analista de Sistemas',NULL),(84,'Sérgio Ramos','1991-02-14','M',94.50,1.86,'Brasil','Programador',NULL),(85,'Laura Monteiro','1999-10-10','F',58.60,1.66,'Brasil','Scrum Master',NULL),(86,'Diego Santos','1995-06-24','M',78.90,1.78,'Brasil','Programador',NULL),(87,'Fernanda Costa','2001-07-19','F',57.10,1.65,'Brasil','Full Stack Developer',NULL),(88,'Antônio Ribeiro','1993-12-03','M',83.60,1.82,'Brasil','Security Analyst',NULL),(89,'Marina Alves','1997-03-27','F',62.90,1.71,'Brasil','Programador',NULL),(90,'Luiz Felipe','1992-04-09','M',89.30,1.84,'Brasil','Database Administrator',NULL),(91,'Bianca Nunes','2000-09-15','F',59.50,1.68,'Brasil','Business Intelligence',NULL),(92,'Carlos Eduardo','1994-11-28','M',76.80,1.75,'Brasil','Programador',NULL),(93,'Priscila Andrade','1998-02-21','F',61.70,1.70,'Brasil','UX Researcher',NULL),(94,'Marcelo Silva','1996-10-05','M',81.90,1.79,'Brasil','Site Reliability Engineer',NULL),(95,'Gabriela Fonseca','1999-01-13','F',57.40,1.66,'Brasil','Programador',NULL),(96,'Ricardo Mendonça','1993-05-08','M',86.40,1.83,'Portugal','Programador',NULL),(97,'Sofia Costa','2002-04-17','F',55.20,1.63,'Portugal','Frontend Engineer',NULL),(98,'Alejandro Ruiz','1997-09-26','M',79.20,1.77,'Espanha','Data Engineer',NULL),(99,'Elena Vargas','2000-03-03','F',60.80,1.69,'Espanha','Data Analyst',NULL),(100,'Samuel Cohen','1995-12-11','M',84.70,1.81,'Israel','Cybersecurity Specialist',NULL),(101,'Rachel Levy','1998-08-22','F',58.30,1.67,'Israel','Programador',NULL),(102,'Kenji Yamamoto','1992-06-19','M',71.50,1.73,'Japão','Embedded Engineer',NULL),(103,'Mei Chen','1999-07-07','F',56.70,1.65,'China','AI Engineer',NULL),(104,'Lars Johansson','1994-02-25','M',88.10,1.84,'Suécia','Game Developer',NULL),(105,'Ingrid Olsen','2001-11-14','F',63.10,1.72,'Noruega','3D Artist',NULL),(106,'Mikhail Ivanov','1996-04-30','M',85.90,1.82,'Rússia','Systems Programmer',NULL),(107,'Anastasia Petrova','1998-10-08','F',59.90,1.68,'Rússia','Programador',NULL),(108,'Mohamed Hassan','1993-01-23','M',82.80,1.80,'Egito','Web Developer',NULL),(109,'Layla Abbas','2000-05-27','F',61.50,1.70,'Egito','Mobile App Developer',NULL),(110,'Sebastian Müller','1997-12-15','M',77.60,1.78,'Alemanha','Programador',NULL),(111,'Clara Schmidt','1999-06-09','F',57.90,1.66,'Alemanha','Cloud Developer',NULL),(112,'Giovanni Conti','1995-08-18','M',80.30,1.79,'Itália','Programador',NULL),(113,'Elena Romano','2002-02-04','F',56.20,1.64,'Itália','UX Designer',NULL),(114,'Thomas Dubois','1994-03-12','M',83.50,1.81,'França','DevOps Specialist',NULL),(115,'Sophie Laurent','1998-09-28','F',60.60,1.69,'França','Programador',NULL);
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  1:43:58
