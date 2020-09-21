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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'Hola!'),(2,1,2,'Bien!'),(3,1,3,'Genial!'),(4,1,4,'Que bueno!'),(5,2,2,'Tremendo!'),(6,2,3,'Malisimo'),(7,2,4,'Que loco'),(8,2,5,'Aguante Chaca'),(9,3,2,'Alto dia'),(10,3,3,'Hace frio'),(11,3,4,'Que rico'),(12,3,5,'Donde es?'),(13,4,1,'Chau'),(14,4,2,'Cielo'),(15,4,3,'Carton lleno'),(16,4,5,'Julio'),(17,5,2,'Adrian'),(18,5,3,'Fermentar'),(19,5,1,'Golf'),(20,5,4,'Autos'),(21,6,3,'Me gusta'),(22,6,2,'No me gusta'),(23,6,5,'Lo odio'),(24,6,4,'Me encanta'),(25,7,2,'La sube'),(26,7,1,'La abaja'),(27,7,3,'Wow'),(28,7,4,'Meh'),(29,8,5,'Jajaja'),(30,8,1,'Jajaj'),(31,8,3,'Mono'),(32,8,2,'Feo'),(33,9,2,'Horrible'),(34,9,3,'Desastroso'),(35,9,1,'Un espanto'),(36,9,4,'A'),(37,10,2,'B'),(38,10,1,'C'),(39,10,4,'D'),(40,10,5,'E'),(41,11,5,'F'),(42,11,3,'G'),(43,11,2,'H'),(44,11,1,'I'),(45,12,1,'J'),(46,12,2,'K'),(47,12,3,'L'),(48,12,4,'M'),(49,13,2,'N'),(50,13,3,'O'),(51,13,4,'P'),(52,13,5,'Q'),(53,14,5,'R'),(54,14,4,'S'),(55,14,3,'T'),(56,14,2,'U'),(57,15,2,'V'),(58,15,4,'W'),(59,15,3,'X'),(60,15,1,'Y'),(61,16,2,'Z'),(62,16,1,'AA'),(63,16,5,'AB'),(64,16,3,'AC'),(65,17,2,'AD'),(66,17,3,'AE'),(67,17,4,'AF'),(68,17,1,'AG'),(69,18,3,'AH'),(70,18,4,'AI'),(71,18,2,'AJ'),(72,18,1,'AK'),(73,19,4,'AL'),(74,19,3,'AM'),(75,19,2,'AN'),(76,19,1,'AO'),(77,20,1,'AP'),(78,20,5,'AQ'),(79,20,4,'AR'),(80,20,3,'AS'),(81,21,2,'AT'),(82,21,3,'AU'),(83,21,1,'AV'),(84,21,5,'AW'),(85,22,2,'AX'),(86,22,3,'AY'),(87,22,5,'AZ'),(88,22,4,'BA'),(89,23,1,'BB'),(90,23,2,'BC'),(91,23,3,'BD'),(92,23,5,'BE'),(93,24,2,'BF'),(94,24,4,'BG'),(95,24,3,'BH'),(96,24,1,'BI'),(97,25,2,'BJ'),(98,25,4,'BK'),(99,25,3,'BL'),(100,25,5,'BM'),(101,26,2,'BN'),(102,26,1,'BO'),(103,26,4,'BP'),(104,26,3,'BQ'),(105,27,5,'BR'),(106,27,4,'BS'),(107,27,3,'BT'),(108,27,1,'BU'),(109,28,3,'BV'),(110,28,1,'BW'),(111,28,4,'BX'),(112,28,2,'BY'),(113,29,5,'BZ'),(114,29,4,'CA'),(115,29,3,'CB'),(116,29,2,'CC'),(117,30,4,'CD'),(118,30,5,'CE'),(119,30,1,'CF'),(120,30,2,'CG'),(121,31,1,'CH'),(122,31,2,'CI'),(123,31,4,'CJ'),(124,31,5,'CK'),(125,32,5,'CL'),(126,32,3,'CM'),(127,32,2,'CN'),(128,32,1,'CO'),(129,33,2,'CP'),(130,33,3,'CQ'),(131,33,5,'CR'),(132,33,1,'CS'),(133,34,4,'CT'),(134,34,3,'CU'),(135,34,5,'CV'),(136,34,2,'CW'),(137,35,3,'CX'),(138,35,4,'CY'),(139,35,1,'CZ'),(140,35,5,'DA'),(141,36,2,'DB'),(142,36,4,'DC'),(143,36,3,'DD'),(144,36,1,'DE'),(145,37,2,'DF'),(146,37,3,'DG'),(147,37,4,'DH'),(148,37,5,'DI'),(149,38,4,'DJ'),(150,38,3,'DK'),(151,38,5,'DL'),(152,38,1,'DM'),(153,39,2,'DN'),(154,39,3,'DO'),(155,39,1,'DP'),(156,39,4,'DQ'),(157,40,2,'DR'),(158,40,3,'DS'),(159,40,1,'DT'),(160,40,5,'DU'),(161,41,2,'DV'),(162,41,3,'DW'),(163,41,4,'DX'),(164,41,5,'DY'),(165,42,2,'DZ'),(166,42,3,'EA'),(167,42,1,'EB'),(168,42,5,'EC'),(169,43,2,'ED'),(170,43,4,'EE'),(171,43,3,'EF'),(172,43,1,'EG'),(173,44,1,'EH'),(174,44,2,'EI'),(175,44,3,'EJ'),(176,44,4,'EK'),(177,45,5,'EL'),(178,45,4,'EM'),(179,45,3,'EN'),(180,45,2,'EO'),(181,46,4,'EP'),(182,46,3,'EQ'),(183,46,2,'ER'),(184,46,1,'ES'),(185,47,3,'ET'),(186,47,4,'EU'),(187,47,5,'EV'),(188,47,4,'EW'),(189,48,3,'EX'),(190,48,2,'EY'),(191,48,5,'EZ'),(192,48,2,'FA'),(193,49,1,'FB'),(194,49,4,'FC'),(195,49,3,'FD'),(196,49,5,'FE'),(197,50,2,'FF'),(198,50,1,'FG'),(199,50,3,'FH'),(200,50,2,'FI');
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
  `url_imagen` varchar(45) DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `fecha_publicación` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,NULL,'Hola!','2018-12-01 00:00:00'),(2,1,NULL,'Chau!','2019-11-15 00:00:00'),(3,1,NULL,'Todo bien?','2019-11-16 00:00:00'),(4,1,NULL,'Me alegro!','2019-11-16 00:00:00'),(5,1,NULL,'Aguante todo','2019-11-17 00:00:00'),(6,1,NULL,'Re largo esto','2019-11-17 00:00:00'),(7,1,NULL,'Tengo suenio','2019-11-17 00:00:00'),(8,1,NULL,'Estoy cansado','2019-11-18 00:00:00'),(9,1,NULL,'Ahora tengo energía','2019-11-20 00:00:00'),(10,1,NULL,'Buenas tardes','2019-11-21 00:00:00'),(11,2,NULL,'Tengo calor','2017-05-06 00:00:00'),(12,2,NULL,'Tengo frío','2017-05-06 00:00:00'),(13,2,NULL,'Ahora calor otra vez','2017-05-07 00:00:00'),(14,2,NULL,'Tengo hambre','2017-05-09 00:00:00'),(15,2,NULL,'Estoy tranquilo','2017-05-10 00:00:00'),(16,2,NULL,'Estoy nervioso','2017-05-15 00:00:00'),(17,2,NULL,'Estoy enojado','2017-05-17 00:00:00'),(18,2,NULL,'Estoy contento','2017-05-28 00:00:00'),(19,2,NULL,'Es invierno','2017-06-05 00:00:00'),(20,2,NULL,'Quiero que sea verano','2017-06-06 00:00:00'),(21,3,NULL,'River','2018-02-03 00:00:00'),(22,3,NULL,'Boca','2018-02-04 00:00:00'),(23,3,NULL,'San Lorenzo','2018-02-04 00:00:00'),(24,3,NULL,'Racing','2018-02-05 00:00:00'),(25,3,NULL,'Independiente','2018-02-06 00:00:00'),(26,3,NULL,'Huracán','2018-02-10 00:00:00'),(27,3,NULL,'Colón','2018-02-11 00:00:00'),(28,3,NULL,'Chacarita','2018-02-14 00:00:00'),(29,3,NULL,'Banfield','2018-02-15 00:00:00'),(30,3,NULL,'Gimnasia','2018-02-19 00:00:00'),(31,4,NULL,'Estudiantes','2019-04-11 00:00:00'),(32,4,NULL,'Newells','2019-04-11 00:00:00'),(33,4,NULL,'Rosario Central','2019-04-11 00:00:00'),(34,4,NULL,'Arsenal','2019-04-12 00:00:00'),(35,4,NULL,'Belgrano','2019-04-12 00:00:00'),(36,4,NULL,'Talleres','2019-04-14 00:00:00'),(37,4,NULL,'Aldosivi','2019-04-15 00:00:00'),(38,4,NULL,'Tigre','2019-04-16 00:00:00'),(39,4,NULL,'Patronato','2019-04-17 00:00:00'),(40,4,NULL,'Atlanta','2019-04-17 00:00:00'),(41,5,NULL,'Día','2018-06-09 00:00:00'),(42,5,NULL,'Noche','2018-06-09 00:00:00'),(43,5,NULL,'Argentina','2018-06-10 00:00:00'),(44,5,NULL,'Paraguay','2018-06-11 00:00:00'),(45,5,NULL,'Brasil','2018-06-12 00:00:00'),(46,5,NULL,'Uruguay','2018-06-12 00:00:00'),(47,5,NULL,'Chile','2018-06-12 00:00:00'),(48,5,NULL,'Colombia','2018-06-13 00:00:00'),(49,5,NULL,'Ecuador','2018-06-17 00:00:00'),(50,5,NULL,'Perú','2018-06-17 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(12) NOT NULL,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `fecha_registracion` datetime NOT NULL,
  `edad` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Pluzito','2019-12-04 00:00:00',32),(2,'Bob Esponja','2015-07-24 00:00:00',22),(3,'Goku','2014-09-11 00:00:00',23),(4,'Morty','2015-02-27 00:00:00',31),(5,'Rick','2016-01-02 00:00:00',28);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 11:01:40
