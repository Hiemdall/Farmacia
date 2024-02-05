-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-02-2024 a las 06:53:42
-- Versión del servidor: 10.6.16-MariaDB-cll-lve
-- Versión de PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blockbl5_asecoemg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_sucursales`
--

CREATE TABLE `inventario_sucursales` (
  `id_medicamento` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `inventario_sucursales`
--

INSERT INTO `inventario_sucursales` (`id_medicamento`, `id_sucursal`, `cantidad`) VALUES
(1, 1, 20),
(2, 1, 15),
(3, 2, 10),
(4, 2, 5),
(5, 3, 8),
(6, 4, 12),
(7, 5, 20),
(8, 6, 7),
(9, 3, 25),
(10, 4, 10),
(3, 6, 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventario_sucursales`
--
ALTER TABLE `inventario_sucursales`
  ADD KEY `id_medicamento` (`id_medicamento`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario_sucursales`
--
ALTER TABLE `inventario_sucursales`
  ADD CONSTRAINT `inventario_sucursales_ibfk_1` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id`),
  ADD CONSTRAINT `inventario_sucursales_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
