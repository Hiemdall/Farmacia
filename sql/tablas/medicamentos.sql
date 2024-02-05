-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-02-2024 a las 06:54:23
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
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'Analgesium', 'Analgésico de acción rápida para alivio del dolor leve a moderado', 100),
(2, 'Febrostop', 'Antipirético eficaz en el tratamiento de fiebres altas', 50),
(3, 'Gastrolit', 'Medicamento para el tratamiento de la acidez y el reflujo gástrico', 200),
(4, 'Antialergin', 'Antihistamínico para el alivio de alergias estacionales', 150),
(5, 'Tranquilax', 'Sedante suave para ayudar a regular el sueño', 75),
(6, 'Dolorix', 'Analgésico potente para dolores intensos o crónicos', 40),
(7, 'Cardiopril', 'Medicamento para regular la presión arterial alta', 60),
(8, 'Diabetrol', 'Medicamento para el control de la diabetes tipo 2', 80),
(9, 'Antivirum', 'Antiviral para el tratamiento de infecciones virales leves', 120),
(10, 'Bronchoclear', 'Expectorante para aliviar la tos y limpiar las vías respiratorias', 90);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
