-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-06-2021 a las 20:12:32
-- Versión del servidor: 8.0.22
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nutricion_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidosCliente` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `dniCliente` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `telefonoCliente` int NOT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccionCliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `apellidosCliente`, `dniCliente`, `telefonoCliente`, `correoElectronicoCliente`, `direccionCliente`) VALUES
(1, 'Juana', 'Arco Flecha', '86375902J', 928205409, 'juanaarco@hotmail.com', 'AV Fuego 1'),
(2, 'José', 'Pérez Lorenzo', '34981445L', 968933586, 'joseperezlorenzo@gmail.com', 'Paseo Tranquilo 98');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `fechaIngresoEmpleado` date NOT NULL,
  `domicilioEmpleado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `telefonoEmpleado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidosEmpleado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreEmpleado` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `dniEmpleado` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `salarioEmpleado` decimal(6,2) NOT NULL,
  `idEmpleadoJefeFk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `fechaIngresoEmpleado`, `domicilioEmpleado`, `telefonoEmpleado`, `apellidosEmpleado`, `nombreEmpleado`, `dniEmpleado`, `salarioEmpleado`, `idEmpleadoJefeFk`) VALUES
(1, '2015-10-16', 'Calle Pequeña 44', '664890098', 'Porras Lorca', 'Javier', '22399855L', '1500.00', 1),
(2, '2015-09-04', 'AV Grande 40', '669686766', 'Losco García', 'Antonio', '44837615Y', '1600.00', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaordenescompra`
--

CREATE TABLE `lineaordenescompra` (
  `idLineaOrdenCompra` int NOT NULL,
  `cantidad` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `idOrdenCompraFK` int NOT NULL,
  `idProductoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lineaordenescompra`
--

INSERT INTO `lineaordenescompra` (`idLineaOrdenCompra`, `cantidad`, `idOrdenCompraFK`, `idProductoFK`) VALUES
(1, '5', 1, 1),
(2, '2', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenescompra`
--

CREATE TABLE `ordenescompra` (
  `idOrdenCompra` int NOT NULL,
  `totalOrdenCompra` decimal(6,2) NOT NULL,
  `subtotalOrdenCompra` decimal(6,2) NOT NULL,
  `ivaOrdenCompra` int NOT NULL,
  `fechaOrdenCompra` date NOT NULL,
  `idClienteFK` int NOT NULL,
  `idEmpleadoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ordenescompra`
--

INSERT INTO `ordenescompra` (`idOrdenCompra`, `totalOrdenCompra`, `subtotalOrdenCompra`, `ivaOrdenCompra`, `fechaOrdenCompra`, `idClienteFK`, `idEmpleadoFK`) VALUES
(1, '525.50', '415.15', 21, '2021-02-12', 1, 1),
(2, '280.80', '221.83', 21, '2021-02-11', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `descripcionProducto` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `precioProducto` decimal(6,2) NOT NULL,
  `stockProducto` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `descripcionProducto`, `precioProducto`, `stockProducto`) VALUES
(1, 'Creatina Creapure 500gr', '12.00', '20'),
(2, 'Proteína Whey 2kg', '25.00', '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotor`
--

CREATE TABLE `promotor` (
  `idPromotor` int NOT NULL,
  `carteraClientes` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `idEmpleadoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `promotor`
--

INSERT INTO `promotor` (`idPromotor`, `carteraClientes`, `idEmpleadoFK`) VALUES
(1, 'Juana Arco Flecha', 2),
(2, 'José Pérez Lorenzo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `idVendedor` int NOT NULL,
  `primaVendedor` decimal(6,2) NOT NULL,
  `idEmpleadoFK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`idVendedor`, `primaVendedor`, `idEmpleadoFK`) VALUES
(1, '80.00', 1),
(2, '100.00', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idEmpleadoJefeFk` (`idEmpleadoJefeFk`),
  ADD KEY `idEmpleadoJefeFk_2` (`idEmpleadoJefeFk`);

--
-- Indices de la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  ADD PRIMARY KEY (`idLineaOrdenCompra`),
  ADD KEY `idOrdenCompraFK` (`idOrdenCompraFK`,`idProductoFK`),
  ADD KEY `idOrdenCompraFK_2` (`idOrdenCompraFK`,`idProductoFK`),
  ADD KEY `idProductoFK` (`idProductoFK`);

--
-- Indices de la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  ADD PRIMARY KEY (`idOrdenCompra`),
  ADD KEY `idClienteFK` (`idClienteFK`,`idEmpleadoFK`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `promotor`
--
ALTER TABLE `promotor`
  ADD PRIMARY KEY (`idPromotor`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idVendedor`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`),
  ADD KEY `idEmpleadoFK_2` (`idEmpleadoFK`),
  ADD KEY `idEmpleadoFK_3` (`idEmpleadoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  MODIFY `idLineaOrdenCompra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  MODIFY `idOrdenCompra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `promotor`
--
ALTER TABLE `promotor`
  MODIFY `idPromotor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `idVendedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idEmpleadoJefeFk`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `lineaordenescompra`
--
ALTER TABLE `lineaordenescompra`
  ADD CONSTRAINT `lineaordenescompra_ibfk_1` FOREIGN KEY (`idProductoFK`) REFERENCES `lineaordenescompra` (`idLineaOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lineaordenescompra_ibfk_2` FOREIGN KEY (`idLineaOrdenCompra`) REFERENCES `ordenescompra` (`idOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `ordenescompra`
--
ALTER TABLE `ordenescompra`
  ADD CONSTRAINT `ordenescompra_ibfk_1` FOREIGN KEY (`idClienteFK`) REFERENCES `ordenescompra` (`idOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `ordenescompra_ibfk_2` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `ordenescompra` (`idOrdenCompra`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `promotor`
--
ALTER TABLE `promotor`
  ADD CONSTRAINT `promotor_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `promotor` (`idPromotor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `vendedor` (`idVendedor`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
