-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 07:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerta`
--

CREATE TABLE `alerta` (
  `id` int(11) NOT NULL,
  `id_nodo` int(11) NOT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(20) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerta`
--

INSERT INTO `alerta` (`id`, `id_nodo`, `tiempo`, `estado`, `tipo`) VALUES
(1, 1, '2023-03-25 17:20:55', 'activo', 'rojo'),
(2, 1, '2023-03-25 17:20:55', 'inactivo', 'verde'),
(3, 2, '2023-03-25 17:20:55', 'activo', 'amarilla'),
(4, 2, '2023-03-25 17:20:55', 'inactivo', 'verde'),
(5, 3, '2023-03-25 17:20:55', 'activo', 'rojo'),
(6, 3, '2023-03-25 17:20:55', 'inactivo', 'amarilla'),
(7, 4, '2023-03-25 17:20:55', 'activo', 'verde'),
(8, 4, '2023-03-25 17:20:55', 'inactivo', 'rojo'),
(9, 5, '2023-03-25 17:20:55', 'activo', 'amarilla'),
(10, 5, '2023-03-25 17:20:55', 'inactivo', 'verde'),
(11, 1, '2023-03-25 17:21:32', 'inactivo', 'rojo'),
(12, 1, '2023-03-25 17:21:32', 'inactivo', 'verde'),
(13, 2, '2023-03-25 17:21:32', 'inactivo', 'amarilla'),
(14, 2, '2023-03-25 17:21:32', 'inactivo', 'verde'),
(15, 3, '2023-03-25 17:21:32', 'activo', 'rojo'),
(16, 3, '2023-03-25 17:21:32', 'inactivo', 'amarilla'),
(17, 4, '2023-03-25 17:21:32', 'activo', 'verde'),
(18, 4, '2023-03-25 17:21:32', 'inactivo', 'rojo'),
(19, 5, '2023-03-25 17:21:32', 'activo', 'amarilla'),
(20, 5, '2023-03-25 17:21:32', 'inactivo', 'verde'),
(21, 6, '2023-03-25 17:28:57', 'activo', 'rojo'),
(22, 6, '2023-03-25 17:28:57', 'inactivo', 'verde'),
(23, 7, '2023-03-25 17:28:57', 'activo', 'amarilla'),
(24, 7, '2023-03-25 17:28:57', 'inactivo', 'verde'),
(25, 8, '2023-03-25 17:28:57', 'activo', 'rojo'),
(26, 8, '2023-03-25 17:28:57', 'inactivo', 'amarilla'),
(27, 9, '2023-03-25 17:28:57', 'activo', 'verde'),
(28, 9, '2023-03-25 17:28:57', 'inactivo', 'rojo'),
(29, 10, '2023-03-25 17:28:57', 'activo', 'amarilla'),
(30, 10, '2023-03-25 17:28:57', 'inactivo', 'verde'),
(31, 11, '2023-03-25 17:28:57', 'inactivo', 'rojo'),
(35, 1, '2023-03-28 19:25:49', 'inactivo', 'rojo'),
(36, 1, '2023-03-28 19:26:11', 'inactivo', 'rojo'),
(37, 1, '2023-03-28 21:28:23', 'activo', 'amarilla'),
(38, 1, '2023-03-28 22:03:10', 'activo', 'rojo'),
(39, 1, '2023-03-28 22:05:06', 'activo', 'rojo'),
(40, 1, '2023-03-28 22:05:42', 'activo', 'amarillo');

-- --------------------------------------------------------

--
-- Table structure for table `dato`
--

