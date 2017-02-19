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
  `nombre_area` text NOT NULL,
  `descripcion_area` text,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `deadline_proyecto` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas_table`
--

LOCK TABLES `areas_table` WRITE;
/*!40000 ALTER TABLE `areas_table` DISABLE KEYS */;
INSERT INTO `areas_table` VALUES (2,'GE - Planeación Estratégica',NULL,'2016-07-19 19:38:25','2016-07-19 19:38:25',1,NULL),(3,'GE - Marca y Comunicaciones',NULL,'2016-07-19 19:38:40','2016-07-19 20:57:21',1,NULL),(4,'GE - Desarrollo Social y Fundraising',NULL,'2016-07-19 19:39:00','2016-07-19 19:39:00',1,NULL),(5,'GE - Innovación y Tecnología',NULL,'2016-07-19 19:39:15','2016-07-19 19:39:15',1,NULL),(6,'GE - Re-localización Ibagué',NULL,'2016-07-19 19:39:42','2016-07-19 19:39:51',2,'2016-12-30'),(7,'GE - Sistema de Información OMS',NULL,'2016-07-19 19:40:07','2016-07-19 19:40:17',2,'2016-10-28'),(8,'GE - Legal y Auditoría Interna',NULL,'2016-07-19 20:14:40','2016-07-19 20:14:40',1,NULL),(9,'GFA - Gestión Financiera & Administrativa',NULL,'2016-07-24 22:45:27','2016-07-31 17:37:56',1,NULL),(10,'GFA - Gestión Humana',NULL,'2016-07-31 20:58:57','2016-07-31 20:58:57',1,NULL),(11,'GO - Empaque y Logística de Operaciones',NULL,'2016-07-31 21:57:49','2016-07-31 21:57:49',1,NULL),(12,'GC - Ventas Internacionales + Logística',NULL,'2016-07-31 22:06:04','2016-07-31 22:06:04',1,NULL);
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
  `nombre_meta` text NOT NULL,
  `avance_meta` int(11) DEFAULT '0',
  `deadline_meta` datetime NOT NULL,
  `id_responsable_meta` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `done_meta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_table`
--

LOCK TABLES `metas_table` WRITE;
/*!40000 ALTER TABLE `metas_table` DISABLE KEYS */;
INSERT INTO `metas_table` VALUES (1,'Recaudo de mínimo COP 200.000.000 en campañas realizadas, sea como donaciones o ventas de producto.',0,'2016-12-30 05:00:00',8,3,'2016-07-19 20:57:56','2016-07-31 18:33:36',NULL),(2,'Mínimo una (1) reunión de Junta Directiva Trimestral',50,'2016-12-30 05:00:00',6,2,'2016-07-20 01:32:20','2016-07-31 23:35:10',NULL),(3,'100% de ejecución de los Comités Social, de Auditoría y Financiero (Una vez Mensual)',42,'2016-12-30 05:00:00',6,2,'2016-07-20 01:33:27','2016-07-31 23:35:33',NULL),(4,'100% de reuniones trimestrales de seguimiento',50,'2016-12-30 05:00:00',6,2,'2016-07-20 01:34:29','2016-07-31 23:35:42',NULL),(5,'100% Seguimiento a Asamblea de Accionistas',50,'2016-12-30 05:00:00',6,2,'2016-07-20 01:48:38','2016-07-31 23:36:16',NULL),(6,'Diseño y Estructuración del Proyecto',85,'2016-07-29 05:00:00',0,6,'2016-07-20 02:17:20','2016-07-31 23:38:40',NULL),(7,'Construcción de la Planta y Entrega terminada',15,'2016-12-30 05:00:00',0,6,'2016-07-20 02:18:09','2016-07-31 23:38:51',NULL),(8,'Traslado y Puesta a Punto de la nueva planta ',0,'2016-12-30 05:00:00',0,6,'2016-07-20 02:19:42','2016-07-31 23:38:55',NULL),(9,'Ejecución del 100% de Presupuesto',35,'2016-12-30 05:00:00',0,6,'2016-07-20 02:20:16','2016-07-31 23:39:04',NULL),(10,'100% Contratos Actualizados y Firmados (Archi',0,'2017-12-22 05:00:00',6,8,'2016-07-24 22:27:15','2016-07-31 21:49:18',NULL),(11,'Registro de la Marca de Fruandes en Colombia',0,'2016-09-30 05:00:00',6,8,'2016-07-24 22:28:03','2016-07-31 21:49:22',NULL),(12,'100% de Implementación del Primer Módulo de Gestión',80,'2016-08-12 05:00:00',6,7,'2016-07-25 00:29:49','2016-07-31 23:42:45',NULL),(13,'Crecimiento constante de Redes Sociales, mínimo en un 10% mensual (crecimiento Orgánico).',0,'2016-12-30 05:00:00',8,3,'2016-07-28 16:19:52','2016-07-31 18:33:53',NULL),(14,'Mínimo una (1) comunicación relevante semanal externa.',0,'2016-12-30 05:00:00',8,3,'2016-07-31 18:34:08','2016-07-31 18:34:30',NULL),(15,'Nueva página WEB Live + Administrador de contenidos.',0,'2016-08-26 05:00:00',8,3,'2016-07-31 18:34:41','2016-07-31 18:35:00',NULL),(16,'Como mínimo 75% de formalización de las comunicaciones internas de Fruandes (Actas de Reuniones, Reportes, etc).',0,'2016-12-30 05:00:00',8,3,'2016-07-31 18:35:17','2016-07-31 18:35:34',NULL),(17,'100% de Organización de la información digital de Fruandes.',0,'2016-12-30 05:00:00',8,3,'2016-07-31 18:35:50','2016-07-31 18:36:02',NULL),(18,'Mínimo diez (10) Interacciones físicas directas con Clientes Internacionales ó consumidores finales con la planta de procesamiento ó visitas a las asociaciones de agricultores.',0,'2016-12-30 05:00:00',8,3,'2016-07-31 18:36:19','2016-07-31 18:36:32',NULL),(19,'100% de implementación de las Campañas de Comunicaciones que se definan',0,'2016-12-30 05:00:00',8,3,'2016-07-31 18:37:30','2016-07-31 18:37:39',NULL),(20,'Establecer el 100% de la medición del esquema de impacto definido de Fruandes.',50,'2016-12-30 05:00:00',7,4,'2016-07-31 19:10:52','2016-08-01 00:37:20',NULL),(21,'Mínimo 400.000.000,oo en consecución de fondos para las organizaciones o para Fruandes en proyectos que estén alineados con el desarrollo del negocio.',0,'2016-12-30 05:00:00',7,4,'2016-07-31 19:11:21','2016-07-31 19:11:36',NULL),(22,'Mínimo 20 personas trabajando como voluntarios o practicantes de Fruandes (en proyectos).',0,'2016-12-30 05:00:00',7,4,'2016-07-31 19:13:14','2016-07-31 19:13:29',NULL),(23,'Ejecución del 100% de los proyectos de la Empresa (Internos y de Voluntarios o Practicantes) – Reportes archivados en la Biblioteca de Fruandes (virtual).',0,'2016-12-30 05:00:00',7,4,'2016-07-31 19:13:46','2016-07-31 19:14:04',NULL),(24,'100% de Mantenimiento y Potencialización de Relaciones con Organizaciones y Aliados',50,'2016-12-30 05:00:00',7,4,'2016-07-31 19:14:47','2016-08-01 00:39:27',NULL),(25,'Control de Inventarios diario (Contable Vs Físico).',0,'2016-12-30 05:00:00',9,9,'2016-07-31 19:28:29','2016-08-01 01:30:50',NULL),(27,'100% de Compras dentro de los parámetros establecidos de Precio y cumplimiento de los requerimientos de las áreas.',0,'2016-12-30 05:00:00',9,9,'2016-07-31 19:29:23','2016-07-31 19:29:34',NULL),(28,'100% de pago de impuestos y presentaciones de Informes de Ley cumpliendo las fechas establecidas.',0,'2016-12-30 05:00:00',9,9,'2016-07-31 19:29:52','2016-07-31 19:30:10',NULL),(29,'100% de Organización del Archivo Físico de Fruandes.',0,'2016-12-30 05:00:00',9,9,'2016-07-31 19:30:20','2016-07-31 19:30:33',NULL),(30,'100% del Cumplimiento de la Meta Financiera - 100% Ventas, 67% Costo de Ventas, 10% de EBITDA',0,'2016-12-30 05:00:00',9,9,'2016-07-31 19:31:17','2016-07-31 19:31:49',NULL),(31,'100% de auditoría interna a todas las áreas (Revisión Inicial, recomendaciones y Segunda Revisión).',0,'2016-12-30 05:00:00',6,8,'2016-07-31 21:48:59','2016-07-31 21:49:26',NULL),(32,'Desarrollo del 100% de las Políticas Internas y los procedimientos avalados y firmados.',0,'2016-08-26 05:00:00',6,8,'2016-07-31 21:49:43','2016-07-31 21:49:58',NULL),(33,'100% de Inventario al día (Cierres Diarios y Mensuales)',0,'2016-08-12 05:00:00',9,9,'2016-07-31 21:54:05','2016-07-31 21:54:21',NULL),(34,'Cumplir con mínimo el 95% de las necesidades de personal para procesamiento y empaque permanentemente en planta (26 personas en procesamiento y 8 personas en empaque).',0,'2016-12-30 05:00:00',12,10,'2016-07-31 21:59:27','2016-07-31 21:59:43',NULL),(35,'Como mínimo el 75% de las capacitaciones solicitadas por las diferentes personas deben ser entregadas (Total de capacitaciones técnicas y de gestión)',0,'2016-12-30 05:00:00',12,10,'2016-07-31 21:59:59','2016-07-31 22:00:13',NULL),(36,'100% del personal contratado por contrato término indefinido y afiliado a todos los esquemas de ley.',0,'2016-12-30 05:00:00',12,10,'2016-07-31 22:00:34','2016-07-31 22:00:46',NULL),(37,'Mínimo 40% aumento en Ventas – COP 4.000.000.000,oo',43,'2016-12-30 05:00:00',6,12,'2016-07-31 22:07:54','2016-08-01 10:42:05',NULL),(38,'Mínimo 10% de Crecimiento en Ventas de Clientes de Largo Plazo de Ventas Retail (LGT y Nathalie´s Direct Trade)',50,'2016-12-30 05:00:00',6,12,'2016-07-31 22:08:41','2016-08-01 10:42:16',NULL),(39,'Mínimo el 50% de las Ventas por Valor y Volumen deben ser Marcas Blancas.',50,'2016-12-30 05:00:00',6,12,'2016-07-31 22:09:23','2016-08-01 10:42:23',NULL),(40,'Mínimo un (1) Nuevo Cliente con Marca Blanca',0,'2016-12-30 05:00:00',6,12,'2016-07-31 22:09:45','2016-08-01 10:45:00',NULL),(41,'100% Implementación del Segundo Módulo',0,'2016-08-26 05:00:00',6,7,'2016-07-31 23:42:30','2016-07-31 23:42:40',NULL),(42,'100% de Servicio Eficiente a Clientes, respuestas a Requerimientos y Despachos',0,'2016-12-30 05:00:00',13,12,'2016-08-01 10:44:36','2016-08-01 10:44:54',NULL);
/*!40000 ALTER TABLE `metas_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_table`
--

DROP TABLE IF EXISTS `permisos_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_table`
--

LOCK TABLES `permisos_table` WRITE;
/*!40000 ALTER TABLE `permisos_table` DISABLE KEYS */;
INSERT INTO `permisos_table` VALUES (6,2,10,'2016-07-28','2016-07-28'),(7,2,11,'2016-07-29','2016-07-29'),(8,2,5,'2016-07-29','2016-07-29'),(9,2,6,'2016-07-29','2016-07-29'),(10,2,9,'2016-07-31','2016-07-31'),(11,3,8,'2016-07-31','2016-07-31'),(12,3,6,'2016-07-31','2016-07-31'),(13,3,7,'2016-07-31','2016-07-31'),(14,3,11,'2016-07-31','2016-07-31'),(15,4,6,'2016-07-31','2016-07-31'),(16,4,7,'2016-07-31','2016-07-31'),(17,4,11,'2016-07-31','2016-07-31'),(18,6,6,'2016-07-31','2016-07-31'),(19,6,7,'2016-07-31','2016-07-31'),(20,6,9,'2016-07-31','2016-07-31'),(21,6,11,'2016-07-31','2016-07-31'),(22,6,10,'2016-07-31','2016-07-31'),(23,7,5,'2016-07-31','2016-07-31'),(24,7,6,'2016-07-31','2016-07-31'),(25,7,9,'2016-07-31','2016-07-31'),(26,8,6,'2016-07-31','2016-07-31'),(27,8,9,'2016-07-31','2016-07-31'),(28,8,11,'2016-07-31','2016-07-31'),(29,8,10,'2016-07-31','2016-07-31'),(30,9,9,'2016-07-31','2016-07-31'),(31,9,11,'2016-07-31','2016-07-31'),(32,9,10,'2016-07-31','2016-07-31'),(33,9,6,'2016-07-31','2016-07-31'),(34,10,6,'2016-07-31','2016-07-31'),(35,10,9,'2016-07-31','2016-07-31'),(36,10,11,'2016-07-31','2016-07-31'),(37,10,12,'2016-07-31','2016-07-31'),(38,10,7,'2016-07-31','2016-07-31'),(39,10,8,'2016-07-31','2016-07-31'),(40,12,6,'2016-07-31','2016-07-31'),(41,12,8,'2016-07-31','2016-07-31'),(42,12,9,'2016-07-31','2016-07-31'),(43,12,10,'2016-07-31','2016-07-31'),(44,12,11,'2016-07-31','2016-07-31'),(45,12,13,'2016-07-31','2016-07-31'),(46,12,7,'2016-07-31','2016-07-31'),(47,4,12,'2016-08-01','2016-08-01'),(48,4,15,'2016-08-01','2016-08-01'),(49,4,14,'2016-08-01','2016-08-01'),(50,4,8,'2016-08-01','2016-08-01'),(51,4,9,'2016-08-01','2016-08-01'),(52,7,7,'2016-08-01','2016-08-01');
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
  `nombre_tarea` text NOT NULL,
  `meta_id` int(11) NOT NULL,
  `deadline_tarea` datetime NOT NULL,
  `done_tarea` datetime DEFAULT NULL,
  `id_responsable_tarea` int(11) DEFAULT NULL,
  `estado_tarea` tinyint(4) DEFAULT '0',
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas_areas_table`
--

