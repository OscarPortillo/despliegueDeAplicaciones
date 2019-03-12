-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2018 a las 18:53:18
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

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
  `anno` int(4) NOT NULL,
  `numero_ejemplares` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigo`, `titulo`, `autor`, `anno`, `numero_ejemplares`) VALUES
(1, 'El Senor de los Anillos', 'J. R. R. Tolkien', 1955, 7),
(2, 'El Hobbit', 'J. R. R. Tolkien', 1937, 3),
(3, 'Los Propios Dioses', 'Isaac Asimov', 1972, 5),
(4, 'El Fin de la Eternidad', 'Isaac Asimov', 1955, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `codigo_libro` int(3) NOT NULL,
  `codigo_socio` int(3) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`codigo_libro`, `codigo_socio`, `fecha_inicio`, `fecha_fin`, `fecha_devolucion`) VALUES
(1, 1, '2017-11-01', '2017-11-15', '2017-11-08'),
(1, 2, '2017-11-02', '2017-11-16', NULL),
(2, 1, '2017-11-01', '2017-11-15', NULL),
(3, 1, '2017-11-03', '2017-11-17', NULL),
(4, 2, '2017-11-04', '2017-11-18', NULL);

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
(1, 'Juan Perez', 'C/. Amarillo, N 7', 666123456, 'jperez@gmail.com'),
(2, 'Maria Sanchez', 'C/. Verde, N 2', 777987654, 'msanchez@gmail.com');

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
  ADD PRIMARY KEY (`codigo_libro`,`codigo_socio`,`fecha_inicio`),
  ADD KEY `indice_cod_libro` (`codigo_libro`) USING BTREE,
  ADD KEY `indice_cod_socio` (`codigo_socio`) USING BTREE;

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `codigo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `clave_foranea_cod_libro` FOREIGN KEY (`codigo_libro`) REFERENCES `libros` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `clave_foranea_cod_socio` FOREIGN KEY (`codigo_socio`) REFERENCES `socios` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