CREATE TABLE `dato` (
  `id` int(11) NOT NULL,
  `id_nodo` int(11) NOT NULL,
  `gas` double DEFAULT NULL,
  `temperatura` double DEFAULT NULL,
  `distancia` varchar(25) DEFAULT NULL,
  `tiempo` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dato`
--

INSERT INTO `dato` (`id`, `id_nodo`, `gas`, `temperatura`, `distancia`, `tiempo`, `tipo`) VALUES
(1, 1, 1.2, 24.3, '10.5 cm', '2023-03-25 17:20:47', 'verde'),
(2, 1, 2.3, 22.5, '11.2 cm', '2023-03-25 17:20:47', 'rojo'),
(3, 2, 1.1, 23.1, '9.8 cm', '2023-03-25 17:20:47', 'verde'),
(4, 2, 1.9, 24.8, '10.9 cm', '2023-03-25 17:20:47', 'amarilla'),
(5, 3, 1.5, 22, '12.1 cm', '2023-03-25 17:20:47', 'verde'),
(6, 3, 1.3, 23.5, '11.5 cm', '2023-03-25 17:20:47', 'rojo'),
(7, 4, 1.8, 21.7, '9.6 cm', '2023-03-25 17:20:47', 'amarilla'),
(8, 4, 2.1, 24.2, '10.3 cm', '2023-03-25 17:20:47', 'verde'),
(9, 5, 1.6, 22.8, '12.8 cm', '2023-03-25 17:20:47', 'amarilla'),
(10, 5, 1.4, 23.9, '11.7 cm', '2023-03-25 17:20:47', 'rojo'),
(11, 6, 1.1, 24, '11.4 km', '2023-03-25 17:25:42', 'verde'),
(12, 6, 1.7, 21.9, '9.3 km', '2023-03-25 17:25:42', 'rojo'),
(13, 7, 1.3, 23.2, '10.6 km', '2023-03-25 17:25:42', 'verde'),
(14, 7, 1.9, 24.5, '10.1 km', '2023-03-25 17:25:42', 'amarilla'),
(15, 8, 1.2, 22.5, '12.0 km', '2023-03-25 17:25:42', 'verde'),
(16, 8, 1.4, 23.8, '10.9 km', '2023-03-25 17:25:42', 'rojo'),
(17, 9, 1.8, 22.1, '10.1 km', '2023-03-25 17:25:42', 'amarilla'),
(18, 9, 2, 24.6, '11.7 km', '2023-03-25 17:25:42', 'verde'),
(19, 10, 1.5, 23.3, '9.7 km', '2023-03-25 17:25:42', 'amarilla'),
(20, 10, 1.2, 24.1, '11.1 km', '2023-03-25 17:25:42', 'rojo'),
(21, 11, 1.1, 23.6, '10.5 km', '2023-03-25 17:25:42', 'verde'),
(22, 11, 1.9, 24.3, '11.3 km', '2023-03-25 17:25:42', 'amarilla'),
(23, 12, 1.5, 22.2, '10.9 km', '2023-03-25 17:25:42', 'verde'),
(24, 12, 1.8, 23.9, '9.8 km', '2023-03-25 17:25:42', 'rojo'),
(25, 13, 1.4, 22.8, '12.4 km', '2023-03-25 17:25:42', 'amarilla'),
(26, 13, 1.3, 23.7, '11.6 km', '2023-03-25 17:25:42', 'verde'),
(27, 14, 1.2, 23.5, '10.2 km', '2023-03-25 17:25:42', 'rojo'),
(28, 14, 2.1, 24.7, '11.9 km', '2023-03-25 17:25:42', 'verde'),
(29, 15, 1.8, 22.7, '12.6 km', '2023-03-25 17:25:42', 'amarilla'),
(30, 15, 1.6, 23.4, '10.4 km', '2023-03-25 17:25:42', 'verde'),
(31, 1, 1.2, 24.3, '10.5 cm', '2023-03-25 22:20:47', 'verde'),
(32, 1, 1.2, 24.3, '10.5 cm', '2023-03-25 23:30:41', 'roja'),
(33, 1, 1.2, 24.3, '10.5 cm', '2023-03-25 23:32:45', 'roja'),
(34, 1, 1.2, 24.3, '10.5 cm', '2023-03-28 19:36:42', 'verde'),
(35, 1, 1.2, 24.3, '10.5 cm', '2023-03-28 19:38:02', 'verde'),
(36, 1, 1.2, 24.3, '10.5 cm', '2023-03-28 19:38:30', 'rojo'),
(37, 1, 1.2, 24.3, '10.5 cm', '2023-03-28 19:39:17', 'rojo'),
(38, 1, 1.2, 24.3, '10.5 cm', '2023-03-28 19:40:14', 'rojo'),
(39, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:20:00', 'rojo'),
(40, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:34:55', 'rojo'),
(41, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:36:34', 'rojo'),
(42, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:42:47', 'rojo'),
(43, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:43:59', 'rojo'),
(44, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:53:48', 'rojo'),
(45, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:55:29', 'rojo'),
(46, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 21:55:50', 'rojo'),
(47, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 22:03:10', 'rojo'),
(48, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 22:04:07', 'amarilla'),
(49, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 22:05:06', 'rojo'),
(50, 1, 1.2, 240.3, '100.5 cm', '2023-03-28 22:05:42', 'amarillo');

-- --------------------------------------------------------

--
-- Table structure for table `nodo`
--

CREATE TABLE `nodo` (
  `id` int(11) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nodo`
--

INSERT INTO `nodo` (`id`, `direccion`, `id_usuario`) VALUES
(1, 'Calle 1, Ciudad 1', 1),
(2, 'Calle 2, Ciudad 2', 2),
(3, 'Calle 3, Ciudad 3', 3),
(4, 'Calle 4, Ciudad 4', 4),
(5, 'Calle 5, Ciudad 5', 5),
(6, 'Calle 6, Ciudad 6', 6),
(7, 'Calle 7, Ciudad 7', 7),
(8, 'Calle 8, Ciudad 8', 8),
(9, 'Calle 9, Ciudad 9', 9),
(10, 'Calle 10, Ciudad 10', 10),
(11, 'Calle 11, Ciudad 11', 1),
(12, 'Calle 12, Ciudad 12', 2),
(13, 'Calle 13, Ciudad 13', 3),
(14, 'Calle 14, Ciudad 14', 4),
(15, 'pampalinda', 5),
(21, 'Cll4 #17c14', 3),
(22, 'Cll4 #17c14', 34),
(23, 'pampa', 34),
(25, 'montana', 34);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
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
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `tipo_usuario`, `usuario`, `contrasena`, `correo`, `telefono1`, `telefono2`) VALUES
(1, 'admin', 'admin', 'admin123', '', 0, 0),
(2, 'ciudadano', 'ciudadano1', 'ciudadano123', 'ciudadano1@example.com', 5552345, 5553456),
(3, 'bombero', 'bombero1', 'bombero123', 'bombero1@example.com', 5554567, NULL),
(4, 'ciudadano', 'ciudadano2', 'ciudadano456', 'ciudadano2@example.com', 5555678, 5556789),
(5, 'bombero', 'bombero2', 'bombero456', 'bombero2@example.com', 5557890, NULL),
(6, 'bombero', 'bombero3', 'bombero789', 'bombero3@example.com', 5558901, NULL),
(7, 'admin', 'admin2', 'admin456', 'admin2@example.com', 5559012, NULL),
(8, 'ciudadano', 'ciudadano3', 'ciudadano789', 'ciudadano3@example.com', 5550123, 5551234),
(9, 'bombero', 'bombero4', 'bomberoabc', 'bombero4@example.com', 5552345, NULL),
(10, 'ciudadano', 'ciudadano4', 'ciudadanoabc', 'ciudadano4@example.com', 5553456, 5554567),
(12, 'admin', 'gustavo316', 'contrasena123', 'gustavo@gmail.com', 2147483647, 2147483647),
(15, 'admin', 'mariagarcia', 'contrasena123', '', 0, 0),
(18, 'admin', 'gustavo3164', '131313131', 'marioe@gmail.com', 2147483647, 0),
(19, 'admin', 'sarat', 'contrasena123', 'sevas@gmail.com', 2147483647, 2147483647),
(25, 'admin', 'laura', 'laura123', 'laura@gmail.com', 121289319, 2147483647),
(30, 'admin', 'mariagarciaa', 'contrasena123', 'gustavo@gama.com', 2147483647, 21212),
(34, 'ciudadano', 'mafel', 'contrasena123', 'mafel@gmail.com', 312313, 13131),
(35, 'admin', 'juan', 'contrasena123', 'juan@hotmail.com', 2147483647, 2147483647),
(36, 'admin', 'gustaaaao316', '21314141', 'cristian@gmail.com', 2147483647, 312133),
(40, 'ciudadano', 'cristian', 'contrasena123', 'cristian123@gmail.com', 54654654, 1235894);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nodo` (`id_nodo`);

--
-- Indexes for table `dato`
--
ALTER TABLE `dato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nodo` (`id_nodo`);

--
-- Indexes for table `nodo`
--
ALTER TABLE `nodo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerta`
--
ALTER TABLE `alerta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dato`
--
ALTER TABLE `dato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `nodo`
--
ALTER TABLE `nodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alerta`
--
ALTER TABLE `alerta`
  ADD CONSTRAINT `alerta_ibfk_1` FOREIGN KEY (`id_nodo`) REFERENCES `nodo` (`id`);

--
-- Constraints for table `dato`
--
ALTER TABLE `dato`
  ADD CONSTRAINT `dato_ibfk_1` FOREIGN KEY (`id_nodo`) REFERENCES `nodo` (`id`);

--
-- Constraints for table `nodo`
--
ALTER TABLE `nodo`
  ADD CONSTRAINT `nodo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
