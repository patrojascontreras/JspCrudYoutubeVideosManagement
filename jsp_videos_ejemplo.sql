-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2020 a las 21:53:03
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jsp_videos_ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`) VALUES
(1, 'Música'),
(2, 'Cine'),
(3, 'Política'),
(4, 'Deportes'),
(5, 'Artes'),
(6, 'Entretención'),
(7, 'Turismo'),
(8, 'Aventura'),
(9, 'Educación'),
(10, 'Espectaculo'),
(11, 'Salud'),
(13, 'Economia'),
(14, 'Sociedad'),
(15, 'Empleos'),
(16, 'Cocina'),
(17, 'Avisos economicos'),
(18, 'Tiempo libre'),
(19, 'Cultura'),
(20, 'Publicidad'),
(21, 'Actualidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `titulo_video` varchar(200) DEFAULT NULL,
  `video` varchar(1000) DEFAULT NULL,
  `categoria_video` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id_video`, `titulo_video`, `video`, `categoria_video`) VALUES
(1, 'Stratovarius - Madness Strikes at Midnight', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/h96Asp5BO2k\" frameborder=\"0\" allowfullscreen></iframe>', 1),
(2, 'Stratovarius - Coming Home', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/NUawCrHH2cw\" frameborder=\"0\" allowfullscreen></iframe>', 4),
(3, 'Stratovarius - When the night meets the day', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/GnetYxp6LSI\" frameborder=\"0\" allowfullscreen></iframe>', 9),
(4, 'Rhapsody of Fire - Where Dragons Fly', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/NKvp7OcuhM0\" frameborder=\"0\" allowfullscreen></iframe>', 1),
(5, 'System of a down Aerials 65', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/vkbGFXgthQQ\" frameborder=\"0\" allowfullscreen></iframe>', 1),
(6, 'Stratovarius - We are the future', '<iframe width=\"250\" height=\"200\" src=\"https://www.youtube.com/embed/fAglhg301UY\" frameborder=\"0\" allowfullscreen></iframe>', 1),
(9, 'Chile en Francia 98 - Los goles de Marcelo Salas', '<iframe width=\'250\' height=\'200\' src=\'https://www.youtube.com/embed/mk-tvsSLtk8\' frameborder=\'0\' allowfullscreen></iframe>', 4),
(10, 'El día que murió Pinochet - 10 de diciembre de 2006 (Alegría nacional y mundial)', '<iframe width=\'250\' height=\'200\' src=\'https://www.youtube.com/embed/wOC9A1_daqI\' frameborder=\'0\' allowfullscreen></iframe>', 3),
(11, '1942: La Conquista del Paraiso (Soundtrack - Vangelis)', '<iframe width=\'250\' height=\'200\' src=\'https://www.youtube.com/embed/_lVQCjyD6Qs\' frameborder=\'0\' allowfullscreen></iframe>', 1),
(13, 'Metallica - Frantic (Live in Studio)', '<iframe width=\'250\' height=\'200\' src=\'https://www.youtube.com/embed/YQDxCl44I84\' frameborder=\'0\' allowfullscreen></iframe>', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `fk_video_categoria` (`categoria_video`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_video_categoria` FOREIGN KEY (`categoria_video`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
