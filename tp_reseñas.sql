 -- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 19:40:00
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
-- Base de datos: `tpo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseña juegos`
--

CREATE TABLE `resena juegos` (
  `ID_resena` int(11) NOT NULL,
  `Nombre de juego` varchar(45) NOT NULL,
  `Creador` varchar(45) NOT NULL,
  `Fecha de lanzamiento` date NOT NULL,
  `Genero` varchar(45) NOT NULL,
  `Opinion` varchar(45) NOT NULL,
  `ID_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Mail` varchar(45) NOT NULL,
  `Contrasena` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reseña juegos`
--
ALTER TABLE `resena juegos`
  ADD PRIMARY KEY (`ID_resena`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reseña juegos`
--
ALTER TABLE `resena juegos`
  MODIFY `ID_resena` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reseña juegos`
--
ALTER TABLE `resena juegos`
  ADD CONSTRAINT `resena juegos_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO `usuario` (`ID_usuario`, `Nombre`, `Mail`, `Contrasena`);
VALUES                (NULL, 'pepe', 'pepito14@gmail.com', 'pepeescrack');

INSERT INTO `resena juegos` (`ID_resena`, `Nombre de juego`, `Creador`, `Fecha de lanzamiento`, `Genero`, `Opinion`, `ID_usuario`);
VALUES                      (NULL, 'GTA V', 'Rockstar Games', '2013-09-17', 'mundo abierto', 'Muy buen juego, es divertido !!', '1');
