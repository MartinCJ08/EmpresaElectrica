-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-11-2018 a las 17:12:51
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
USE `electricdb`;
DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `agregar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_cliente` (IN `nom` VARCHAR(30), `a_p` VARCHAR(20), `a_m` VARCHAR(20), `dir` VARCHAR(45), `cel` VARCHAR(10), `correo` VARCHAR(30), `usuar` INT)  BEGIN
	insert into `electricdb`.`cliente` (nombre,ape_pat,ape_mat,direccion,cel,correo,Usuario_idUsuario)
	values(nom,a_p,a_m,dir,cel,correo,usuar);
END$$

DROP PROCEDURE IF EXISTS `agregar_cotizacion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_cotizacion` (IN `co_min` DOUBLE, `co_max` DOUBLE, `distancia` INT, `t_s` INT, `ti_pa` INT, `clien` INT)  BEGIN
	insert into `electricdb`.`cotizacion` (costo_min,costo_max,distancia,tiempo_servicio,TipoPago_idTipoPago,Cliente_idCliente) 
    	values(co_min,co_max,distancia,t_s,ti_pa,clien);
END$$

DROP PROCEDURE IF EXISTS `agregar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_empleado` (IN `nomb` VARCHAR(45), `a_p` VARCHAR(45), `a_m` VARCHAR(45), `tel` VARCHAR(45), `dir` VARCHAR(45), `correo` VARCHAR(45), `rfc` VARCHAR(45), `usuar` INT)  BEGIN
	insert into `electricdb`.`empleado` (nombre,ape_pat,ape_mat,telefono,direccion,email,rfc,Usuario_idUsuario) 
    	values (nomb,a_p,a_m,tel,dir,correo,rfc,usuar);
END$$

DROP PROCEDURE IF EXISTS `agregar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_equipo` (IN `descrip` VARCHAR(45), `foto` VARCHAR(45), `carac` VARCHAR(45), `trab` INT, `trabit` INT)  BEGIN
	insert into `electricdb`.`equipo` (descripcion,foto,caracteristicas,Trabajo_idTrabajo,Trabajo_TipoTrabajo_idTipoTrabajo)
    	values(descrip,foto,carac,trab,trabit);
END$$

DROP PROCEDURE IF EXISTS `agregar_material`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_material` (IN `nom` VARCHAR(45), `descp` VARCHAR(45), `prec` DOUBLE)  BEGIN
	insert into `electricdb`.`material` (nombre,descripcion,precio)
	values(nom,descp,prec);
END$$

DROP PROCEDURE IF EXISTS `agregar_prospecto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_prospecto` (IN `nom` VARCHAR(45), `a_p` VARCHAR(45), `a_m` VARCHAR(45), `cel` VARCHAR(45), `correo` VARCHAR(45), `doc` VARCHAR(45))  BEGIN
	INSERT INTO `electricdb`.`prospecto` (nombre,ape_pat,ape_mat,cel,correo,doc) 
	values (nom,a_p,a_m,cel,correo,doc);
END$$

DROP PROCEDURE IF EXISTS `agregar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_usuario` (IN `correo` VARCHAR(45), `pass` VARCHAR(45), `TipoUsuario` INT)  BEGIN
	insert into `electricdb`.`usuario` (correo,pass,TipoUsuario_idTipoUsuario)
	values(correo, pass, TipoUsuario);
END$$

DROP PROCEDURE IF EXISTS `Cliente_Cotizacion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cliente_Cotizacion` (IN `id` INT)  BEGIN
	select a.idCliente,a.nombre,b.tiempo_servicio from cliente a inner join
    cotizacion b on a.Cotizacion_idCotizacion=b.Cotizacion where idCliente = id;
END$$

DROP PROCEDURE IF EXISTS `eliminar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cliente` (IN `id` INT)  BEGIN
	delete from cliente where idCliente = id;
END$$

DROP PROCEDURE IF EXISTS `eliminar_cotizacion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cotizacion` (IN `idcot` INT)  BEGIN
	delete from cotizacion where idCotizacion=idcot;
END$$

DROP PROCEDURE IF EXISTS `eliminar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_empleado` (IN `idemp` INT)  BEGIN
	delete from empleado where idEmpleado = idemp;
END$$

DROP PROCEDURE IF EXISTS `eliminar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_equipo` (IN `ideq` INT)  BEGIN
	delete from equipo where idEquipo = ideq;
END$$

DROP PROCEDURE IF EXISTS `eliminar_material`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_material` (IN `idmat` INT)  BEGIN
	delete from material where idMaterial = idmat;
