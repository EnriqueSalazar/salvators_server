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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_table`
--

LOCK TABLES `areas_table` WRITE;
/*!40000 ALTER TABLE `areas_table` DISABLE KEYS */;
INSERT INTO `areas_table` VALUES (1,'gfdgdgd','hhhh','2016-06-24 03:12:34','2016-06-24 17:03:09'),(43,'gregrege','hfhfhf','2016-06-24 13:36:37','2016-06-24 17:03:56'),(45,'dsada',NULL,'2016-06-24 17:05:16','2016-06-24 17:05:16'),(47,'dsadadada','dadad','2016-06-24 17:05:22','2016-06-24 18:29:35'),(49,'dasdadad',NULL,'2016-06-24 17:05:29','2016-06-24 17:05:29'),(50,'sdadadsa',NULL,'2016-06-24 17:05:37','2016-06-24 17:05:37'),(51,'ASS','sASS','2016-06-24 18:08:51','2016-06-26 12:16:50'),(52,'gdgdgd','hfhf','2016-06-24 18:53:32','2016-06-24 20:43:54'),(53,'gfdgdf','111','2016-06-24 18:53:34','2016-06-24 20:54:04'),(55,'gdgdgdf',NULL,'2016-06-24 18:53:51','2016-06-24 18:53:51'),(56,'sdfsdfs',NULL,'2016-06-24 18:54:13','2016-06-24 18:54:13');
/*!40000 ALTER TABLE `areas_table` ENABLE KEYS */;
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
  `fin_meta` datetime NOT NULL,
  `id_responsable_meta` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_table`
--

LOCK TABLES `metas_table` WRITE;
/*!40000 ALTER TABLE `metas_table` DISABLE KEYS */;
INSERT INTO `metas_table` VALUES (1,'meta1',0,'0001-01-01 00:00:00',1,1,NULL,NULL),(2,'meta2',0,'0001-01-01 00:00:00',1,2,NULL,NULL),(3,'meta3',0,'0001-01-01 00:00:00',1,1,NULL,NULL);
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
  `fin_tarea` datetime NOT NULL,
  `realizacion_tarea` datetime DEFAULT NULL,
  `id_responsable_tarea` int(11) DEFAULT NULL,
  `estado_tarea` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas_areas_table`
--

LOCK TABLES `tareas_areas_table` WRITE;
/*!40000 ALTER TABLE `tareas_areas_table` DISABLE KEYS */;
INSERT INTO `tareas_areas_table` VALUES (1,'un texto bastante largo un texto bastante largo un texto bastante largo un texto bastante largo un texto bastante largo un texto bastante largo un texto bastante largo un texto bastante largo un texto',3,'2016-12-20 05:00:00',NULL,NULL,1,'2016-06-25 20:57:11','2016-06-26 13:41:36'),(3,'asdasda',0,'0000-00-00 00:00:00',NULL,NULL,0,'2016-06-26 04:51:41','2016-06-26 13:37:46');
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
  `creacion_usuario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nombre_usuariol` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_table`
--

LOCK TABLES `usuarios_table` WRITE;
/*!40000 ALTER TABLE `usuarios_table` DISABLE KEYS */;
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

-- Dump completed on 2016-06-26 10:02:01
