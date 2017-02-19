-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: 52.39.41.242    Database: oms_schema
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_table`
--

LOCK TABLES `areas_table` WRITE;
/*!40000 ALTER TABLE `areas_table` DISABLE KEYS */;
INSERT INTO `areas_table` VALUES (2,'GE - Planeación Estratégica',NULL,'2016-07-19 19:38:25','2016-07-19 19:38:25',1,NULL),(3,'GE - Marca y Comunicaciones',NULL,'2016-07-19 19:38:40','2016-07-19 20:57:21',1,NULL),(4,'GE - Desarrollo Social y Fundraising',NULL,'2016-07-19 19:39:00','2016-07-19 19:39:00',1,NULL),(5,'GE - Innovación y Tecnología',NULL,'2016-07-19 19:39:15','2016-07-19 19:39:15',1,NULL),(6,'GE - Re-localización Ibagué',NULL,'2016-07-19 19:39:42','2016-07-19 19:39:51',2,'2016-12-30'),(7,'GE - Sistema de Información OMS',NULL,'2016-07-19 19:40:07','2016-07-19 19:40:17',2,'2016-10-28'),(8,'GE - Legal y Auditoría Interna',NULL,'2016-07-19 20:14:40','2016-07-19 20:14:40',1,NULL),(9,'GAF - Gestión Financiera',NULL,'2016-07-24 22:45:27','2016-07-24 22:45:27',1,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_areas_table`
--

