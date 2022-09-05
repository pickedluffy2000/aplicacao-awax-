CREATE DATABASE  IF NOT EXISTS `awaxdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `awaxdb`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: awaxdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_contactus`
--

DROP TABLE IF EXISTS `tb_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contactus`
--

LOCK TABLES `tb_contactus` WRITE;
/*!40000 ALTER TABLE `tb_contactus` DISABLE KEYS */;
INSERT INTO `tb_contactus` VALUES (2,'zuleide','zuleide.r1963@gmail.com','jorge eu te amo'),(5,'mateus Gonçalves','mateus.r2000@gmail.com','serei hogake 2\r\n'),(6,'mateus Gonçalves','mateus.r2000@gmail.com','serei hogake 2\r\n'),(7,'mateus Gonçalves','mateus.r2000@gmail.com','qualquer coisa\r\n'),(8,'mateus Gonçalves','mateus.r2000@gmail.com','mateus'),(9,'mateus','mateus.r2000@gmail.com',' nnnnn'),(10,'mateus Gonçalves','mateus.r2000@gmail.com',' nnnnn'),(11,'jorge zuleide da silva','gleicebruno@gmail.com','familia perfeita\r\n'),(12,'mateus Gonçalves','mateus.r2000@gmail.com','homem lindo\r\n\r\n'),(13,'mateus Gonçalves','mateus.r2000@gmail.com','qualquer coisa\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),(14,'mateus Gonçalves','mateus.r2000@gmail.com','fullstack\r\n'),(15,'noah joshua','gordo@gmail.com','I am fat'),(16,'mateus Gonçalves','mateus.r2000@gmail.com','noah joshua\r\n'),(17,'mateus Gonçalves','mateus.r2000@gmail.com','kkkkkk'),(18,'jorge','jorge.r2000@gmail.com','familia perfeita'),(19,'zuleide','zuzu@gmail.com','familia perfeit'),(20,'gleice linda','gleice@029.gmail.com','familia perfeita'),(22,'mateus Gonçalves','mateus.r2000@gmail.com','kkkkk'),(24,'mateus Gonçalves','mateus.r2000@gmail.com','familia perfeita'),(31,'frankinho','kinjnks@hotmail.com','brabo demais'),(34,'mateus Gonçalves','mateus.r2000@gmail.com','eu amo meus sobrinhos'),(37,'noah','gordinho@gmail.com','i am fat'),(38,'lindao do tio','ninho@gmail.com','aq'),(39,'kaidou','100feras@gmail.com','yonkou'),(40,'joshua','noah@gmail.com','gordo'),(41,'knjs','knjs@gmail.com','kkkkk');
/*!40000 ALTER TABLE `tb_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menus`
--

DROP TABLE IF EXISTS `tb_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menus`
--

LOCK TABLES `tb_menus` WRITE;
/*!40000 ALTER TABLE `tb_menus` DISABLE KEYS */;
INSERT INTO `tb_menus` VALUES (1,'preço',10.00),(2,'produto',25.00),(3,'varejo',30.00),(4,'escala',40.00);
/*!40000 ALTER TABLE `tb_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'mateus.r2000@gmail.com','meusovo');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24 17:48:54
