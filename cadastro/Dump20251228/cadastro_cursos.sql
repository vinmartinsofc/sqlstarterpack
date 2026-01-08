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
-- Table structure for table `cursos`
--

CREATE DATABASE cadastro
DEFAULT CHARSET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;


DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Progamação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2010),(5,'Java','Introdução à Linguagem Java',40,29,2000),(6,'MySQL','Banco de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'HTML Avançado','Curso avançado de HTML5',40,35,2018),(9,'CSS Flexbox','Layout moderno com Flexbox',30,28,2019),(10,'CSS Grid','Criação de layouts com Grid',30,26,2020),(11,'JavaScript Básico','Introdução ao JavaScript',40,32,2017),(12,'JavaScript Avançado','Conceitos avançados de JavaScript',50,45,2021),(13,'TypeScript','JavaScript tipado com TypeScript',40,36,2022),(14,'Lógica de Programação','Fundamentos da lógica',30,25,2016),(15,'Estruturas de Dados','Listas, pilhas e filas',50,42,2020),(16,'Algoritmos Avançados','Algoritmos e complexidade',60,48,2021),(17,'Git e GitHub','Controle de versão com Git',20,18,2019),(18,'Linux Básico','Introdução ao Linux',30,27,2018),(19,'Linux Avançado','Administração de sistemas Linux',50,44,2022),(20,'Banco de Dados Relacional','Fundamentos de bancos relacionais',40,34,2017),(21,'MySQL Avançado','Consultas e otimização no MySQL',40,38,2021),(22,'PostgreSQL','Banco de dados PostgreSQL',40,36,2020),(23,'Modelagem de Dados','Modelagem conceitual e lógica',30,28,2019),(24,'SQL Avançado','Subqueries e performance',50,46,2022),(25,'Java Básico','Introdução à linguagem Java',40,33,2016),(26,'Java Orientado a Objetos','POO com Java',50,45,2017),(27,'Java Collections','Uso do framework Collections',30,26,2018),(28,'Java Streams','Programação funcional em Java',30,24,2020),(29,'Spring Boot','Criação de APIs com Spring Boot',60,52,2022),(30,'Spring Security','Segurança em aplicações Java',40,34,2023),(31,'JPA e Hibernate','Persistência com JPA',40,36,2021),(32,'APIs REST','Desenvolvimento de APIs RESTful',40,35,2020),(33,'Microservices','Arquitetura de microsserviços',50,44,2023),(34,'Docker','Containers com Docker',30,27,2021),(35,'Docker Avançado','Orquestração e boas práticas',40,36,2022),(36,'Kubernetes','Gerenciamento de containers',50,43,2023),(37,'DevOps Fundamentals','Cultura e práticas DevOps',30,26,2020),(38,'CI/CD','Integração e entrega contínua',40,35,2021),(39,'Cloud Computing','Fundamentos de computação em nuvem',30,28,2019),(40,'AWS Básico','Serviços básicos da AWS',40,34,2020),(41,'AWS Avançado','Arquitetura na AWS',50,45,2022),(42,'Segurança da Informação','Princípios de segurança',40,33,2018),(43,'Criptografia','Fundamentos de criptografia',30,25,2019),(44,'Redes de Computadores','Fundamentos de redes',40,34,2017),(45,'Protocolos de Rede','TCP/IP e protocolos',30,26,2018),(46,'Testes de Software','Testes manuais e automatizados',40,35,2020),(47,'JUnit','Testes unitários em Java',20,18,2019),(48,'Testes Automatizados','Automação de testes',50,44,2021),(49,'Clean Code','Boas práticas de código limpo',30,28,2020),(50,'Arquitetura de Software','Padrões arquiteturais',50,45,2022),(51,'Design Patterns','Padrões de projeto',40,36,2019),(52,'Engenharia de Software','Processos e metodologias',60,52,2016),(53,'Scrum','Metodologia ágil Scrum',20,18,2018),(54,'Kanban','Gestão ágil com Kanban',20,17,2019),(55,'UX/UI Design','Experiência do usuário',30,27,2021);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
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
