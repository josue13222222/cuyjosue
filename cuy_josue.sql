-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2025 a las 07:02:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuy_josue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensor_data`
--

CREATE TABLE `sensor_data` (
  `id` int(11) NOT NULL,
  `dispositivo` varchar(10) DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `humedad_aire` int(11) DEFAULT NULL,
  `amoniaco` int(11) DEFAULT NULL,
  `humedad_suelo` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sensor_data`
--

INSERT INTO `sensor_data` (`id`, `dispositivo`, `temperatura`, `humedad_aire`, `amoniaco`, `humedad_suelo`, `fecha`) VALUES
(3, '001', 23, 20, 20, 25, '2025-05-18 23:22:33'),
(4, '002', 50, 50, 50, 50, '2025-05-18 23:22:53'),
(5, '003', 70, 70, 70, 70, '2025-05-18 23:23:02'),
(6, '004', 80, 80, 80, 80, '2025-05-18 23:23:09'),
(7, '005', 10, 10, 10, 10, '2025-05-18 23:23:17'),
(8, '007', 20, 20, 50, 50, '2025-05-18 23:29:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sensor_data`
--
ALTER TABLE `sensor_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sensor_data`
--
ALTER TABLE `sensor_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
