-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2017 a las 23:13:27
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigo` int(3) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `ano` int(4) NOT NULL,
  `numero_de_ejemplares` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigo`, `titulo`, `autor`, `ano`, `numero_de_ejemplares`) VALUES
(1, 'los 3 cerditos', 'santiago perez', 1990, 6),
(2, 'blanca nieves', 'jose', 1985, 3),
(3, 'el rey leon', 'bladimir', 2000, 3),
(4, 'cenicienta', 'mi prima', 2005, 7),
(9877, 'juana', 'tio', 1990, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `codigo_de_libro` int(3) NOT NULL,
  `codigo_de_socio` int(3) NOT NULL,
  `fecha_de_inicio_de_prestamo` date NOT NULL,
  `fecha_de_fin_de_prestamo` date NOT NULL,
  `fecha_devolucion_real` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`codigo_de_libro`, `codigo_de_socio`, `fecha_de_inicio_de_prestamo`, `fecha_de_fin_de_prestamo`, `fecha_devolucion_real`) VALUES
(1, 1, '2017-11-06', '2017-11-07', '0000-00-00'),
(1, 2, '2017-02-05', '2017-02-14', '2017-02-10'),
(1, 3, '2017-11-01', '2017-11-02', '0000-00-00'),
(2, 2, '2017-11-01', '2017-11-06', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `codigo` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`codigo`, `nombre`, `domicilio`, `telefono`, `correo`) VALUES
(1, 'carlos', 'su casa', 99999999, 'juanetin@gmail.com'),
(2, 'rafa', 'club', 0, '123'),
(3, 'marcos', 'tauste', 987654321, 'marcos@gmail.com'),
(4, 'alicia', 'margarita', 0, 'margarita@gmail.com'),
(9, 'roberto', 'canduero', 666, '66@gmilc.om');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`codigo_de_libro`,`codigo_de_socio`,`fecha_de_inicio_de_prestamo`),
  ADD KEY `codigo_de_socio` (`codigo_de_socio`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`codigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`codigo_de_libro`) REFERENCES `libros` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`codigo_de_socio`) REFERENCES `socios` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