END$$

DROP PROCEDURE IF EXISTS `eliminar_prospecto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_prospecto` (IN `idpros` INT)  BEGIN
	delete from pospecto where idProspecto = idpros;
END$$

DROP PROCEDURE IF EXISTS `eliminar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_usuario` (IN `iduser` INT)  BEGIN
	delete from usuario where idUsuario = iduser;
END$$

DROP PROCEDURE IF EXISTS `modficar_usuario`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modficar_usuario` (IN `idu` INT, `cor` VARCHAR(45), `pass` VARCHAR(45), `tu_idtu` INT)  BEGIN
	update usuario set correo=cor, pass=pass,TipoUsuario_idTipoUsuario=tu_idtu
    where idUsuario = idu;
END$$

DROP PROCEDURE IF EXISTS `modificar_cliente`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cliente` (IN `idc` INT, `nom` VARCHAR(30), `a_p` VARCHAR(20), `a_m` VARCHAR(20), `dir` VARCHAR(45), `cel` VARCHAR(10), `cor` VARCHAR(30), `us_idu` INT)  BEGIN
	update cliente set nombre=nom, ape_pat=a_p, 
    ape_mat=a_m,direccion=dir,correo=cor,
    Usuario_idUsuario=us_idu where idCliente=idc;
END$$

DROP PROCEDURE IF EXISTS `modificar_cotizacion`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cotizacion` (IN `idc` INT, `c_mi` DOUBLE, `c_ma` DOUBLE, `dis` INT, `t_s` INT, `t_idtp` INT, `c_idc` INT)  BEGIN
	update cotizacion set costo_min=c_mi,costo_max=c_ma,
    distancia=dis,tiempo_servicio=t_s,
    TipoPago_idTipoPago=t_idtp,Cliente_idCliente=c_idc
    where idCotizacion=idc;
END$$

DROP PROCEDURE IF EXISTS `modificar_empleado`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_empleado` (IN `ide` INT, `nom` VARCHAR(45), `a_p` VARCHAR(45), `a_m` VARCHAR(45), `tel` VARCHAR(45), `dir` VARCHAR(45), `em` VARCHAR(45), `rfc` VARCHAR(45), `u_idu` INT)  BEGIN
	update empleado set nombre=nom,ape_pat=a_p,
    ape_mat=a_m,telefono=tel,direccion=dir,email=em,
    rfc=rfc,Usuario_idUsuario=u_idu
    where idEmpleado=ide;
END$$

DROP PROCEDURE IF EXISTS `modificar_equipo`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_equipo` (IN `ide` INT, `des` VARCHAR(45), `fot` VARCHAR(45), `carac` VARCHAR(45), `t_idt` INT, `t_tt_idtt` INT)  BEGIN
	update equipo set descripcion=des,foto=fot,
    caracteristicas=carac,Trabajo_idTrabajo=t_idt,
    Trabajo_TipoTrabajo_idTipoTrabajo=t_tt_idtt
    where idEquipo=ide;
END$$

DROP PROCEDURE IF EXISTS `modificar_material`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_material` (IN `idm` INT, `nom` VARCHAR(45), `des` VARCHAR(45), `prec` DOUBLE)  BEGIN
	update material set nombre=nom, descripcion=des,
    precio=prec where idMaterial=idm;
END$$

DROP PROCEDURE IF EXISTS `modificar_prospecto`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_prospecto` (IN `idp` INT, `nom` VARCHAR(45), `a_p` VARCHAR(45), `a_m` VARCHAR(45), `cel` VARCHAR(45), `corr` VARCHAR(45), `doc` VARCHAR(45))  BEGIN
	update prospecto set nombre=nom,ape_pat=a_p,
    ape_mat=a_m,cel=cel,correo=corr,doc=doc
    where idProspecto=idp;
END$$

--
-- Funciones
--
DROP FUNCTION IF EXISTS `contar_usuarios`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_usuarios` () RETURNS INT(11) BEGIN

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
			set conta = conta + 1;																									end if;
	end loop;
	close cursor_usuarios;
