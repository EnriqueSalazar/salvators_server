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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelacionapi`
--

LOCK TABLES `cancelacionapi` WRITE;
/*!40000 ALTER TABLE `cancelacionapi` DISABLE KEYS */;
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
-- Table structure for table `clienteapi`
--

DROP TABLE IF EXISTS `clienteapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clienteapi` (
  `telefono` int(11) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteapi`
--

LOCK TABLES `clienteapi` WRITE;
/*!40000 ALTER TABLE `clienteapi` DISABLE KEYS */;
INSERT INTO `clienteapi` VALUES (4342,4242,'fsdfsd',1,'2016-11-10 04:55:09','2016-11-10 04:55:09'),(4342,423424,'dafesfs',2,'2016-11-10 05:00:02','2016-11-10 05:00:02'),(NULL,7373737,'enrique',3,'2016-11-10 05:24:21','2016-11-10 05:24:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionapi`
--

LOCK TABLES `direccionapi` WRITE;
/*!40000 ALTER TABLE `direccionapi` DISABLE KEYS */;
INSERT INTO `direccionapi` VALUES ('Cr ayyyyy',NULL,1,NULL,1,'2016-11-10 05:05:19','2016-11-10 05:05:19'),('doooos 444',NULL,2,NULL,2,'2016-11-10 05:06:23','2016-11-10 05:06:23'),('otra direccion',NULL,2,NULL,3,'2016-11-10 05:10:51','2016-11-10 05:10:51'),('33333333h5h5h5h5',NULL,2,NULL,4,'2016-11-10 05:24:02','2016-11-10 05:24:02'),('fe fe fwef wefwefwe fwefwef wefwefwef wefwefwef we',NULL,2,NULL,5,'2016-11-10 06:02:09','2016-11-10 06:02:09');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domiciliarioapi`
--

LOCK TABLES `domiciliarioapi` WRITE;
/*!40000 ALTER TABLE `domiciliarioapi` DISABLE KEYS */;
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
INSERT INTO `itemmenuapi` VALUES (NULL,NULL,'uno',1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,'2016-11-01 06:26:53'),(NULL,NULL,'dos',5,1,NULL,NULL,NULL,NULL,NULL,2,NULL,'2016-11-04 17:35:35'),(NULL,NULL,'tres',4,1,NULL,NULL,NULL,NULL,NULL,3,NULL,'2016-11-01 08:32:53'),(NULL,NULL,'cuatro',5,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,'2016-11-04 17:35:41'),(2,1,'cinco',5,NULL,1,1,1,3,4,5,'2016-10-28 21:00:58','2016-10-31 06:29:48'),(2,1,'ultimo item',2,NULL,NULL,NULL,NULL,3,4,6,'2016-10-30 10:33:20','2016-11-01 08:29:57'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'2016-10-30 10:35:27','2016-10-30 10:35:27'),(2,1,'123',NULL,NULL,NULL,NULL,NULL,3,4,8,'2016-10-30 10:39:05','2016-10-30 10:39:05'),(8,9,'65464',NULL,NULL,NULL,NULL,NULL,7,6,9,'2016-10-30 10:40:20','2016-10-30 10:40:20'),(2,1,'qqq',NULL,NULL,NULL,NULL,NULL,3,4,10,'2016-10-30 10:40:42','2016-10-30 10:40:42'),(6,7,'7657567',NULL,NULL,NULL,NULL,NULL,4,3,11,'2016-10-30 10:41:42','2016-10-30 10:41:42'),(7,7,'776457',NULL,NULL,NULL,NULL,NULL,7,7,12,'2016-10-30 10:42:13','2016-10-30 10:42:13'),(4,4,'474',NULL,NULL,NULL,NULL,NULL,5,5,13,'2016-10-30 10:44:16','2016-10-30 10:44:16'),(2,1,'hola',NULL,NULL,0,0,0,3,4,14,'2016-10-30 10:46:49','2016-10-30 10:47:20'),(9,9,'eqq',NULL,NULL,NULL,NULL,NULL,9,9,15,'2016-10-30 10:53:25','2016-10-30 10:53:25'),(2,1,'aaa',NULL,NULL,NULL,NULL,NULL,3,4,16,'2016-10-30 10:54:20','2016-10-30 10:54:20'),(2,122,'ultimo',NULL,NULL,NULL,NULL,NULL,3,4,17,'2016-10-30 10:55:48','2016-10-30 10:56:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemmodapi`
--

LOCK TABLES `itemmodapi` WRITE;
/*!40000 ALTER TABLE `itemmodapi` DISABLE KEYS */;
INSERT INTO `itemmodapi` VALUES (3,NULL,51,'2016-10-30 07:38:09','2016-10-30 07:38:09'),(8,NULL,52,'2016-10-30 07:38:21','2016-10-30 07:38:21'),(10,NULL,53,'2016-10-30 07:38:34','2016-10-30 07:38:34'),(3,NULL,70,'2016-10-30 10:14:41','2016-10-30 10:14:41'),(7,NULL,71,'2016-10-30 10:14:51','2016-10-30 10:14:51'),(3,3,72,'2016-10-30 10:25:13','2016-10-30 10:25:13'),(3,2,73,'2016-10-30 10:30:04','2016-10-30 10:30:04'),(3,14,77,'2016-10-30 10:46:57','2016-10-30 10:46:57'),(3,15,78,'2016-10-30 10:53:52','2016-10-30 10:53:52'),(3,18,80,'2016-10-30 11:01:34','2016-10-30 11:01:34'),(10,6,81,'2016-11-01 08:31:42','2016-11-01 08:31:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modsubmodapi`
--

LOCK TABLES `modsubmodapi` WRITE;
/*!40000 ALTER TABLE `modsubmodapi` DISABLE KEYS */;
INSERT INTO `modsubmodapi` VALUES (5,2,2,'2016-10-01 18:02:14','2016-10-01 18:02:14'),(6,1,3,'2016-10-01 18:02:29','2016-10-01 18:02:29'),(6,2,4,'2016-10-01 18:02:33','2016-10-01 18:02:33'),(NULL,3,7,'2016-10-02 12:53:22','2016-10-02 12:53:22'),(7,3,8,'2016-10-02 12:53:35','2016-10-02 12:53:35'),(NULL,1,58,'2016-10-29 17:34:32','2016-10-29 17:34:32'),(3,1,98,'2016-10-31 06:44:54','2016-10-31 06:44:54');
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
  `id_forma_pago` int(11) DEFAULT NULL,
  `nota_pedido` longtext,
  `id_domiciliario` int(11) DEFAULT NULL,
  `id_operario` int(11) DEFAULT NULL,
  `nota_forma_pago` longtext,
  `id_restaurante` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosapi`
--

LOCK TABLES `pedidosapi` WRITE;
/*!40000 ALTER TABLE `pedidosapi` DISABLE KEYS */;
INSERT INTO `pedidosapi` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-16 04:35:02','2016-08-16 04:35:02'),(2,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-08-16 04:36:04','2016-08-16 04:36:04'),(3,NULL,1338,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-19 16:16:42','2016-09-19 16:16:42'),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-19 14:40:04','2016-09-19 14:40:04');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quejaapi`
--

LOCK TABLES `quejaapi` WRITE;
/*!40000 ALTER TABLE `quejaapi` DISABLE KEYS */;
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restauranteapi`
--

LOCK TABLES `restauranteapi` WRITE;
/*!40000 ALTER TABLE `restauranteapi` DISABLE KEYS */;
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

-- Dump completed on 2016-11-10 19:34:24
