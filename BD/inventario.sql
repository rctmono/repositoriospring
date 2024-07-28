-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2024 a las 01:41:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `codigo` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int(10) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `descripcion`, `precio`, `stock`) VALUES
(1, 'arroz', 2300, 40),
(2, 'frijol', 3000, 32),
(3, 'sardinas', 6000, 14),
(4, 'aceite', 12000, 20),
(5, 'lentejas', 2300, 60),
(6, 'sal', 1500, 10),
(7, 'azucar', 2000, 30),
(8, 'pasta', 2300, 40),
(9, 'atun', 5000, 20),
(10, 'garbanzo', 3200, 55),
(11, 'pan', 500, 12),
(12, 'harina de maiz', 2400, 23),
(13, 'cafe', 8700, 23),
(14, 'chocolate', 4500, 11),
(15, 'maiz', 3400, 30),
(16, 'mantequilla', 2300, 60),
(17, 'agua', 1200, 12),
(18, 'gaseosa', 4000, 20),
(19, 'ponque', 5000, 12),
(20, 'leche', 5000, 8),
(21, 'papas fritas', 2000, 20),
(22, 'tomate', 2000, 30),
(23, 'qw2', 323, 3),
(24, 'qw24', 323, 3),
(25, 'prueba', 223, 34),
(26, 'prueba2', 12333, 32321),
(27, 'prueba4', 12333, 33),
(28, 'prueba5', 12333, 33),
(29, 'prueba6', 5465645, 33),
(30, 'dfsdf', 54353, 223),
(31, 'gato', 12340, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `apellido`, `correo`, `nombre`) VALUES
(1, 'Cardenas', 'rctmono@gmail.com', 'Raul'),
(2, 'Rios', 'ntr12@gmail.com', 'Niyer'),
(8, 'Cardenas', 'rco@gmail.com', 'Pepe'),
(11, 'Cardenas', 'fff@gmail.com', 'fffdh'),
(14, 'Perez', 'monote@pepon.com', 'Christian'),
(17, 'Urrego', 'marce@pepito.com', 'Jenny Marcela'),
(20, 'Mordelon', 'miau@pepito.com', 'Perrito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_cdmw5hxlfj78uf4997i3qyyw5` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