RETURN conta;
END$$

DROP FUNCTION IF EXISTS `costos_cotizacion`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `costos_cotizacion` () RETURNS INT(11) BEGIN
declare suma int;
	select sum(costo_max) into suma from cotizacion;
RETURN suma;
END$$

DROP FUNCTION IF EXISTS `ganacias_material`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `ganacias_material` (`id_material` INT) RETURNS INT(11) BEGIN
	declare ganancias int;
	select a.SUM(precio) into ganancias from material a inner join cotizacion_has_material b
    where idMaterial = id_material and whereMaterial_idMaterial=idMaterial;
RETURN ganancias;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE IF NOT EXISTS `bitacora` (
  `idbitacora` int(11) NOT NULL,
  `movimiento` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `concepto` varchar(45) NOT NULL,
  `tabla` varchar(45) NOT NULL,
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
  `ape_mat` varchar(20) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `cel` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`,`Usuario_idUsuario`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`),
  UNIQUE KEY `cel_UNIQUE` (`cel`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_Cliente_Usuario1_idx` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `cliente`
--
DROP TRIGGER IF EXISTS `cliente_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_DELETE` AFTER DELETE ON `cliente` FOR EACH ROW BEGIN
	insert into `electricdb`.`bitacora`(movimiento,usuario,fecha,concepto,tabla)
	values('cliente eliminado',user(),now(),old.nombre,'cliente');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cliente_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_INSERT` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	insert into `electricdb`.`bitacora`(movimiento,usuario,fecha,concepto,tabla)
	values('cliente agregado',user(),now(),new.nombre,'cliente');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `cliente_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `cliente_AFTER_UPDATE` AFTER UPDATE ON `cliente` FOR EACH ROW BEGIN
	insert into `electricdb`.`bitacora`(movimiento,usuario,fecha,concepto,tabla)
	values('cliente actualizado',user(),now(),new.nombre,'cliente');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cliente_trabajo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `cliente_trabajo`;
CREATE TABLE IF NOT EXISTS `cliente_trabajo` (
`nombre del cliente` varchar(30)
,`cel del cliente` varchar(10)
,`dirección de trabajo` varchar(45)
);

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
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCotizacion`,`TipoPago_idTipoPago`,`Cliente_idCliente`),
  KEY `fk_Cotizacion_TipoPago1_idx` (`TipoPago_idTipoPago`),
  KEY `fk_Cotizacion_Cliente1_idx` (`Cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `cotizacion`
--
DROP TRIGGER IF EXISTS `cotizacion_BEFORE_INSERT`;
DELIMITER $$
CREATE TRIGGER `cotizacion_BEFORE_INSERT` BEFORE INSERT ON `cotizacion` FOR EACH ROW BEGIN
	IF NEW.costo_min <= 0 THEN 
		SET NEW.costo_min = NEW.costo_max*.50; 
	ELSEIF NEW.costo_max <= 0 THEN 
		SET NEW.costo_max = NEW.costo_min*2;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cotizaciones_organizadas`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `cotizaciones_organizadas`;
CREATE TABLE IF NOT EXISTS `cotizaciones_organizadas` (
`idCotizacion` int(11)
,`sum(costo_max)` double
);

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
-- Estructura Stand-in para la vista `cotizacion_tipopago`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `cotizacion_tipopago`;
CREATE TABLE IF NOT EXISTS `cotizacion_tipopago` (
`Cotizacion` int(11)
,`Tipo de Pago` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ape_pat` varchar(45) NOT NULL,
  `ape_mat` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idEmpleado`,`Usuario_idUsuario`),
  KEY `fk_Empleado_Usuario1_idx` (`Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `empleado`
--
DROP TRIGGER IF EXISTS `empleado_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `empleado_AFTER_DELETE` AFTER DELETE ON `empleado` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado eliminado',user(),now(),old.nombre,'empleado');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `empleado_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `empleado_AFTER_INSERT` AFTER INSERT ON `empleado` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado agregado',user(),now(),new.nombre,'empleado');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `empleado_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `empleado_AFTER_UPDATE` AFTER UPDATE ON `empleado` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('empleado actualizado',user(),now(),new.nombre,'empleado');
END
$$
DELIMITER ;

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
  `Trabajo_idtrabajo` int(11) NOT NULL,
  `Trabajo_TipoTrabajo_idTipoTrabajo` int(11) NOT NULL,
  PRIMARY KEY (`idEquipo`,`Trabajo_idtrabajo`,`Trabajo_TipoTrabajo_idTipoTrabajo`),
  KEY `fk_Equipo_Trabajo1_idx` (`Trabajo_idtrabajo`,`Trabajo_TipoTrabajo_idTipoTrabajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `equipo`
--
DROP TRIGGER IF EXISTS `equipo_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_DELETE` AFTER DELETE ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo eliminado',user(),now(),old.descripcion,'equipo');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `equipo_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_INSERT` AFTER INSERT ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo nuevo',user(),now(),new.descripcion,'equipo');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `equipo_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `equipo_AFTER_UPDATE` AFTER UPDATE ON `equipo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('equipo actualizado',user(),now(),new.descripcion,'equipo');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `equipo_trabajo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `equipo_trabajo`;
CREATE TABLE IF NOT EXISTS `equipo_trabajo` (
`descripcion de equipo` varchar(45)
,`id trabajo` int(11)
);

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
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material eliminado',user(),now(),old.nombre,'material');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `material_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `material_AFTER_INSERT` AFTER INSERT ON `material` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material agregado',user(),now(),new.nombre,'material');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `material_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `material_AFTER_UPDATE` AFTER UPDATE ON `material` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('material actualizado',user(),now(),new.nombre,'material');
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
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('prospecto eliminado',user(),now(),old.nombre,'prospecto');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `prospecto_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `prospecto_AFTER_INSERT` AFTER INSERT ON `prospecto` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('prospecto agregado',user(),now(),new.nombre,'prospecto');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `prospecto_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `prospecto_AFTER_UPDATE` AFTER UPDATE ON `prospecto` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('prospecto actualizado',user(),now(),new.nombre,'prospecto');
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
-- Estructura de tabla para la tabla `tipotrabajo`
--

