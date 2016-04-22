-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2016 a las 03:10:17
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `distribuidora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE IF NOT EXISTS `almacen` (
  `id_almacen` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id_almacen`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Comida'),
(2, 'Bebida'),
(3, 'Macotas'),
(4, 'Juguetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE IF NOT EXISTS `comprador` (
  `id_comprador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comprador` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_comprador`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`id_comprador`, `nombre_comprador`) VALUES
(1, 'Gordo'),
(2, 'Chester'),
(3, 'Jesus'),
(4, 'Carlos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_requisicion`
--

CREATE TABLE IF NOT EXISTS `orden_requisicion` (
  `id_orden_r` int(11) NOT NULL AUTO_INCREMENT,
  `almacen` int(11) NOT NULL,
  PRIMARY KEY (`id_orden_r`),
  KEY `almacen` (`almacen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `orden_requisicion`
--

INSERT INTO `orden_requisicion` (`id_orden_r`, `almacen`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_requisicion_contenido`
--

CREATE TABLE IF NOT EXISTS `orden_requisicion_contenido` (
  `orden_requisicion` int(11) NOT NULL,
  `proveedor` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`orden_requisicion`,`producto`,`proveedor`),
  KEY `proveedor` (`proveedor`),
  KEY `producto` (`producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orden_requisicion_contenido`
--

INSERT INTO `orden_requisicion_contenido` (`orden_requisicion`, `proveedor`, `producto`, `cantidad`) VALUES
(1, 1, 1, 100),
(1, 1, 2, 100),
(2, 5, 1, 50),
(2, 5, 3, 100),
(2, 5, 4, 50),
(3, 4, 5, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio`
--

CREATE TABLE IF NOT EXISTS `orden_servicio` (
  `id_orden_s` int(11) NOT NULL AUTO_INCREMENT,
  `comprador` int(11) NOT NULL,
  PRIMARY KEY (`id_orden_s`),
  KEY `comprador` (`comprador`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `orden_servicio`
--

INSERT INTO `orden_servicio` (`id_orden_s`, `comprador`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio_contenido`
--

CREATE TABLE IF NOT EXISTS `orden_servicio_contenido` (
  `orden_servicio` int(11) NOT NULL,
  `almacen` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`orden_servicio`,`producto`,`almacen`),
  KEY `almacen` (`almacen`),
  KEY `producto` (`producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orden_servicio_contenido`
--

INSERT INTO `orden_servicio_contenido` (`orden_servicio`, `almacen`, `producto`, `cantidad`) VALUES
(1, 1, 1, 5),
(1, 1, 2, 5),
(2, 1, 3, 1),
(3, 1, 5, 2),
(4, 1, 1, 3),
(4, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_producto` int(11) NOT NULL,
  `nombre_producto` char(100) DEFAULT NULL,
  `peso_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `categoria_producto` (`categoria_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `categoria_producto`, `nombre_producto`, `peso_producto`) VALUES
(1, 2, 'cafe', NULL),
(2, 1, 'pastelito', NULL),
(3, 3, 'perrarina', NULL),
(4, 4, 'gameboy', NULL),
(5, 1, 'pizza', NULL),
(6, 2, 'frescolita', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` char(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_proveedor`) VALUES
(1, 'Sensi'),
(2, 'La china'),
(3, 'Farmatodo'),
(4, 'Panaderia'),
(5, 'Economar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_producto`
--

CREATE TABLE IF NOT EXISTS `proveedor_producto` (
  `pp_proveedor` int(11) NOT NULL,
  `pp_producto` int(11) NOT NULL,
  PRIMARY KEY (`pp_producto`,`pp_proveedor`),
  KEY `pp_proveedor` (`pp_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor_producto`
--

INSERT INTO `proveedor_producto` (`pp_proveedor`, `pp_producto`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 6),
(3, 1),
(3, 4),
(3, 6),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 3),
(5, 4),
(5, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `login`, `clave`) VALUES
(2, 'admin', '1234');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden_requisicion`
--
ALTER TABLE `orden_requisicion`
  ADD CONSTRAINT `orden_requisicion_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id_almacen`);

--
-- Filtros para la tabla `orden_requisicion_contenido`
--
ALTER TABLE `orden_requisicion_contenido`
  ADD CONSTRAINT `orden_requisicion_contenido_ibfk_1` FOREIGN KEY (`orden_requisicion`) REFERENCES `orden_requisicion` (`id_orden_r`),
  ADD CONSTRAINT `orden_requisicion_contenido_ibfk_2` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `orden_requisicion_contenido_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD CONSTRAINT `orden_servicio_ibfk_1` FOREIGN KEY (`comprador`) REFERENCES `comprador` (`id_comprador`);

--
-- Filtros para la tabla `orden_servicio_contenido`
--
ALTER TABLE `orden_servicio_contenido`
  ADD CONSTRAINT `orden_servicio_contenido_ibfk_1` FOREIGN KEY (`orden_servicio`) REFERENCES `orden_servicio` (`id_orden_s`),
  ADD CONSTRAINT `orden_servicio_contenido_ibfk_2` FOREIGN KEY (`almacen`) REFERENCES `almacen` (`id_almacen`),
  ADD CONSTRAINT `orden_servicio_contenido_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_producto`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  ADD CONSTRAINT `proveedor_producto_ibfk_1` FOREIGN KEY (`pp_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `proveedor_producto_ibfk_2` FOREIGN KEY (`pp_producto`) REFERENCES `producto` (`id_producto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