LOCK TABLES `comentarios_areas_table` WRITE;
/*!40000 ALTER TABLE `comentarios_areas_table` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_table`
--

LOCK TABLES `metas_table` WRITE;
/*!40000 ALTER TABLE `metas_table` DISABLE KEYS */;
INSERT INTO `metas_table` VALUES (1,'200.000.000,oo en Fundraising a través de Cam',0,'2016-12-30 05:00:00',8,3,'2016-07-19 20:57:56','2016-07-19 20:58:38',NULL),(2,'Mínimo una (1) reunión de Junta Directiva Tri',0,'2016-12-30 05:00:00',6,2,'2016-07-20 01:32:20','2016-07-20 01:32:53',NULL),(3,'100% de ejecución de los Comités Social, de a',0,'2016-12-30 05:00:00',6,2,'2016-07-20 01:33:27','2016-07-20 01:33:48',NULL),(4,'100% de reuniones trimestrales de seguimiento',0,'2016-12-30 05:00:00',6,2,'2016-07-20 01:34:29','2016-07-20 01:48:00',NULL),(5,'100% Seguimiento a Asamblea de Accionistas',0,'2016-12-30 05:00:00',6,2,'2016-07-20 01:48:38','2016-07-20 01:48:56',NULL),(6,'Diseño y Estructuración del Proyecto',0,'2016-07-29 05:00:00',0,6,'2016-07-20 02:17:20','2016-07-20 02:17:31',NULL),(7,'Construcción de la Planta y Entrega terminada',0,'2016-12-30 05:00:00',0,6,'2016-07-20 02:18:09','2016-07-20 02:18:24',NULL),(8,'Traslado y Puesta a Punto de la nueva planta ',0,'2016-12-30 05:00:00',0,6,'2016-07-20 02:19:42','2016-07-20 02:19:49',NULL),(9,'Ejecución del 100% de Presupuesto',0,'2016-12-30 05:00:00',0,6,'2016-07-20 02:20:16','2016-07-20 02:20:27',NULL),(10,'100% Contratos Actualizados y Firmados (Archi',0,'2017-12-22 05:00:00',0,8,'2016-07-24 22:27:15','2016-07-24 22:27:38',NULL),(11,'Registro de la Marca de Fruandes en Colombia',0,'2016-09-30 05:00:00',0,8,'2016-07-24 22:28:03','2016-07-24 22:28:10',NULL),(12,'100% de Implementación de los Módulos Columna',0,'2016-10-31 05:00:00',6,7,'2016-07-25 00:29:49','2016-07-25 00:30:09',NULL);
/*!40000 ALTER TABLE `metas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_table`
--

DROP TABLE IF EXISTS `permisos_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos_table` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_table`
--

LOCK TABLES `permisos_table` WRITE;
/*!40000 ALTER TABLE `permisos_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos_table` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas_areas_table`
--

LOCK TABLES `tareas_areas_table` WRITE;
/*!40000 ALTER TABLE `tareas_areas_table` DISABLE KEYS */;
INSERT INTO `tareas_areas_table` VALUES (1,'Reunión de Junta Directiva y Visita a Productores Cauca',2,'2016-07-22 05:00:00','2016-07-25 02:04:06',6,1,'2016-07-20 01:41:39','2016-07-25 02:04:01'),(2,'Firmar Acta de Reunión de Junta Directiva 24Jun2016',2,'2016-07-22 05:00:00',NULL,6,0,'2016-07-20 01:42:31','2016-07-25 02:04:10'),(3,'Recolectar Información para Comité de Auditoría (Agosto)',3,'2016-08-05 05:00:00',NULL,6,0,'2016-07-20 01:43:25','2016-07-25 02:04:20'),(4,'Llevar a cabo el Comité de Auditoría (Agosto)',3,'2016-08-19 05:00:00',NULL,6,0,'2016-07-20 01:44:25','2016-07-25 02:04:28'),(5,'Firmar Acta de Junta Directiva 21Jul2016',2,'2016-07-29 05:00:00',NULL,6,0,'2016-07-20 01:46:00','2016-07-25 02:10:14'),(6,'Envío de Acta de Accionistas #50 - Aprobación de Otrosí y Elección de nuevo Revisor Fiscal',5,'2016-07-27 00:00:00',NULL,6,0,'2016-07-20 01:50:28','2016-07-25 02:10:15'),(7,'Llevar a cabo Comité de Gerencia de Obra',7,'2016-07-29 05:00:00',NULL,6,0,'2016-07-24 22:04:08','2016-07-25 02:02:20'),(8,'Reunión de Layout con Roy y Giovanni en Ibagué',6,'2016-07-29 05:00:00',NULL,6,0,'2016-07-24 22:04:46','2016-07-25 02:09:39'),(9,'Firma de los Contrato de las Coordinadoras (Calidad y Planta) + Otrosíes de horario Flexible',10,'2016-07-29 05:00:00',NULL,6,0,'2016-07-24 22:29:19','2016-07-24 22:36:48'),(10,'Firma del Otrosí del Contrato de Tatiana Bustos',10,'2016-07-29 05:00:00',NULL,6,0,'2016-07-24 22:36:34','2016-07-24 22:36:54'),(11,'Enviar Feedback del primer DEMO entregado del modulo de gestión',12,'2016-07-24 05:00:00','2016-07-25 02:08:51',6,1,'2016-07-25 00:31:22','2016-07-25 02:08:47'),(13,'Implementar el Feedback en el módulo de gestión',12,'2016-07-29 05:00:00',NULL,5,0,'2016-07-25 00:33:01','2016-07-25 00:33:15'),(14,'Firmar Orden de Servicio Para la Fase II del Proyecto',12,'2016-07-29 05:00:00',NULL,6,0,'2016-07-25 00:34:12','2016-07-25 00:34:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_table`
--

LOCK TABLES `usuarios_table` WRITE;
/*!40000 ALTER TABLE `usuarios_table` DISABLE KEYS */;
INSERT INTO `usuarios_table` VALUES (5,'Enrique Salazar','enrique.salazar@gmail.com','666','123456',NULL,'2016-07-18 17:48:41'),(6,'Javier Vasquez','javier@fruandes.co','666','Jave194537',NULL,'2016-07-19 19:41:11'),(7,'Jennifer Gonzalez','jennifer@fruandes.co','1','fruandes','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Mabel Paez','mabel@fruandes.co','1','fruandes',NULL,NULL),(9,'Edisson Jaimes','edisson@fruandes.co','1','fruandes',NULL,NULL);
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

-- Dump completed on 2016-07-27 10:44:19
