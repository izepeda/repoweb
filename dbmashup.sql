-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2014 a las 07:57:40
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mashup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actualizaciones`
--

CREATE TABLE IF NOT EXISTS `actualizaciones` (
  `idactualizaciones` int(11) NOT NULL AUTO_INCREMENT,
  `datosrecibidos` varchar(20) NOT NULL,
  `asunto` varchar(20) NOT NULL,
  `mensaje` varchar(50) NOT NULL,
  `detalles` varchar(20) NOT NULL,
  `idmensaje` int(11) NOT NULL,
  PRIMARY KEY (`idactualizaciones`),
  KEY `idmensaje` (`idmensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `idblog` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `detalles` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idblog`),
  KEY `idusuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buzonentrada`
--

CREATE TABLE IF NOT EXISTS `buzonentrada` (
  `idbuzonentrada` int(11) NOT NULL AUTO_INCREMENT,
  `datosrecibidos` varchar(20) NOT NULL,
  `correoremitente` varchar(30) NOT NULL,
  `asunto` varchar(20) NOT NULL,
  `mensaje` varchar(50) NOT NULL,
  `detalles` varchar(20) NOT NULL,
  `idmensaje` int(11) NOT NULL,
  PRIMARY KEY (`idbuzonentrada`),
  KEY `idmensaje` (`idmensaje`),
  KEY `idmensaje_2` (`idmensaje`),
  KEY `detalles` (`detalles`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buzonsalida`
--

CREATE TABLE IF NOT EXISTS `buzonsalida` (
  `idbuzonsalida` int(11) NOT NULL AUTO_INCREMENT,
  `datosrecibidos` varchar(20) NOT NULL,
  `correoremitente` varchar(30) NOT NULL,
  `nombreremitente` varchar(30) NOT NULL,
  `asunto` varchar(20) NOT NULL,
  `mensaje` varchar(45) NOT NULL,
  `detalles` varchar(20) NOT NULL,
  `idmensaje` int(11) NOT NULL,
  PRIMARY KEY (`idbuzonsalida`),
  KEY `idmensaje` (`idmensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `idcontacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sitoweb` varchar(25) NOT NULL,
  `saludo` varchar(15) NOT NULL,
  `detallescontacto` varchar(20) NOT NULL,
  `trabajo` varchar(20) NOT NULL,
  `telefono` tinyint(10) NOT NULL,
  `otrosdetalles` varchar(30) NOT NULL,
  `idpapel` int(11) NOT NULL,
  `idmensaje` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idcontacto`),
  KEY `idpapel` (`idpapel`,`idmensaje`,`idusuario`),
  KEY `idmensaje` (`idmensaje`),
  KEY `idmensaje_2` (`idmensaje`),
  KEY `idusuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detailperfil`
--

CREATE TABLE IF NOT EXISTS `detailperfil` (
  `iddetail` int(11) NOT NULL AUTO_INCREMENT,
  `otros detalles` varchar(50) NOT NULL,
  `idperfil` int(11) NOT NULL,
  `idfotos` int(11) NOT NULL,
  PRIMARY KEY (`iddetail`),
  KEY `idperfil` (`idperfil`,`idfotos`),
  KEY `idfotos` (`idfotos`),
  KEY `idperfil_2` (`idperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `idfotos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `nombrearchivo` varchar(20) NOT NULL,
  `detallesfoto` varchar(20) NOT NULL,
  PRIMARY KEY (`idfotos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE IF NOT EXISTS `mensaje` (
  `idmensaje` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(100) NOT NULL,
  `horamensaje` time NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcontacto` int(11) NOT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `idusuario` (`idusuario`,`idcontacto`),
  KEY `idusuario_2` (`idusuario`),
  KEY `idusuario_3` (`idusuario`),
  KEY `idcontacto` (`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musica`
--

CREATE TABLE IF NOT EXISTS `musica` (
  `idmusica` int(11) NOT NULL,
  `nombreartista` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipoarchivo` varchar(30) NOT NULL,
  `detalles` varchar(20) NOT NULL,
  `idusuario` int(11) NOT NULL,
  KEY `idusuario` (`idusuario`),
  KEY `idusuario_2` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_red_social`
--

CREATE TABLE IF NOT EXISTS `nombre_red_social` (
  `idred` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idred`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE IF NOT EXISTS `notificaciones` (
  `idnotificaciones` int(11) NOT NULL AUTO_INCREMENT,
  `datosrecibidos` varchar(30) NOT NULL,
  `asunto` varchar(20) NOT NULL,
  `mensaje` varchar(30) NOT NULL,
  `idmensaje` int(11) NOT NULL,
  PRIMARY KEY (`idnotificaciones`),
  KEY `idmensaje` (`idmensaje`),
  KEY `idmensaje_2` (`idmensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `papelcontacto`
--

CREATE TABLE IF NOT EXISTS `papelcontacto` (
  `idpapel` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idpapel`),
  KEY `idpapel` (`idpapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `idperfil` int(11) NOT NULL AUTO_INCREMENT,
  `detalleperfil` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idperfil`),
  KEY `idusuario` (`idusuario`),
  KEY `idusuario_2` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `idred` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `id_red_social` (`idred`),
  KEY `idred` (`idred`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `idvideo` int(11) NOT NULL,
  `tiemporeproduccion` decimal(10,0) NOT NULL,
  `formatovideo` varchar(45) NOT NULL,
  `idusuario` int(11) NOT NULL,
  KEY `idusuario` (`idusuario`),
  KEY `idusuario_2` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actualizaciones`
--
ALTER TABLE `actualizaciones`
  ADD CONSTRAINT `actualizaciones_ibfk_1` FOREIGN KEY (`idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `buzonentrada`
--
ALTER TABLE `buzonentrada`
  ADD CONSTRAINT `buzonentrada_ibfk_1` FOREIGN KEY (`idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `buzonsalida`
--
ALTER TABLE `buzonsalida`
  ADD CONSTRAINT `buzonsalida_ibfk_1` FOREIGN KEY (`idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contacto_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contacto_ibfk_3` FOREIGN KEY (`idpapel`) REFERENCES `papelcontacto` (`idpapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detailperfil`
--
ALTER TABLE `detailperfil`
  ADD CONSTRAINT `detailperfil_ibfk_1` FOREIGN KEY (`idperfil`) REFERENCES `perfil` (`idperfil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailperfil_ibfk_2` FOREIGN KEY (`idfotos`) REFERENCES `fotos` (`idfotos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`idcontacto`) REFERENCES `contacto` (`idcontacto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `musica`
--
ALTER TABLE `musica`
  ADD CONSTRAINT `musica_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nombre_red_social`
--
ALTER TABLE `nombre_red_social`
  ADD CONSTRAINT `nombre_red_social_ibfk_1` FOREIGN KEY (`idred`) REFERENCES `perfil` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `perfil_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idred`) REFERENCES `nombre_red_social` (`idred`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
