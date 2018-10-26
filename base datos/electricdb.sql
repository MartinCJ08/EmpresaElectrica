-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-10-2018 a las 02:13:32
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `electricdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE IF NOT EXISTS `bitacora` (
  `idbitacora` int(11) NOT NULL AUTO_INCREMENT,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idbitacora`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `ape_pat` varchar(20) NOT NULL,
  `ape-mat` varchar(20) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `cel` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `Cotizacion_idCotizacion` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`,`Cotizacion_idCotizacion`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`),
  UNIQUE KEY `cel_UNIQUE` (`cel`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_Cliente_Cotizacion1_idx` (`Cotizacion_idCotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `cliente`
--
DROP TRIGGER IF EXISTS `cliente_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_DELETE` AFTER DELETE ON `cliente` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('cliente borrado',user(),now(),old.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cliente_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_INSERT` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('cliente creado',user(),now(),new.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cliente_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_UPDATE` AFTER UPDATE ON `cliente` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('cliente actualizado',user(),now(),new.nombre);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_has_equipo`
--

DROP TABLE IF EXISTS `cliente_has_equipo`;
CREATE TABLE IF NOT EXISTS `cliente_has_equipo` (
  `Cliente_idCliente` int(11) NOT NULL,
  `Equipo_idEquipo` int(11) NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`Equipo_idEquipo`),
  KEY `fk_Cliente_has_Equipo_Equipo1_idx` (`Equipo_idEquipo`),
  KEY `fk_Cliente_has_Equipo_Cliente_idx` (`Cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `idCotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `costo_min` double NOT NULL,
  `costo_max` double NOT NULL,
  `distancia` int(11) NOT NULL,
  `tiempo_servicio` int(11) NOT NULL,
  `TipoPago_idTipoPago` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idCotizacion`,`TipoPago_idTipoPago`),
  KEY `fk_Cotizacion_TipoPago1_idx` (`TipoPago_idTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_has_material`
--

DROP TABLE IF EXISTS `cotizacion_has_material`;
CREATE TABLE IF NOT EXISTS `cotizacion_has_material` (
  `Cotizacion_idCotizacion` int(11) NOT NULL,
  `Material_idMaterial` int(11) NOT NULL,
  PRIMARY KEY (`Cotizacion_idCotizacion`,`Material_idMaterial`),
  KEY `fk_Cotizacion_has_Material1_Material1_idx` (`Material_idMaterial`),
  KEY `fk_Cotizacion_has_Material1_Cotizacion1_idx` (`Cotizacion_idCotizacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

DROP TABLE IF EXISTS `equipo`;
CREATE TABLE IF NOT EXISTS `equipo` (
  `idEquipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `caracteristicas` varchar(45) NOT NULL,
  PRIMARY KEY (`idEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `equipo`
--
DROP TRIGGER IF EXISTS `equipo_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_DELETE` AFTER DELETE ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('equipo eliminado',user(),now(),old.descripcion);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `equipo_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_INSERT` AFTER INSERT ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('equipo nuevo',user(),now(),new.descripcion);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `equipo_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_UPDATE` AFTER UPDATE ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('equipo actualizado',user(),now(),new.descripcion);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `idMaterial` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `material`
--
DROP TRIGGER IF EXISTS `material_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `material_AFTER_DELETE` AFTER DELETE ON `material` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('material borrado',user(),now(),old.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `material_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `material_AFTER_INSERT` AFTER INSERT ON `material` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('material añadido',user(),now(),new.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `material_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `material_AFTER_UPDATE` AFTER UPDATE ON `material` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('material actualizado',user(),now(),new.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `material_BEFORE_UPDATE`;
DELIMITER $$
CREATE TRIGGER `material_BEFORE_UPDATE` BEFORE UPDATE ON `material` FOR EACH ROW BEGIN
	IF NEW.precio < 0 THEN 
		SET NEW.precio = 0; 
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospecto`
--

DROP TABLE IF EXISTS `prospecto`;
CREATE TABLE IF NOT EXISTS `prospecto` (
  `idProspecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ape_pat` varchar(45) NOT NULL,
  `ape_mat` varchar(45) NOT NULL,
  `cel` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `doc` varchar(45) NOT NULL,
  PRIMARY KEY (`idProspecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `prospecto`
--
DROP TRIGGER IF EXISTS `prospecto_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `prospecto_AFTER_DELETE` AFTER DELETE ON `prospecto` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('prospecto borrado',user(),now(),old.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `prospecto_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `prospecto_AFTER_INSERT` AFTER INSERT ON `prospecto` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('prospecto creado',user(),now(),new.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `prospecto_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `prospecto_AFTER_UPDATE` AFTER UPDATE ON `prospecto` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('prospecto actualizado',user(),now(),new.nombre);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idTipoPago` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE IF NOT EXISTS `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `TipoUsuario_idTipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`TipoUsuario_idTipoUsuario`),
  KEY `fk_Usuario_TipoUsuario1_idx` (`TipoUsuario_idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `usuario`
--
DROP TRIGGER IF EXISTS `usuario_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `usuario_AFTER_DELETE` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('usuario borrado',user(),now(),old.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `usuario_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `usuario_AFTER_INSERT` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('usuario creado',user(),now(),new.nombre);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `usuario_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `usuario_AFTER_UPDATE` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,definición)
	values('usuario actualizado',user(),now(),new.nombre);
END
$$
DELIMITER ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_Cliente_Cotizacion1` FOREIGN KEY (`Cotizacion_idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente_has_equipo`
--
ALTER TABLE `cliente_has_equipo`
  ADD CONSTRAINT `fk_Cliente_has_Equipo_Cliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cliente_has_Equipo_Equipo1` FOREIGN KEY (`Equipo_idEquipo`) REFERENCES `equipo` (`idEquipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `fk_Cotizacion_TipoPago1` FOREIGN KEY (`TipoPago_idTipoPago`) REFERENCES `tipopago` (`idTipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion_has_material`
--
ALTER TABLE `cotizacion_has_material`
  ADD CONSTRAINT `fk_Cotizacion_has_Material1_Cotizacion1` FOREIGN KEY (`Cotizacion_idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cotizacion_has_Material1_Material1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_TipoUsuario1` FOREIGN KEY (`TipoUsuario_idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
