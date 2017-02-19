-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: oms_schema
-- ------------------------------------------------------
-- Server version	5.6.30-0ubuntu0.15.10.1

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
-- Table structure for table `areas_table`
--

DROP TABLE IF EXISTS `areas_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(45) NOT NULL,
  `descripcion_area` text,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `deadline_proyecto` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_table`
--

LOCK TABLES `areas_table` WRITE;
/*!40000 ALTER TABLE `areas_table` DISABLE KEYS */;
INSERT INTO `areas_table` VALUES (1,'un nombre de area algo largo pero aja','desccccc','2016-06-24 03:12:34','2016-07-06 12:04:21',1,NULL),(2,'un nombre de area algo largo pero aja un nomb','Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite ','2016-06-24 13:36:37','2016-07-09 13:48:59',2,'2016-08-12'),(45,'dsada','Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite ','2016-06-24 17:05:16','2016-06-30 15:08:17',1,NULL),(47,'dsadadada','Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite ','2016-06-24 17:05:22','2016-07-09 13:49:01',2,'2016-08-26'),(49,'dasdadad','Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite Este es un texto largo largo largo que se repite ','2016-06-24 17:05:29','2016-06-30 15:08:24',1,NULL),(50,'sdadadsa',NULL,'2016-06-24 17:05:37','2016-07-09 13:49:05',2,'2016-08-31'),(51,'ASS','sASS','2016-06-24 18:08:51','2016-06-26 12:16:50',1,NULL),(52,'gdgdgd','hfhf','2016-06-24 18:53:32','2016-06-24 20:43:54',2,NULL),(53,'gfdgdf','111','2016-06-24 18:53:34','2016-06-24 20:54:04',1,NULL),(55,'gdgdgdf',NULL,'2016-06-24 18:53:51','2016-06-24 18:53:51',2,NULL),(56,'sdfsdfs',NULL,'2016-06-24 18:54:13','2016-06-24 18:54:13',1,NULL),(62,'otro proy',NULL,'2016-07-09 13:53:33','2016-07-09 13:53:33',2,NULL),(63,'otra area',NULL,'2016-07-09 13:54:12','2016-07-09 13:54:12',1,NULL);
/*!40000 ALTER TABLE `areas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios_areas_table`
--

DROP TABLE IF EXISTS `comentarios_areas_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios_areas_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) DEFAULT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `tarea_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `comentario` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_areas_table`
--

LOCK TABLES `comentarios_areas_table` WRITE;
/*!40000 ALTER TABLE `comentarios_areas_table` DISABLE KEYS */;
INSERT INTO `comentarios_areas_table` VALUES (1,2,0,0,5,'2016-07-06 10:16:03','2016-07-06 10:16:03',NULL,'comentario de prueba'),(2,0,0,0,5,'2016-07-06 10:16:35','2016-07-06 10:16:35',NULL,'comentario 2'),(3,0,0,0,5,'2016-07-06 10:19:54','2016-07-06 10:19:54',NULL,'prueba'),(4,0,0,0,5,'2016-07-06 10:22:38','2016-07-06 10:22:38',NULL,'dada'),(5,2,0,0,5,'2016-07-06 10:31:46','2016-07-06 10:31:46',NULL,'otra prueba'),(6,2,0,0,5,'2016-07-06 10:33:38','2016-07-06 10:33:38',NULL,'otra prueba mas'),(7,2,0,0,5,'2016-07-06 10:36:02','2016-07-06 10:36:02',NULL,'ewqeqw'),(8,1,2,0,5,'2016-07-06 10:47:42','2016-07-06 10:47:42',NULL,'un comentario mas'),(9,1,2,7,5,'2016-07-06 10:48:00','2016-07-06 10:48:00',NULL,'mas comentarios'),(10,1,2,7,5,'2016-07-06 11:21:07','2016-07-06 11:21:07',NULL,'no he podido avanzar'),(11,1,2,7,5,'2016-07-06 11:21:24','2016-07-06 11:21:24',NULL,'pero todo bien :)'),(12,1,2,7,5,'2016-07-06 11:23:07','2016-07-06 11:23:07',NULL,'o no'),(13,1,2,7,5,'2016-07-06 11:45:44','2016-07-06 11:45:44',NULL,'otro mas'),(14,1,2,7,5,'2016-07-06 11:45:49','2016-07-06 11:45:49',NULL,'y otro'),(15,1,0,0,5,'2016-07-06 12:06:36','2016-07-06 12:06:36',NULL,'este es un comentario de esta area');
/*!40000 ALTER TABLE `comentarios_areas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_table`
--

DROP TABLE IF EXISTS `metas_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_meta` varchar(45) NOT NULL,
  `avance_meta` int(11) DEFAULT '0',
  `deadline_meta` datetime NOT NULL,
  `id_responsable_meta` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `done_meta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_table`
--

LOCK TABLES `metas_table` WRITE;
/*!40000 ALTER TABLE `metas_table` DISABLE KEYS */;
INSERT INTO `metas_table` VALUES (1,'meta666',99,'2016-08-25 05:00:00',6,2,NULL,'2016-07-09 03:16:31',NULL),(2,'meta2',100,'2017-01-01 00:00:00',6,1,NULL,'2016-07-05 23:14:28','2016-07-05 23:14:28'),(3,'meta3',0,'2001-01-01 00:00:00',1,1,NULL,'2016-07-01 20:24:51',NULL),(6,'dwada',0,'0000-00-00 00:00:00',0,50,'2016-07-09 14:24:03','2016-07-09 14:24:03',NULL),(7,'qeqeqe',0,'0000-00-00 00:00:00',0,50,'2016-07-09 14:35:30','2016-07-09 14:35:30',NULL);
/*!40000 ALTER TABLE `metas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas_areas_table`
--

DROP TABLE IF EXISTS `tareas_areas_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas_areas_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tarea` varchar(200) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `deadline_tarea` datetime NOT NULL,
  `done_tarea` datetime DEFAULT NULL,
  `id_responsable_tarea` int(11) DEFAULT NULL,
  `estado_tarea` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas_areas_table`
--

LOCK TABLES `tareas_areas_table` WRITE;
/*!40000 ALTER TABLE `tareas_areas_table` DISABLE KEYS */;
INSERT INTO `tareas_areas_table` VALUES (1,'texto',3,'2016-06-25 05:00:00','2016-07-05 22:57:53',5,1,'2016-06-25 20:57:11','2016-07-05 22:57:53'),(3,'nombre_prueba',3,'2016-07-02 05:00:00','2016-07-09 19:19:48',0,1,'2016-06-26 04:51:41','2016-07-09 19:19:48'),(4,'uhibi',2,'2016-06-30 05:00:00','2016-07-05 23:12:23',5,1,'2016-06-30 03:43:28','2016-07-05 23:12:23'),(5,'tarea 1 de meta 666',2,'0000-00-00 00:00:00',NULL,5,0,'2016-07-05 00:02:27','2016-07-05 22:57:41'),(6,'fdada',0,'0000-00-00 00:00:00',NULL,NULL,0,'2016-07-05 01:57:02','2016-07-05 01:57:02'),(7,'dsada',2,'2016-07-14 00:00:00',NULL,5,0,'2016-07-05 02:30:22','2016-07-06 10:48:10'),(8,'una tarea nueva',3,'2016-08-28 05:00:00','2016-07-06 12:11:12',NULL,1,'2016-07-06 01:34:26','2016-07-06 12:11:13'),(9,'nueva tarea',0,'0000-00-00 00:00:00',NULL,NULL,0,'2016-07-09 13:56:52','2016-07-09 13:56:52'),(10,'fdsfsdfs',0,'0000-00-00 00:00:00',NULL,NULL,0,'2016-07-09 14:01:47','2016-07-09 14:01:47'),(11,'de verdad no aparecen?',0,'0000-00-00 00:00:00',NULL,NULL,0,'2016-07-09 14:02:03','2016-07-09 14:02:03'),(12,'fdfsf',1,'0000-00-00 00:00:00',NULL,NULL,0,'2016-07-09 14:16:32','2016-07-09 14:16:32');
/*!40000 ALTER TABLE `tareas_areas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_table`
--

DROP TABLE IF EXISTS `usuarios_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `email_usuario` varchar(45) NOT NULL,
  `perfil` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_table`
--

LOCK TABLES `usuarios_table` WRITE;
/*!40000 ALTER TABLE `usuarios_table` DISABLE KEYS */;
INSERT INTO `usuarios_table` VALUES (5,'Enrique Salazar','enrique.salazar@gmail.com','666','12345',NULL,'2016-07-09 20:21:48'),(6,'Javier Vasquez','javier@fruandes.co','666','67890',NULL,NULL);
/*!40000 ALTER TABLE `usuarios_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-12 15:54:35
