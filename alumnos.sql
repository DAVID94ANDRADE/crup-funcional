-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2015 a las 19:37:41
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `alumnos`
--
CREATE DATABASE IF NOT EXISTS `alumnos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alumnos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE IF NOT EXISTS `alumno` (
`id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `carnet` int(11) NOT NULL,
  `seccion` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `carnet`, `seccion`) VALUES
(1, 'rett', 'retet', '2015-04-01', 'ggdgfdgfdgdgdgdgfdgdgf', 66667, 3),
(2, 'fhf', 'ghgf', '2015-04-08', 'fhfghfghgfh', 645646, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
`id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `escuela` enum('sistema','mato') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `nombre`, `escuela`) VALUES
(1, 'sistema 22', 'sistema'),
(2, 'sistema 21', 'sistema'),
(3, 'sistema12', 'sistema');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `seccion` (`seccion`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
