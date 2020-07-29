-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2020 a las 19:58:32
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
(1, 1, 'JOSE ARANIVAR', 'CREADO', 'INMUEBLES', '2020-07-15 16:01:25', 'TODO BIEN', 1),
(2, 1, 'MARIA SEQUIIROS', 'ENTREGADO', 'VENTANILLA UNICA', '2020-07-15 16:35:03', 'TODO BIEN', 1),
(3, 3, 'JOSE CANCETO', 'ENTREGADO', 'CAMBIO NOMBRE CODIFICAION', '2020-07-15 16:54:25', '', 1),
(4, 3, 'MARIA SEQUIIROS', 'ENTREGADO', 'CERTIFICAION BANCARIA', '2020-07-15 16:56:25', 'TODO BIEN', 1),
(5, 5, 'MARIA SEQUIIROS', 'ENTREGADO', 'CAMBIO NOMBRE CODIFICAION', '2020-07-15 17:52:30', 'BIEN', 1),
(6, 6, 'MARIA SEQUIIROS', 'ENTREGADO', 'CAMBIO NOMBRE CODIFICAION', '2020-07-15 17:57:43', 'TODO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE `inmuebles` (
  `idinmueble` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `form27` varchar(150) NOT NULL,
  `numtecnica` varchar(150) NOT NULL,
  `numtramite` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `iduser` int(11) NOT NULL,
  `ci` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`idinmueble`, `nombre`, `form27`, `numtecnica`, `numtramite`, `fecha`, `iduser`, `ci`) VALUES
(1, 'BLANCO RAMOS EXILDA', '3528535', '279727', '389-16', '2020-07-15 16:00:30', 2, '123213'),
(3, 'JOSE ARANIVAR', '784545', '156456', '4156', '2020-07-15 16:41:58', 1, '1231'),
(4, 'JOSE ARANIVAR', '784545', '12345', '123', '2020-07-15 16:56:02', 1, '12412412'),
(5, 'maria', '1564695', '146', '1263', '2020-07-15 17:52:22', 1, '4156'),
(6, 'JOSE ARANIVAR', '456', '1234165', '0123', '2020-07-15 17:57:34', 1, '2020');

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

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`idtramite`, `ci`, `asunto`, `nombre`, `fecha`, `idusuario`, `numero`, `estado`) VALUES
(1, '7336199', 'Cambio nombre vehiculos', 'adimer paul', '2020-07-07 13:47:20', 1, '20200', 'CREADO'),
(3, '323125456', 'cambiuo de funete', 'jose canzeco', '2020-07-07 14:10:51', 1, '3030', 'CREADO'),
(4, '123456789', 'CAMBIO NOMBRE NOMBRE', 'ADIMER PAUL', '2020-07-07 17:58:48', 1, '5050', 'CREADO'),
(5, '7336199', 'CAMBIO DE PLACAS', 'JOSE VENTURA', '2020-07-08 00:31:31', 3, '3636', 'CREADO'),
(6, '2736635', 'renovacion algo', 'jose perez', '2020-07-08 12:48:46', 4, '2345', 'CREADO'),
(7, '12345', 'cambio nombre', 'juanito alcachofa', '2020-07-09 15:09:44', 5, '7070', 'CREADO'),
(8, '1234567', 'CAMBIO DE NOMBRES', 'juancito', '2020-07-09 15:34:10', 4, '99999', 'CREADO'),
(9, '', 'duplicado placa  5025esk', 'mariela bernabel', '2020-07-09 15:51:57', 6, '44949', 'CREADO'),
(10, '4790416', 'solicitud colocado pasacalle', 'condori condori beltran', '2020-07-09 17:18:21', 7, '42968', 'CREADO'),
(11, '5252', 'CAMBIO NOMBRE', 'JOSE ARANIVAR', '2020-07-15 16:50:13', 1, '4545', 'CREADO');

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
  ADD PRIMARY KEY (`idinmueble`),
  ADD KEY `iduser` (`iduser`);

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
  MODIFY `idhistoriain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  MODIFY `idinmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `idtramite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Filtros para la tabla `inmuebles`
--
ALTER TABLE `inmuebles`
  ADD CONSTRAINT `inmuebles_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`);

--
-- Filtros para la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD CONSTRAINT `tramite_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `users` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
