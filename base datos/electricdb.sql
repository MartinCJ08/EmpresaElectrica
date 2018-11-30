-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: electricdb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `bit_cliente`
--

DROP TABLE IF EXISTS `bit_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_cliente` (
  `idBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_cliente`
--

LOCK TABLES `bit_cliente` WRITE;
/*!40000 ALTER TABLE `bit_cliente` DISABLE KEYS */;
INSERT INTO `bit_cliente` VALUES (1,'cliente actualizado','root@localhost','2018-11-26 17:55:37','Cliente: DAVID ENRIQUEZ, id Cliente:6'),(2,'cliente eliminado','root@localhost','2018-11-26 17:58:22','Cliente: DAVID ENRIQUEZ, celular: 6142250940'),(3,'cliente agregado','root@localhost','2018-11-26 17:59:50','Cliente: pedroortega ,id Cliente:6'),(4,'cliente agregado','root@localhost','2018-11-28 18:52:53','Cliente: jesusrodriguez ,id Cliente:4'),(5,'cliente agregado','root@localhost','2018-11-28 18:53:53','Cliente: jesusrodriguez ,id Cliente:6'),(6,'cliente agregado','root@localhost','2018-11-28 18:55:38','Cliente: atitalavera ,id Cliente:8'),(7,'cliente agregado','root@localhost','2018-11-28 18:59:34','Cliente: josebarrera ,id Cliente:9'),(8,'cliente agregado','root@localhost','2018-11-28 19:15:33','Cliente: JuanMoxXxoO ,id Cliente:10'),(9,'cliente agregado','root@localhost','2018-11-28 19:17:11','Cliente: OSIRISrOsAs ,id Cliente:12'),(10,'cliente agregado','root@localhost','2018-11-28 19:23:15','Cliente: RAQUELRAMIREZ ,id Cliente:13'),(11,'cliente agregado','root@localhost','2018-11-28 19:26:03','Cliente: JORGENITALES ,id Cliente:14'),(12,'cliente eliminado','root@localhost','2018-11-28 23:20:26','Cliente: jesus rodriguez, celular: 123234345'),(13,'cliente eliminado','root@localhost','2018-11-28 23:30:13','Cliente: OSIRIS rOsAs, celular: 639123456'),(14,'cliente agregado','root@localhost','2018-11-28 23:31:07','Cliente: ATILANOGONZALEZ ,id Cliente:15'),(15,'cliente eliminado','root@localhost','2018-11-28 23:31:21','Cliente: ATILANO GONZALEZ, celular: 1235'),(16,'cliente actualizado','root@localhost','2018-11-29 00:11:48','Cliente: JUNACHO MARTINEZ, id Cliente:10'),(17,'cliente actualizado','root@localhost','2018-11-29 00:34:32','Cliente: JOSE BENITEZ, id Cliente:9'),(18,'cliente actualizado','root@localhost','2018-11-29 00:49:09','Cliente: JOSE JOSE BENITEZ, id Cliente:9'),(19,'cliente agregado','root@localhost','2018-11-29 00:53:47','Cliente: ISAACRODRIGUEZ ,id Cliente:16'),(20,'cliente agregado','root@localhost','2018-11-29 01:57:56','Cliente: MARTINCARRASCO ,id Cliente:17'),(21,'cliente actualizado','root@localhost','2018-11-29 09:27:25','Cliente: MARTIN CARRASCO, id Cliente:17'),(22,'cliente actualizado','root@localhost','2018-11-29 09:27:51','Cliente: MARTIN CARRASCO, id Cliente:17'),(23,'cliente eliminado','root@localhost','2018-11-29 09:28:04','Cliente: MARTIN CARRASCO, celular: '),(24,'cliente agregado','root@localhost','2018-11-29 09:28:38','Cliente: DAVIDRIVERA ,id Cliente:18'),(25,'cliente agregado','root@localhost','2018-11-29 09:31:24','Cliente: OMARGAYTAN ,id Cliente:19'),(26,'cliente actualizado','root@localhost','2018-11-29 09:31:47','Cliente: DAVID RIVERA, id Cliente:18'),(27,'cliente eliminado','root@localhost','2018-11-29 09:31:56','Cliente: DAVID RIVERA, celular: 123234'),(28,'cliente agregado','root@localhost','2018-11-29 12:25:23','Cliente: JACINTOLOPEZ ,id Cliente:20'),(29,'cliente actualizado','root@localhost','2018-11-29 12:26:11','Cliente: JACINTO RUIZ, id Cliente:20'),(30,'cliente eliminado','root@localhost','2018-11-29 12:26:51','Cliente: JACINTO RUIZ, celular: 565432222');
/*!40000 ALTER TABLE `bit_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_empleado`
--

DROP TABLE IF EXISTS `bit_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_empleado` (
  `idBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_empleado`
--

LOCK TABLES `bit_empleado` WRITE;
/*!40000 ALTER TABLE `bit_empleado` DISABLE KEYS */;
INSERT INTO `bit_empleado` VALUES (1,'empleado agregado','root@localhost','2018-11-26 18:47:23','DAVID'),(2,'empleado agregado','root@localhost','2018-11-29 01:52:28','NOM'),(3,'empleado agregado','root@localhost','2018-11-29 02:04:20','ISRAEL'),(4,'empleado eliminado','root@localhost','2018-11-29 02:06:21','NOM'),(5,'empleado eliminado','root@localhost','2018-11-29 02:14:32','ISRAEL');
/*!40000 ALTER TABLE `bit_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_usuario`
--

DROP TABLE IF EXISTS `bit_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_usuario` (
  `idBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_usuario`
--

LOCK TABLES `bit_usuario` WRITE;
/*!40000 ALTER TABLE `bit_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `idBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `concepto` varchar(300) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'usuario agregado','root@localhost','2018-11-24 19:15:55','correo2@correos.com','usuario'),(2,'usuario agregado','root@localhost','2018-11-24 19:18:33','correos3@correos.com','usuario'),(3,'usuario agregado','root@localhost','2018-11-24 19:18:33','','usuario'),(4,'cliente agregado','root@localhost','2018-11-24 19:21:10','Alan','cliente'),(5,'usuario eliminado','root@localhost','2018-11-24 19:33:18','','usuario'),(6,'usuario actualizado','root@localhost','2018-11-24 19:33:18','correos3@correos.com','usuario'),(7,'cliente actualizado','root@localhost','2018-11-24 19:38:57','Alan','cliente'),(8,'cliente agregado','root@localhost','2018-11-24 19:46:14','Cliente: RaulMendez','cliente'),(9,'cliente actualizado','root@localhost','2018-11-24 19:49:11','Cliente: RonchoMendez id Cliente:3','cliente'),(10,'cliente actualizado','root@localhost','2018-11-24 19:49:42','Cliente: RolasMendez, id Cliente:3','cliente'),(11,'cliente actualizado','root@localhost','2018-11-24 19:50:18','Cliente: Rolas2 Mendez, id Cliente:3','cliente'),(12,'usuario agregado','root@localhost','2018-11-24 19:52:24','sincorreo@correo.com','usuario'),(13,'cliente agregado','root@localhost','2018-11-24 19:53:51','Cliente: PonchoPencho id Cliente:4','cliente'),(14,'cliente eliminado','root@localhost','2018-11-24 19:55:05','Cliente: Poncho Pencho, celular: 555','cliente'),(15,'usuario agregado','root@localhost','2018-11-24 20:03:06','correo: correofalso@gmail.com, Tipo Usuario2','usuario'),(16,'usuario actualizado','root@localhost','2018-11-24 20:04:35','correomasfalso@gmail.com Id Usuario: 5','usuario'),(17,'cliente agregado','root@localhost','2018-11-28 18:52:53','Cliente: jesusrodriguez ,id Cliente:4','cliente'),(18,'cliente agregado','root@localhost','2018-11-28 18:53:53','Cliente: jesusrodriguez ,id Cliente:6','cliente'),(19,'cliente agregado','root@localhost','2018-11-28 18:55:38','Cliente: atitalavera ,id Cliente:8','cliente'),(20,'cliente agregado','root@localhost','2018-11-28 18:59:34','Cliente: josebarrera ,id Cliente:9','cliente'),(21,'cliente agregado','root@localhost','2018-11-28 19:15:33','Cliente: JuanMoxXxoO ,id Cliente:10','cliente'),(22,'cliente agregado','root@localhost','2018-11-28 19:17:11','Cliente: OSIRISrOsAs ,id Cliente:12','cliente'),(23,'cliente agregado','root@localhost','2018-11-28 19:23:15','Cliente: RAQUELRAMIREZ ,id Cliente:13','cliente'),(24,'cliente agregado','root@localhost','2018-11-28 19:26:03','Cliente: JORGENITALES ,id Cliente:14','cliente'),(25,'prospecto agregado','root@localhost','2018-11-28 20:47:51','MARTIN','prospecto'),(26,'prospecto agregado','root@localhost','2018-11-28 20:56:35','ISELA','prospecto'),(27,'prospecto agregado','root@localhost','2018-11-28 21:04:37','ISELA','prospecto'),(28,'prospecto agregado','root@localhost','2018-11-28 21:06:14','ISELA','prospecto'),(29,'prospecto agregado','root@localhost','2018-11-28 21:07:13','ISELA','prospecto'),(30,'prospecto agregado','root@localhost','2018-11-28 21:08:02','ISELA','prospecto'),(31,'prospecto agregado','root@localhost','2018-11-28 21:10:03','ISELA','prospecto'),(32,'prospecto agregado','root@localhost','2018-11-28 21:13:35','ISELA','prospecto'),(33,'prospecto agregado','root@localhost','2018-11-28 21:14:32','ISELA','prospecto'),(34,'prospecto agregado','root@localhost','2018-11-28 21:24:37','ISELA','prospecto'),(35,'prospecto agregado','root@localhost','2018-11-28 21:31:20','PAULO','prospecto'),(36,'cliente eliminado','root@localhost','2018-11-28 23:20:26','Cliente: jesus rodriguez, celular: 123234345','cliente'),(37,'cliente eliminado','root@localhost','2018-11-28 23:30:13','Cliente: OSIRIS rOsAs, celular: 639123456','cliente'),(38,'cliente agregado','root@localhost','2018-11-28 23:31:07','Cliente: ATILANOGONZALEZ ,id Cliente:15','cliente'),(39,'cliente eliminado','root@localhost','2018-11-28 23:31:21','Cliente: ATILANO GONZALEZ, celular: 1235','cliente'),(40,'cliente actualizado','root@localhost','2018-11-29 00:11:48','Cliente: JUNACHO MARTINEZ, id Cliente:10','cliente'),(41,'cliente actualizado','root@localhost','2018-11-29 00:34:32','Cliente: JOSE BENITEZ, id Cliente:9','cliente'),(42,'cliente actualizado','root@localhost','2018-11-29 00:49:09','Cliente: JOSE JOSE BENITEZ, id Cliente:9','cliente'),(43,'cliente agregado','root@localhost','2018-11-29 00:53:47','Cliente: ISAACRODRIGUEZ ,id Cliente:16','cliente'),(44,'empleado agregado','root@localhost','2018-11-29 01:52:28','NOM','empleado'),(45,'cliente agregado','root@localhost','2018-11-29 01:57:56','Cliente: MARTINCARRASCO ,id Cliente:17','cliente'),(46,'empleado agregado','root@localhost','2018-11-29 02:04:20','ISRAEL','empleado'),(47,'empleado eliminado','root@localhost','2018-11-29 02:06:21','NOM','empleado'),(48,'empleado eliminado','root@localhost','2018-11-29 02:14:32','ISRAEL','empleado'),(49,'cliente actualizado','root@localhost','2018-11-29 09:27:25','Cliente: MARTIN CARRASCO, id Cliente:17','cliente'),(50,'cliente actualizado','root@localhost','2018-11-29 09:27:51','Cliente: MARTIN CARRASCO, id Cliente:17','cliente'),(51,'cliente eliminado','root@localhost','2018-11-29 09:28:04','Cliente: MARTIN CARRASCO, celular: ','cliente'),(52,'cliente agregado','root@localhost','2018-11-29 09:28:38','Cliente: DAVIDRIVERA ,id Cliente:18','cliente'),(53,'cliente agregado','root@localhost','2018-11-29 09:31:24','Cliente: OMARGAYTAN ,id Cliente:19','cliente'),(54,'cliente actualizado','root@localhost','2018-11-29 09:31:47','Cliente: DAVID RIVERA, id Cliente:18','cliente'),(55,'cliente eliminado','root@localhost','2018-11-29 09:31:56','Cliente: DAVID RIVERA, celular: 123234','cliente'),(56,'cliente agregado','root@localhost','2018-11-29 12:25:23','Cliente: JACINTOLOPEZ ,id Cliente:20','cliente'),(57,'cliente actualizado','root@localhost','2018-11-29 12:26:11','Cliente: JACINTO RUIZ, id Cliente:20','cliente'),(58,'cliente eliminado','root@localhost','2018-11-29 12:26:51','Cliente: JACINTO RUIZ, celular: 565432222','cliente'),(59,'material agregado','root@localhost','2018-11-29 17:23:59','Material de prueba 1','material'),(60,'material agregado','root@localhost','2018-11-29 17:26:34','Material de prueba 2','material'),(61,'material agregado','root@localhost','2018-11-29 17:28:28','Material de prueba 2','material'),(62,'material agregado','root@localhost','2018-11-29 17:29:47','PRUEBA DE MATERIAL 2','material'),(63,'material agregado','root@localhost','2018-11-29 17:38:41','PRUEBA DE MATERIAL 3','material'),(64,'material agregado','root@localhost','2018-11-29 17:41:28','prueba material 4','material'),(65,'material actualizado','root@localhost','2018-11-29 18:26:51','Prueba mod','material'),(66,'material actualizado','root@localhost','2018-11-29 18:32:43',' Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.','material'),(67,'material actualizado','root@localhost','2018-11-29 18:33:02',' Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.','material'),(68,'material actualizado','root@localhost','2018-11-29 18:33:25',' Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.','material'),(69,'material actualizado','root@localhost','2018-11-29 18:33:58','  Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación','material');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `ape_pat` varchar(20) NOT NULL,
  `ape_mat` varchar(20) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `cel` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`,`Usuario_idUsuario`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_Cliente_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Cliente_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Pedro','Perez','Peras','ave 1 calle 1','6192004987','correo1@correos.com',1),(2,'Alan','Lopez','Gonzales','Ave. 1 calle 3 # 1','6757654334','correo2@correos.com',2),(3,'Rolas2','Mendez','Mendoza','Ave 43 calle loco #5423','7890543234','correo3@correos.com',3),(4,'jesus','rodriguez','martinez','ave 2da','123234345','a@a.com',1),(8,'ati','talavera','talavera','ave 2da','123234345','c@a.com',1),(9,'JOSE JOSE','BENITEZ','SANCHEZ','CALLE','213442524','D@B.COM',2),(10,'JUNACHO','MARTINEZ','ALMANZA','AVE. 2DA','639123456','A@Q4.COM',2),(13,'RAQUEL','RAMIREZ','NOROÃ±A','AVE 2 SUR','63696369','a3@a.com',2),(14,'JORGE','NITALES','TOMAR','AVE 1 CALLE 2 # 3','6785675436','correofalso@correo.com',1),(16,'ISAAC','RODRIGUEZ','GARCIA','PASEO DE BALLEZA','1245','isaac@i.com',2),(19,'OMAR','GAYTAN','HOLGUIN','POR ACA','123234','a3d@w4.com',2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cliente_AFTER_INSERT` AFTER INSERT ON `cliente` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('cliente agregado',user(),now(),concat('Cliente: ',new.nombre, new.ape_pat, ' ,id Cliente:',new.idCliente),'cliente');
	insert into bit_cliente(movimiento,usuario,fecha,concepto)
	values('cliente agregado',user(),now(),concat('Cliente: ',new.nombre, new.ape_pat, ' ,id Cliente:',new.idCliente));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cliente_AFTER_UPDATE` AFTER UPDATE ON `cliente` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('cliente actualizado',user(),now(),concat('Cliente: ',new.nombre,' ', new.ape_pat, ', id Cliente:',new.idCliente),'cliente');
    insert into bit_cliente(movimiento,usuario,fecha,concepto)
	values('cliente actualizado',user(),now(),concat('Cliente: ',new.nombre,' ', new.ape_pat, ', id Cliente:',new.idCliente));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cliente_AFTER_DELETE` AFTER DELETE ON `cliente` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('cliente eliminado',user(),now(),concat('Cliente: ',old.nombre,' ',old.ape_pat, ', celular: ', old.cel),'cliente');
	insert into bit_cliente(movimiento,usuario,fecha,concepto)
	values('cliente eliminado',user(),now(),concat('Cliente: ',old.nombre,' ',old.ape_pat, ', celular: ', old.cel));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `cliente_trabajo`
--

DROP TABLE IF EXISTS `cliente_trabajo`;
/*!50001 DROP VIEW IF EXISTS `cliente_trabajo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cliente_trabajo` AS SELECT 
 1 AS `nombre del cliente`,
 1 AS `cel del cliente`,
 1 AS `dirección de trabajo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion` (
  `idCotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) NOT NULL,
  `costo_min` double DEFAULT NULL,
  `costo_max` double DEFAULT NULL,
  `distancia` int(11) DEFAULT NULL,
  `tiempo_servicio` int(11) DEFAULT NULL,
  `TipoPago_idTipoPago` int(10) unsigned NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCotizacion`),
  KEY `fk_Cotizacion_TipoPago1_idx` (`TipoPago_idTipoPago`),
  KEY `fk_Cotizacion_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Cotizacion_Cliente2` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cotizacion_TipoPago2` FOREIGN KEY (`TipoPago_idTipoPago`) REFERENCES `tipopago` (`idTipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES (1,'INSTALACION ELECTRICA',NULL,NULL,NULL,10,1,1),(2,'MANTENIMIENTO ELECTRICO',NULL,NULL,NULL,3,1,1),(3,'INSTALACION ELECTRICA',NULL,NULL,NULL,1,2,2),(4,'MANTENIMIENTO ELECTRICO',NULL,NULL,NULL,2,1,2);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cotizacion_BEFORE_INSERT` BEFORE INSERT ON `cotizacion` FOR EACH ROW

BEGIN

	

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `cotizacion_breve`
--

DROP TABLE IF EXISTS `cotizacion_breve`;
/*!50001 DROP VIEW IF EXISTS `cotizacion_breve`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cotizacion_breve` AS SELECT 
 1 AS `ID`,
 1 AS `CONCEPTO`,
 1 AS `COSTO_MINIMO`,
 1 AS `COSTO_MAXIMO`,
 1 AS `DISTANCIA`,
 1 AS `TIEMPO SERVICIO`,
 1 AS `TIPO PAGO`,
 1 AS `CLIENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cotizacion_detalle`
--

DROP TABLE IF EXISTS `cotizacion_detalle`;
/*!50001 DROP VIEW IF EXISTS `cotizacion_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cotizacion_detalle` AS SELECT 
 1 AS `ID`,
 1 AS `CANTIDAD`,
 1 AS `UNIDAD`,
 1 AS `CODIGO`,
 1 AS `DESCRIPCION`,
 1 AS `COSTO UNITARIO`,
 1 AS `SUBTOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cotizacion_has_material`
--

DROP TABLE IF EXISTS `cotizacion_has_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion_has_material` (
  `Cotizacion_idCotizacion` int(11) NOT NULL,
  `Material_idMaterial` int(11) NOT NULL,
  `cantidad_material` int(5) unsigned NOT NULL DEFAULT '0',
  `costo_total_material` double unsigned DEFAULT '0',
  PRIMARY KEY (`Cotizacion_idCotizacion`,`Material_idMaterial`),
  KEY `fk_Cotizacion_has_Material1_Material1_idx` (`Material_idMaterial`),
  KEY `fk_Cotizacion_has_Material1_Cotizacion1_idx` (`Cotizacion_idCotizacion`),
  CONSTRAINT `fk_Cotizacion_has_Material1_Cotizacion1` FOREIGN KEY (`Cotizacion_idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cotizacion_has_Material1_Material1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_has_material`
--

LOCK TABLES `cotizacion_has_material` WRITE;
/*!40000 ALTER TABLE `cotizacion_has_material` DISABLE KEYS */;
INSERT INTO `cotizacion_has_material` VALUES (1,1,29,1852.81),(1,2,10,114.1),(1,3,34,753.7800000000001),(1,4,2,436.06),(2,1,10,638.9),(2,2,10,114.1),(2,3,2,44.34),(2,4,3,654.09);
/*!40000 ALTER TABLE `cotizacion_has_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cotizacion_has_material_BEFORE_INSERT` BEFORE INSERT ON `cotizacion_has_material` FOR EACH ROW
BEGIN
declare costoU double;
/*obtener costo unitario del material*/
set costoU = (select precio from material where idMaterial = new.Material_idMaterial);
/*set costo total cantidad * costo*/
set new.costo_total_material = new.cantidad_material*costoU;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`cotizacion_has_material_BEFORE_UPDATE` BEFORE UPDATE ON `cotizacion_has_material` FOR EACH ROW
BEGIN

declare costoU double;
/*obtener costo unitario del material*/
set costoU = (select precio from material where idMaterial = new.Material_idMaterial);
/*set costo total cantidad * costo*/
set new.costo_total_material = new.cantidad_material*costoU;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `cotizacion_tipopago`
--

DROP TABLE IF EXISTS `cotizacion_tipopago`;
/*!50001 DROP VIEW IF EXISTS `cotizacion_tipopago`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cotizacion_tipopago` AS SELECT 
 1 AS `Cotizacion`,
 1 AS `Tipo de Pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cotizaciones_organizadas`
--

DROP TABLE IF EXISTS `cotizaciones_organizadas`;
/*!50001 DROP VIEW IF EXISTS `cotizaciones_organizadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cotizaciones_organizadas` AS SELECT 
 1 AS `idCotizacion`,
 1 AS `sum(costo_max)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ape-pat` varchar(45) NOT NULL,
  `ape-mat` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idEmpleado`,`Usuario_idUsuario`),
  KEY `fk_Empleado_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Empleado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`empleado_AFTER_INSERT` AFTER INSERT ON `empleado` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado agregado',user(),now(),new.nombre,'empleado');
	insert into bit_empleado(movimiento,usuario,fecha,concepto)
	values('empleado agregado',user(),now(),new.nombre);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`empleado_AFTER_UPDATE` AFTER UPDATE ON `empleado` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado actualizado',user(),now(),new.nombre,'empleado');
    insert into bit_empleado(movimiento,usuario,fecha,concepto)
	values('empleado actualizado',user(),now(),new.nombre);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`empleado_AFTER_DELETE` AFTER DELETE ON `empleado` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado eliminado',user(),now(),old.nombre,'empleado');
	insert into bit_empleado(movimiento,usuario,fecha,concepto)
	values('empleado eliminado',user(),now(),old.nombre);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `caracteristicas` varchar(45) NOT NULL,
  `Trabajo_idtrabajo` int(11) NOT NULL,
  PRIMARY KEY (`idEquipo`,`Trabajo_idtrabajo`),
  KEY `fk_Equipo_Trabajo1_idx` (`Trabajo_idtrabajo`),
  CONSTRAINT `fk_Equipo_Trabajo` FOREIGN KEY (`Trabajo_idtrabajo`) REFERENCES `trabajo` (`idtrabajo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`equipo_AFTER_INSERT` AFTER INSERT ON `equipo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo nuevo',user(),now(),new.descripcion,'equipo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`equipo_AFTER_UPDATE` AFTER UPDATE ON `equipo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo actualizado',user(),now(),new.descripcion,'equipo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`equipo_AFTER_DELETE` AFTER DELETE ON `equipo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo eliminado',user(),now(),old.descripcion,'equipo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `equipo_trabajo`
--

DROP TABLE IF EXISTS `equipo_trabajo`;
/*!50001 DROP VIEW IF EXISTS `equipo_trabajo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `equipo_trabajo` AS SELECT 
 1 AS `descripcion de equipo`,
 1 AS `id trabajo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipoinstalado`
--

DROP TABLE IF EXISTS `equipoinstalado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipoinstalado` (
  `idEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `caracteristicas` varchar(45) NOT NULL,
  `Trabajo_idtrabajo` int(11) NOT NULL,
  PRIMARY KEY (`idEquipo`,`Trabajo_idtrabajo`),
  KEY `fk_Equipo_Trabajo1_idx` (`Trabajo_idtrabajo`),
  CONSTRAINT `fk_Equipo_Trabajo1` FOREIGN KEY (`Trabajo_idtrabajo`) REFERENCES `trabajo` (`idtrabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipoinstalado`
--

LOCK TABLES `equipoinstalado` WRITE;
/*!40000 ALTER TABLE `equipoinstalado` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipoinstalado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `precio` double NOT NULL,
  `UnidadMaterial_idUnidadMaterial` int(11) NOT NULL,
  PRIMARY KEY (`idMaterial`,`UnidadMaterial_idUnidadMaterial`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_Material_UnidadMaterial1_idx` (`UnidadMaterial_idUnidadMaterial`),
  CONSTRAINT `fk_Material_UnidadMaterial1` FOREIGN KEY (`UnidadMaterial_idUnidadMaterial`) REFERENCES `unidadmaterial` (`idUnidadMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'  Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación','COD2',63.89,1),(2,'Suministro e instalación de conector recto liquatite 21mm ó 3/4\". incluye suministro de materiales,soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,11.41,1),(3,'Suministro e instalación de tuberia flexible tipo liquatite 21mm ó 3/4\". incluye suministro de materiales,soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,22.17,2),(4,'Suministro e instalación de tuberia conduit galvanizada pared delgada de 54mm ó2\", incluye suministrode materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,218.03,1),(6,'Material de prueba 1',NULL,300,1),(7,'Material de prueba 2','MP1',200,1),(8,'Material de prueba 2','MP2',200,1),(9,'PRUEBA DE MATERIAL 2','PM2',200,1),(10,'PRUEBA DE MATERIAL 3','PM3',400,1),(11,'Prueba mod','asd',340,1);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`material_AFTER_INSERT` AFTER INSERT ON `material` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material agregado',user(),now(),new.descripcion,'material');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`material_AFTER_UPDATE` AFTER UPDATE ON `material` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material actualizado',user(),now(),new.descripcion,'material');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`material_AFTER_DELETE` AFTER DELETE ON `material` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material eliminado',user(),now(),old.descripcion,'material');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `prospecto`
--

DROP TABLE IF EXISTS `prospecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospecto` (
  `idProspecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ape_pat` varchar(45) NOT NULL,
  `ape_mat` varchar(45) NOT NULL,
  `cel` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`idProspecto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospecto`
--

LOCK TABLES `prospecto` WRITE;
/*!40000 ALTER TABLE `prospecto` DISABLE KEYS */;
INSERT INTO `prospecto` VALUES (1,'MARTIN','CARRASCO','JAQUEZ','12344','m@w.com'),(2,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(3,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(4,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(5,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(6,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(7,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(8,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(9,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(10,'ISELA','PRIETO','PARADA','123243','a6@a.com'),(11,'PAULO','COHELO','PARADA','123243','a6@a.com');
/*!40000 ALTER TABLE `prospecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`prospecto_AFTER_INSERT` AFTER INSERT ON `prospecto` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('prospecto agregado',user(),now(),new.nombre,'prospecto');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`prospecto_AFTER_UPDATE` AFTER UPDATE ON `prospecto` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('prospecto actualizado',user(),now(),new.nombre,'prospecto');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `idTipoPago` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
INSERT INTO `tipopago` VALUES (1,'Efectivo'),(2,'Credito');
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotrabajo`
--

DROP TABLE IF EXISTS `tipotrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotrabajo` (
  `idTipoTrabajo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoTrabajo`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotrabajo`
--

LOCK TABLES `tipotrabajo` WRITE;
/*!40000 ALTER TABLE `tipotrabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipotrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Administrador'),(2,'Cliente');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajo`
--

DROP TABLE IF EXISTS `trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajo` (
  `idtrabajo` int(11) NOT NULL AUTO_INCREMENT,
  `dirección` varchar(45) NOT NULL,
  `fecha-inicio` varchar(45) NOT NULL,
  `fecha-fin` varchar(45) NOT NULL,
  `fecha-mantenimiento` varchar(45) NOT NULL,
  `TipoTrabajo_idTipoTrabajo` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idtrabajo`,`TipoTrabajo_idTipoTrabajo`,`Cliente_idCliente`),
  KEY `fk_Trabajo_TipoTrabajo1_idx` (`TipoTrabajo_idTipoTrabajo`),
  KEY `fk_Trabajo_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Trabajo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Trabajo_TipoTrabajo1` FOREIGN KEY (`TipoTrabajo_idTipoTrabajo`) REFERENCES `tipotrabajo` (`idTipoTrabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajo`
--

LOCK TABLES `trabajo` WRITE;
/*!40000 ALTER TABLE `trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`trabajo_AFTER_INSERT` AFTER INSERT ON `trabajo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo nuevo',user(),now(),new.dirección,'trabajo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`trabajo_AFTER_UPDATE` AFTER UPDATE ON `trabajo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo renovado',user(),now(),new.dirección,'trabajo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`trabajo_AFTER_DELETE` AFTER DELETE ON `trabajo` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo cancelado',user(),now(),old.dirección,'trabajo');

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `unidadmaterial`
--

DROP TABLE IF EXISTS `unidadmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidadmaterial` (
  `idUnidadMaterial` int(11) NOT NULL AUTO_INCREMENT,
  `unidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idUnidadMaterial`),
  UNIQUE KEY `unidad_UNIQUE` (`unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadmaterial`
--

LOCK TABLES `unidadmaterial` WRITE;
/*!40000 ALTER TABLE `unidadmaterial` DISABLE KEYS */;
INSERT INTO `unidadmaterial` VALUES (2,'Ml'),(1,'PIEZA');
/*!40000 ALTER TABLE `unidadmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `TipoUsuario_idTipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`TipoUsuario_idTipoUsuario`),
  KEY `fk_Usuario_TipoUsuario1_idx` (`TipoUsuario_idTipoUsuario`),
  CONSTRAINT `fk_Usuario_TipoUsuario1` FOREIGN KEY (`TipoUsuario_idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'correo1@correos.com','1234',2),(2,'correo2@correos.com','1234',2),(3,'correos3@correos.com','1234',2),(4,'sincorreo@correo.com','12345',2),(5,'correomasfalso@gmail.com','12345678',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`usuario_AFTER_INSERT` AFTER INSERT ON `usuario` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario agregado',user(),now(),
    concat('correo: ',new.correo,', Tipo Usuario', new.TipoUsuario_idTipoUsuario),'usuario');
	insert into bit_usuario(movimiento,usuario,fecha,concepto)
	values('usuario agregado',user(),now(),
    concat('correo: ',new.correo,', Tipo Usuario', new.TipoUsuario_idTipoUsuario));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`usuario_AFTER_UPDATE` AFTER UPDATE ON `usuario` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario actualizado',user(),now(),concat(new.correo,' Id Usuario: ', new.idUsuario),'usuario');
	insert into bit_usuario(movimiento,usuario,fecha,concepto)
	values('usuario actualizado',user(),now(),concat(new.correo,' Id Usuario: ', new.idUsuario));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `electricdb`.`usuario_AFTER_DELETE` AFTER DELETE ON `usuario` FOR EACH ROW

BEGIN

	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario eliminado',user(),now(),old.correo,'usuario');
    insert into bit_usuario(movimiento,usuario,fecha,concepto)
	values('usuario eliminado',user(),now(),old.correo);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `usuario_empleado`
--

DROP TABLE IF EXISTS `usuario_empleado`;
/*!50001 DROP VIEW IF EXISTS `usuario_empleado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `usuario_empleado` AS SELECT 
 1 AS `empleado`,
 1 AS `usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usuario_tipo`
--

DROP TABLE IF EXISTS `usuario_tipo`;
/*!50001 DROP VIEW IF EXISTS `usuario_tipo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `usuario_tipo` AS SELECT 
 1 AS `idUsuario`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'electricdb'
--

--
-- Dumping routines for database 'electricdb'
--
/*!50003 DROP FUNCTION IF EXISTS `contar_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_usuarios`() RETURNS int(11)
BEGIN


	declare conta int;

	declare userid text;

	declare fin_cursor int default false;

                  declare cursor_usuarios cursor for select idUsuario from usuario;


             
    declare continue handler for not found set fin_cursor = true;


             
    set conta = 0;

                 open cursor_usuarios;


	ciclo_cursor: loop

	
    fetch cursor_usuarios into userid;

    
		if fin_cursor then

			leave ciclo_cursor;

		else
 
			set conta = conta + 1;																end if;

	end loop;

	close cursor_usuarios;

RETURN conta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `costos_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `costos_cotizacion`() RETURNS int(11)
BEGIN

declare suma int;

	select sum(costo_max) into suma from cotizacion as `costos cotizacion`;

RETURN suma;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `costo_maximo_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `costo_maximo_cotizacion`() RETURNS int(11)
BEGIN

declare suma int;

	select sum(costo_max) into suma from cotizacion as `costos cotizacion`;

RETURN suma;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `total_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `total_cotizacion`(idCotizacion int) RETURNS int(11)
BEGIN
declare total double;
set total = (select sum(costo_total_material) from cotizacion_has_material);
RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_cliente`(in nom varchar(30),in a_p varchar(20),
in a_m varchar(20),in dir varchar(45),in celular varchar(10),in correoCliente varchar(30),in usuar int)
BEGIN

	insert into cliente (nombre,ape_pat,ape_mat,direccion,cel,correo,Usuario_idUsuario)
	values(upper(nom),upper(a_p),upper(a_m),upper(dir),celular,correoCliente,usuar);
	



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_cotizacion`(
in Concepto_Cotizacion varchar(45),in costo_minimo double, 
in costo_maximo double,in distancia_trabajo int,in tiempoServicio int,in tipoPago int,in idCliente int)
BEGIN

	insert into cotizacion (concepto,costo_min,costo_max,distancia,tiempo_servicio,TipoPago_idTipoPago,Cliente_idCliente)
    values(Concepto_Cotizacion,costo_minimo,costo_maximo,distancia_trabajo ,tiempoServicio,tipoPago,idCliente);
	
    UPDATE cotizacion SET concepto = UPPER(concepto);    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_empleado`(in nomb varchar(45),a_p varchar(45),a_m varchar(45),tel varchar(45),
dir varchar(45),correo varchar(45),rfc varchar(45),usuar int)
BEGIN

	insert into `electricdb`.`empleado` (`nombre`, `ape-pat`, `ape-mat`, `telefono`, `direccion`, `email`, `rfc`, `Usuario_idUsuario`) 
    values (upper(nomb),upper(a_p),upper(a_m),tel,upper(dir),correo,rfc,usuar);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_equipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_equipo`(in descrip varchar(45),foto varchar(45),
carac varchar(45),trab int, trabit int)
BEGIN

	insert into equipo (descripcion,foto,caracteristicas,Trabajo_idTrabajo,Trabajo_TipoTrabajo_idTipoTrabajo)
	values(descrip,foto,carac,trab,trabit);
	
    UPDATE equipo SET descripcion = UPPER(descripcion);
    UPDATE equipo SET caracteristicas = UPPER(caracteristicas);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_material` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_material`(in descrip varchar(300),in cod varchar(45),in prec double,in uni_mat int)
BEGIN

	insert into material (descripcion,codigo,precio,UnidadMaterial_idUnidadMaterial)
    values(descrip,upper(cod),prec,uni_mat);
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_prospecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_prospecto`(in nom varchar(45),a_p varchar(45),a_m varchar(45),cel varchar(45),
correo varchar(45))
BEGIN

	INSERT INTO prospecto (nombre,ape_pat,ape_mat,cel,correo) 
    values (upper(nom),upper(a_p),upper(a_m),cel,correo);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_usuario`(IN correoUsuario varchar(45), in passUsuario varchar(45), in TipoUsuario int)
BEGIN

INSERT INTO `electricdb`.`usuario` (`correo`, `pass`, `TipoUsuario_idTipoUsuario`) 
VALUES ( correoUsuario, passUsuario, TipoUsuario);
	insert into usuario (correo,pass,TipoUsuario_idTipoUsuario)values(correo, pass, TipoUsuario);
	UPDATE usuario SET correo = UPPER(correo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_cotizacion_breve` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_cotizacion_breve`(IN `id_cotizacion` INT)
BEGIN

	select * from `cotizacion_breve` where ID = id_cotizacion;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultar_cotizacion_detalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_cotizacion_detalle`(IN `id_cotizacion` INT)
BEGIN

	select * from `cotizacion_detalle` where ID = id_cotizacion;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cliente`(in id int)
BEGIN
	delete from cliente where idCliente = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cotizacion`(in idcot int)
BEGIN

	delete from cotizacion where idCotizacion=idcot;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_empleado`(in idemp int)
BEGIN

	delete from empleado where idEmpleado = idemp;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_equipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_equipo`(in ideq int)
BEGIN

	delete from equipo where idEquipo = ideq;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_material` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_material`(in idmat int)
BEGIN

	delete from material where idMaterial = idmat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_prospecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_prospecto`(in idpros int)
BEGIN

	delete from pospecto where idProspecto = idpros;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario`(in iduser int)
BEGIN

	delete from usuario where idUsuario = iduser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modficar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modficar_usuario`(in idu int,
cor varchar(45),pass varchar(45),tu_idtu int)
BEGIN

	update usuario set correo=cor, pass=pass,TipoUsuario_idTipoUsuario=tu_idtu
    where idUsuario = idu;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cliente`(in idc int,
nom varchar(30),a_p varchar(20),a_m varchar(20),
dir varchar(45),cel varchar(10),cor varchar(30),us_idu int)
BEGIN

	update cliente set nombre=upper(nom), ape_pat=upper(a_p), 
    ape_mat=upper(a_m),direccion=upper(dir),correo=upper(cor),
    Usuario_idUsuario=us_idu where idCliente=idc;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_cotizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cotizacion`(in idc int,
c_mi double,c_ma double,dis int,t_s int,t_idtp int,
c_idc int)
BEGIN

	update cotizacion set costo_min=c_mi,costo_max=c_ma,
    distancia=dis,tiempo_servicio=t_s, TipoPago_idTipoPago=t_idtp,Cliente_idCliente=c_idc
    where idCotizacion=idc;
	UPDATE cotizacion SET concepto = UPPER(concepto);    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_empleado`(in ide int,
nom varchar(45),a_p varchar(45),a_m varchar(45),
tel varchar(45),dir varchar(45),em varchar(45),
rfc varchar(45),u_idu int)
BEGIN

	update empleado set nombre=upper(nom),`ape-pat`=upper(a_p),
    `ape-mat`=upper(a_m),telefono=tel,direccion=upper(dir),email=em,
    rfc=upper(rfc),Usuario_idUsuario=u_idu
    where idEmpleado=ide;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_equipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_equipo`(in ide int,
des varchar(45),fot varchar(45),carac varchar(45),
t_idt int, t_tt_idtt int)
BEGIN

	update equipo set descripcion=des,foto=fot,
    caracteristicas=carac,Trabajo_idTrabajo=t_idt,
    Trabajo_TipoTrabajo_idTipoTrabajo=t_tt_idtt
    where idEquipo=ide;
	UPDATE equipo SET descripcion = UPPER(descripcion);
    UPDATE equipo SET caracteristicas = UPPER(caracteristicas);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_material` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_material`(in idm int, in
des varchar(300),in cod varchar(45),in prec double,in idunmat int)
BEGIN

	update material set descripcion=des, codigo = cod,
    precio=prec, UnidadMaterial_idUnidadMaterial=idunmat where idMaterial=idm;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_prospecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_prospecto`(in idp int,
nom varchar(45),a_p varchar(45),a_m varchar(45),
cel varchar(45),corr varchar(45))
BEGIN

	update prospecto set nombre=upper(nom),ape_pat=upper(a_p),
    ape_mat=upper(a_m),cel=cel,correo=corr
    where idProspecto=idp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modificar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_usuario`(in idu int,
cor varchar(45),pass varchar(45),tu_idtu int)
BEGIN

	update usuario set correo=cor, pass=pass,TipoUsuario_idTipoUsuario=tu_idtu
    where idUsuario = idu;
	UPDATE usuario SET correo = UPPER(correo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cliente_trabajo`
--

/*!50001 DROP VIEW IF EXISTS `cliente_trabajo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_trabajo` AS select `a`.`nombre` AS `nombre del cliente`,`a`.`cel` AS `cel del cliente`,`b`.`dirección` AS `dirección de trabajo` from (`cliente` `a` join `trabajo` `b` on((`a`.`idCliente` = `b`.`Cliente_idCliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cotizacion_breve`
--

/*!50001 DROP VIEW IF EXISTS `cotizacion_breve`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cotizacion_breve` AS select `cotizacion`.`idCotizacion` AS `ID`,`cotizacion`.`concepto` AS `CONCEPTO`,`cotizacion`.`costo_min` AS `COSTO_MINIMO`,`cotizacion`.`costo_max` AS `COSTO_MAXIMO`,`cotizacion`.`distancia` AS `DISTANCIA`,`cotizacion`.`tiempo_servicio` AS `TIEMPO SERVICIO`,`tipopago`.`descripcion` AS `TIPO PAGO`,concat(`cliente`.`nombre`,' ',`cliente`.`ape_pat`,' ',`cliente`.`ape_mat`) AS `CLIENTE` from ((`cotizacion` join `tipopago` on((`cotizacion`.`TipoPago_idTipoPago` = `tipopago`.`idTipoPago`))) join `cliente` on((`cotizacion`.`Cliente_idCliente` = `cliente`.`idCliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cotizacion_detalle`
--

/*!50001 DROP VIEW IF EXISTS `cotizacion_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cotizacion_detalle` AS select `cotizacion_has_material`.`Cotizacion_idCotizacion` AS `ID`,`cotizacion_has_material`.`cantidad_material` AS `CANTIDAD`,`unidadmaterial`.`unidad` AS `UNIDAD`,`material`.`codigo` AS `CODIGO`,`material`.`descripcion` AS `DESCRIPCION`,(`cotizacion_has_material`.`costo_total_material` / `cotizacion_has_material`.`cantidad_material`) AS `COSTO UNITARIO`,`cotizacion_has_material`.`costo_total_material` AS `SUBTOTAL` from ((`cotizacion_has_material` join `material` on((`cotizacion_has_material`.`Material_idMaterial` = `material`.`idMaterial`))) join `unidadmaterial` on((`material`.`UnidadMaterial_idUnidadMaterial` = `unidadmaterial`.`idUnidadMaterial`))) group by `cotizacion_has_material`.`Material_idMaterial` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cotizacion_tipopago`
--

/*!50001 DROP VIEW IF EXISTS `cotizacion_tipopago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cotizacion_tipopago` AS select `a`.`idCotizacion` AS `Cotizacion`,`b`.`descripcion` AS `Tipo de Pago` from (`cotizacion` `a` join `tipopago` `b` on((`a`.`TipoPago_idTipoPago` = `b`.`idTipoPago`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cotizaciones_organizadas`
--

/*!50001 DROP VIEW IF EXISTS `cotizaciones_organizadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cotizaciones_organizadas` AS select `cotizacion`.`idCotizacion` AS `idCotizacion`,sum(`cotizacion`.`costo_max`) AS `sum(costo_max)` from `cotizacion` group by `cotizacion`.`idCotizacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `equipo_trabajo`
--

/*!50001 DROP VIEW IF EXISTS `equipo_trabajo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `equipo_trabajo` AS select `a`.`descripcion` AS `descripcion de equipo`,`b`.`idtrabajo` AS `id trabajo` from (`equipo` `a` join `trabajo` `b` on((`a`.`Trabajo_idtrabajo` = `b`.`idtrabajo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_empleado`
--

/*!50001 DROP VIEW IF EXISTS `usuario_empleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_empleado` AS select `a`.`nombre` AS `empleado`,`b`.`correo` AS `usuario` from (`empleado` `a` join `usuario` `b` on((`a`.`Usuario_idUsuario` = `b`.`idUsuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usuario_tipo`
--

/*!50001 DROP VIEW IF EXISTS `usuario_tipo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuario_tipo` AS select `a`.`idUsuario` AS `idUsuario`,`b`.`descripcion` AS `descripcion` from (`usuario` `a` join `tipousuario` `b`) where (`a`.`TipoUsuario_idTipoUsuario` = `b`.`idTipoUsuario`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-29 18:35:25