LOCK TABLES `tareas_areas_table` WRITE;
/*!40000 ALTER TABLE `tareas_areas_table` DISABLE KEYS */;
INSERT INTO `tareas_areas_table` VALUES (1,'Reunión de Junta Directiva y Visita a Productores Cauca',2,'2016-07-22 05:00:00','2016-07-28 13:14:21',6,1,'2016-07-20 01:41:39','2016-07-28 13:14:14'),(2,'Firmar Acta de Reunión de Junta Directiva 24Jun2016',2,'2016-07-22 05:00:00','2016-07-29 01:46:31',10,1,'2016-07-20 01:42:31','2016-07-29 01:46:25'),(3,'Recolectar Información para Comité de Auditoría (Agosto)',3,'2016-08-05 05:00:00',NULL,6,0,'2016-07-20 01:43:25','2016-08-01 00:26:29'),(4,'Llevar a cabo el Comité de Auditoría (Agosto)',3,'2016-08-19 05:00:00',NULL,6,0,'2016-07-20 01:44:25','2016-07-25 02:04:28'),(5,'Firmar Acta de Junta Directiva 21Jul2016',2,'2016-07-29 05:00:00','2016-07-31 19:54:52',10,1,'2016-07-20 01:46:00','2016-07-31 19:54:45'),(6,'Envío de Acta Asamblea de Accionistas #50 - Aprobación de Otrosí y Elección de nuevo Revisor Fiscal',5,'2016-07-29 05:00:00',NULL,6,0,'2016-07-20 01:50:28','2016-07-31 23:37:22'),(7,'Llevar a cabo Comité de Gerencia de Obra',7,'2016-08-03 05:00:00',NULL,6,0,'2016-07-24 22:04:08','2016-07-29 01:45:10'),(8,'Reunión de Layout con Roy y Giovanni en Ibagué',6,'2016-07-29 05:00:00','2016-07-31 22:02:39',6,1,'2016-07-24 22:04:46','2016-07-31 22:02:31'),(9,'Firma del Otrosí del Contrato de la Coordinadora de Calidad (horario Flexible)',10,'2016-07-29 05:00:00','2016-07-31 23:45:37',6,1,'2016-07-24 22:29:19','2016-07-31 23:45:30'),(10,'Firma del Otrosí del Contrato de Tatiana Bustos',10,'2016-07-29 05:00:00',NULL,6,0,'2016-07-24 22:36:34','2016-07-24 22:36:54'),(11,'Enviar Feedback del primer DEMO entregado del modulo de gestión',12,'2016-07-24 05:00:00','2016-08-01 00:29:04',6,1,'2016-07-25 00:31:22','2016-08-01 00:28:57'),(13,'Implementar el Feedback en el módulo de gestión',12,'2016-07-29 05:00:00',NULL,5,0,'2016-07-25 00:33:01','2016-07-31 19:08:04'),(14,'Firmar Orden de Servicio Para la Fase II del Proyecto',12,'2016-07-29 05:00:00',NULL,6,0,'2016-07-25 00:34:12','2016-07-25 00:34:32'),(16,'Propuesta de campaña de Comunicaciones soporte Relanzamiento de Producto Cubierto con Chocolate (JustFruit)',19,'2016-08-26 05:00:00',NULL,8,0,'2016-07-31 18:38:32','2016-07-31 18:38:49'),(17,'Presentación de la Estrategia de Comunicaciones V2.0',19,'2016-08-05 05:00:00',NULL,8,0,'2016-07-31 18:39:28','2016-07-31 18:39:45'),(18,'Soporte en la Promoción y envío del Perfil del nuevo Gerente de Operaciones de Fruandes',14,'2016-08-12 05:00:00',NULL,8,0,'2016-07-31 18:40:32','2016-07-31 18:40:45'),(19,'Revisar y Nutrir la Base de Datos a quienes estamos enviando los comunicados externos',14,'2016-08-05 05:00:00',NULL,8,0,'2016-07-31 18:41:47','2016-07-31 18:42:53'),(20,'Comunicado de Prensa para Sistema B',14,'2016-07-29 05:00:00',NULL,8,0,'2016-07-31 19:00:40','2016-07-31 19:00:52'),(21,'Comunicado de las nuevas certificaciones Orgánicas de Fruande',14,'2016-08-05 05:00:00',NULL,8,0,'2016-07-31 19:02:24','2016-07-31 19:02:36'),(22,'Coordinar el Rediseño de los Templates de Fruandes',16,'2016-08-05 05:00:00',NULL,8,0,'2016-07-31 19:03:17','2016-07-31 19:03:26'),(23,'Cierre de Inventario a 31 de Julio (Físico Vs Contable)',33,'2016-08-12 05:00:00',NULL,9,0,'2016-07-31 21:55:24','2016-08-01 01:48:17'),(24,'Revisión Final del Presupuesto actualizado del segundo semestre de 2016',30,'2016-08-05 05:00:00',NULL,9,0,'2016-07-31 22:14:17','2016-07-31 22:14:28'),(25,'Presentación Plan de Acción para evitar futuros problemas con la Resolución de Facturación',28,'2016-08-05 05:00:00',NULL,9,0,'2016-07-31 22:15:20','2016-08-01 01:52:11'),(26,'Envío de Corte de Presupuestos a los diferentes responsables por área',30,'2016-12-30 05:00:00',NULL,9,0,'2016-07-31 22:16:26','2016-07-31 22:16:36'),(27,'Entrega de Pendientes con la DIAN',28,'2016-08-19 05:00:00',NULL,9,0,'2016-07-31 22:17:11','2016-07-31 22:17:32'),(28,'Contruir el Primer Esquema del LayOut de la nueva Planta (Roy y Juan)',6,'2016-08-05 05:00:00',NULL,6,0,'2016-07-31 23:40:17','2016-07-31 23:40:35'),(29,'Preparación de Comité de Impacto ',20,'2016-08-17 05:00:00',NULL,7,0,'2016-08-01 00:40:56','2016-08-01 00:41:20'),(30,'Firma del Contrato C.Responde',21,'0000-00-00 00:00:00',NULL,7,0,'2016-08-01 00:42:36','2016-08-01 00:43:05'),(31,'NDT - Envío de Información de Inventario a Junio 30 de 2016',42,'2016-08-01 05:00:00',NULL,13,0,'2016-08-01 10:43:38','2016-08-01 10:45:59'),(32,'NDT - Actualización del Despacho de Nathalie de Agosto de 2016 (Contenedor 20`)',37,'2016-08-01 05:00:00',NULL,6,0,'2016-08-01 10:45:51','2016-08-01 10:46:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_table`
--

LOCK TABLES `usuarios_table` WRITE;
/*!40000 ALTER TABLE `usuarios_table` DISABLE KEYS */;
INSERT INTO `usuarios_table` VALUES (5,'Enrique Salazar','enrique.salazar@gmail.com','666','123456',NULL,'2016-07-18 17:48:41'),(6,'Javier Vasquez','javier@fruandes.co','666','1234567890',NULL,'2016-07-30 15:28:16'),(7,'Jennifer Gonzalez','jennifer@fruandes.co','1','1234567890','0000-00-00 00:00:00','2016-08-01 00:34:10'),(8,'Mabel Paez','mabel@fruandes.co','1','1234567890',NULL,'2016-07-31 19:04:52'),(9,'Edisson Jaimes','edisson@fruandes.co','1','1234567890',NULL,'2016-08-01 01:32:39'),(10,'Stefanny Alcantara ','stefanny@fruandes.co',NULL,'1234567890','2016-07-28 00:32:58','2016-07-28 00:32:58'),(11,'Giovanni Porras','giovanni@fruandes.co',NULL,'1234567890','2016-07-29 01:48:48','2016-07-29 01:48:48'),(12,'Janir Ledesma','janir@fruandes.co',NULL,'1234567890','2016-07-31 20:59:33','2016-07-31 20:59:33'),(13,'Fabio Barón','fabio@fruandes.co',NULL,'1234567890','2016-07-31 22:06:41','2016-07-31 22:06:41'),(14,'Juan David Mejía','juan@fruandes.co',NULL,'1234567890','2016-08-01 00:32:18','2016-08-01 00:32:18'),(15,'Germán Betancourt ','german@fruandes.co',NULL,'1234567890','2016-08-01 00:32:44','2016-08-01 00:32:44');
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

-- Dump completed on 2016-08-01  5:54:24
