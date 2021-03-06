CREATE DATABASE  IF NOT EXISTS `electricdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `electricdb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electricdb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_cliente`
--

LOCK TABLES `bit_cliente` WRITE;
/*!40000 ALTER TABLE `bit_cliente` DISABLE KEYS */;
INSERT INTO `bit_cliente` VALUES (1,'cliente actualizado','root@localhost','2018-11-26 17:55:37','Cliente: DAVID ENRIQUEZ, id Cliente:6'),(2,'cliente eliminado','root@localhost','2018-11-26 17:58:22','Cliente: DAVID ENRIQUEZ, celular: 6142250940'),(3,'cliente agregado','root@localhost','2018-11-26 17:59:50','Cliente: pedroortega ,id Cliente:6');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_empleado`
--

LOCK TABLES `bit_empleado` WRITE;
/*!40000 ALTER TABLE `bit_empleado` DISABLE KEYS */;
INSERT INTO `bit_empleado` VALUES (1,'empleado agregado','root@localhost','2018-11-26 18:47:23','DAVID');
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
  `concepto` varchar(45) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'usuario agregado','root@localhost','2018-11-24 19:15:55','correo2@correos.com','usuario'),(2,'usuario agregado','root@localhost','2018-11-24 19:18:33','correos3@correos.com','usuario'),(3,'usuario agregado','root@localhost','2018-11-24 19:18:33','','usuario'),(4,'cliente agregado','root@localhost','2018-11-24 19:21:10','Alan','cliente'),(5,'usuario eliminado','root@localhost','2018-11-24 19:33:18','','usuario'),(6,'usuario actualizado','root@localhost','2018-11-24 19:33:18','correos3@correos.com','usuario'),(7,'cliente actualizado','root@localhost','2018-11-24 19:38:57','Alan','cliente'),(8,'cliente agregado','root@localhost','2018-11-24 19:46:14','Cliente: RaulMendez','cliente'),(9,'cliente actualizado','root@localhost','2018-11-24 19:49:11','Cliente: RonchoMendez id Cliente:3','cliente'),(10,'cliente actualizado','root@localhost','2018-11-24 19:49:42','Cliente: RolasMendez, id Cliente:3','cliente'),(11,'cliente actualizado','root@localhost','2018-11-24 19:50:18','Cliente: Rolas2 Mendez, id Cliente:3','cliente'),(12,'usuario agregado','root@localhost','2018-11-24 19:52:24','sincorreo@correo.com','usuario'),(13,'cliente agregado','root@localhost','2018-11-24 19:53:51','Cliente: PonchoPencho id Cliente:4','cliente'),(14,'cliente eliminado','root@localhost','2018-11-24 19:55:05','Cliente: Poncho Pencho, celular: 555','cliente'),(15,'usuario agregado','root@localhost','2018-11-24 20:03:06','correo: correofalso@gmail.com, Tipo Usuario2','usuario'),(16,'usuario actualizado','root@localhost','2018-11-24 20:04:35','correomasfalso@gmail.com Id Usuario: 5','usuario');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Pedro','Perez','Peras','ave 1 calle 1','6192004987','correo1@correos.com',1),(2,'Alan','Lopez','Gonzales','Ave. 1 calle 3 # 1','6757654334','correo2@correos.com',2),(3,'Rolas2','Mendez','Mendoza','Ave 43 calle loco #5423','7890543234','correo3@correos.com',3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES (1,'INSTALACION ELECTRICA',NULL,NULL,NULL,10,1,1),(2,'MANTENIMIENTO ELECTRICO',NULL,NULL,NULL,3,1,1),(3,'INSTALACION ELECTRICA',NULL,NULL,NULL,1,2,2),(4,'MANTENIMIENTO ELECTRICO',NULL,NULL,NULL,2,1,2);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Suministro e instalación de tuberia conduit galvanizada pared delgada de 21mm ó 3/4\", incluyesuministro de materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,63.89,1),(2,'Suministro e instalación de conector recto liquatite 21mm ó 3/4\". incluye suministro de materiales,soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,11.41,1),(3,'Suministro e instalación de tuberia flexible tipo liquatite 21mm ó 3/4\". incluye suministro de materiales,soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,22.17,2),(4,'Suministro e instalación de tuberia conduit galvanizada pared delgada de 54mm ó2\", incluye suministrode materiales, soporteria, mano de obra y todo lo necesario para su correcta instalación.',NULL,218.03,1);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

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
  `doc` varchar(45) NOT NULL,
  PRIMARY KEY (`idProspecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospecto`
--

LOCK TABLES `prospecto` WRITE;
/*!40000 ALTER TABLE `prospecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospecto` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'correo1@correos.com','1234',2),(2,'correo2@correos.com','1234',2),(3,'correos3@correos.com','1234',2),(4,'sincorreo@correo.com','12345',2),(5,'correomasfalso@gmail.com','12345678',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-11-28 12:19:06