DROP TABLE IF EXISTS `tipotrabajo`;
CREATE TABLE IF NOT EXISTS `tipotrabajo` (
  `idTipoTrabajo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoTrabajo`),
  UNIQUE KEY `descripcion_UNIQUE` (`descripcion`)
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
-- Estructura de tabla para la tabla `trabajo`
--

DROP TABLE IF EXISTS `trabajo`;
CREATE TABLE IF NOT EXISTS `trabajo` (
  `idtrabajo` int(11) NOT NULL AUTO_INCREMENT,
  `dirección` varchar(45) NOT NULL,
  `fecha_inicio` varchar(45) NOT NULL,
  `fecha_fin` varchar(45) NOT NULL,
  `fecha_mantenimiento` varchar(45) NOT NULL,
  `TipoTrabajo_idTipoTrabajo` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Cliente_Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idtrabajo`,`TipoTrabajo_idTipoTrabajo`,`Cliente_idCliente`,`Cliente_Usuario_idUsuario`),
  KEY `fk_Trabajo_TipoTrabajo1_idx` (`TipoTrabajo_idTipoTrabajo`),
  KEY `fk_Trabajo_Cliente1_idx` (`Cliente_idCliente`,`Cliente_Usuario_idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `trabajo`
--
DROP TRIGGER IF EXISTS `trabajo_AFTER_DELETE`;
DELIMITER $$
CREATE TRIGGER `trabajo_AFTER_DELETE` AFTER DELETE ON `trabajo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo cancelado',user(),now(),old.dirección,'trabajo');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `trabajo_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `trabajo_AFTER_INSERT` AFTER INSERT ON `trabajo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo nuevo',user(),now(),new.dirección,'trabajo');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `trabajo_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `trabajo_AFTER_UPDATE` AFTER UPDATE ON `trabajo` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('trabajo renovado',user(),now(),new.dirección,'trabajo');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
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
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario eliminado',user(),now(),old.correo,'usuario');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `usuario_AFTER_INSERT`;
DELIMITER $$
CREATE TRIGGER `usuario_AFTER_INSERT` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario agregado',user(),now(),new.correo,'usuario');
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `usuario_AFTER_UPDATE`;
DELIMITER $$
CREATE TRIGGER `usuario_AFTER_UPDATE` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
	insert into bitacora(movimiento,usuario,fecha,concepto,tabla)
	values('usuario actualizado',user(),now(),new.correo,'usuario');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuario_empleado`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `usuario_empleado`;
CREATE TABLE IF NOT EXISTS `usuario_empleado` (
`empleado` varchar(45)
,`usuario` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuario_tipo`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `usuario_tipo`;
CREATE TABLE IF NOT EXISTS `usuario_tipo` (
`idUsuario` int(11)
,`descripcion` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `cliente_trabajo`
--
DROP TABLE IF EXISTS `cliente_trabajo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cliente_trabajo`  AS  select `a`.`nombre` AS `nombre del cliente`,`a`.`cel` AS `cel del cliente`,`b`.`dirección` AS `dirección de trabajo` from (`cliente` `a` join `trabajo` `b` on((`a`.`idCliente` = `b`.`Cliente_idCliente`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `cotizaciones_organizadas`
--
DROP TABLE IF EXISTS `cotizaciones_organizadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cotizaciones_organizadas`  AS  select `cotizacion`.`idCotizacion` AS `idCotizacion`,sum(`cotizacion`.`costo_max`) AS `sum(costo_max)` from `cotizacion` group by `cotizacion`.`idCotizacion` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `cotizacion_tipopago`
--
DROP TABLE IF EXISTS `cotizacion_tipopago`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cotizacion_tipopago`  AS  select `a`.`idCotizacion` AS `Cotizacion`,`b`.`descripcion` AS `Tipo de Pago` from (`cotizacion` `a` join `tipopago` `b` on((`a`.`TipoPago_idTipoPago` = `b`.`idTipoPago`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `equipo_trabajo`
--
DROP TABLE IF EXISTS `equipo_trabajo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `equipo_trabajo`  AS  select `a`.`descripcion` AS `descripcion de equipo`,`b`.`idtrabajo` AS `id trabajo` from (`equipo` `a` join `trabajo` `b` on((`a`.`Trabajo_idtrabajo` = `b`.`idtrabajo`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuario_empleado`
--
DROP TABLE IF EXISTS `usuario_empleado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuario_empleado`  AS  select `a`.`nombre` AS `empleado`,`b`.`correo` AS `usuario` from (`empleado` `a` join `usuario` `b` on((`a`.`Usuario_idUsuario` = `b`.`idUsuario`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuario_tipo`
--
DROP TABLE IF EXISTS `usuario_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuario_tipo`  AS  select `a`.`idUsuario` AS `idUsuario`,`b`.`descripcion` AS `descripcion` from (`usuario` `a` join `tipousuario` `b`) where (`a`.`TipoUsuario_idTipoUsuario` = `b`.`idTipoUsuario`) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_Cliente_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD CONSTRAINT `fk_Cotizacion_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cotizacion_TipoPago1` FOREIGN KEY (`TipoPago_idTipoPago`) REFERENCES `tipopago` (`idTipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cotizacion_has_material`
--
ALTER TABLE `cotizacion_has_material`
  ADD CONSTRAINT `fk_Cotizacion_has_Material1_Cotizacion1` FOREIGN KEY (`Cotizacion_idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cotizacion_has_Material1_Material1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_Empleado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `fk_Equipo_Trabajo1` FOREIGN KEY (`Trabajo_idtrabajo`,`Trabajo_TipoTrabajo_idTipoTrabajo`) REFERENCES `trabajo` (`idtrabajo`, `TipoTrabajo_idTipoTrabajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD CONSTRAINT `fk_Trabajo_Cliente1` FOREIGN KEY (`Cliente_idCliente`,`Cliente_Usuario_idUsuario`) REFERENCES `cliente` (`idCliente`, `Usuario_idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Trabajo_TipoTrabajo1` FOREIGN KEY (`TipoTrabajo_idTipoTrabajo`) REFERENCES `tipotrabajo` (`idTipoTrabajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_TipoUsuario1` FOREIGN KEY (`TipoUsuario_idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
