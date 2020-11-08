-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: proyectoint
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_usuario` int(12) NOT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario2` (`id_usuario`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `id_post` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'Hola!'),(2,1,2,'Bien!'),(3,1,3,'Genial!'),(4,1,4,'Que bueno!'),(5,2,2,'Tremendo!'),(6,2,3,'Malisimo'),(7,2,4,'Que loco'),(8,2,5,'Aguante Chaca'),(9,3,2,'Alto dia'),(10,3,3,'Hace frio'),(11,3,4,'Que rico'),(12,3,5,'Donde es?'),(13,4,1,'Chau'),(14,4,2,'Cielo'),(15,4,3,'Carton lleno'),(16,4,5,'Julio'),(17,5,2,'Adrian'),(18,5,3,'Fermentar'),(19,5,1,'Golf'),(20,5,4,'Autos'),(203,60,18,'Alta ciudad');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(12) NOT NULL,
  `url_imagen` varchar(400) DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `fecha_publicación` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,'pluzito-650x424-1.jpg','Hola amigos!','2018-12-01 03:00:00'),(2,3,'bob.jpg','Un hombre soy...','2019-11-15 03:00:00'),(3,4,'gokussj.jpg','SSJ',NULL),(4,5,'locos.jpg','Cielos Rick',NULL),(5,6,'rick.jpg','Que miras',NULL),(60,19,'buenosaires.jpg','asd','2020-11-04 22:12:51'),(63,18,'parque.jpg','Foto del parque','2020-11-08 17:25:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `fecha_registracion` timestamp NULL DEFAULT current_timestamp(),
  `email` varchar(45) DEFAULT NULL,
  `constrasenia` varchar(200) DEFAULT NULL,
  `fecha_nacimiento` datetime DEFAULT NULL,
  `preguntaElegida` int(11) DEFAULT NULL,
  `preguntaRespuesta` varchar(45) DEFAULT NULL,
  `fotoPerfil` varchar(250) NOT NULL DEFAULT 'sinfoto.jpg',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'BoJack','2015-05-23 00:00:00','bojack@gmail.com','paredes','1996-02-28 00:00:00',NULL,NULL,'fotoperfilbojack.jpg'),(2,'Pluzito','2019-12-04 00:00:00','pluzito@gmail.com','siluetas','1990-04-05 00:00:00',NULL,NULL,'lafotodepluzito.jpg'),(3,'Bob Esponja','2015-07-24 00:00:00','bob@gmail.com','esponjamojada','1978-07-06 00:00:00',NULL,NULL,'fotoperfilbobesponja.jpg'),(4,'Goku','2014-09-11 00:00:00','goku@gmail.com','fuego123','1823-11-13 00:00:00',NULL,NULL,'goku.jpg'),(5,'Morty','2015-02-27 00:00:00','morty@gmail.com','yugoslavia','1998-12-12 00:00:00',NULL,NULL,'morty.jpg'),(6,'Rick','2016-01-02 00:00:00','rick@gmail.com','palangana130','1995-01-01 00:00:00',NULL,NULL,'ricky.jpg'),(7,'Juan','2020-10-19 16:50:06','juan@gmail.com','juan','1990-05-05 00:00:00',NULL,NULL,'sinfoto.jpg'),(14,'aguslerej','2020-10-26 14:31:12','aguslerej@gmail.com','$2a$10$uzbx4gjOOSwBQPphSCP7YulfO8nxRWeBPpcbrG','2020-12-01 00:00:00',1,'verde','sinfoto.jpg'),(15,'asd','2020-10-26 14:32:22','asd@gmail.com','$2a$10$9OES7NVufBC7PsJonHTPEOyk6SJRpjOyXs7p1k','2019-11-30 00:00:00',2,'vietnam','sinfoto.jpg'),(16,'asd1','2020-10-26 15:37:20','asd1@gmail.com','$2a$10$VFtB4kDloHJ7i9.QN5mISOShqpCv7PRno3sA4G','2014-11-30 00:00:00',1,'asd','sinfoto.jpg'),(17,'agustin','2020-10-26 15:48:00','agustin@gmail.com','$2a$10$yJWi8Mqa/M3QtQmGyK7.tOb3X1eQsGVcpscJAaOwOCmxx6qWSrnBK','2013-10-31 00:00:00',1,'asd','sinfoto.jpg'),(18,'Juan Cruz','2020-10-26 16:09:55','juancruz@gmail.com','$2a$10$oh.7rozDnsHzGcoLh6eZxuQw39T9uIinoZyqCjIeb7UtvxDusCMOq','2111-04-24 00:00:00',1,'verde','sinfoto.jpg'),(19,'Lucas','2020-11-02 14:05:20','lucasgroszmann@yahoo.com.ar','$2a$10$BsqpXJqEcUUCVhPqfuZVwuLq87Q2KkkDOmaGeubcyrXaCR/Mjjs4.','1999-04-20 00:00:00',1,'azul','sinfoto.jpg');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectoint'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-08 14:26:52
