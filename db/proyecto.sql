-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-05-2023 a las 04:11:44
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerta`
--

CREATE TABLE `alerta` (
  `id` int(11) NOT NULL,
  `id_nodo` int(11) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(20) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dato`
--

CREATE TABLE `dato` (
  `id` int(11) NOT NULL,
  `id_nodo` int(11) DEFAULT NULL,
  `gas` double DEFAULT NULL,
  `temperatura` double DEFAULT NULL,
  `distancia` varchar(25) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dato`
--

INSERT INTO `dato` (`id`, `id_nodo`, `gas`, `temperatura`, `distancia`, `tiempo`, `tipo`) VALUES
(31, 3, 1.2, 24.3, '10.5 cm', '2023-04-27 22:34:45', 'verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodo`
--

CREATE TABLE `nodo` (
  `id` int(11) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nodo`
--

INSERT INTO `nodo` (`id`, `direccion`, `id_usuario`) VALUES
(3, 'Calle 1, Ciudad 1', 1),
(4, 'Calle 2, Ciudad 2', 2),
(5, 'Calle 3, Ciudad 3', 3),
(6, 'Calle 4, Ciudad 4', 4),
(7, 'Calle 5, Ciudad 5', 5),
(8, 'Calle 6, Ciudad 6', 6),
(9, 'Calle 7, Ciudad 7', 7),
(10, 'Calle 8, Ciudad 8', 8),
(11, 'Calle 9, Ciudad 9', 9),
(12, 'Calle 10, Ciudad 10', 10),
(13, 'Calle 11, Ciudad 11', 1),
(14, 'Calle 12, Ciudad 12', 2),
(15, 'Calle 13, Ciudad 13', 3),
(16, 'Calle 14, Ciudad 14', 4),
(17, 'Calle 15, Ciudad 15', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(30) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `telefono1` int(11) NOT NULL,
  `telefono2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `tipo_usuario`, `usuario`, `contrasena`, `correo`, `telefono1`, `telefono2`) VALUES
(1, 'admin', 'admin', 'admin123', 'admin@example.com', 5551234, NULL),
(2, 'ciudadano', 'ciudadano1', 'ciudadano123', 'ciudadano1@example.com', 5552345, 5552356),
(3, 'bombero', 'bombero1', 'bombero123', 'bombero1@example.com', 5554567, NULL),
(4, 'ciudadano', 'ciudadano2', 'ciudadano456', 'ciudadano2@example.com', 5555678, 5556789),
(5, 'bombero', 'bombero2', 'bombero456', 'bombero2@example.com', 5557890, NULL),
(6, 'bombero', 'bombero3', 'bombero789', 'bombero3@example.com', 5558901, NULL),
(7, 'admin', 'admin2', 'admin456', 'admin2@example.com', 5559012, NULL),
(8, 'ciudadano', 'ciudadano3', 'ciudadano789', 'ciudadano3@example.com', 5550123, 5551234),
(9, 'bombero', 'bombero4', 'bomberoabc', 'bombero4@example.com', 5552345, NULL),
(10, 'ciudadano', 'ciudadano4', 'ciudadanoabc', 'ciudadano4@example.com', 5553456, 5554567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nodo` (`id_nodo`);

--
-- Indices de la tabla `dato`
--
ALTER TABLE `dato`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_nodo` (`id_nodo`);

--
-- Indices de la tabla `nodo`
--
ALTER TABLE `nodo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alerta`
--
ALTER TABLE `alerta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dato`
--
ALTER TABLE `dato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `nodo`
--
ALTER TABLE `nodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alerta`
--
ALTER TABLE `alerta`
  ADD CONSTRAINT `alerta_ibfk_1` FOREIGN KEY (`id_nodo`) REFERENCES `nodo` (`id`);

--
-- Filtros para la tabla `dato`
--
ALTER TABLE `dato`
  ADD CONSTRAINT `dato_ibfk_1` FOREIGN KEY (`id_nodo`) REFERENCES `nodo` (`id`);

--
-- Filtros para la tabla `nodo`
--
ALTER TABLE `nodo`
  ADD CONSTRAINT `nodo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
