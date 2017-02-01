-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: salvators_db
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

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
-- Table structure for table `cancelacionapi`
--

DROP TABLE IF EXISTS `cancelacionapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancelacionapi` (
  `id_pedido` int(11) DEFAULT NULL,
  `nota_cliente` longtext,
  `nota_operador` longtext,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelacionapi`
--

LOCK TABLES `cancelacionapi` WRITE;
/*!40000 ALTER TABLE `cancelacionapi` DISABLE KEYS */;
INSERT INTO `cancelacionapi` VALUES (25,'fasfaf',NULL,1,'2016-12-16 12:28:25','2016-12-16 12:28:25'),(24,'efewfwe',NULL,2,'2016-12-16 12:48:36','2016-12-16 12:48:36'),(24,'vdsfgsdfsdssfs',NULL,3,'2016-12-16 12:51:55','2016-12-16 12:51:55'),(24,'vdsfgsdfsdssfs',NULL,4,'2016-12-16 12:52:01','2016-12-16 12:52:01'),(24,'vdsfgsdfsdssfs',NULL,5,'2016-12-16 12:52:03','2016-12-16 12:52:03'),(24,'vdsfgsdfsdssfs',NULL,6,'2016-12-16 12:52:04','2016-12-16 12:52:04'),(24,'vdsfgsdfsdssfs',NULL,7,'2016-12-16 13:04:25','2016-12-16 13:04:25'),(25,NULL,NULL,8,'2016-12-16 13:09:52','2016-12-16 13:09:52'),(25,NULL,NULL,9,'2016-12-16 13:10:45','2016-12-16 13:10:45'),(24,'','',10,'2016-12-16 13:11:04','2016-12-16 13:11:04'),(25,'','',11,'2016-12-16 13:12:03','2016-12-16 13:12:03'),(29,'fsdfsd','fdsfsdf',12,'2016-12-17 10:36:21','2016-12-17 10:36:21'),(29,'fvd','vfdvfdv',13,'2016-12-17 10:37:08','2016-12-17 10:37:08'),(29,'fvd','vfdvfdv',14,'2016-12-17 10:37:40','2016-12-17 10:37:40'),(40,'dsadad','dsadasdas',15,'2017-01-30 20:20:26','2017-01-30 20:20:26'),(42,'wefweffdsfsd','',16,'2017-01-30 20:26:43','2017-01-30 20:26:43'),(41,'dqdqw','',17,'2017-01-30 20:30:43','2017-01-30 20:30:43');
/*!40000 ALTER TABLE `cancelacionapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriamenuapi`
--

DROP TABLE IF EXISTS `categoriamenuapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriamenuapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriamenuapi`
--

LOCK TABLES `categoriamenuapi` WRITE;
/*!40000 ALTER TABLE `categoriamenuapi` DISABLE KEYS */;
INSERT INTO `categoriamenuapi` VALUES ('categoria 1',NULL,1,'2016-11-01 05:16:45','2016-11-01 05:16:45');
/*!40000 ALTER TABLE `categoriamenuapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudadapi`
--

DROP TABLE IF EXISTS `ciudadapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudadapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudadapi`
--

LOCK TABLES `ciudadapi` WRITE;
/*!40000 ALTER TABLE `ciudadapi` DISABLE KEYS */;
INSERT INTO `ciudadapi` VALUES ('Barranquilla',1,NULL,NULL),('Santa Marta',2,NULL,NULL),('Cartagena',3,NULL,NULL),('Monteria',4,NULL,NULL),('Villa Campestre',5,NULL,NULL),('Rodadero',6,NULL,NULL),('Riohacha',7,NULL,NULL);
/*!40000 ALTER TABLE `ciudadapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienteapi`
--

DROP TABLE IF EXISTS `clienteapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienteapi` (
  `telefono` int(11) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteapi`
--

LOCK TABLES `clienteapi` WRITE;
/*!40000 ALTER TABLE `clienteapi` DISABLE KEYS */;
INSERT INTO `clienteapi` VALUES (4342,4242,NULL,'fsdfsd',1,'2016-11-10 04:55:09','2016-11-10 04:55:09'),(4342,423424,NULL,'dafesfs',2,'2016-11-10 05:00:02','2016-11-10 05:00:02'),(NULL,7373737,NULL,'enrique',3,'2016-11-10 05:24:21','2016-11-10 05:24:21'),(1111,2222,2,'enrique',31,'2016-11-11 15:35:08','2016-11-11 15:35:08'),(5353,34535,2,'gfdgd',32,'2016-11-12 18:01:58','2016-11-12 18:01:58'),(NULL,NULL,4,'53453',33,'2016-11-12 18:10:44','2016-11-12 18:10:44');
/*!40000 ALTER TABLE `clienteapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descuentoapi`
--

DROP TABLE IF EXISTS `descuentoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descuentoapi` (
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `valor_maximo` float DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_tipo_descuento` int(11) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `is_excluido_bar` tinyint(1) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descuentoapi`
--

LOCK TABLES `descuentoapi` WRITE;
/*!40000 ALTER TABLE `descuentoapi` DISABLE KEYS */;
INSERT INTO `descuentoapi` VALUES (NULL,3,'gdfgdfgd',1,'2',NULL,'2016-11-10 00:00:00',NULL,4,2,'2016-11-01 04:39:43','2016-11-07 15:23:26');
/*!40000 ALTER TABLE `descuentoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccionapi`
--

DROP TABLE IF EXISTS `direccionapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccionapi` (
  `direccion` varchar(255) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `y` float DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionapi`
--

LOCK TABLES `direccionapi` WRITE;
/*!40000 ALTER TABLE `direccionapi` DISABLE KEYS */;
INSERT INTO `direccionapi` VALUES ('Cr ayyyyy',NULL,1,NULL,1,'2016-11-10 05:05:19','2016-11-10 05:05:19'),('doooos 444',NULL,2,NULL,2,'2016-11-10 05:06:23','2016-11-10 05:06:23'),('otra direccion',NULL,2,NULL,3,'2016-11-10 05:10:51','2016-11-10 05:10:51'),('33333333h5h5h5h5',NULL,2,NULL,4,'2016-11-10 05:24:02','2016-11-10 05:24:02'),('fe fe fwef wefwefwe fwefwef wefwefwef wefwefwef we',NULL,2,NULL,5,'2016-11-10 06:02:09','2016-11-10 06:02:09'),('dvsv svfds fsd sd',NULL,4,NULL,6,'2016-11-11 08:52:27','2016-11-11 08:52:27'),('432424b 4 424242422  244 32  ',NULL,5,NULL,7,'2016-11-11 09:25:34','2016-11-11 09:25:34'),('rtt ert ert er ter',NULL,6,NULL,8,'2016-11-11 09:29:59','2016-11-11 09:29:59'),('ewq eqw eq eqw ',NULL,7,NULL,9,'2016-11-11 09:57:25','2016-11-11 09:57:25'),('234234 2 423 4242',NULL,8,NULL,10,'2016-11-11 10:01:01','2016-11-11 10:01:01'),('534534ererge',NULL,9,NULL,11,'2016-11-11 10:02:06','2016-11-11 10:02:06'),('dfsd sf sf s',NULL,10,NULL,12,'2016-11-11 10:07:21','2016-11-11 10:07:21'),('dfsdf sd sdf sd',NULL,10,NULL,13,'2016-11-11 10:07:28','2016-11-11 10:07:28'),('ergere rgre ger ger ',NULL,11,NULL,14,'2016-11-11 10:07:51','2016-11-11 10:07:51'),('675756',NULL,28,NULL,15,'2016-11-11 11:31:06','2016-11-11 11:31:06'),('56757575',NULL,28,NULL,16,'2016-11-11 11:31:19','2016-11-11 11:31:19'),('rgdrfgd fdg f dfg d ',NULL,29,NULL,19,'2016-11-11 13:56:49','2016-11-11 13:56:49'),('tertet',NULL,30,NULL,20,'2016-11-11 15:11:59','2016-11-11 15:11:59'),('3432 frefer gfgvd',NULL,31,NULL,21,'2016-11-11 15:35:26','2016-11-11 15:35:26'),('jkfnwkejnf jkwen fjkwenfjkwenfjkwenfkjw ekjfn wekjfn jkwenf jkwen fkjwen fjkwne jkf nwekjf nwkjfnkwjnf kwj ',NULL,31,NULL,22,'2016-11-11 15:51:57','2016-11-11 15:51:57'),('55345  3453453',NULL,32,NULL,23,'2016-11-12 18:02:12','2016-11-12 18:02:12'),('tt3t3',NULL,33,NULL,24,'2016-11-12 18:10:51','2016-11-12 18:10:51');
/*!40000 ALTER TABLE `direccionapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domiciliarioapi`
--

DROP TABLE IF EXISTS `domiciliarioapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domiciliarioapi` (
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domiciliarioapi`
--

LOCK TABLES `domiciliarioapi` WRITE;
/*!40000 ALTER TABLE `domiciliarioapi` DISABLE KEYS */;
INSERT INTO `domiciliarioapi` VALUES (NULL,'Pedro',NULL,1,'2016-11-15 10:53:12','2016-11-15 10:53:12'),(NULL,'Luis',NULL,2,'2016-11-15 10:53:24','2016-11-15 10:53:24');
/*!40000 ALTER TABLE `domiciliarioapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoapi`
--

DROP TABLE IF EXISTS `estadoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadoapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoapi`
--

LOCK TABLES `estadoapi` WRITE;
/*!40000 ALTER TABLE `estadoapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagoapi`
--

DROP TABLE IF EXISTS `formapagoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapagoapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagoapi`
--

LOCK TABLES `formapagoapi` WRITE;
/*!40000 ALTER TABLE `formapagoapi` DISABLE KEYS */;
INSERT INTO `formapagoapi` VALUES ('ccc',NULL,3,'2016-10-31 18:46:07','2016-11-01 07:53:01');
/*!40000 ALTER TABLE `formapagoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupomenuapi`
--

DROP TABLE IF EXISTS `grupomenuapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupomenuapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `is_pizza` tinyint(1) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupomenuapi`
--

LOCK TABLES `grupomenuapi` WRITE;
/*!40000 ALTER TABLE `grupomenuapi` DISABLE KEYS */;
INSERT INTO `grupomenuapi` VALUES ('gaseosas',NULL,NULL,NULL,2,NULL,NULL),('hamburguesas',1,NULL,NULL,4,'2016-10-28 09:37:19','2016-10-28 09:38:02'),('pizza',2,NULL,NULL,5,'2016-10-31 06:29:37','2016-10-31 06:29:37');
/*!40000 ALTER TABLE `grupomenuapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemmenuapi`
--

DROP TABLE IF EXISTS `itemmenuapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemmenuapi` (
  `precio` float DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_grupo_menu` int(11) DEFAULT NULL,
  `id_categoria_menu` int(11) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `is_descontable` tinyint(1) DEFAULT NULL,
  `is_etiqueta` tinyint(1) DEFAULT NULL,
  `ordenamiento` int(11) DEFAULT NULL,
  `max_partes` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemmenuapi`
--

LOCK TABLES `itemmenuapi` WRITE;
/*!40000 ALTER TABLE `itemmenuapi` DISABLE KEYS */;
INSERT INTO `itemmenuapi` VALUES (NULL,NULL,'uno',4,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-01-07 16:52:28'),(NULL,NULL,'dos',5,1,NULL,NULL,NULL,NULL,NULL,2,NULL,'2016-11-04 17:35:35'),(NULL,NULL,'tres',4,1,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-11-01 08:32:53'),(NULL,NULL,'cuatro',5,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-11-04 17:35:41'),(2,1,'cinco',5,NULL,1,1,1,3,4,5,'2016-10-28 21:00:58','2016-10-31 06:29:48'),(2,1,'ultimo item',2,NULL,NULL,NULL,NULL,3,4,6,'2016-10-30 10:33:20','2016-11-01 08:29:57'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2016-10-30 10:35:27','2016-10-30 10:35:27'),(2,1,'123',2,NULL,NULL,NULL,NULL,3,4,8,'2016-10-30 10:39:05','2016-12-19 21:52:48'),(8,9,'65464',2,NULL,NULL,NULL,NULL,7,6,9,'2016-10-30 10:40:20','2016-12-19 21:52:50'),(2,1,'qqq',2,NULL,NULL,NULL,NULL,3,4,10,'2016-10-30 10:40:42','2016-12-19 21:52:53'),(6,7,'7657567',4,NULL,NULL,NULL,NULL,4,3,11,'2016-10-30 10:41:42','2016-12-19 21:52:55'),(7,7,'776457',5,NULL,NULL,NULL,NULL,7,7,12,'2016-10-30 10:42:13','2016-12-19 21:52:57'),(4,4,'474',4,NULL,NULL,NULL,NULL,5,5,13,'2016-10-30 10:44:16','2016-12-19 21:52:59'),(2,1,'hola',5,NULL,0,0,0,3,4,14,'2016-10-30 10:46:49','2016-12-19 21:53:03'),(9,9,'eqq',2,NULL,NULL,NULL,NULL,9,9,15,'2016-10-30 10:53:25','2016-12-19 21:53:06'),(2,1,'aaa',4,NULL,NULL,NULL,NULL,3,4,16,'2016-10-30 10:54:20','2016-12-19 21:53:08'),(2,122,'ultimo',5,NULL,NULL,NULL,NULL,3,4,17,'2016-10-30 10:55:48','2016-12-19 21:53:10');
/*!40000 ALTER TABLE `itemmenuapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemmodapi`
--

DROP TABLE IF EXISTS `itemmodapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemmodapi` (
  `id_modificador` int(11) DEFAULT NULL,
  `id_item_menu` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemmodapi`
--

LOCK TABLES `itemmodapi` WRITE;
/*!40000 ALTER TABLE `itemmodapi` DISABLE KEYS */;
INSERT INTO `itemmodapi` VALUES (3,NULL,51,'2016-10-30 07:38:09','2016-10-30 07:38:09'),(8,NULL,52,'2016-10-30 07:38:21','2016-10-30 07:38:21'),(10,NULL,53,'2016-10-30 07:38:34','2016-10-30 07:38:34'),(3,NULL,70,'2016-10-30 10:14:41','2016-10-30 10:14:41'),(7,NULL,71,'2016-10-30 10:14:51','2016-10-30 10:14:51'),(3,3,72,'2016-10-30 10:25:13','2016-10-30 10:25:13'),(3,2,73,'2016-10-30 10:30:04','2016-10-30 10:30:04'),(3,14,77,'2016-10-30 10:46:57','2016-10-30 10:46:57'),(3,15,78,'2016-10-30 10:53:52','2016-10-30 10:53:52'),(3,18,80,'2016-10-30 11:01:34','2016-10-30 11:01:34'),(10,6,81,'2016-11-01 08:31:42','2016-11-01 08:31:42'),(3,6,82,'2016-12-19 21:53:32','2016-12-19 21:53:32'),(7,6,83,'2016-12-19 21:53:40','2016-12-19 21:53:40'),(9,6,84,'2016-12-19 21:53:42','2016-12-19 21:53:42'),(3,1,85,'2016-12-19 21:54:23','2016-12-19 21:54:23'),(7,1,86,'2016-12-19 21:54:25','2016-12-19 21:54:25'),(9,1,87,'2016-12-19 21:54:30','2016-12-19 21:54:30'),(11,6,88,'2017-01-07 16:53:36','2017-01-07 16:53:36');
/*!40000 ALTER TABLE `itemmodapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modificadorapi`
--

DROP TABLE IF EXISTS `modificadorapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modificadorapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `maximo` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modificadorapi`
--

LOCK TABLES `modificadorapi` WRITE;
/*!40000 ALTER TABLE `modificadorapi` DISABLE KEYS */;
INSERT INTO `modificadorapi` VALUES ('1er modificador',NULL,6,6,6,6666,3,'2016-09-19 21:24:29','2016-10-01 11:52:30'),('unnombre',NULL,222,NULL,333,111,7,'2016-10-02 12:42:22','2016-10-02 12:42:22'),('last modificador',NULL,NULL,NULL,NULL,NULL,8,'2016-10-10 15:18:56','2016-10-10 15:18:56'),('nuevo modificador',0,12,3,1,11,9,'2016-10-11 05:35:31','2016-10-11 05:35:31'),('nuevo modificador',0,12,3,1,11,10,'2016-10-11 05:36:30','2016-10-11 05:36:30'),('55555',NULL,1,NULL,1,1,11,'2016-10-13 15:10:09','2016-10-13 15:10:09'),('123123',NULL,1,NULL,1,123,12,'2016-10-13 15:10:32','2016-10-13 15:10:32');
/*!40000 ALTER TABLE `modificadorapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modsubmodapi`
--

DROP TABLE IF EXISTS `modsubmodapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modsubmodapi` (
  `id_modificador` int(11) DEFAULT NULL,
  `id_submodificador` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modsubmodapi`
--

LOCK TABLES `modsubmodapi` WRITE;
/*!40000 ALTER TABLE `modsubmodapi` DISABLE KEYS */;
INSERT INTO `modsubmodapi` VALUES (5,2,2,'2016-10-01 18:02:14','2016-10-01 18:02:14'),(6,1,3,'2016-10-01 18:02:29','2016-10-01 18:02:29'),(6,2,4,'2016-10-01 18:02:33','2016-10-01 18:02:33'),(NULL,3,7,'2016-10-02 12:53:22','2016-10-02 12:53:22'),(7,3,8,'2016-10-02 12:53:35','2016-10-02 12:53:35'),(NULL,1,58,'2016-10-29 17:34:32','2016-10-29 17:34:32'),(3,1,98,'2016-10-31 06:44:54','2016-10-31 06:44:54'),(3,2,99,'2016-12-19 21:55:43','2016-12-19 21:55:43'),(3,4,100,'2016-12-19 21:55:47','2016-12-19 21:55:47'),(7,5,101,'2016-12-19 22:20:24','2016-12-19 22:20:24'),(10,9,102,'2016-12-19 22:20:32','2016-12-19 22:20:32'),(10,8,103,'2016-12-19 22:20:33','2016-12-19 22:20:33'),(10,11,104,'2016-12-19 22:20:36','2016-12-19 22:20:36'),(9,13,105,'2016-12-20 11:30:11','2016-12-20 11:30:11'),(9,12,106,'2016-12-20 11:30:13','2016-12-20 11:30:13');
/*!40000 ALTER TABLE `modsubmodapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operarioapi`
--

DROP TABLE IF EXISTS `operarioapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operarioapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operarioapi`
--

LOCK TABLES `operarioapi` WRITE;
/*!40000 ALTER TABLE `operarioapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `operarioapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidodescuentoapi`
--

DROP TABLE IF EXISTS `pedidodescuentoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidodescuentoapi` (
  `id_pedido` int(11) DEFAULT NULL,
  `id_descuento` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidodescuentoapi`
--

LOCK TABLES `pedidodescuentoapi` WRITE;
/*!40000 ALTER TABLE `pedidodescuentoapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidodescuentoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoitemapi`
--

DROP TABLE IF EXISTS `pedidoitemapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoitemapi` (
  `id_item` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `nota` longtext,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoitemapi`
--

LOCK TABLES `pedidoitemapi` WRITE;
/*!40000 ALTER TABLE `pedidoitemapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoitemapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoitemparteapi`
--

DROP TABLE IF EXISTS `pedidoitemparteapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoitemparteapi` (
  `id_pedido_item` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoitemparteapi`
--

LOCK TABLES `pedidoitemparteapi` WRITE;
/*!40000 ALTER TABLE `pedidoitemparteapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoitemparteapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidomodapi`
--

DROP TABLE IF EXISTS `pedidomodapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidomodapi` (
  `id_mod` int(11) DEFAULT NULL,
  `id_pedido_item_parte` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidomodapi`
--

LOCK TABLES `pedidomodapi` WRITE;
/*!40000 ALTER TABLE `pedidomodapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidomodapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosapi`
--

DROP TABLE IF EXISTS `pedidosapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidosapi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `factura` int(11) DEFAULT NULL,
  `h_inicio` datetime DEFAULT NULL,
  `h_fin` datetime DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_direccion` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `h_digitado` datetime DEFAULT NULL,
  `h_cocina` datetime DEFAULT NULL,
  `h_barra` datetime DEFAULT NULL,
  `h_domiciliario` datetime DEFAULT NULL,
  `h_entregado` datetime DEFAULT NULL,
  `id_forma_pago` int(11) DEFAULT NULL,
  `nota_pedido` longtext,
  `id_domiciliario` int(11) DEFAULT NULL,
  `id_operario` int(11) DEFAULT NULL,
  `nota_forma_pago` longtext,
  `id_restaurante` int(11) DEFAULT NULL,
  `items` longtext,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosapi`
--

LOCK TABLES `pedidosapi` WRITE;
/*!40000 ALTER TABLE `pedidosapi` DISABLE KEYS */;
INSERT INTO `pedidosapi` VALUES (15,'2016-11-15 14:32:46',NULL,'2016-11-15 14:32:46',NULL,31,21,5,NULL,'2016-11-15 14:35:32','2016-11-15 14:35:40',NULL,NULL,NULL,'una nota nonononono',1,NULL,NULL,3,NULL,'2016-11-15 14:32:46','2017-01-07 16:56:57'),(16,'2016-11-15 14:33:03',NULL,'2016-11-15 14:33:03',NULL,32,23,5,NULL,'2016-11-15 14:42:12','2016-11-15 14:42:16','2016-11-15 14:51:50',NULL,NULL,'una nota mas larga',1,NULL,NULL,4,NULL,'2016-11-15 14:33:03','2016-11-15 15:10:43'),(17,'2016-11-15 15:01:20',NULL,'2016-11-15 15:01:20',NULL,31,21,5,NULL,'2016-11-15 15:01:47','2016-11-15 15:01:49','2016-11-15 15:04:07','2016-11-15 15:04:28',NULL,'una nota muy muy pero muy larga dos veces una nota muy muy pero muy larga dos veces ',1,NULL,NULL,3,NULL,'2016-11-15 15:01:20','2016-11-15 15:11:03'),(18,'2016-11-15 15:01:31',NULL,'2016-11-15 15:01:31',NULL,32,23,5,NULL,'2016-11-15 15:04:13','2016-11-15 15:04:16','2016-11-15 15:06:56','2016-11-15 15:08:00',NULL,NULL,1,NULL,NULL,4,NULL,'2016-11-15 15:01:31','2016-11-15 15:08:01'),(19,'2016-11-15 15:05:39',NULL,'2016-11-15 15:05:39',NULL,31,21,5,NULL,'2016-11-15 15:05:44','2016-11-15 15:05:46','2016-11-15 15:05:55','2016-11-15 15:06:51',NULL,NULL,1,NULL,NULL,4,NULL,'2016-11-15 15:05:39','2016-11-15 15:06:58'),(20,'2016-11-16 05:21:43',NULL,'2016-11-16 05:21:43',NULL,31,21,6,NULL,'2016-11-16 05:24:08','2016-11-16 05:35:50','2016-11-16 05:38:23','2016-11-21 18:52:53',NULL,NULL,1,NULL,NULL,3,NULL,'2016-11-16 05:21:53','2016-11-21 18:53:02'),(21,'2016-11-16 05:38:43',NULL,'2016-11-16 05:38:43',NULL,31,22,5,NULL,'2016-11-16 05:38:53','2016-11-16 05:38:54','2016-11-16 05:39:34','2016-11-21 19:40:17',NULL,NULL,1,NULL,NULL,3,NULL,'2016-11-16 05:38:53','2016-11-21 19:40:19'),(22,'2016-11-21 18:53:30',NULL,'2016-11-21 18:53:30',NULL,31,21,6,NULL,'2016-11-21 18:53:39','2016-11-21 18:53:48','2016-11-21 19:53:03','2016-11-21 20:01:34',NULL,NULL,1,NULL,NULL,3,NULL,'2016-11-21 18:53:30','2016-11-21 20:01:37'),(23,'2016-11-21 20:02:54',NULL,'2016-11-21 20:02:54',NULL,31,21,5,NULL,'2016-11-21 20:03:13','2016-11-21 20:03:33','2016-11-21 20:07:04','2016-11-21 20:07:11',NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-11-21 20:02:54','2016-11-21 20:07:14'),(24,'2016-11-27 10:32:43',NULL,'2016-11-27 10:32:43',NULL,31,22,4,NULL,'2016-11-27 11:13:29','2016-11-27 11:22:54','2017-01-07 16:56:25',NULL,NULL,NULL,2,NULL,'gff',3,NULL,'2016-11-27 10:32:43','2017-01-07 16:56:27'),(25,'2016-12-14 11:13:06',NULL,'2016-12-14 11:13:06',NULL,31,22,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-14 11:13:06','2016-12-16 13:15:40'),(26,'2016-12-16 13:36:56',NULL,'2016-12-16 13:36:56',NULL,31,22,5,NULL,'2016-12-16 13:37:03','2016-12-16 14:15:16','2017-01-07 16:58:06','2017-01-07 16:58:33',NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-16 13:36:56','2017-01-07 16:58:37'),(27,'2016-12-16 13:37:33',NULL,'2016-12-16 13:37:33',NULL,32,23,3,NULL,'2016-12-16 13:37:43','2016-12-16 14:10:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-16 13:37:33','2016-12-16 14:10:27'),(28,'2016-12-16 19:50:42',NULL,'2016-12-16 19:50:42',NULL,31,21,2,NULL,'2016-12-17 10:19:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-16 19:50:42','2016-12-17 10:19:22'),(29,'2016-12-16 19:51:27',NULL,'2016-12-16 19:51:27','2016-12-16 19:51:42',31,22,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-16 19:51:27','2016-12-16 20:38:34'),(30,'2016-12-17 10:55:29',NULL,'2016-12-17 10:55:29','2016-12-17 11:00:46',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2016-12-17 10:55:29','2016-12-17 11:00:51'),(31,'2016-12-17 11:03:40',NULL,'2016-12-17 11:03:40','2016-12-17 11:05:01',31,22,2,NULL,'2016-12-19 12:25:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-17 11:03:40','2016-12-19 12:25:29'),(32,'2016-12-19 14:29:55',NULL,'2016-12-19 14:29:55','2016-12-19 14:52:32',31,21,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-19 14:29:55','2016-12-19 14:52:35'),(33,'2016-12-19 14:42:49',NULL,'2016-12-19 14:42:49','2016-12-19 14:52:54',31,21,2,NULL,'2016-12-19 14:52:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-19 14:42:49','2016-12-19 14:53:01'),(34,'2016-12-19 14:47:44',NULL,'2016-12-19 14:47:44',NULL,31,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-19 14:47:44','2016-12-19 14:47:44'),(35,'2016-12-19 14:48:02',NULL,'2016-12-19 14:48:02',NULL,31,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-12-19 14:48:02','2016-12-19 14:48:02'),(36,'2016-12-19 14:49:26',NULL,'2016-12-19 14:49:26',NULL,31,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-19 14:49:26','2016-12-19 14:49:26'),(37,'2016-12-19 14:52:09',NULL,'2016-12-19 14:52:09',NULL,31,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-19 14:52:09','2016-12-19 14:52:09'),(38,'2016-12-19 14:56:14',NULL,'2016-12-19 14:56:14',NULL,32,23,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-12-19 14:56:14','2016-12-19 14:56:14'),(39,'2017-01-07 17:00:55',NULL,'2017-01-07 17:00:55',NULL,31,22,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2017-01-07 17:01:01','2017-01-07 17:01:01'),(40,'2017-01-07 17:01:00',NULL,'2017-01-07 17:01:00',NULL,31,22,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2017-01-07 17:01:02','2017-01-30 20:20:26'),(41,'2017-01-12 19:45:17',NULL,'2017-01-12 19:45:17',NULL,31,21,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'2017-01-12 19:45:17','2017-01-30 20:30:43'),(42,'2017-01-22 12:56:19',NULL,'2017-01-22 12:56:19',NULL,31,21,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'[{\"id_item\":6,\"selectedModSubmods\":[{\"id_modificador\":3,\"id_submodificador\":1}]},{\"id_item\":2,\"selectedModSubmods\":[{\"id_modificador\":3,\"id_submodificador\":2}]}]','2017-01-22 12:56:19','2017-01-30 20:26:43');
/*!40000 ALTER TABLE `pedidosapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosubmodapi`
--

DROP TABLE IF EXISTS `pedidosubmodapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidosubmodapi` (
  `id_submod` int(11) DEFAULT NULL,
  `id_pedido_mod` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosubmodapi`
--

LOCK TABLES `pedidosubmodapi` WRITE;
/*!40000 ALTER TABLE `pedidosubmodapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidosubmodapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quejaapi`
--

DROP TABLE IF EXISTS `quejaapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quejaapi` (
  `id_pedido` int(11) DEFAULT NULL,
  `nota_cliente` longtext,
  `nota_operador` longtext,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quejaapi`
--

LOCK TABLES `quejaapi` WRITE;
/*!40000 ALTER TABLE `quejaapi` DISABLE KEYS */;
INSERT INTO `quejaapi` VALUES (29,'','',1,'2016-12-16 20:38:34','2016-12-16 20:38:34'),(28,'prueba de queja','hola queja',2,'2016-12-17 08:25:31','2016-12-17 08:25:31'),(42,'','',3,'2017-01-30 20:16:50','2017-01-30 20:16:50'),(41,'hfoiasd','ndisaondioas',4,'2017-01-30 20:19:09','2017-01-30 20:19:09'),(39,'wow','nooo',5,'2017-01-30 21:05:03','2017-01-30 21:05:03'),(41,'rewrwerw','rwerwrw',6,'2017-01-30 21:14:30','2017-01-30 21:14:30'),(41,'rwerwrwrw','',7,'2017-01-30 21:14:44','2017-01-30 21:14:44'),(42,'ewqeq','',8,'2017-01-30 22:22:30','2017-01-30 22:22:30'),(42,'ffsa','fdsfsdfs',9,'2017-02-01 21:32:44','2017-02-01 21:32:44'),(42,'dasdad','adasda',10,'2017-02-01 21:34:43','2017-02-01 21:34:43');
/*!40000 ALTER TABLE `quejaapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restauranteapi`
--

DROP TABLE IF EXISTS `restauranteapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restauranteapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restauranteapi`
--

LOCK TABLES `restauranteapi` WRITE;
/*!40000 ALTER TABLE `restauranteapi` DISABLE KEYS */;
INSERT INTO `restauranteapi` VALUES ('4234','43242',4,3442,1,'2016-11-11 14:41:59','2016-11-11 14:57:18'),('sda','54353',2,5435,3,'2016-11-11 14:57:57','2016-11-11 15:09:21'),('rewewr','43242 43242',2,342,4,'2016-11-11 16:02:48','2016-11-11 16:02:48');
/*!40000 ALTER TABLE `restauranteapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submodificadorapi`
--

DROP TABLE IF EXISTS `submodificadorapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submodificadorapi` (
  `nombre` varchar(255) DEFAULT NULL,
  `is_inactivo` tinyint(1) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `maximo` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `is_adicional` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submodificadorapi`
--

LOCK TABLES `submodificadorapi` WRITE;
/*!40000 ALTER TABLE `submodificadorapi` DISABLE KEYS */;
INSERT INTO `submodificadorapi` VALUES ('1er submod456',NULL,123,4789,333333,NULL,NULL,NULL,1,NULL,'2016-10-13 18:47:18'),('2ndo submod',NULL,123,6,1,NULL,NULL,NULL,2,NULL,'2016-10-10 16:22:28'),('8798',NULL,12,7777,8,NULL,NULL,NULL,4,'2016-10-02 13:14:08','2016-10-11 14:11:35'),('pizza',NULL,123,1,2,NULL,NULL,NULL,5,'2016-10-04 05:19:18','2016-10-04 05:19:18'),('last modificador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,'2016-10-10 15:59:46','2016-10-10 15:59:46'),('666r',NULL,555,NULL,NULL,NULL,NULL,NULL,7,'2016-10-10 16:01:08','2016-10-10 16:01:08'),('777',NULL,666,NULL,NULL,NULL,NULL,NULL,8,'2016-10-10 16:11:18','2016-10-10 16:11:18'),('098',NULL,123,NULL,NULL,NULL,NULL,NULL,9,'2016-10-10 16:26:16','2016-10-10 16:26:16'),('333',NULL,333,333,313,NULL,NULL,NULL,10,'2016-10-10 18:45:16','2016-10-10 18:50:44'),('444',NULL,444,NULL,NULL,NULL,NULL,NULL,11,'2016-10-10 18:47:19','2016-10-10 18:47:19'),('555',NULL,555,NULL,NULL,NULL,NULL,NULL,12,'2016-10-10 18:48:24','2016-10-10 18:48:24'),('666',NULL,666,NULL,NULL,NULL,NULL,NULL,13,'2016-10-10 18:49:32','2016-10-10 18:49:32');
/*!40000 ALTER TABLE `submodificadorapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodescuentoapi`
--

DROP TABLE IF EXISTS `tipodescuentoapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodescuentoapi` (
  `tipo_descuento` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodescuentoapi`
--

LOCK TABLES `tipodescuentoapi` WRITE;
/*!40000 ALTER TABLE `tipodescuentoapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodescuentoapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-01 21:37:24
