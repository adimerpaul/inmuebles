-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2020 a las 15:31:19
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia`
--

CREATE TABLE `historia` (
  `idhistoria` int(11) NOT NULL,
  `idtramite` int(11) NOT NULL,
  `estado` varchar(150) NOT NULL,
  `lugar` varchar(150) NOT NULL,
  `iduser` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `detalle` varchar(150) NOT NULL,
  `personal` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historia`
--

INSERT INTO `historia` (`idhistoria`, `idtramite`, `estado`, `lugar`, `iduser`, `fecha`, `detalle`, `personal`) VALUES
(1, 1, 'ENTREGADO', 'VENTANILLA UNICA', 1, '2020-07-07 17:10:05', 'se entregoi a la secretaria ', ''),
(3, 1, 'ENTREGADO', 'VEHICULOS', 1, '2020-07-07 17:14:39', 'se entrego a ester', ''),
(4, 5, 'ENTREGADO', 'VENTANILLA UNICA', 3, '2020-07-08 00:31:46', 'tobo bien', 'MARIA SEQUEIROS'),
(16, 5, 'ENTREGADO', 'VEHICULOS', 3, '2020-07-08 00:42:33', '', ''),
(17, 5, 'ENTREGADO', 'VENTANILLA UNICA', 3, '2020-07-08 00:43:23', '', ''),
(18, 5, 'ENTREGADO', 'VEHICULOS', 3, '2020-07-08 00:45:11', '', 'MARIA SEQUIIROS'),
(19, 5, 'ENTREGADO', 'VENTANILLA UNICA', 3, '2020-07-08 00:51:02', '', 'JOSE CANCETO'),
(20, 6, 'ENTREGADO', 'VENTANILLA UNICA', 4, '2020-07-08 12:49:29', 'trabajo a freddy', 'pablo'),
(21, 7, 'ENTREGADO', 'VEHICULOS', 5, '2020-07-09 15:10:01', '', 'JOSE CANCETO'),
(22, 7, 'ENTREGADO', 'INDUSTRI COMERCIO', 5, '2020-07-09 15:10:50', 'se entrego a la secre', 'CARLOS'),
(23, 8, 'ENTREGADO', 'INMUEBLES', 4, '2020-07-09 15:34:44', 'eentreagdo asu secrataria', 'pablo'),
(24, 9, 'ENTREGADO', 'VENTANILLA UNICA', 6, '2020-07-09 15:55:18', '', 'SHIRLEY VILLEGAS PINTO'),
(25, 9, 'ENTREGADO', 'VEHICULOS', 6, '2020-07-09 15:55:49', '', 'MARIA SEQUIIROS'),
(26, 10, 'ENTREGADO', 'ESPEC. PUBLICOS', 7, '2020-07-09 17:20:13', 'se entrego conformemente', 'FATIMA CRISTINA ROJAS CHAVEZ'),
(27, 10, 'ENTREGADO', 'VENTANILLA UNICA', 7, '2020-07-09 17:21:29', 'se entrego conformemente', 'FATIMA CRISTINA ROJAS CHAVEZ'),
(28, 1, 'DESPACHADO', 'VENTANILLA UNICA', 1, '2020-07-15 16:26:26', 'TODO BIEN', 'JOSE CANCETO'),
(29, 1, 'DESPACHADO', 'VENTANILLA UNICA', 1, '2020-07-15 16:26:30', 'TODO BIEN', 'JOSE CANCETO'),
(30, 1, 'ENTREGADO', 'VENTANILLA UNICA', 1, '2020-07-15 16:27:08', 'TODO BIEN', 'MARIA SEQUIIROS'),
(31, 11, 'ENTREGADO', 'VENTANILLA UNICA', 1, '2020-07-15 16:50:42', 'se netrgo', 'MARIA SEQUIIROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historiain`
--

CREATE TABLE `historiain` (
  `idhistoriain` int(11) NOT NULL,
  `idinmueble` int(11) NOT NULL,
  `personal` varchar(150) NOT NULL,
  `estado` varchar(150) NOT NULL,
  `lugar` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `detalle` varchar(150) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historiain`
--

INSERT INTO `historiain` (`idhistoriain`, `idinmueble`, `personal`, `estado`, `lugar`, `fecha`, `detalle`, `iduser`) VALUES
(1, 2, 'JOSE CANCETO', 'ENTREGADO', 'TRANFERENCIAS', '2020-07-28 18:06:48', 'jose alberto', 1),
(2, 3, 'DANIEL CALLE', 'ENTREGADO', 'TRANFERENCIAS', '2020-07-29 13:24:18', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `idinmueble` int(11) NOT NULL,
  `numero` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `ci` varchar(150) NOT NULL,
  `num27` varchar(150) NOT NULL,
  `numtramite` varchar(150) NOT NULL,
  `numtecnica` varchar(150) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `tramite` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `iduser` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL DEFAULT 'CREADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`idinmueble`, `numero`, `nombre`, `ci`, `num27`, `numtramite`, `numtecnica`, `direccion`, `tramite`, `fecha`, `iduser`, `estado`) VALUES
(2, '456', 'JOSE', '1010', '456789', '4564156', '1426312', 'calle bolivar', '', '2020-07-28 18:06:21', 1, 'TERMINADO'),
(3, '457', 'JOSE CALLE VERA', '7894561', '132456', '153456', '465156', 'calle bolivar', 'TC', '2020-07-29 12:33:13', 1, 'CREADO'),
(4, '458', 'MARIA', '789456', '456489', '4156468', '1465456', 'calle bolivar y 6 de agosto', 'TI', '2020-07-29 12:47:14', 1, 'TERMINADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE `tramite` (
  `idtramite` int(11) NOT NULL,
  `ci` varchar(150) NOT NULL,
  `asunto` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `idusuario` int(11) NOT NULL,
  `numero` varchar(150) NOT NULL,
  `estado` varchar(150) NOT NULL DEFAULT 'CREADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `unidad` varchar(150) NOT NULL,
  `tipo` varchar(150) NOT NULL DEFAULT 'RECEPCIONISTA',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombrecompleto` varchar(150) NOT NULL,
  `celular` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`iduser`, `nombre`, `clave`, `unidad`, `tipo`, `fecha`, `nombrecompleto`, `celular`) VALUES
(1, 'admin', '1010', 'VENTANILLA UNICA', 'ADMIN', '2020-07-07 13:15:11', 'ADIMER PAUL CHAMBI AJATA', '69603027'),
(2, 'jose', '', 'INMUEBLES', 'RECEPCIONISTA', '2020-07-08 00:16:20', 'JOSE CANCETO', '69603027'),
(3, 'maria', '123', 'VEHICULOS', 'RECEPCIONISTA', '2020-07-08 00:18:12', 'MARIA SEQUIIROS', '69603027'),
(4, 'PPP', 'hola', 'INMUEBLES', 'RECEPCIONISTA', '2020-07-08 12:47:54', 'pablo', '7777777'),
(5, 'CARLOS', '12345', 'INDUSTRI COMERCIO', 'RECEPCIONISTA', '2020-07-09 15:06:55', 'CARLOS', '77640825'),
(6, 'SISI', 'sisi3083105', 'VEHICULOS', 'RECEPCIONISTA', '2020-07-09 15:48:43', 'SHIRLEY VILLEGAS PINTO', '72339192'),
(7, 'FATI', '50011fati', 'ESPEC. PUBLICOS', 'RECEPCIONISTA', '2020-07-09 17:16:14', 'FATIMA CRISTINA ROJAS CHAVEZ', '76491900');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`idhistoria`),
  ADD KEY `idtramite` (`idtramite`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `historiain`
--
ALTER TABLE `historiain`
  ADD PRIMARY KEY (`idhistoriain`),
  ADD KEY `idinmueble` (`idinmueble`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD PRIMARY KEY (`idinmueble`);

--
-- Indices de la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD PRIMARY KEY (`idtramite`),
  ADD KEY `tramite_ibfk_1` (`idusuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historia`
--
ALTER TABLE `historia`
  MODIFY `idhistoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `historiain`
--
ALTER TABLE `historiain`
  MODIFY `idhistoriain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `idinmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `idtramite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historia`
--
ALTER TABLE `historia`
  ADD CONSTRAINT `historia_ibfk_1` FOREIGN KEY (`idtramite`) REFERENCES `tramite` (`idtramite`),
  ADD CONSTRAINT `historia_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Filtros para la tabla `historiain`
--
ALTER TABLE `historiain`
  ADD CONSTRAINT `historiain_ibfk_1` FOREIGN KEY (`idinmueble`) REFERENCES `inmuebles` (`idinmueble`),
  ADD CONSTRAINT `historiain_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Filtros para la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD CONSTRAINT `tramite_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `users` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
