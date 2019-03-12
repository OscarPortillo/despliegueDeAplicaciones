-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2018 a las 11:45:05
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
-- Base de datos: `biblio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autor` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anno` int(10) UNSIGNED NOT NULL,
  `numero_de_ejemplares` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `deleted_at`, `created_at`, `updated_at`, `titulo`, `autor`, `anno`, `numero_de_ejemplares`) VALUES
(1, NULL, '2018-01-11 12:59:35', '2018-01-11 13:00:06', 'la sirenita', 'manolo', 1997, 4),
(2, NULL, '2018-01-11 12:59:59', '2018-01-11 12:59:59', 'blanca nieves', 'juanita', 1995, 2),
(3, NULL, '2018-01-11 13:00:33', '2018-01-11 13:00:33', 'el rey leon', 'marcos', 2000, 6),
(4, NULL, '2018-01-12 09:30:36', '2018-01-12 09:30:36', 'jumanji', 'albert', 1987, 5),
(5, NULL, '2018-01-12 09:30:58', '2018-01-12 09:30:58', 'tarzan', 'jaime', 1998, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
