-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2022 a las 12:03:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laboratorio2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automovil`
--

CREATE TABLE `automovil` (
  `idAuto` int(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `marca` varchar(60) NOT NULL,
  `modelo` varchar(60) NOT NULL,
  `color` varchar(60) NOT NULL,
  `precio` double(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `automovil`
--

INSERT INTO `automovil` (`idAuto`, `matricula`, `marca`, `modelo`, `color`, `precio`) VALUES
(1, 'c-12452', 'nissann', 'gtr', 'rojp', 15000),
(2, 'c-1245', 'nissan', 'gtr', 'verde', 10000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `email`, `estado`) VALUES
(1, 'eliass', '$2y$10$TCCEJ7ltnB7EgcDAwtWmIuSFuWmc5wXebQini2qk3bDTQfBe/wcQO', 'elias_reyes@gmail.com', 0),
(2, 'dani', '$2y$10$qhIwOX7IiMzVqkkopsQBCus20Rs5F1y.ctTodDt5AUxaXqJpvE6ym', 'danibenavi1907@gmail.com', 0),
(3, 'carmen', '$2y$10$C.Bafg/0hOIm.9hoT8Szc.OE.SidNacufQW8KGy.UNIikBcWzZcSW', 'daniel@gmail.com', 0),
(4, 'darkSoul', '$2y$10$esWoEsptr6f79AFXDFe0GOEyHtAYxrbo9Vs/JKINRuKKTxADdFYTW', 'darksoul032022@gmail.com', 0),
(5, 'german', '$2y$10$KS9wVra/6bXlivLVPrzimONeeC8m21XicEGdwZtBrTqkcF9PyzJZC', 'german@gmail.com', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `automovil`
--
ALTER TABLE `automovil`
  ADD PRIMARY KEY (`idAuto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `automovil`
--
ALTER TABLE `automovil`
  MODIFY `idAuto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
