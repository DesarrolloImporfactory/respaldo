-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-05-2024 a las 02:21:39
-- Versión del servidor: 8.0.36-2ubuntu3
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `imporsuit_pruebasjeimy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributos`
--

CREATE TABLE `atributos` (
  `id_atributo` bigint UNSIGNED NOT NULL,
  `nombre_atributo` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atributos`
--

INSERT INTO `atributos` (`id_atributo`, `nombre_atributo`) VALUES
(1, 'TALLA'),
(2, 'COLOR'),
(3, 'MARCA'),
(4, 'MODELO'),
(5, 'MATERIAL'),
(6, 'CAPACIDAD'),
(7, 'TALLA'),
(8, 'COLOR'),
(9, 'MARCA'),
(10, 'MODELO'),
(11, 'MATERIAL'),
(12, 'CAPACIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_adicional`
--

CREATE TABLE `banner_adicional` (
  `id` bigint UNSIGNED NOT NULL,
  `fondo_banner` text,
  `titulo` text,
  `texto_banner` text,
  `texto_boton` text,
  `enlace_boton` text,
  `alineacion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_marketplace`
--

CREATE TABLE `banner_marketplace` (
  `id` bigint UNSIGNED NOT NULL,
  `fondo_banner` text,
  `titulo` text,
  `texto_banner` text,
  `texto_boton` text,
  `enlace_boton` text,
  `alineacion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera_cuenta_pagar`
--

CREATE TABLE `cabecera_cuenta_pagar` (
  `id_cabecera` int NOT NULL,
  `numero_factura` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `tienda` varchar(100) DEFAULT NULL,
  `estado_guia` int DEFAULT NULL,
  `estado_pedido` int DEFAULT NULL,
  `total_venta` double DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `precio_envio` double DEFAULT NULL,
  `monto_recibir` double DEFAULT NULL,
  `valor_cobrado` double DEFAULT '0',
  `valor_pendiente` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_chica`
--

CREATE TABLE `caja_chica` (
  `id_caja` int NOT NULL,
  `referencia_caja` varchar(255) NOT NULL,
  `monto_caja` double NOT NULL,
  `descripcion_caja` varchar(255) NOT NULL,
  `tipo_caja` tinyint NOT NULL,
  `users_caja` int NOT NULL,
  `date_added_caja` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas_tienda`
--

CREATE TABLE `caracteristicas_tienda` (
  `id` int NOT NULL,
  `id_producto` int DEFAULT '0',
  `texto` varchar(255) DEFAULT NULL,
  `icon_text` varchar(100) DEFAULT NULL,
  `enlace_icon` varchar(100) DEFAULT NULL,
  `subtexto_icon` varchar(100) DEFAULT NULL,
  `accion` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caracteristicas_tienda`
--

INSERT INTO `caracteristicas_tienda` (`id`, `id_producto`, `texto`, `icon_text`, `enlace_icon`, `subtexto_icon`, `accion`) VALUES
(20, 0, 'Envío Gratis a todo el País', 'fa-truck', NULL, 'Llegamos a todo el País', 1),
(21, 0, 'Pago Contra Entrega', 'fa-lock', NULL, 'Paga cuando recibes el producto', 2),
(22, 0, 'Atención al cliente', 'fa-headset', NULL, 'Soporte 100% garantizado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int NOT NULL,
  `nombre_cargo` varchar(255) NOT NULL,
  `estado_cargo` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad_cotizacion`
--

CREATE TABLE `ciudad_cotizacion` (
  `id_cotizacion` int NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `cobertura_servientrega` tinyint DEFAULT '0',
  `cobertura_laar` tinyint DEFAULT '0',
  `cobertura_gintracom` tinyint DEFAULT '0',
  `trayecto_servientrega` varchar(10) DEFAULT NULL,
  `trayecto_laar` varchar(10) DEFAULT NULL,
  `trayecto_gintracom` varchar(10) DEFAULT NULL,
  `codigo_provincia_servientrega` varchar(100) DEFAULT NULL,
  `codigo_provincia_laar` varchar(100) DEFAULT NULL,
  `codigo_ciudad_laar` varchar(100) DEFAULT NULL,
  `codigo_provincia_gintracom` varchar(100) DEFAULT NULL,
  `codigo_ciudad_gintracom` varchar(100) DEFAULT NULL,
  `codigo_ciudad_servientrega` varchar(100) DEFAULT NULL,
  `id_pais` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ciudad_cotizacion`
--

INSERT INTO `ciudad_cotizacion` (`id_cotizacion`, `provincia`, `ciudad`, `cobertura_servientrega`, `cobertura_laar`, `cobertura_gintracom`, `trayecto_servientrega`, `trayecto_laar`, `trayecto_gintracom`, `codigo_provincia_servientrega`, `codigo_provincia_laar`, `codigo_ciudad_laar`, `codigo_provincia_gintracom`, `codigo_ciudad_gintracom`, `codigo_ciudad_servientrega`, `id_pais`) VALUES
(1, 'AZUAY', 'BANOS', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '694', 1),
(2, 'AZUAY', 'CHAULLABAMBA', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '0', 1),
(3, 'AZUAY', 'Checa/AZUAY', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '0', 1),
(4, 'AZUAY', 'CHILCAPAMBA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(5, 'AZUAY', 'Chiquintad', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '', 1),
(6, 'AZUAY', 'CHORDELEG', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003006', '0', '0', '221', 1),
(7, 'AZUAY', 'CUENCA', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001003', '201001003011', '1022', '56247', '4', 1),
(8, 'AZUAY', 'CUMBE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003017', '0', '0', '498', 1),
(9, 'AZUAY', 'EL PAN', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '497', 1),
(10, 'AZUAY', 'Firma', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '', 1),
(11, 'AZUAY', 'GIRON', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003002', '0', '0', '34', 1),
(12, 'AZUAY', 'GUACHAPALA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '501', 1),
(13, 'AZUAY', 'GUALACEO', 1, 1, 0, 'TR', 'TE', '0', '0', '201001003', '201001003003', '0', '0', '19', 1),
(14, 'AZUAY', 'LA UNION/AZUAY', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '503', 1),
(15, 'AZUAY', 'Llacao', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '', 1),
(16, 'AZUAY', 'NABON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '812', 1),
(17, 'AZUAY', 'NULTI', 0, 1, 0, '0', 'TE', '0', '', '', '', '', '', '', 1),
(18, 'AZUAY', 'ONA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001016002', '0', '0', '814', 1),
(19, 'AZUAY', 'PACCHA ', 0, 1, 1, '0', 'TE', 'TN', '0', '201001003', '201001003023', '1022', '59059', '0', 1),
(20, 'BOLIVAR', '1ERO DE MAYO', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1023', '57670', '499', 1),
(21, 'BOLIVAR', '4 ESQUINAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '689', 1),
(22, 'BOLIVAR', 'ASUNCION', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '57672', '696', 1),
(23, 'BOLIVAR', 'BALZAPAMBA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '507', 1),
(24, 'BOLIVAR', 'CALUMA/BOLIVAR', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '72', 1),
(25, 'BOLIVAR', 'CHILLANES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '110', 1),
(26, 'BOLIVAR', 'CHIMBO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '56261', '286', 1),
(27, 'BOLIVAR', 'ECHEANDIA/BOLIVAR', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '382', 1),
(28, 'BOLIVAR', 'GUARANDA', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001004', '201001004001', '1023', '56264', '44', 1),
(29, 'BOLIVAR', 'LA MAGDALENA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '57674', '697', 1),
(30, 'BOLIVAR', 'LAS NAVES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '768', 1),
(31, 'BOLIVAR', 'PISAGUA ALTO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '508', 1),
(32, 'BOLIVAR', 'PISAGUA BAJO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '509', 1),
(33, 'BOLIVAR', 'RECINTO 24 DE MAYO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '698', 1),
(34, 'BOLIVAR', 'RECINTO EL PALMAR', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '699', 1),
(35, 'BOLIVAR', 'RECINTO LA MARITZA', 1, 0, 0, 'TE', 'TP', '0', '0', '0', '0', '0', '0', '700', 1),
(36, 'BOLIVAR', 'SALINAS/BOLIVAR', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '701', 1),
(37, 'BOLIVAR', 'SALINAS DE GUARANDA', 0, 1, 0, '0', 'TE', '0', '0', '201001004', '201001004011', '0', '0', '0', 1),
(38, 'BOLIVAR', 'SAN JOSE DE CHIMBO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001004', '201001004003', '1023', '57681', '500', 1),
(39, 'BOLIVAR', 'SAN LORENZO/BOLIVAR', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '59063', '771', 1),
(40, 'BOLIVAR', 'SAN MIGUEL DE BOLIVAR', 1, 1, 0, 'TE', 'TE', '0', '0', '201001004', '201001004006', '0', '0', '287', 1),
(41, 'BOLIVAR', 'SAN PABLO DE ATENAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '128', 1),
(42, 'BOLIVAR', 'SAN PEDRO DE GUANUJO', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1023', '57683', '285', 1),
(43, 'BOLIVAR', 'SAN SIMON', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '57684', '511', 1),
(44, 'BOLIVAR', 'SAN SIMON (YACOTO)', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '511', 1),
(45, 'BOLIVAR', 'SANTA FE', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1023', '57685', '512', 1),
(46, 'BOLIVAR', 'VINCHOA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '702', 1),
(47, 'CANAR', 'AZOGUES', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001005', '201001005001', '1024', '56277', '99', 1),
(48, 'CANAR', 'BIBLIAN', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001005', '201001005004', '1024', '56278', '392', 1),
(49, 'CARCHI', 'BOLIVAR', 1, 1, 0, 'TE', 'TE', '0', '0', '201001006', '201001006006', '0', '0', '271', 1),
(50, 'CANAR', 'CAÑAR', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001005', '201001005003', '1024', '56279', '81', 1),
(51, 'CANAR', 'CHARCAY', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(52, 'CARCHI', 'CHITAN DE NAVARRETES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '703', 1),
(53, 'CANAR', 'CHONTAMARCA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(54, 'CANAR', 'COCHANCAY', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '513', 1),
(55, 'CANAR', 'COJITAMBO', 1, 0, 1, 'TE', '0', 'TE', '0', '201001005', '201001005007', '1024', '57688', '692', 1),
(56, 'CARCHI', 'CRISTOBAL COLON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '272', 1),
(57, 'CARCHI', 'CUESACA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '704', 1),
(58, 'CANAR', 'DELEG', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '679', 1),
(59, 'CANAR', 'DUCUR', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '514', 1),
(60, 'CARCHI', 'EL ANGEL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001006', '201001006003', '0', '0', '273', 1),
(61, 'CARCHI', 'GARCIA MORENO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '279', 1),
(62, 'CANAR', 'GUAPAN', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1024', '57690', '515', 1),
(63, 'CARCHI', 'HUACA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001006', '201001006005', '0', '0', '274', 1),
(64, 'CANAR', 'INGAPIRCA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '516', 1),
(65, 'CANAR', 'JAVIER LOYOLA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1024', '57692', '517', 1),
(66, 'CANAR', 'JAVIN', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(67, 'CARCHI', 'JULIO ANDRADE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001006', '201001002041', '0', '0', '275', 1),
(68, 'CANAR', 'LA DOLOROSA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(69, 'CARCHI', 'LA PAZ', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '276', 1),
(70, 'CANAR', 'LA PUNTILLA/CANAR', 1, 0, 0, 'TR', '0', '0', '0', '0', '0', '0', '0', '502', 1),
(71, 'CANAR', 'LA TRONCAL', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001005', '201001005002', '1024', '56282', '52', 1),
(72, 'CANAR', 'LAS LAJAS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(73, 'CANAR', 'LUIS CORDERO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1024', '59065', '0', 1),
(74, 'CANAR', 'MANUEL J. CALLE', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1024', '59066', '0', 1),
(75, 'CARCHI', 'MIRA/CARCHI', 1, 0, 0, 'TE', '0', '0', '0', '201001006', '201001006002', '0', '0', '251', 1),
(76, 'CARCHI', 'PIOTER', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '124', 1),
(77, 'CARCHI', 'SAN GABRIEL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001006', '201001006004', '0', '0', '51', 1),
(78, 'CARCHI', 'SAN ISIDRO CARCHI SAN GABRIEL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '278', 1),
(79, 'CANAR', 'SAN MIGUEL', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1024', '59152', '0', 1),
(80, 'CARCHI', 'SANDIAL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '705', 1),
(81, 'CARCHI', 'SANTA MARTHA DE CUBA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '132', 1),
(82, 'CANAR', 'SUSCAL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '393', 1),
(83, 'CANAR', 'TAMBO', 1, 1, 0, 'TE', 'TE', 'TE', '0', '201001005', '201001003009', '0', '0', '394', 1),
(84, 'CARCHI', 'TULCAN', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001006', '201001006001', '1025', '56289', '39', 1),
(85, 'CANAR', 'VOLUNTAD DE DIOS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '506', 1),
(86, 'CANAR', 'ZHUD', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(87, 'CHIMBORAZO', 'ALAUSI', 1, 1, 0, 'TE', 'TE', '0', '', '', '', '', '', '91', 1),
(88, 'CHIMBORAZO', 'CAJABAMBA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001008', '201001008005', '0', '0', '678', 1),
(89, 'CHIMBORAZO', 'CHAMBO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001008', '201001004008', '0', '0', '241', 1),
(90, 'CHIMBORAZO', 'CHUNCHI', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '248', 1),
(91, 'CHIMBORAZO', 'COLTA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001008', '201001008008', '0', '0', '242', 1),
(92, 'CHIMBORAZO', 'CUMANDA/CHIMBORAZO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001008', '201001008012', '0', '0', '469', 1),
(93, 'CHIMBORAZO', 'EL GUANO', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '244', 1),
(94, 'CHIMBORAZO', 'FLORES', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1026', '59068', '0', 1),
(95, 'CHIMBORAZO', 'GUAMOTE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001008', '201001008007', '0', '0', '243', 1),
(96, 'CHIMBORAZO', 'GUANO', 0, 1, 1, '0', 'TE', 'TE', '', '201001001', '201001001070', '', '', '', 1),
(97, 'CHIMBORAZO', 'ILAPO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1026', '59069', '0', 1),
(98, 'CHIMBORAZO', 'LICAN', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001008', '201001008010', '1026', '57708', '518', 1),
(99, 'CHIMBORAZO', 'LICTO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1026', '59070', '0', 1),
(100, 'CHIMBORAZO', 'PALLATANGA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '467', 1),
(101, 'CHIMBORAZO', 'PENIPE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '246', 1),
(102, 'CHIMBORAZO', 'PUNGALA', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(103, 'CHIMBORAZO', 'PUNIN', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1026', '59071', '0', 1),
(104, 'CHIMBORAZO', 'RECINTO EL BATAN', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(105, 'CHIMBORAZO', 'RECINTO EL ROSARIO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(106, 'CHIMBORAZO', 'RECINTO SAN PEDRO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(107, 'CHIMBORAZO', 'RECITNO EL CHAGUE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(108, 'CHIMBORAZO', 'RECITNO FORTUNA BAJA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(109, 'CHIMBORAZO', 'RIOBAMBA', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001008', '201001008001', '1026', '56276', '43', 1),
(110, 'CHIMBORAZO', 'SAN ANDRES', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1026', '57709', '677', 1),
(111, 'CHIMBORAZO', 'SAN JUAN/CHIMBORAZO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1026', '59072', '0', 1),
(112, 'CHIMBORAZO', 'SAN LUIS (CHIMBORAZO)', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1026', '57710', '274', 1),
(113, 'COTOPAXI', '11 DE NOVIEMBRE (ILINCHISI)', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1027', '59075', '0', 1),
(114, 'COTOPAXI', 'ALAQUES (ALAQUEZ) ', 0, 1, 0, '0', 'TP', '0', '0', '0', '0', '0', '0', '0', 1),
(115, 'COTOPAXI', 'ANCHILIVI', 1, 1, 0, 'TE', 'TP', '0', '', '', '', '', '', '709', 1),
(116, 'COTOPAXI', 'BELISARIO QUEVEDO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007012', '1027', '57713', '521', 1),
(117, 'COTOPAXI', 'CHIPUALO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '522', 1),
(118, 'COTOPAXI', 'EL CARMEN ', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(119, 'COTOPAXI', 'EL CORAZON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '706', 1),
(120, 'COTOPAXI', 'EL MORAL', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(121, 'COTOPAXI', 'GUAYTACAMA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007009', '1027', '57716', '523', 1),
(122, 'COTOPAXI', 'LA MANA', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001013', '201001007005', '1027', '56291', '228', 1),
(123, 'COTOPAXI', 'LA VICTORIA/COTOPAXI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '711', 1),
(124, 'COTOPAXI', 'LASSO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007007', '1027', '57717', '257', 1),
(125, 'COTOPAXI', 'LATACUNGA', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001007', '201001007001', '1027', '56290', '41', 1),
(126, 'COTOPAXI', 'MORASPUNGO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '712', 1),
(127, 'COTOPAXI', 'MULALAO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007015', '1027', '57719', '524', 1),
(128, 'COTOPAXI', 'MULALILLO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '525', 1),
(129, 'COTOPAXI', 'MULALO', 0, 1, 0, '0', 'TE', '0', '0', '201001007', '201001007010', '0', '0', '0', 1),
(130, 'COTOPAXI', 'MULLIQUINDIL', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1027', '59074', '0', 1),
(131, 'COTOPAXI', 'PANGUA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '707', 1),
(132, 'COTOPAXI', 'PANZALEO', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1027', '57721', '526', 1),
(133, 'COTOPAXI', 'PASTOCALLE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007008', '1027', '57722', '527', 1),
(134, 'COTOPAXI', 'PATAIN', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '528', 1),
(135, 'COTOPAXI', 'POALO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1027', '57724', '710', 1),
(136, 'COTOPAXI', 'PUJILI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007004', '1027', '56293', '258', 1),
(137, 'COTOPAXI', 'RUMIPAMBA/COTOPAXI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '529', 1),
(138, 'COTOPAXI', 'SALCEDO', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001007', '201001007002', '1027', '56295', '66', 1),
(139, 'COTOPAXI', 'SAN BUENAVENTURA -BELLAVISTA.', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(140, 'COTOPAXI', 'SAN MARCOS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '530', 1),
(141, 'COTOPAXI', 'SAN MIGUEL', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(142, 'COTOPAXI', 'SANTA ANA COTOPAXI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '713', 1),
(143, 'COTOPAXI', 'SAQUISILI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007003', '1027', '56296', '256', 1),
(144, 'COTOPAXI', 'SIGCHOS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '708', 1),
(145, 'COTOPAXI', 'TANICUCHCHI', 0, 1, 0, '0', 'TE', '0', '0', '201001007', '201001007014', '0', '0', '0', 1),
(146, 'COTOPAXI', 'TANICUCHI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001007', '201001007011', '1027', '57728', '531', 1),
(147, 'COTOPAXI', 'TOACASO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1027', '57729', '532', 1),
(148, 'COTOPAXI', 'YANAYACU', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '533', 1),
(149, 'EL ORO', '3 CERRITOS PASAJE', 1, 0, 0, 'TE', '0', '', '', '', '', '', '', '534', 1),
(150, 'EL ORO', 'ARENILLAS', 1, 1, 0, 'TE', 'TE', '', '', '201001009', '201001009006', '', '', '65', 1),
(151, 'EL ORO', 'BARBONES', 0, 0, 1, '0', '0', 'TE', '', '', '', '1028', '57734', '', 1),
(152, 'EL ORO', 'BELLAVISTA/EL ORO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1028', '59076', '0', 1),
(153, 'EL ORO', 'BUENA VISTA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1028', '57736', '365', 1),
(154, 'EL ORO', 'CANA QUEMADA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1028', '57737', '538', 1),
(155, 'EL ORO', 'EL CAMBIO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001009', '201001009011', '1028', '57738', '351', 1),
(156, 'EL ORO', 'EL GUABO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001009', '201001009008', '1028', '56301', '58', 1),
(157, 'EL ORO', 'EL PACHE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '540', 1),
(158, 'EL ORO', 'EL PORTON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '541', 1),
(159, 'EL ORO', 'EL RETIRO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1028', '59077', '0', 1),
(160, 'EL ORO', 'HUAQUILLAS', 1, 1, 1, 'TR', 'TE', 'TN', '0', '201001009', '201001009007', '1028', '56302', '35', 1),
(161, 'EL ORO', 'LA AVANZADA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001009', '201001009019', '1028', '57741', '355', 1),
(162, 'EL ORO', 'LA IBERIA', 1, 0, 1, 'TE', 'TE', 'TE', '0', '0', '0', '1028', '57742', '542', 1),
(163, 'EL ORO', 'LA PEANA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001009', '201001009017', '1028', '57743', '366', 1),
(164, 'EL ORO', 'LA VICTORIA/EL ORO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '818', 1),
(165, 'EL ORO', 'LOMA DE FRANCO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001009', '201001009018', '0', '0', '368', 1),
(166, 'EL ORO', 'MACHALA', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001009', '201001009001', '1028', '56304', '7', 1),
(167, 'EL ORO', 'MARCABELI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '488', 1),
(168, 'EL ORO', 'PACCHA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '759', 1),
(169, 'EL ORO', 'PASAJE', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001009', '201001009002', '1028', '56306', '36', 1),
(170, 'EL ORO', 'PINAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001009', '201001009004', '0', '0', '50', 1),
(171, 'EL ORO', 'PORTOVELO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001009', '201001009003', '0', '0', '358', 1),
(172, 'EL ORO', 'PUERTO BOLIVAR', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001009', '201001009010', '1028', '55747', '352', 1),
(173, 'EL ORO', 'PUERTO HUALTACO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '371', 1),
(174, 'EL ORO', 'PUERTO JELI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '544', 1),
(175, 'EL ORO', 'RIO BONITO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '545', 1),
(176, 'EL ORO', 'SAN ANTONIO EL ORO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(177, 'EL ORO', 'SAN VICENTE DEL JOBO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '547', 1),
(178, 'ESMERALDAS', 'ATACAMES', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001010', '201001010003', '1029', '56311', '23', 1),
(179, 'ESMERALDAS', 'BORBON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '549', 1),
(180, 'ESMERALDAS', 'ESMERALDAS', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001010', '201001010001', '1029', '56313', '10', 1),
(181, 'ESMERALDAS', 'LA CONCORDIA/ESMERALDAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '69', 1),
(182, 'ESMERALDAS', 'LA INDEPENDENCIA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '236', 1),
(183, 'ESMERALDAS', 'LA UNION/ESMERALDAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '270', 1),
(184, 'ESMERALDAS', 'LA Y DE CALDERON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '716', 1),
(185, 'ESMERALDAS', 'LAGARTO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '714', 1),
(186, 'ESMERALDAS', 'LAS PENAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '717', 1),
(187, 'ESMERALDAS', 'MUISNE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '119', 1),
(188, 'ESMERALDAS', 'QUININDE', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001010', '201001010008', '1029', '56315', '96', 1),
(189, 'ESMERALDAS', 'RIO VERDE', 1, 1, 0, 'TE', 'TP', '0', '0', '0', '0', '0', '0', '715', 1),
(190, 'ESMERALDAS', 'SAME', 1, 1, 0, 'TE', 'TP', '0', '0', '0', '0', '0', '0', '266', 1),
(191, 'ESMERALDAS', 'SAN LORENZO/ESMERALDAS', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1029', '56317', '490', 1),
(192, 'ESMERALDAS', 'SAN MATEO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1029', '59080', '0', 1),
(193, 'ESMERALDAS', 'SUA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1029', '57662', '267', 1),
(194, 'ESMERALDAS', 'TABIAZO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1029', '59081', '0', 1),
(195, 'ESMERALDAS', 'TACHINA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001010', '201001010016', '1029', '57761', '269', 1),
(196, 'ESMERALDAS', 'TONCHIGUE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '550', 1),
(197, 'ESMERALDAS', 'TONSUPA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001010', '201001010004', '1029', '57661', '268', 1),
(198, 'ESMERALDAS', 'VICHE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001010', '201001010013', '0', '0', '496', 1),
(199, 'ESMERALDAS', 'VUELTA LARGA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1029', '59082', '0', 1),
(200, 'GALAPAGOS', 'ISABELA', 0, 1, 0, 'GAL', 'GAL', '0', '0', '0', '0', '0', '0', '0', 1),
(201, 'GALAPAGOS', 'SAN CRISTOBAL', 1, 1, 0, 'GAL', 'GAL', '0', '0', '201001020', '201001020003', '0', '0', '49', 1),
(202, 'GALAPAGOS', 'SANTA CRUZ', 1, 1, 0, 'GAL', 'GAL', '0', '0', '201001020', '201001020002', '0', '0', '468', 1),
(203, 'GUAYAS', '3 POSTES', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '567', 1),
(204, 'GUAYAS', '5 DE JUNIO MILAGRO', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '6', 1),
(205, 'GUAYAS', 'ALFREDO BAQUERIZO MORENO', 1, 0, 1, 'TE', 'TE', 'TE', '', '201001002', '', '1031', '56321', '718', 1),
(206, 'GUAYAS', 'BALAO', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002014', '0', '0', '337', 1),
(207, 'GUAYAS', 'BALZAR', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002016', '', '', '45', 1),
(208, 'GUAYAS', 'BASE TAURA', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002048', '0', '0', '331', 1),
(209, 'GUAYAS', 'BOCA DE CANA', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002065', '', '', '568', 1),
(210, 'GUAYAS', 'BOLICHE', 1, 1, 1, 'TE', 'TN', 'TE', '', '201001002', '2010010012067', '1031', '57768', '569', 1),
(211, 'GUAYAS', 'BUCAY', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002037', '1031', '', '68', 1),
(212, 'GUAYAS', 'CERECITA', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002027', '', '', '323', 1),
(213, 'GUAYAS', 'CHIVERIA', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002054', '', '', '682', 1),
(214, 'GUAYAS', 'CHOBO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1031', '59083', '0', 1),
(215, 'GUAYAS', 'CHONGON', 1, 0, 0, 'TR', '0', 'TE', '', '201001002', '201001002032', '1031', '', '223', 1),
(216, 'GUAYAS', 'CHURUTE', 1, 0, 0, 'TE', '0', '0', '', '201001002', '201001009006', '1031', '', '779', 1),
(217, 'GUAYAS', 'COLIMES', 1, 0, 0, 'TE', '0', '0', '', '201001002', '201001002029', '1031', '', '316', 1),
(218, 'GUAYAS', 'COLORADAL', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002055', '1031', '', '572', 1),
(219, 'GUAYAS', 'CONSUELO', 0, 0, 0, '0', '0', '0', '', '201001002', '', '1031', '', '0', 1),
(220, 'GUAYAS', 'CUMANDA/GUAYAS', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001010010', '0', '0', '0', 1),
(221, 'GUAYAS', 'CUMANDA MILAGRO', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002078', '0', '0', '0', 1),
(222, 'GUAYAS', 'DATA DE PLAYAS', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002077', '', '', '573', 1),
(223, 'GUAYAS', 'DAULE', 1, 1, 1, 'TR', '0', 'TE', '', '201001002', '201001002009', '1031', '56326', '25', 1),
(224, 'GUAYAS', 'DURAN', 1, 1, 1, 'TR', 'TE', 'TE', '', '201001002', '201001002002', '1031', '56327', '24', 1),
(225, 'GUAYAS', 'EL DESEO', 1, 0, 0, 'TE', '0', 'TE', '', '201001002', '201001002049', '', '', '726', 1),
(226, 'GUAYAS', 'EL EMPALME/GUAYAS', 1, 0, 1, 'TE', 'TE', 'TE', '', '201001002', '201001002069', '1031', '56328', '767', 1),
(227, 'GUAYAS', 'EL MORRO', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '118', 1),
(228, 'GUAYAS', 'EL TRIUNFO/GUAYAS', 1, 1, 1, 'TR', 'TE', 'TE', '', '201001002', '201001002007', '1031', '56329', '26', 1),
(229, 'GUAYAS', 'ELOY ALFARO - DURÁN', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002076', '0', '0', '719', 1),
(230, 'GUAYAS', 'ENGABAO', 1, 0, 0, 'TE', 'TE', '0', '', '201001002', '', '1031', '', '554', 1),
(231, 'GUAYAS', 'GENERAL ANTONIO ELIZALDE', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '720', 1),
(232, 'GUAYAS', 'GENERAL VERNAZA', 1, 0, 1, 'TE', '0', 'TE', '', '201001002', '201001002056', '1031', '', '111', 1),
(233, 'GUAYAS', 'GENERAL VILLAMIL', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002075', '0', '0', '0', 1),
(234, 'GUAYAS', 'GUAYAQUIL', 1, 1, 1, 'TR', 'TP', 'TN', '', '201001002', '201001002001', '1031', '56331', '1', 1),
(235, 'GUAYAS', 'GUAYAS', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(236, 'GUAYAS', 'INGENIO SAN CARLOS', 1, 0, 1, 'TE', '0', 'TE', '', '201001002', '201001002074', '1031', '', '727', 1),
(237, 'GUAYAS', 'ISIDRO AYORA', 1, 0, 1, 'TE', '0', 'TE', '', '201001002', '201001002025', '1031', '', '321', 1),
(238, 'GUAYAS', 'JESUS MARIA', 1, 0, 0, 'TE', 'TP', 'TN', '', '201001002', '', '1031', '', '783', 1),
(239, 'GUAYAS', 'JUJAN', 1, 0, 1, 'TE', 'TP', 'TN', '', '201001002', '201001002018', '1031', '57784', '376', 1),
(240, 'GUAYAS', 'JUNQUILLAL', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '784', 1),
(241, 'GUAYAS', 'KM 26 - VIRGEN DE FÁTIMA', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(242, 'GUAYAS', 'KM 26 VIA DURAN TAMBO', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002039', '0', '0', '0', 1),
(243, 'GUAYAS', 'LA AURORA', 0, 0, 0, 'TR', '0', '0', '', '201001002', '', '1031', '', '0', 1),
(244, 'GUAYAS', 'LA MARAVILLA', 1, 0, 1, 'TE', '0', 'TE', '', '201001002', '201001002057', '1031', '', '553', 1),
(245, 'GUAYAS', 'LA PUNTILLA/GUAYAS', 1, 1, 1, 'TR', 'TE', 'TE', '', '201001002', '201001002072', '1031', '57787', '18', 1),
(246, 'GUAYAS', 'LA T DE SALITRE', 1, 0, 0, 'TE', '0', '0', '', '201001002', '', '1031', '', '555', 1),
(247, 'GUAYAS', 'LA TOMA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001002', '201001002030', '1031', '59084', '556', 1),
(248, 'GUAYAS', 'LA VICTORIA/GUAYAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002024', '0', '0', '787', 1),
(249, 'GUAYAS', 'LAS ANIMAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002050', '0', '0', '557', 1),
(250, 'GUAYAS', 'LAUREL', 0, 1, 1, '', 'TE', 'TE', '', '201001002', '201001002030', '1031', '59084', '', 1),
(251, 'GUAYAS', 'LIMONAL', 0, 1, 1, '0', 'TE', 'TE', '0', '201001002', '201001002071', '1031', '59085', '0', 1),
(252, 'GUAYAS', 'LOS TINTOS', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001002', '201001002059', '1031', '57795', '304', 1),
(253, 'GUAYAS', 'MANUEL J CALLE', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '769', 1),
(254, 'GUAYAS', 'MARCELINO MARIDUENA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001001030', '0', '0', '344', 1),
(255, 'GUAYAS', 'MARISCAL SUCRE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001002', '201001002051', '1031', '57797', '346', 1),
(256, 'GUAYAS', 'MATILDE ESTHER', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002064', '0', '0', '560', 1),
(257, 'GUAYAS', 'MILAGRO', 1, 1, 1, 'TR', 'TE', 'TN', '0', '201001002', '201001002003', '1031', '56334', '6', 1),
(258, 'GUAYAS', 'NARANJAL', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001002', '201001002015', '1031', '56336', '20', 1),
(259, 'GUAYAS', 'NARANJITO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001002', '201001002033', '1031', '56337', '345', 1),
(260, 'GUAYAS', 'NOBOL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002021', '0', '0', '317', 1),
(261, 'GUAYAS', 'PALESTINA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002022', '0', '0', '315', 1),
(262, 'GUAYAS', 'PEDRO CARBO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002040', '0', '0', '61', 1),
(263, 'GUAYAS', 'PETRILLO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002060', '0', '0', '318', 1),
(264, 'GUAYAS', 'PLAYAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002005', '0', '0', '21', 1),
(265, 'GUAYAS', 'POSORJA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002035', '0', '0', '327', 1),
(266, 'GUAYAS', 'PROGRESO/GUAYAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002042', '0', '0', '326', 1),
(267, 'GUAYAS', 'PUENTE LUCIA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002061', '0', '0', '561', 1),
(268, 'GUAYAS', 'PUERTO DEL ENGABAO', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '562', 1),
(269, 'GUAYAS', 'PUERTO INCA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002028', '0', '0', '332', 1),
(270, 'GUAYAS', 'ROBERTO ASTUDILLO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001002', '201001002052', '1031', '57806', '343', 1),
(271, 'GUAYAS', 'SABANILLA (PEDRO CARBO)', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '312', 1),
(272, 'GUAYAS', 'SALITRE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002031', '0', '0', '305', 1),
(273, 'GUAYAS', 'SAMBORONDON', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001002', '201001002019', '1031', '56343', '60', 1),
(274, 'GUAYAS', 'SAN ANTONIO PLAYAS', 1, 0, 0, 'TE', '0', '0', '0', '201001002', '201001002070', '0', '0', '574', 1),
(275, 'GUAYAS', 'SAN ISIDRO GUAYAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '325', 1),
(276, 'GUAYAS', 'SANTA LUCIA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002023', '0', '0', '314', 1),
(277, 'GUAYAS', 'SIMON BOLIVAR/GUAYAS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002038', '0', '0', '479', 1),
(278, 'GUAYAS', 'TARIFA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002063', '0', '0', '301', 1),
(279, 'GUAYAS', 'TAURA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '775', 1),
(280, 'GUAYAS', 'TENGUEL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001002', '201001002017', '0', '0', '336', 1),
(281, 'LOJA', '12 DE DICIEMBRE', 0, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '0', 1),
(282, 'IMBABURA', 'ADUANA', 1, 1, 0, 'TE', 'TS', '0', '0', '0', '0', '0', '0', '575', 1),
(283, 'LOJA', 'ALAMOR', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '433', 1),
(284, 'LOJA', 'ALGARROBILLO', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '763', 1),
(285, 'IMBABURA', 'ALPACHACA', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1032', '57818', '101', 1),
(286, 'LOJA', 'AMALUZA', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '748', 1),
(287, 'IMBABURA', 'ANDRADE MARIN', 1, 1, 1, 'TE', 'TS', 'TN', '0', '201001011', '201001011021', '1032', '57819', '102', 1),
(288, 'IMBABURA', 'ANTONIO ANTE', 1, 0, 1, 'TE', '0', 'TE', '0', '201001011', '201001011022', '1032', '56346', '728', 1),
(289, 'IMBABURA', 'ATUNTAQUI', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001011', '201001011001', '1032', '57820', '54', 1),
(290, 'LOJA', 'CALVAS', 0, 1, 0, '', 'TE', '0', '0', '201001012', '201001012017', '0', '0', '0', 1),
(291, 'IMBABURA', 'CANVALLE-MILAGRO', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(292, 'IMBABURA', 'CARANQUI', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001011', '201001011018', '1032', '57821', '107', 1),
(293, 'LOJA', 'CARIAMANGA', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012004', '', '', '432', 1),
(294, 'LOJA', 'CATACOCHA', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012005', '', '', '471', 1),
(295, 'LOJA', 'CATAMAYO', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012002', '', '', '429', 1),
(296, 'LOJA', 'CELICA', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012011', '', '', '584', 1),
(297, 'LOJA', 'CHAGUARPAMBA', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '585', 1),
(298, 'IMBABURA', 'CHALTURA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001011', '201001011023', '1032', '57822', '108', 1),
(299, 'IMBABURA', 'CHORLAVI', 1, 1, 1, 'TE', 'TS', 'TN', '0', '201001011', '201001011020', '1032', '57823', '576', 1),
(300, 'IMBABURA', 'COTACACHI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001011', '201001011006', '1032', '56347', '255', 1),
(301, 'LOJA', 'CRUZPAMBA', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '764', 1),
(302, 'LOJA', 'EL CISNE', 0, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '0', 1),
(303, 'LOJA', 'EL EMPALME/LOJA', 1, 1, 0, 'TE', '0', '0', '', '201001012', '201001002011', '', '', '767', 1),
(304, 'LOJA', 'EL INGENIO', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '754', 1),
(305, 'LOJA', 'EL LUCERO', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '756', 1),
(306, 'IMBABURA', 'EL OLIVO', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1032', '57824', '577', 1),
(307, 'IMBABURA', 'EL RETORNO', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1032', '57825', '578', 1),
(308, 'LOJA', 'EL TAMBO/LOJA', 0, 0, 0, 'TE', '0', '0', '', '201001012', '201001003009', '', '', '0', 1),
(309, 'IMBABURA', 'EUGENIO ESPEJO (CALPAQUI) ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59086', '0', 1),
(310, 'IMBABURA', 'GONZALEZ SUAREZ', 0, 1, 0, '0', 'TE', '0', '0', '201001011', '201001011012', '0', '0', '0', 1),
(311, 'LOJA', 'GONZANAMA', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012010', '', '', '112', 1),
(312, 'IMBABURA', 'IBARRA', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001011', '201001011005', '1032', '56348', '40', 1),
(313, 'IMBABURA', 'IMANTAG', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59088', '0', 1),
(314, 'IMBABURA', 'IMBAYA (SAN LUIS DE COBUENDO) ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59089', '0', 1),
(315, 'LOJA', 'LA CEIBA', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '762', 1),
(316, 'IMBABURA', 'LA ESPERANZA/IMBABURA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59153', '0', 1),
(317, 'LOJA', 'LOJA', 1, 1, 1, 'TE', 'TP', 'TN', '', '201001012', '201001012001', '1033', '56358', '15', 1),
(318, 'LOJA', 'MACARA', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001019003', '', '', '434', 1),
(319, 'LOJA', 'MALACATOS', 1, 1, 0, 'TE', 'TE', '0', '', '201001012', '201001012006', '', '', '586', 1),
(320, 'LOJA', 'MERCADILLO', 0, 0, 0, 'TE', '', '0', '', '201001012', '', '', '', '0', 1),
(321, 'IMBABURA', 'MIRA/IMBABURA', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(322, 'IMBABURA', 'NATABUELA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001011', '201001011025', '1032', '57826', '122', 1),
(323, 'LOJA', 'OLMEDO', 1, 1, 0, 'TE', '0', '0', '', '201001012', '201001014019', '', '', '732', 1),
(324, 'IMBABURA', 'OTAVALO', 1, 1, 1, 'TE', 'TP', 'TN', '0', '201001011', '201001011002', '1032', '56349', '56', 1),
(325, 'LOJA', 'PALTAS', 1, 0, 0, 'TE', '0', '0', '', '201001012', '', '', '', '758', 1),
(326, 'IMBABURA', 'PEGUCHE', 0, 1, 1, '0', 'TE', 'TN', '0', '201001011', '201001011013', '1032', '59091', '0', 1),
(327, 'SANTA ELENA', 'ANCON', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001023', '201001002034', '4125', '57980', '483', 1),
(328, 'SANTA ELENA', 'ANCONCITO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001023', '201001002046', '4125', '57981', '482', 1),
(329, 'SANTA ELENA', 'ATAHUALPA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '806', 1),
(330, 'SANTA ELENA', 'AYANGUE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023018', '0', '0', '807', 1),
(331, 'SANTA ELENA', 'BALLENITA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001023', '201001014023', '4125', '57984', '63', 1),
(332, 'SANTA ELENA', 'BARCELONA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '808', 1),
(333, 'SANTA ELENA', 'CADEATE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023008', '0', '0', '649', 1),
(334, 'IMBABURA', 'PERUGACHI', 0, 1, 0, '0', 'TE', '0', '0', '201001011', '201001011030', '0', '0', '0', 1),
(335, 'SANTA ELENA', 'CAPAES', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023009', '0', '0', '650', 1),
(336, 'IMBABURA', 'PIMAMPIRO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001011', '201001011003', '0', '0', '252', 1),
(337, 'LOJA', 'PINDAL', 1, 0, 0, 'TE', '', '0', '', '201001012', '', '', '', '459', 1),
(338, 'IMBABURA', 'PINSAQUI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '579', 1),
(339, 'LOJA', 'POZUL', 1, 0, 0, 'TE', '0', '0', '', '', '', '', '', '587', 1),
(340, 'SANTA ELENA', 'CHANDUY', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '809', 1),
(341, 'SANTA ELENA', 'CURIA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '810', 1),
(342, 'SANTA ELENA', 'EL TAMBO/SANTA ELENA', 1, 0, 0, 'TE', '0', '0', '0', '201001023', '201001023020', '0', '0', '651', 1),
(343, 'IMBABURA', 'PUERTO LAGO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '580', 1),
(344, 'SANTA ELENA', 'JAMBELI MONTEVERDE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '654', 1),
(345, 'SANTA ELENA', 'LA ENTRADA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '811', 1),
(346, 'LOS RIOS', 'BABA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013013', '1034', '56368', '374', 1),
(347, 'LOS RIOS', 'BABAHOYO', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001013', '201001013001', '1034', '56370', '8', 1),
(348, 'LOS RIOS', 'BUENA FE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013005', '1034', '56369', '46', 1),
(349, 'LOS RIOS', 'CALUMA/LOS RIOS', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001004007', '0', '0', '0', 1),
(350, 'LOS RIOS', 'CARACOL', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1034', '57854', '589', 1),
(351, 'LOS RIOS', 'CATARAMA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001012003', '0', '0', '385', 1),
(352, 'LOS RIOS', 'ECHEANDIA/LOS RIOS', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001004002', '0', '0', '0', 1),
(353, 'LOS RIOS', 'EL EMPALME/LOS RIOS', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001002011', '0', '0', '227', 1),
(354, 'LOS RIOS', 'ENTRADA DE SAN JUAN', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '590', 1),
(355, 'LOS RIOS', 'FEBRES CORDERO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '781', 1),
(356, 'LOS RIOS', 'FUMISA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '591', 1),
(357, 'LOS RIOS', 'GUARE', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001013027', '0', '0', '0', 1),
(358, 'LOS RIOS', 'GUARE DE BABA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '782', 1),
(359, 'LOS RIOS', 'ISLA DE BEJUCAL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001013021', '0', '0', '375', 1),
(360, 'LOS RIOS', 'LA 14 VIA EL PARAISO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '734', 1),
(361, 'LOS RIOS', 'LA CARMELA - GUARE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(362, 'LOS RIOS', 'LA ESMERALDA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '785', 1),
(363, 'LOS RIOS', 'LA ESPERANZA/LOS RIOS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001013026', '0', '0', '593', 1),
(364, 'LOS RIOS', 'LA JULIA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001013025', '0', '0', '594', 1),
(365, 'LOS RIOS', 'LA UNION BABAHOYO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1034', '57866', '381', 1),
(366, 'LOS RIOS', 'LA UNION VALENCIA', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001013', '201001013024', '1034', '57867', '595', 1),
(367, 'LOS RIOS', 'MATA DE CACAO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '380', 1),
(368, 'LOS RIOS', 'MOCACHE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013007', '1034', '56371', '232', 1),
(369, 'LOS RIOS', 'MONTALVO/LOS RIOS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001013009', '0', '0', '377', 1),
(370, 'LOS RIOS', 'NUEVA UNION (LOS RIOS)', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '596', 1),
(371, 'LOS RIOS', 'PALENQUE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001002036', '0', '0', '378', 1),
(372, 'LOS RIOS', 'PALMISA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '597', 1),
(373, 'LOS RIOS', 'PATRICIA PILAR/LOS RIOS', 1, 0, 0, 'TE', '0', '0', '0', '201001013', '201001013010', '0', '0', '280', 1),
(374, 'LOS RIOS', 'PIMOCHA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1034', '57873', '790', 1),
(375, 'LOS RIOS', 'PROGRESO/LOS RIOS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(376, 'LOS RIOS', 'PUEBLO NUEVO LOS RIOS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '733', 1),
(377, 'LOS RIOS', 'PUEBLO VIEJO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013012', '1034', '56374', '384', 1),
(378, 'LOS RIOS', 'QUEVEDO', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001013', '201001013002', '1034', '56375', '9', 1),
(379, 'LOS RIOS', 'QUINSALOMA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001013', '201001013019', '0', '0', '71', 1),
(380, 'LOS RIOS', 'RECINTO 3 MARIAS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(381, 'LOS RIOS', 'RICAURTE/LOS RIOS', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '387', 1),
(382, 'LOS RIOS', 'SAN CAMILO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013014', '1034', '57876', '55', 1),
(383, 'LOS RIOS', 'SAN CARLOS', 0, 1, 1, '0', 'TE', 'TE', '0', '201001013', '201001013015', '1034', '57877', '233', 1),
(384, 'LOS RIOS', 'SAN CARLOS (LOS RIOS)', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '233', 1),
(385, 'LOS RIOS', 'SAN JACINTO DE BUENA FE', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001013023', '0', '0', '0', 1),
(386, 'LOS RIOS', 'SAN JOSE DEL TAMBO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '794', 1),
(387, 'LOS RIOS', 'SAN JUAN/LOS RIOS', 1, 0, 0, 'TE', '0', '0', '0', '201001013', '201001013008', '0', '0', '386', 1),
(388, 'LOS RIOS', 'SAN JUAN BABAHOYO', 0, 1, 0, '0', 'TE', '0', '0', '201001013', '201001013022', '0', '0', '386', 1),
(389, 'LOS RIOS', 'SAN LUIS DE PAMBIL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '735', 1),
(390, 'LOS RIOS', 'TRES POSTES', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(391, 'LOS RIOS', 'URDANETA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '133', 1),
(392, 'LOS RIOS', 'VALENCIA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001013', '201001013004', '1034', '56377', '181', 1),
(393, 'LOS RIOS', 'VENTANAS', 1, 1, 1, 'TR', 'TE', 'TN', '0', '201001013', '201001013003', '1034', '56378', '12', 1),
(394, 'LOS RIOS', 'VINCES', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001013', '201001013006', '1034', '56379', '57', 1),
(395, 'LOS RIOS', 'ZAPOTAL', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1034', '57881', '134', 1),
(396, 'LOS RIOS', 'ZAPOTAL (LOS RIOS)', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '134', 1),
(397, 'LOS RIOS', 'ZULEMA', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '774', 1),
(398, 'MANABI', 'ABDON CALDERON (SAN FRANCISCO)', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(399, 'MANABI', 'ALHAJUELA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '0', '', '1035', '57883', '777', 1),
(400, 'MANABI', 'ARENALES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '601', 1),
(401, 'MANABI', 'ATAHUALPA MANABI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '602', 1),
(402, 'MANABI', 'AYACUCHO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '778', 1),
(403, 'MANABI', 'AYAMPE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(404, 'MANABI', 'BACHILLERO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '103', 1),
(405, 'MANABI', 'BAHIA DE CARAQUEZ', 1, 1, 0, 'TR', 'TP', '0', '0', '201001014', '201001014003', '0', '0', '30', 1),
(406, 'MANABI', 'BASE NAVAL JARAMIJO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(407, 'MANABI', 'BELLAVISTA/MANABI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '105', 1),
(408, 'MANABI', 'CALCETA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001014', '201001014016', '1035', '57890', '53', 1),
(409, 'MANABI', 'CALDERON (MANABI)', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '397', 1),
(410, 'MANABI', 'CANITAS', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '606', 1),
(411, 'MANABI', 'CANOA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '424', 1),
(412, 'MANABI', 'CANUTO', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001014', '201001014032', '1035', '57894', '106', 1),
(413, 'MANABI', 'CASCOL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '427', 1),
(414, 'MANABI', 'CERECITO (VIA CRUCITA)', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(415, 'MANABI', 'CHARAPOTO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014015', '0', '0', '417', 1),
(416, 'MANABI', 'CHEVE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '607', 1),
(417, 'MANABI', 'CHONE', 1, 1, 1, 'TR', 'TS', 'TN', '0', '201001014', '201001014004', '1035', '56381', '95', 1),
(418, 'MANABI', 'CIUDAD ALFARO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '608', 1),
(419, 'MANABI', 'COAQUE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '609', 1),
(420, 'MANABI', 'COJIMIES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '610', 1),
(421, 'MANABI', 'COLON', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014011', '0', '0', '399', 1),
(422, 'MANABI', 'COLORADO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014044', '0', '0', '684', 1),
(423, 'MANABI', 'COSTA AZUL', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(424, 'MANABI', 'CRUCITA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014010', '1035', '57903', '400', 1),
(425, 'MANABI', 'DON JUAN', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '611', 1),
(426, 'MANABI', 'EL CARMEN', 1, 1, 1, 'TE', 'TP', 'TN', '0', '201001014', '201001014005', '1035', '56382', '74', 1),
(427, 'MANABI', 'EL MATAL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '612', 1),
(428, 'MANABI', 'EL NARANJO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '780', 1),
(429, 'MANABI', 'EL RODEO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '613', 1),
(430, 'MANABI', 'ESTANCILLA', 0, 1, 0, '0', 'TS', '0', '0', '201001014', '201001014033', '0', '0', '0', 1),
(431, 'MANABI', 'FLAVIO ALFARO', 1, 1, 0, 'TE', 'TS', '0', '0', '201001014', '201001014021', '0', '0', '413', 1),
(432, 'MANABI', 'HIGUERON (VIA CRUCITA)', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(433, 'MANABI', 'JAMA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014024', '0', '0', '421', 1),
(434, 'MANABI', 'JARAMIJO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014013', '1035', '56387', '409', 1),
(435, 'MANABI', 'JIPIJAPA', 1, 1, 0, 'TR', 'TE', '0', '0', '201001014', '201001014006', '0', '0', '97', 1),
(436, 'MANABI', 'JUNIN', 1, 1, 0, 'TE', 'TS', '0', '0', '201001014', '201001014009', '0', '0', '414', 1),
(437, 'MANABI', 'LA CHORRERA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '739', 1),
(438, 'MANABI', 'LA DELICIA KM. 29', 0, 1, 0, '0', 'TE', '0', '0', '201001014', '201001014035', '0', '0', '0', 1),
(439, 'MANABI', 'LA ESTANCILLA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '412', 1),
(440, 'MANABI', 'LA SEGUA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(441, 'MANABI', 'LA SEQUITA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(442, 'MANABI', 'LAS TUNAS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(443, 'MANABI', 'LEONIDAS PLAZA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014027', '0', '0', '415', 1),
(444, 'MANABI', 'LODANA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '614', 1),
(445, 'MANABI', 'LOS BAJOS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '615', 1),
(446, 'MANABI', 'MACHALILLA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '117', 1),
(447, 'MANABI', 'MANTA', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001014', '201001014001', '1035', '56388', '13', 1),
(448, 'MANABI', 'MEJIA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '788', 1),
(449, 'MANABI', 'MONTECRISTI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014020', '1035', '56389', '90', 1),
(450, 'MANABI', 'NUEVO BRICENO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '617', 1),
(451, 'MANABI', 'NUEVO ISRAEL', 0, 1, 0, '0', 'TE', '0', '0', '201001014', '201001017009', '0', '0', '0', 1),
(452, 'MANABI', 'OLMEDO (MANABI)', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '398', 1),
(453, 'MANABI', 'PAJAN', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014014', '0', '0', '425', 1),
(454, 'MANABI', 'PAQUISHA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(455, 'MANABI', 'PAVON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '789', 1),
(456, 'MANABI', 'PEDERNALES', 1, 1, 0, 'TE', 'TS', '0', '0', '201001014', '201001010009', '0', '0', '70', 1),
(457, 'MANABI', 'PICHINCHA', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '234', 1),
(458, 'MANABI', 'PICOAZA DENTRO DEL PERIMETRO URBANO', 0, 1, 0, '0', 'TE', '0', '0', '201001014', '201001014037', '0', '0', '0', 1),
(459, 'MANABI', 'PLAYA PRIETA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '740', 1),
(460, 'MANABI', 'PORTOVIEJO', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001014', '201001014002', '1035', '56395', '3', 1),
(461, 'MANABI', 'PUEBLO NUEVO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1035', '57874', '126', 1),
(462, 'MANABI', 'PUEBLO NUEVO /  MANABI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '126', 1),
(463, 'MANABI', 'PUERTO CAYO', 0, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014029', '0', '0', '0', 1),
(464, 'MANABI', 'PUERTO CHICO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '599', 1),
(465, 'MANABI', 'PUERTO LOPEZ', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014022', '0', '0', '426', 1),
(466, 'MANABI', 'QUIROGA CHONE', 0, 1, 0, '0', 'TS', '0', '0', '201001014', '201001014043', '0', '0', '0', 1),
(467, 'MANABI', 'RESBALON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '792', 1),
(468, 'MANABI', 'RICAURTE/MANABI', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001014', '201001014040', '1035', '59150', '737', 1),
(469, 'MANABI', 'RIO CHICO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014039', '1035', '57921', '599', 1),
(470, 'MANABI', 'ROCAFUERTE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014012', '1035', '56396', '401', 1),
(471, 'MANABI', 'SALAITE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(472, 'MANABI', 'SALANGO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(473, 'MANABI', 'SAN ANTONIO / MANABI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '738', 1),
(474, 'MANABI', 'SAN ANTONIO DE CHONE', 0, 1, 0, '0', 'TS', '0', '0', '201001014', '201001014034', '0', '0', '0', 1),
(475, 'MANABI', 'SAN CLEMENTE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '618', 1),
(476, 'MANABI', 'SAN IGNACIO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '793', 1),
(477, 'MANABI', 'SAN ISIDRO / BAHIA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '423', 1),
(478, 'MANABI', 'SAN JACINTO', 1, 0, 0, 'TE', '0', '0', '0', '201001014', '201001014025', '0', '0', '419', 1),
(479, 'MANABI', 'SAN PEDRO DE SUMA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1035', '59099', '0', 1),
(480, 'MANABI', 'SAN PLACIDO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001014', '201001014038', '1035', '57927', '619', 1),
(481, 'MANABI', 'SAN VICENTE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001014', '201001014018', '0', '0', '416', 1),
(482, 'MANABI', 'SANCAN', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '620', 1),
(483, 'MANABI', 'SANTA ANA / MANABI', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '402', 1),
(484, 'MANABI', 'SANTA RITA', 0, 0, 0, 'TR', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(485, 'MANABI', 'SESME', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '795', 1),
(486, 'MANABI', 'SOSOTE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '622', 1),
(487, 'MANABI', 'SUCRE', 0, 1, 0, '0', 'TE', '0', '0', '201001014', '201001014042', '0', '0', '0', 1),
(488, 'MANABI', 'SUCRE BAHIA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '736', 1),
(489, 'MANABI', 'TARQUI MANABÍ', 0, 1, 0, '0', 'TE', '0', '0', '201001014', '201001014041', '0', '0', '0', 1);
INSERT INTO `ciudad_cotizacion` (`id_cotizacion`, `provincia`, `ciudad`, `cobertura_servientrega`, `cobertura_laar`, `cobertura_gintracom`, `trayecto_servientrega`, `trayecto_laar`, `trayecto_gintracom`, `codigo_provincia_servientrega`, `codigo_provincia_laar`, `codigo_ciudad_laar`, `codigo_provincia_gintracom`, `codigo_ciudad_gintracom`, `codigo_ciudad_servientrega`, `id_pais`) VALUES
(490, 'MANABI', 'TOSAGUA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001014', '201001014017', '1035', '56400', '73', 1),
(491, 'MANABI', 'VALDEZ', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(492, 'MANABI', 'ZAPALLO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '796', 1),
(493, 'MORONA SANTIAGO', 'GENERAL PROAÑO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1036', '59100', '0', 1),
(494, 'MORONA SANTIAGO', 'GUALAQUIZA', 1, 0, 0, 'TE', '0', '0', '0', '201001015', '201001015002', '0', '0', '33', 1),
(495, 'MORONA SANTIAGO', 'HUAMBOYA', 1, 1, 0, 'TE', '0', '0', '0', '201001019', '201001019011', '0', '0', '800', 1),
(496, 'MORONA SANTIAGO', 'LIMON INDANZA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '494', 1),
(497, 'MORONA SANTIAGO', 'LOGRONO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '801', 1),
(498, 'MORONA SANTIAGO', 'MACAS', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001015', '201001015001', '1036', '57932', '85', 1),
(499, 'MORONA SANTIAGO', 'MENDEZ', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '495', 1),
(500, 'MORONA SANTIAGO', 'PABLO SEXTO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '802', 1),
(501, 'MORONA SANTIAGO', 'PALORA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '297', 1),
(502, 'MORONA SANTIAGO', 'RIO BLANCO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1036', '59101', '0', 1),
(503, 'MORONA SANTIAGO', 'SAN ISIDRO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1036', '59102', '0', 1),
(504, 'MORONA SANTIAGO', 'SEVILLA DON BOSCO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1036', '59103', '0', 1),
(505, 'MORONA SANTIAGO', 'SUCUA', 1, 1, 0, 'TE', 'TO', '0', '0', '201001015', '201001017007', '0', '0', '773', 1),
(506, 'MORONA SANTIAGO', 'TIWINTZA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '822', 1),
(507, 'NAPO', 'ARCHIDONA', 1, 1, 1, 'TE', 'TO', 'TE', '0', '201001016', '201001016003', '1037', '56413', '624', 1),
(508, 'NAPO', 'AROSEMENA TOLA', 1, 1, 0, 'TE', 'TO', '0', '0', '201001016', '201001016006', '0', '0', '298', 1),
(509, 'NAPO', 'BAEZA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '489', 1),
(510, 'NAPO', 'BORJA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '492', 1),
(511, 'NAPO', 'CARLOS JULIO AROSEMENA', 0, 1, 0, '0', 'TO', '0', '0', '201001016', '201001016009', '0', '0', '0', 1),
(512, 'NAPO', 'CARLOS JULIO AROSEMENA TOLA', 0, 1, 0, '0', 'TO', '0', '0', '201001016', '201001016008', '0', '0', '0', 1),
(513, 'NAPO', 'COTUNDO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1037', '57938', '741', 1),
(514, 'NAPO', 'EL CHACO', 1, 1, 0, 'TE', 'TO', '0', '0', '201001016', '201001017012', '0', '0', '491', 1),
(515, 'NAPO', 'GONZALO PIZARRO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '625', 1),
(516, 'NAPO', 'MISAHUALLI', 0, 1, 0, '0', 'TO', '0', '0', '201001016', '201001016005', '0', '0', '0', 1),
(517, 'NAPO', 'NUEVA ESPERANZA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '626', 1),
(518, 'NAPO', 'PANO ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1037', '59104', '0', 1),
(519, 'NAPO', 'PUERTO MISAHUALLI', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1037', '59105', '0', 1),
(520, 'NAPO', 'PUERTO NAPO', 1, 1, 1, 'TE', 'TO', 'TE', '0', '201001016', '201001016007', '1037', '57941', '627', 1),
(521, 'NAPO', 'SAN PABLO DE USHPAYACU', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1037', '59106', '0', 1),
(522, 'NAPO', 'TAZAYACU', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '742', 1),
(523, 'NAPO', 'TENA', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001016', '201001016001', '1037', '56417', '78', 1),
(524, 'ORELLANA', 'EL COCA', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001017', '201001017002', '1038', '57943', '38', 1),
(525, 'ORELLANA', 'JOYA DE LOS SACHAS', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001017', '201001017006', '1038', '56420', '291', 1),
(526, 'ORELLANA', 'LORETO', 1, 1, 0, 'TE', 'TO', '0', '0', '201001017', '201001017006', '0', '0', '116', 1),
(527, 'ORELLANA', 'PUERTO FRANCISCO DE ORELLANA (EL COCA)', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1038', '57318', '0', 1),
(528, 'ORELLANA', 'FRANCISCO DE ORELLANA', 0, 0, 1, '0', '0', 'TN', '0', '201001017', '201001017001', '1038', '56419', '0', 1),
(529, 'ORELLANA', 'ENOKANQUI ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1038', '59107', '0', 1),
(530, 'ORELLANA', 'SAN CARLOS', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1038', '59109', '0', 1),
(531, 'ORELLANA', 'SAN SEBASTIAN DEL COCA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1038', '59110', '0', 1),
(532, 'ORELLANA', 'LAGO SAN PEDRO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1038', '59108', '0', 1),
(533, 'ORELLANA', 'UNION MILAGREÑA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1038', '59111', '0', 1),
(534, 'PASTAZA', '10 DE AGOSTO', 0, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1039', '59112', '0', 1),
(535, 'PASTAZA', 'AMERICAS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(536, 'PASTAZA', 'ARAJUNO ', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '798', 1),
(537, 'PASTAZA', 'EL CAPRICHO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(538, 'PASTAZA', 'EL TRIUNFO/PASTAZA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(539, 'PASTAZA', 'MERA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1039', '56423', '296', 1),
(540, 'PASTAZA', 'PUYO', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001018', '201001018001', '1039', '57319', '22', 1),
(541, 'PASTAZA', 'SAN JOSE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(542, 'PASTAZA', 'SANTA CLARA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '293', 1),
(543, 'PASTAZA', 'SHELL (EL PUYO)', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1039', '57660', '295', 1),
(544, 'PASTAZA', 'TNT HUGO ORTIZ', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(545, 'PASTAZA', 'SHELL ', 0, 1, 1, '0', 'TO', 'TE', '0', '201001018', '201001017004', '1039', '57660', '295', 1),
(546, 'PASTAZA', 'FATIMA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1039', '59113', '292', 1),
(547, 'PICHINCHA', 'ALANGASI', 1, 1, 1, 'TL', 'TS', 'TE', '0', '201001001', '201001001031', '1040', '57944', '628', 1),
(548, 'PICHINCHA', 'ALOAG', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001019', '0', '0', '441', 1),
(549, 'PICHINCHA', 'ALOASI', 1, 1, 0, 'TE', 'TS', '0', '0', '201001001', '201001001046', '0', '0', '629', 1),
(550, 'PICHINCHA', 'AMAGUANA', 1, 1, 1, 'TL', 'TS', 'TE', '0', '201001001', '201001001018', '1040', '57947', '442', 1),
(551, 'PICHINCHA', 'ASCAZUBI ', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001062', '0', '0', '0', 1),
(552, 'PICHINCHA', 'AYORA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001001', '201001001042', '1040', '57948', '630', 1),
(553, 'PICHINCHA', 'BICENTENARIO - REPLICA MONTUFAR', 0, 1, 0, '0', 'TS', '0', '0', '0', '0', '0', '0', '0', 1),
(554, 'PICHINCHA', 'CAJAS', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(555, 'PICHINCHA', 'CALACALI', 1, 1, 0, 'TL', 'TS', '0', '0', '201001001', '201001001022', '0', '0', '631', 1),
(556, 'PICHINCHA', 'CALDERON', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001024', '1040', '57891', '632', 1),
(557, 'PICHINCHA', 'CAYAMBE', 1, 1, 1, 'TC', 'TP', 'TN', '0', '201001001', '201001001002', '1040', '56426', '48', 1),
(558, 'PICHINCHA', 'CHECA/PICHINCHA', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001063', '0', '0', '0', 1),
(559, 'PICHINCHA', 'COLINAS DEL NORTE', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(560, 'PICHINCHA', 'CONOCOTO', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001033', '1040', '57951', '444', 1),
(561, 'PICHINCHA', 'COTOGCHOA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1040', '59114', '0', 1),
(562, 'PICHINCHA', 'CUMBAYA', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001009', '1040', '57952', '47', 1),
(563, 'PICHINCHA', 'CUSUBAMBA', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '633', 1),
(564, 'PICHINCHA', 'EL CHAUPI', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001071', '0', '0', '0', 1),
(565, 'PICHINCHA', 'EL QUINCHE', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001007', '0', '0', '0', 1),
(566, 'PICHINCHA', 'GOLONDRINAS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(567, 'PICHINCHA', 'GUANGOPOLO', 0, 1, 1, '0', 'TE', 'TN', '0', '201001001', '201001001070', '1040', '59115', '0', 1),
(568, 'PICHINCHA', 'GUAYLLABAMBA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001014', '0', '0', '445', 1),
(569, 'PICHINCHA', 'JUAN MONTALVO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001045', '0', '0', '635', 1),
(570, 'PICHINCHA', 'LA ARMENIA', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001047', '1040', '57957', '636', 1),
(571, 'PICHINCHA', 'LA ESPERANZA/PICHINCHA', 0, 1, 1, '0', 'TS', 'TE', '0', '201001013', '201001013026', '1040', '59154', '0', 1),
(572, 'PICHINCHA', 'LA MERCED', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1040', '59117', '113', 1),
(573, 'PICHINCHA', 'LA ROLDOS', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(574, 'PICHINCHA', 'LA SEXTA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(575, 'PICHINCHA', 'LLANO CHICO', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001048', '1040', '57958', '637', 1),
(576, 'PICHINCHA', 'LLANO GRANDE', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001049', '1040', '57959', '686', 1),
(577, 'PICHINCHA', 'MACHACHI', 1, 1, 0, 'TC', 'TS', '0', '0', '201001001', '201001001008', '0', '0', '455', 1),
(578, 'PICHINCHA', 'MEJIA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001069', '0', '0', '743', 1),
(579, 'PICHINCHA', 'MIRAVALLE', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001051', '1040', '57961', '687', 1),
(580, 'PICHINCHA', 'MITAD DEL MUNDO', 0, 1, 0, '0', 'TS', '0', '0', '201001001', '201001001021', '0', '0', '29', 1),
(581, 'PICHINCHA', 'MONJAS', 1, 1, 0, 'TL', 'TS', '0', '0', '201001001', '201001002043', '0', '0', '639', 1),
(582, 'PICHINCHA', 'NANEGALITO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001029', '0', '0', '121', 1),
(583, 'PICHINCHA', 'NAYON ', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1040', '59155', '0', 1),
(584, 'PICHINCHA', 'NONO', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001068', '0', '0', '0', 1),
(585, 'PICHINCHA', 'OLMEDO (PESILLO)', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(586, 'PICHINCHA', 'ORQUIDEAS', 0, 1, 0, '0', 'TS', '0', '0', '201001001', '201001001052', '0', '0', '0', 1),
(587, 'PICHINCHA', 'OTON', 0, 1, 1, '0', 'TE', 'TE', '0', '201001003', '201001003023', '1040', '59156', '0', 1),
(588, 'PICHINCHA', 'PEDRO MONCAYO', 0, 1, 1, '0', 'TE', 'TE', '0', '201001001', '201001001035', '1040', '56428', '0', 1),
(589, 'PICHINCHA', 'PEDRO VICENTE MALDONADO', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '451', 1),
(590, 'PICHINCHA', 'PIFO', 1, 1, 1, 'TL', 'TS', 'TE', '0', '201001001', '201001001025', '1040', '57964', '448', 1),
(591, 'PICHINCHA', 'PINTAG', 1, 1, 1, 'TL', 'TS', 'TE', '0', '201001001', '201001001036', '1040', '57965', '641', 1),
(592, 'PICHINCHA', 'PISULI', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(593, 'PICHINCHA', 'PLANADA', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(594, 'PICHINCHA', 'POMASQUI', 1, 1, 1, 'TL', 'TS', 'TE', '0', '201001001', '201001001028', '1040', '57966', '130', 1),
(595, 'PICHINCHA', 'PUEMBO', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001026', '1040', '57967', '449', 1),
(596, 'PICHINCHA', 'PUERTO QUITO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001013', '0', '0', '452', 1),
(597, 'PICHINCHA', 'PUSUQUI', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001041', '1040', '57968', '463', 1),
(598, 'PICHINCHA', 'QUINCHE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '450', 1),
(599, 'PICHINCHA', 'QUITO', 1, 1, 1, 'TL', 'TL', 'TN', '0', '201001001', '201001001001', '1040', '56431', '2', 1),
(600, 'PICHINCHA', 'RUMIÑAHUI', 0, 1, 1, '0', 'TE', 'TN', '0', '201001001', '201001001066', '1040', '56432', '0', 1),
(601, 'PICHINCHA', 'RUMIPAMBA/PICHINCHA', 0, 1, 0, '0', 'TE', '0', '0', '201001001', '201001001065', '0', '0', '0', 1),
(602, 'PICHINCHA', 'SAN ANTONIO DE PICHINCHA', 1, 1, 1, 'TC', 'TS', 'TE', '0', '201001001', '201001001053', '1040', '57970', '642', 1),
(603, 'PICHINCHA', 'SAN JOSE DE MORAN', 1, 1, 1, 'TC', 'TS', 'TN', '0', '201001001', '201001001054', '1040', '57971', '643', 1),
(604, 'PICHINCHA', 'SAN JUAN DE CALDERON', 1, 0, 1, 'TC', '0', 'TN', '0', '0', '0', '1040', '57972', '644', 1),
(605, 'PICHINCHA', 'SAN MIGUEL DE LOS BANCOS', 1, 1, 0, 'TE', 'TE', '0', '0', '201001001', '201001001010', '0', '0', '645', 1),
(606, 'PICHINCHA', 'SAN MIGUEL DE OYACOTO', 0, 1, 0, '0', 'TS', '0', '0', '0', '0', '0', '0', '0', 1),
(607, 'PICHINCHA', 'SAN RAFAEL', 1, 1, 1, 'TE', 'TS', 'TN', '0', '201001001', '201001001006', '1040', '59094', '27', 1),
(608, 'PICHINCHA', 'SANGOLQUI', 1, 1, 1, 'TC', 'TS', 'TN', '0', '201001001', '201001001005', '1040', '57974', '28', 1),
(609, 'PICHINCHA', 'TABABELA', 1, 1, 1, 'TC', 'TS', 'TE', '0', '201001001', '201001001056', '1040', '57975', '646', 1),
(610, 'PICHINCHA', 'TABACUNDO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001001', '201001001003', '1040', '57976', '454', 1),
(611, 'PICHINCHA', 'TAMBILLO', 1, 1, 0, 'TE', 'TS', '0', '0', '201001001', '201001021003', '0', '0', '456', 1),
(612, 'PICHINCHA', 'TOCACHI', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1040', '59157', '0', 1),
(613, 'PICHINCHA', 'TUMBACO', 1, 1, 1, 'TL', 'TS', 'TN', '0', '201001001', '201001001020', '1040', '59158', '31', 1),
(614, 'PICHINCHA', 'TUPIGACHI', 0, 0, 1, '0', 'TE', 'TE', '0', '0', '0', '1040', '59159', '0', 1),
(615, 'PICHINCHA', 'UYUMBICHO', 1, 1, 0, 'TC', 'TS', '0', '0', '201001001', '201001001057', '0', '0', '647', 1),
(616, 'PICHINCHA', 'VALLE DE LOS CHILLOS', 0, 1, 0, '0', 'TL', '0', '0', '201001001', '201001001039', '0', '0', '0', 1),
(617, 'PICHINCHA', 'YARUQUI', 0, 1, 1, '0', 'TS', 'TE', '0', '201001001', '201001001037', '1040', '59160', '453', 1),
(618, 'PICHINCHA', 'ZAMBISA', 0, 1, 0, '0', 'TL', '0', '0', '201001001', '201001001058', '0', '0', '648', 1),
(619, 'SANTA ELENA', 'LA LIBERTAD', 1, 1, 1, 'TR', 'TP', 'TN', '0', '201001023', '201001002013', '4125', '56435', '14', 1),
(620, 'SANTA ELENA', 'LIBERTADOR BOLIVAR', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023010', '0', '0', '653', 1),
(621, 'LOJA', 'QUILANGA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '755', 1),
(622, 'IMBABURA', 'QUIROGA', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001011', '201001011014', '1032', '57829', '127', 1),
(623, 'IMBABURA', 'QUIROGA OTAVALO', 0, 1, 0, '0', 'TE', '0', '0', '201001011', '201001011032', '0', '0', '127', 1),
(624, 'SANTA ELENA', 'MANGLARALTO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023011', '0', '0', '480', 1),
(625, 'SANTA ELENA', 'MAR BRAVA', 0, 1, 0, '', 'TE', '0', '', '', '', '', '', '', 1),
(626, 'SANTA ELENA', 'MONTANITA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023003', '0', '0', '62', 1),
(627, 'SANTA ELENA', 'MONTEVERDE', 0, 1, 0, '', 'TE', '0', '', '', '', '', '', '', 1),
(628, 'SANTA ELENA', 'MUEY', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001023', '201001023005', '4125', '57996', '342', 1),
(629, 'SANTA ELENA', 'OLON', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023006', '0', '0', '655', 1),
(630, 'SANTA ELENA', 'OLONCITO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '655', 1),
(631, 'SANTA ELENA', 'PALMAR', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023013', '0', '0', '477', 1),
(632, 'LOJA', 'RIO PLAYAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '765', 1),
(633, 'SANTA ELENA', 'PROSPERIDAD', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023014', '0', '0', '656', 1),
(634, 'SANTA ELENA', 'PUERTE SANTA ROSA', 0, 1, 0, '', 'TE', '0', '', '', '', '', '', '', 1),
(635, 'SANTA ELENA', 'PUNTA BARANDUA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023015', '0', '0', '657', 1),
(636, 'SANTA ELENA', 'PUNTA BLANCA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023002', '0', '0', '474', 1),
(637, 'SANTA ELENA', 'PUNTA CARNERO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023001', '0', '0', '658', 1),
(638, 'SANTA ELENA', 'PUNTA CENTINELA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023019', '0', '0', '475', 1),
(639, 'LOJA', 'ROBLONES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '761', 1),
(640, 'LOJA', 'SABANILLA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '760', 1),
(641, 'LOJA', 'SABIANGO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(642, 'IMBABURA', 'SAN ANTONIO ', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(643, 'IMBABURA', 'SAN ANTONIO DE IBARRA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001011', '201001001027', '1032', '57830', '250', 1),
(644, 'SANTA ELENA', 'SALINAS/ SANTA ELENA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001002004', '0', '0', '5', 1),
(645, 'IMBABURA', 'SAN BLAS', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59092', '0', 1),
(646, 'SANTA ELENA', 'SAN JOSE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '816', 1),
(647, 'IMBABURA', 'SAN FRANCISCO DE NATABUELA', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(648, 'SANTA ELENA', 'SAN PABLO / SANTA ELENA', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '651', 1),
(649, 'IMBABURA', 'SAN JOSE', 0, 1, 0, '0', 'TS', '0', '0', '201001011', '201001011026', '0', '0', '581', 1),
(650, 'SANTA ELENA', 'SAN PEDRO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001011007', '0', '0', '481', 1),
(651, 'LOJA', 'SAN JOSE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(652, 'IMBABURA', 'SAN JUAN DE ILUMAN', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1032', '59093', '0', 1),
(653, 'SANTO DOMINGO', 'ABRAHAM CALAZACÓN ', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(654, 'SANTO DOMINGO', 'ALLURIQUIN', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '4126', '58011', '282', 1),
(655, 'SANTO DOMINGO', 'BOMBOLI', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '4126', '59161', '0', 1),
(656, 'SANTO DOMINGO', 'CHIGUILPE ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '4126', '59162', '0', 1),
(657, 'SANTO DOMINGO', 'KM 14 QUEVEDO', 1, 1, 0, 'TE', 'TS', '0', '0', '0', '0', '0', '0', '659', 1),
(658, 'SANTO DOMINGO', 'KM 24 QUEVEDO', 1, 1, 0, 'TE', 'TS', '0', '0', '0', '0', '0', '0', '660', 1),
(659, 'SANTO DOMINGO', 'KM 38.5 VIA QUEVEDO', 1, 1, 0, 'TE', 'TS', '0', '0', '0', '0', '0', '0', '661', 1),
(660, 'SANTO DOMINGO', 'KM 41 VIA QUEVEDO', 1, 1, 0, 'TE', 'TS', '0', '0', '0', '0', '0', '0', '662', 1),
(661, 'SANTO DOMINGO', 'LA CONCORDIA/SANTO DOMINGO', 0, 1, 0, '0', 'TS', '0', '0', '0', '0', '0', '0', '0', 1),
(662, 'SANTO DOMINGO', 'LA UNION/SANTO DOMINGO', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(663, 'SANTO DOMINGO', 'LAS DELICIAS', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '688', 1),
(664, 'SANTO DOMINGO', 'LUZ DE AMERICA', 1, 1, 1, 'TE', 'TS', 'TE', '0', '201001024', '201001024008', '4126', '58017', '663', 1),
(665, 'SANTO DOMINGO', 'MONTERREY', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(666, 'SANTO DOMINGO', 'NUEVO ISRAEL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '664', 1),
(667, 'SANTO DOMINGO', 'PATRICIA PILAR/SANTO DOMINGO', 0, 1, 0, '0', 'TS', '0', '0', '0', '0', '0', '0', '0', 1),
(668, 'SANTO DOMINGO', 'PUERTO LIMON', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '744', 1),
(669, 'SANTO DOMINGO', 'RÍO TOACHI ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '4126', '59163', '0', 1),
(670, 'SANTO DOMINGO', 'SAN JACINTO DEL BUA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '745', 1),
(671, 'SANTO DOMINGO', 'SANTO DOMINGO', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001024', '201001001004', '4126', '56434', '11', 1),
(672, 'SANTO DOMINGO', 'VALLE HERMOSO', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '665', 1),
(673, 'SANTO DOMINGO', 'VILLEGAS', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(674, 'SUCUMBIOS', '7 DE JULIO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '0', '0', '1041', '58022', '666', 1),
(675, 'SUCUMBIOS', 'CASCALES', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '667', 1),
(676, 'SUCUMBIOS', 'EL ENO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1041', '59129', '0', 1),
(677, 'SUCUMBIOS', 'GENERAL FARFAN', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1041', '59130', '0', 1),
(678, 'SUCUMBIOS', 'JAMBELI', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1041', '59131', '0', 1),
(679, 'SUCUMBIOS', 'JIVINO VERDE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '668', 1),
(680, 'SUCUMBIOS', 'LAGO AGRIO', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001022', '201001017003', '1041', '56441', '17', 1),
(681, 'SUCUMBIOS', 'LUMBAQUI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '670', 1),
(682, 'SUCUMBIOS', 'NUEVA LOJA', 0, 1, 1, '0', 'TO', 'TN', '0', '201001022', '201001022001', '1041', '59164', '0', 1),
(683, 'SUCUMBIOS', 'PACAYACU', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '820', 1),
(684, 'SUCUMBIOS', 'SAN PEDRO DE LOS COFANES', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(685, 'SUCUMBIOS', 'SANTA CECILIA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1041', '58027', '672', 1),
(686, 'SUCUMBIOS', 'SHUSHUFINDI', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001022', '201001022002', '1041', '56443', '289', 1),
(687, 'SUCUMBIOS', 'TARAPOA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '821', 1),
(688, 'TUNGURAHUA', 'AMBATILLO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '797', 1),
(689, 'TUNGURAHUA', 'AMBATO', 1, 1, 1, 'TP', 'TP', 'TN', '0', '201001019', '20100101901', '1042', '56445', '42', 1),
(690, 'TUNGURAHUA', 'ATAHUALPA / CHISALATA', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1042', '59134', '0', 1),
(691, 'TUNGURAHUA', 'BANOS DE AGUA SANTA', 1, 1, 0, 'TR', 'TE', '0', '0', '201001019', '20100101902', '0', '0', '79', 1),
(692, 'TUNGURAHUA', 'BETÍNEZ / PACHANLICA', 0, 1, 0, '0', 'TE', '0', '0', '201001019', '201001019014', '0', '0', '0', 1),
(693, 'TUNGURAHUA', 'CEVALLOS', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001019', '201001019005', '1042', '56447', '265', 1),
(694, 'TUNGURAHUA', 'CUNCHIBAMBA', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(695, 'TUNGURAHUA', 'HUACHI GRANDE', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1042', '59166', '0', 1),
(696, 'TUNGURAHUA', 'HUAMBALO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001019', '201001019011', '0', '0', '746', 1),
(697, 'TUNGURAHUA', 'IZAMBA', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1042', '59167', '0', 1),
(698, 'TUNGURAHUA', 'LAQUIGO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(699, 'TUNGURAHUA', 'MARTINEZ', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(700, 'TUNGURAHUA', 'MOCHA', 0, 1, 0, '0', 'TE', '0', '0', '201001019', '201001019007', '0', '0', '262', 1),
(701, 'TUNGURAHUA', 'MONTALVO/TUNGURAHUA', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(702, 'TUNGURAHUA', 'MUNDUGLEO', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1042', '59168', '0', 1),
(703, 'TUNGURAHUA', 'PATATE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001019', '201001003008', '0', '0', '261', 1),
(704, 'TUNGURAHUA', 'PELILEO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001019', '201001019004', '1042', '56450', '259', 1),
(705, 'TUNGURAHUA', 'PICAIGUA', 0, 0, 1, '0', '0', 'TN', '0', '0', '0', '1042', '59169', '0', 1),
(706, 'TUNGURAHUA', 'PILLARO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001019', '201001019006', '0', '0', '260', 1),
(707, 'TUNGURAHUA', 'PINLLO', 0, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1042', '59170', '0', 1),
(708, 'TUNGURAHUA', 'QUERO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001019', '201001019008', '1042', '56452', '263', 1),
(709, 'TUNGURAHUA', 'QUINCHICOTO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1042', '59171', '0', 1),
(710, 'TUNGURAHUA', 'QUISAPINCHA', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1042', '58031', '791', 1),
(711, 'TUNGURAHUA', 'SALASACA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1042', '59172', '0', 1),
(712, 'TUNGURAHUA', 'SAN PEDRO DE PELILEO', 0, 1, 0, '0', 'TE', '0', '0', '201001019', '201001019013', '0', '0', '0', 1),
(713, 'TUNGURAHUA', 'SANTA ROSA (AMBATO)', 1, 0, 1, 'TE', '0', 'TN', '0', '0', '0', '1042', '58032', '354', 1),
(714, 'TUNGURAHUA', 'TISALEO', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001019', '201001019009', '1042', '56453', '264', 1),
(715, 'TUNGURAHUA', 'TOTORAS', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1042', '59173', '0', 1),
(716, 'TUNGURAHUA', 'ULBA', 0, 1, 0, '0', 'TE', '0', '0', '201001019', '201001019012', '0', '0', '0', 1),
(717, 'TUNGURAHUA', 'UNAMUNCHO', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1042', '59174', '0', 1),
(718, 'ZAMORA', '28 DE MAYO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '602', 1),
(719, 'ZAMORA', 'CENTINELA DEL CONDOR', 0, 1, 0, '0', 'TO', '0', '0', '0', '0', '0', '0', '0', 1),
(720, 'ZAMORA', 'CHAMICO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '751', 1),
(721, 'ZAMORA', 'CHICAÑA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(722, 'ZAMORA', 'CHIMBUTZA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(723, 'ZAMORA', 'CHUCHUMBLETZA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(724, 'ZAMORA', 'CUMBARATZA', 1, 0, 1, 'TE', '0', 'TE', '0', '', '0', '1043', '58035', '757', 1),
(725, 'ZAMORA', 'EL PADMI', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(726, 'ZAMORA', 'EL PANGUI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '747', 1),
(727, 'ZAMORA', 'GUADALUPE', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '753', 1),
(728, 'ZAMORA', 'GUALAQUIZA', 0, 1, 0, '0', 'TO', '0', '0', '201001015', '201001015002', '0', '0', '0', 1),
(729, 'ZAMORA', 'GUAYZIMI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '799', 1),
(730, 'ZAMORA', 'LOS ENCUENTROS', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(731, 'ZAMORA', 'NAMIREZ', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '749', 1),
(732, 'ZAMORA', 'PACHICUTZA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(733, 'ZAMORA', 'PALANDA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '675', 1),
(734, 'ZAMORA', 'PANGUINTZA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(735, 'ZAMORA', 'PAQUIZHA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '750', 1),
(736, 'ZAMORA', 'PIUNTZA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '752', 1),
(737, 'ZAMORA', 'SAN ROQUE', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(738, 'ZAMORA', 'TIMBARA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1043', '59147', '0', 1),
(739, 'ZAMORA', 'TUNDAYME', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(740, 'ZAMORA', 'WUISMI', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(741, 'ZAMORA', 'YANTZAZA', 1, 1, 0, 'TE', 'TO', '0', '0', '201001021', '201001015003', '0', '0', '440', 1),
(742, 'ZAMORA', 'ZAMORA', 1, 1, 1, 'TE', 'TO', 'TN', '0', '201001021', '201001021001', '1043', '56461', '16', 1),
(743, 'ZAMORA', 'ZUMBA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '676', 1),
(744, 'ZAMORA', 'ZUMBI', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '804', 1),
(745, 'AZUAY', 'PAUTE', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003004', '0', '0', '460', 1),
(746, 'AZUAY', 'PONCE ENRIQUEZ', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001009013', '0', '0', '770', 1),
(747, 'AZUAY', 'PUCARA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '815', 1),
(748, 'AZUAY', 'RICAURTE/AZUAY', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001003', '201001003020', '1022', '59148', '695', 1),
(749, 'AZUAY', 'SAN FERNANDO', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003024', '0', '0', '37', 1),
(750, 'AZUAY', 'SAN JOAQUIN', 0, 1, 1, '0', 'TE', 'TN', '0', '201001003', '201001003025', '1022', '59149', '0', 1),
(751, 'AZUAY', 'San Juan Cuenca', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(752, 'AZUAY', 'SANTA ISABEL', 1, 1, 0, 'TE', 'TE', '0', '0', '201001003', '201001003005', '0', '0', '64', 1),
(753, 'AZUAY', 'SARAGURO', 0, 1, 0, '0', 'TE', '0', '0', '0', '0', '0', '0', '0', 1),
(754, 'AZUAY', 'SAYUASI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '0', '0', '1022', '57668', '819', 1),
(755, 'AZUAY', 'SEVILLA DE ORO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '504', 1),
(756, 'AZUAY', 'SIDCAY', 0, 1, 1, '0', 'TE', 'TE', '0', '201001003', '201001003026', '1022', '59062', '0', 1),
(757, 'AZUAY', 'SIGSIG', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '391', 1),
(758, 'AZUAY', 'SIMÓN BOLIVAR/AZUAY', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(759, 'AZUAY', 'SININCAY', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(760, 'AZUAY', 'Sosudel', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(761, 'AZUAY', 'TARQUI', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '505', 1),
(762, 'AZUAY', 'Tomebamba', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(763, 'AZUAY', 'Turi', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(764, 'AZUAY', 'VICTORIA DE PORTETE', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(765, 'AZUAY', 'YUNGUILLA', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(766, 'AZUAY', 'Zhaglli', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(767, 'AZUAY', 'ZONA FRANCA', 0, 1, 0, '', 'TE', '', '', '', '', '', '', '', 1),
(768, 'CHIMBORAZO', 'SANTA ROSA DE AGUA CLARA', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(769, 'CHIMBORAZO', 'YARUQUIES', 1, 1, 1, 'TE', 'TE', 'TN', '0', '201001008', '201001008011', '1026', '57711', '680', 1),
(770, 'EL ORO', 'SANTA ROSA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001009', '201001009009', '0', '0', '32', 1),
(771, 'GUAYAS', 'VELASCO IBARRA (EL EMPALME)', 0, 1, 0, '0', 'TE', '0', '0', '201001002', '201001002069', '0', '0', '0', 1),
(772, 'GUAYAS', 'VILLA NUEVA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '565', 1),
(773, 'GUAYAS', 'VIRGEN DE FATIMA KM 26', 1, 1, 0, 'TE', 'TE', '0', '0', '0', '0', '0', '0', '566', 1),
(774, 'GUAYAS', 'YAGUACHI', 0, 1, 1, '0', 'TE', 'TE', '0', '201001002', '201001002006', '1031', '56345', '182', 1),
(775, 'LOJA', 'SAN LUCAS', 1, 0, 0, 'TE', '0', '0', '0', '201001012', '201001012015', '0', '0', '588', 1),
(776, 'SANTA ELENA', 'SANTA ELENA / SANTA ELENA', 1, 1, 1, 'TR', 'TE', 'TN', '0', '201001023', '201001002010', '4125', '56436', '59', 1),
(777, 'SANTA ELENA', 'SANTA ROSA (SANTA ELENA)', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '340', 1),
(778, 'IMBABURA', 'SAN LUIS ', 0, 1, 0, '0', 'TS', '0', '0', '201001011', '201001011027', '0', '0', '730', 1),
(779, 'IMBABURA', 'SAN MIGUEL DE IBARRA', 0, 1, 0, '0', 'TS', '0', '0', '201001011', '201001011031', '0', '0', '0', 1),
(780, 'SANTA ELENA', 'SINCHAL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '817', 1),
(781, 'IMBABURA', 'SAN PABLO DEL LAGO', 1, 0, 1, 'TE', '0', 'TE', '0', '0', '0', '1032', '57832', '254', 1),
(782, 'IMBABURA', 'SAN PABLO IMBABURA', 0, 1, 0, '0', 'TE', '0', '0', '201001011', '201001011010', '0', '0', '0', 1),
(783, 'SANTA ELENA', 'VALDIVIA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001023', '201001023016', '0', '0', '478', 1),
(784, 'LOJA', 'SAN PEDRO', 0, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(785, 'LOJA', 'SAN PEDRO DE LA BENDITA', 0, 1, 0, '0', 'TE', '0', '0', '201001012', '201001012014', '0', '0', '0', 1),
(786, 'LOJA', 'SAN PEDRO DE VILCABAMBA', 0, 1, 0, '0', 'TE', '0', '0', '201001012', '201001012013', '0', '0', '0', 1),
(787, 'COTOPAXI', 'ZUMBAHUA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '803', 1),
(788, 'EL ORO', 'SHUMIRAL', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '548', 1),
(789, 'EL ORO', 'TORATA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1028', '59078', '0', 1),
(790, 'EL ORO', 'VEITORIA', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1028', '59079', '0', 1),
(791, 'EL ORO', 'ZARUMA', 1, 1, 0, 'TE', 'TE', '0', '0', '201001009', '201001009005', '0', '0', '67', 1),
(792, 'IMBABURA', 'SAN RAFAEL', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(793, 'IMBABURA', 'SAN ROQUE', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001011', '201001011011', '1032', '57833', '129', 1),
(794, 'LOJA', 'SAN SEBASTIÁN ', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1033', '59097', '0', 1),
(795, 'IMBABURA', 'SANTA BERTHA', 0, 1, 0, '0', 'TS', '0', '0', '201001011', '201001011028', '0', '0', '0', 1),
(796, 'LOJA', 'SANTIAGO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '683', 1),
(797, 'LOJA', 'SARAGURO', 1, 0, 0, 'TE', '0', '0', '0', '201001012', '201001012009', '0', '0', '430', 1),
(798, 'LOJA', 'SOZORANGA', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '131', 1),
(799, 'LOJA', 'SUCRE', 0, 0, 1, '0', '0', 'TE', '0', '0', '0', '1033', '59098', '0', 1),
(800, 'IMBABURA', 'TIERRA BLANCA', 0, 1, 0, '0', 'TS', '0', '0', '201001011', '201001011029', '0', '0', '0', 1),
(801, 'IMBABURA', 'TUMBACO', 0, 0, 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', 1),
(802, 'IMBABURA', 'URCUQUI', 1, 1, 1, 'TE', 'TE', 'TE', '0', '201001011', '201001011004', '1032', '59096', '729', 1),
(803, 'LOJA', 'VILCABAMBA', 0, 1, 0, '0', 'TE', '0', '0', '201001012', '201001012007', '0', '0', '431', 1),
(804, 'IMBABURA', 'YACHAY', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '731', 1),
(805, 'IMBABURA', 'YAGUARCOCHA', 1, 0, 1, 'TE', 'TE', 'TN', '0', '201001011', '201001011019', '1032', '57836', '583', 1),
(806, 'LOJA', 'ZAPOTILLO', 1, 0, 0, 'TE', '0', '0', '0', '0', '0', '0', '0', '437', 1),
(807, 'MANABI', '10 DE AGOSTO', 1, 0, 0, 'TE', '0', '0', '', '201001014', '', '', '', '600', 1),
(808, 'MANABI', '24 DE MAYO', 1, 1, 0, 'TE', '0', '0', '', '201001014', '201001001032', '', '', '396', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad_laar`
--

CREATE TABLE `ciudad_laar` (
  `id_ciudad` bigint UNSIGNED NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `trayecto` varchar(10) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `codigoProvincia` varchar(100) DEFAULT NULL,
  `codigor` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad_laar`
--

INSERT INTO `ciudad_laar` (`id_ciudad`, `codigo`, `nombre`, `trayecto`, `provincia`, `codigoProvincia`, `codigor`, `tipo`, `costo`, `precio`) VALUES
(3793, '201001002032', 'CHONGON', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3794, '20100101901', 'AMBATO', 'TP', 'TUNGURAHUA', '201001019', '16', 'PRINCIPAL', 2.8, 4.5),
(3795, '201001002033', 'NARANJITO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3796, '20100101902', 'BAÑOS DE AGUA SANTA', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(3797, '201001002034', 'ANCON', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(3798, '201001001001', 'QUITO', 'TP', 'PICHINCHA', '201001001', '1', 'PRINCIPAL', 2.8, 3.5),
(3799, '201001002035', 'POSORJA', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3800, '201001001002', 'CAYAMBE', 'TP', 'PICHINCHA', '201001001', '22', 'PRINCIPAL', 2.8, 4.5),
(3801, '201001002036', 'PALENQUE', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(3802, '201001001003', 'TABACUNDO', 'TE', 'PICHINCHA', '201001001', '22', 'ESPECIAL', 3.5, 5.5),
(3803, '201001002037', 'BUCAY', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3804, '201001001004', 'SANTO DOMINGO', 'TP', 'SANTO DOMINGO', '201001024', '45', 'PRINCIPAL', 2.8, 4.5),
(3805, '201001002038', 'SIMON BOLIVAR', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3806, '201001001005', 'SANGOLQUI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3807, '201001002039', 'Km 26 via Duran Tambo', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3808, '201001001006', 'SAN RAFAEL', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3809, '201001002040', 'PEDRO CARBO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3810, '201001001007', 'EL QUINCHE', 'TS', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3811, '201001002041', 'JULIO ANDRADE', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3812, '201001001008', 'MACHACHI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3813, '201001002042', 'PROGRESO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3814, '201001001009', 'CUMBAYA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3815, '201001002043', 'MONJAS', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3816, '201001001010', 'SAN MIGUEL DE LOS BANCOS', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3817, '201001002046', 'ANCONCITO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(3818, '201001001011', 'LA CONCORDIA', 'TS', 'SANTO DOMINGO', '201001024', '56', 'SECUNDARIO', 3.5, 5.5),
(3819, '201001002048', 'BASE TAURA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3820, '201001001012', 'PEDRO V. MALDONADO', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3821, '201001002049', 'EL DESEO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3822, '201001001013', 'PUERTO QUITO', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3823, '201001002050', 'LORENZO DE GARAICOA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3824, '201001001014', 'GUAYLLABAMBA', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3825, '201001002051', 'MARISCAL SUCRE', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3826, '201001001018', 'AMAGUAÑA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3827, '201001002052', 'ROBERTO ASTUDILLO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3828, '201001001019', 'ALOAG', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3829, '201001002053', 'MANUEL J. CALLE', 'TS', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3830, '201001001020', 'TUMBACO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3831, '201001002054', 'CHIVERIA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3832, '201001001021', 'MITAD DEL MUNDO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3833, '201001002055', 'COLORADAL', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3834, '201001001022', 'CALACALI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3835, '201001002056', 'GENERAL VERNAZA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3836, '201001001024', 'CALDERON', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3837, '201001002057', 'LA MARAVILLA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3838, '201001001025', 'PIFO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3839, '201001002058', 'LAS ANIMAS', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3840, '201001001026', 'PUEMBO', 'TE', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3841, '201001002059', 'LOS TINTOS', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3842, '201001001027', 'SAN ANTONIO IBARRA', 'TS', 'IMBABURA', '201001011', '67', NULL, 3.5, 5.5),
(3843, '201001002060', 'PETRILLO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3844, '201001001028', 'POMASQUI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3845, '201001002061', 'PUENTE LUCIA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3846, '201001001029', 'NANEGALITO', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3847, '201001002062', 'SABANILLA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3848, '201001001030', 'MARCELINO MARIDUEÑA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3849, '201001002063', 'TARIFA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3850, '201001001031', 'ALANGASI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3851, '201001002064', 'MATILDE ESTHER', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3852, '201001001032', '24 DE MAYO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(3853, '201001002065', 'BOCA DE CAÑA', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3854, '201001001033', 'CONOCOTO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3855, '201001002066', 'SAMBORONDON (Pueblo)', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3856, '201001001035', 'PEDRO MONCAYO', 'TE', 'PICHINCHA', '201001001', '22', 'ESPECIAL', 3.5, 5.5),
(3857, '201001002067', 'BOLICHE', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3858, '201001001036', 'PINTAG', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3859, '201001002068', 'Virgen De FÃ¡tima Km 26', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3860, '201001001037', 'YARUQUI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3861, '201001002069', 'Velasco Ibarra (El Empalme)', 'TE', 'GUAYAS', '201001002', '42', 'ESPECIAL', 3.5, 5.5),
(3862, '201001001039', 'VALLE DE LOS CHILLOS', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3863, '201001002070', 'San Antonio (Playas)', 'TE', 'GUAYAS', '201001002', '70', NULL, 3.5, 5.5),
(3864, '201001001040', 'VALLE HERMOSO', 'TE', 'SANTO DOMINGO', '201001024', '56', 'ESPECIAL', 3.5, 5.5),
(3865, '201001002071', 'limonal', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3866, '201001001041', 'PUSUQUI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3867, '201001002072', 'La Puntilla', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3868, '201001001042', 'AYORA', 'TE', 'PICHINCHA', '201001001', '22', 'ESPECIAL', 3.5, 5.5),
(3869, '201001002073', 'Km 26 Virgen De FÃ¡tima', 'TE', 'GUAYAS', '201001002', '57', NULL, 3.5, 5.5),
(3870, '201001001043', 'AZCASUBI VIA AL QUINCHE', 'TE', 'PICHINCHA', '201001001', '1', NULL, 3.5, 5.5),
(3871, '201001002074', 'Ingenio San Carlos', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3872, '201001002075', 'General Villamil (Playas)', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3873, '201001001045', 'JUAN MONTALVO', 'TE', 'PICHINCHA', '201001001', '22', 'ESPECIAL', 3.5, 5.5),
(3874, '201001001046', 'ALOASI', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3875, '201001002076', 'Eloy Alfaro DurÃ¡n', 'TE', 'GUAYAS', '201001002', '11', NULL, 3.5, 5.5),
(3876, '201001001047', 'LA ARMENIA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3877, '201001002077', 'Data De Playas', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3878, '201001002078', 'Cumanda Milagro', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3879, '201001001048', 'LLANO CHICO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3880, '201001003002', 'GIRON', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3881, '201001001049', 'LLANO GRANDE', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3882, '201001003003', 'GUALACEO', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3883, '201001001051', 'MIRAVALLE', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3884, '201001003004', 'PAUTE', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3885, '201001001052', 'ORQUIDEAS', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3886, '201001003005', 'SANTA ISABEL', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3887, '201001001053', 'SAN ANTONIO DE PICHINCHA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3888, '201001003006', 'CHORDELEG', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3889, '201001001054', 'SAN JOSE DE MORAN', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3890, '201001003007', 'SIG SIG', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3891, '201001001056', 'TABABELA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3892, '201001003008', 'PATATE', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(3893, '201001001057', 'UYUMBICHO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3894, '201001003009', 'EL TAMBO', 'TE', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(3895, '201001001058', 'ZAMBISA', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(3896, '201001003011', 'CUENCA', 'TP', 'AZUAY', '201001003', '15', 'PRINCIPAL', 2.8, 4.5),
(3897, '201001001059', 'MONTERREY', 'TE', 'SANTO DOMINGO', '201001024', '56', 'ESPECIAL', 3.5, 5.5),
(3898, '201001003016', 'CHAULLABAMBA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3899, '201001001060', 'LAS VILLEGAS', 'TE', 'SANTO DOMINGO', '201001024', '56', NULL, 3.5, 5.5),
(3900, '201001003017', 'CUMBE', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3901, '201001001061', 'CUZUBAMBA', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3902, '201001003018', 'YUNGUILLA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3903, '201001001062', 'ASCAZUBI', 'TE', 'PICHINCHA', '201001001', '1', NULL, 3.5, 5.5),
(3904, '201001003019', 'ZONA FRANCA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3905, '201001001063', 'CHECA', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3906, '201001003020', 'RICAURTE CUENCA', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(3907, '201001001064', 'Zambiza', 'TS', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3908, '201001003021', 'Llacao', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3909, '201001001065', 'Rumipamba', 'TP', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3910, '201001003022', 'Nulti', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3911, '201001001066', 'RumiÃ±ahui', 'TS', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3912, '201001003023', 'Paccha', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3913, '201001001067', 'OtÃ³n', 'TE', 'PICHINCHA', '201001001', '22', 'ESPECIAL', 3.5, 5.5),
(3914, '201001003024', 'San Fernando', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3915, '201001001068', 'Nono', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3916, '201001003025', 'San Joaquín', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3917, '201001001069', 'Mejía', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3918, '201001003026', 'Sidcay', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3919, '201001001070', 'Guangopolo', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3920, '201001003027', 'SimÃ³n Bolívar (Cab. en GaÃ±anzol)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3921, '201001001071', 'El Chaupi', 'TE', 'PICHINCHA', '201001001', '1', 'ESPECIAL', 3.5, 5.5),
(3922, '201001003028', 'Sinincay', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3923, '201001002001', 'GUAYAQUIL', 'TP', 'GUAYAS', '201001002', '11', 'PRINCIPAL', 2.8, 4.5),
(3924, '201001003029', 'Tomebamba', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3925, '201001002002', 'DURAN', 'TS', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3926, '201001003030', 'Turi', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3927, '201001002003', 'MILAGRO', 'TS', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3928, '201001003031', 'Victoria del Portete (Irquis)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3929, '201001002004', 'SALINAS', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(3930, '201001003032', 'Zhaglli (Shaglli)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3931, '201001002005', 'PLAYAS', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3932, '201001003033', 'Tarqui Cuenca', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3933, '201001002006', 'YAGUACHI', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(3934, '201001003034', 'San Juan Cuenca', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3935, '201001002007', 'EL TRIUNFO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3936, '201001003035', 'BaÃ±os Cuenca', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(3937, '201001002009', 'DAULE', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3938, '201001003036', 'Checa (Jidcay)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3939, '201001002010', 'SANTA ELENA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(3940, '201001003037', 'Chiquintad', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3941, '201001002011', 'EL EMPALME', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(3942, '201001003038', 'Sosudel', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3943, '201001002013', 'LA LIBERTAD', 'TP', 'SANTA ELENA', '201001023', '33', 'PRINCIPAL', 2.8, 4.5),
(3944, '201001003039', 'Firma', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3945, '201001002014', 'BALAO', 'TE', 'GUAYAS', '201001002', '65', 'ESPECIAL', 3.5, 5.5),
(3946, '201001003040', 'Sayausi', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(3947, '201001002015', 'NARANJAL', 'TE', 'GUAYAS', '201001002', '65', 'ESPECIAL', 3.5, 5.5),
(3948, '201001004001', 'GUARANDA', 'TP', 'BOLIVAR', '201001004', '29', 'PRINCIPAL', 2.8, 4.5),
(3949, '201001002016', 'BALZAR', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3950, '201001004002', 'ECHEANDIA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(3951, '201001002017', 'TENGUEL', 'TE', 'GUAYAS', '201001002', '65', 'ESPECIAL', 3.5, 5.5),
(3952, '201001004003', 'SAN JOSE DE CHIMBO', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(3953, '201001002018', 'JUJAN', 'TE', 'GUAYAS', '201001002', '19', 'ESPECIAL', 3.5, 5.5),
(3954, '201001004006', 'SAN MIGUEL DE BOLIVAR', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(3955, '201001002019', 'SAMBORONDON', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3956, '201001004007', 'CALUMA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(3957, '201001002020', 'PASCUALES', 'TE', 'GUAYAS', '201001002', '11', NULL, 3.5, 5.5),
(3958, '201001004008', 'CHAMBO', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(3959, '201001002021', 'NOBOL', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3960, '201001004011', 'SALINAS DE GUARANDA', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(3961, '201001002022', 'PALESTINA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3962, '201001005001', 'AZOGUES', 'TP', 'CAÑAR', '201001005', '18', 'PRINCIPAL', 2.8, 4.5),
(3963, '201001002023', 'SANTA LUCIA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3964, '201001005002', 'LA TRONCAL', 'TE', 'CAÑAR', '201001005', '57', 'ESPECIAL', 3.5, 5.5),
(3965, '201001002024', 'LOMAS DE SARGENTILLO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3966, '201001005003', 'CAÑAR', 'TP', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(3967, '201001002025', 'ISIDRO AYORA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3968, '201001005004', 'BIBLIAN', 'TS', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(3969, '201001002027', 'CERECITA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3970, '201001005007', 'COJITAMBO', 'TE', 'CAÑAR', '201001005', '18', NULL, 3.5, 5.5),
(3971, '201001002028', 'PUERTO INCA', 'TE', 'GUAYAS', '201001002', '65', 'ESPECIAL', 3.5, 5.5),
(3972, '201001006001', 'TULCAN', 'TP', 'CARCHI', '201001006', '47', 'PRINCIPAL', 2.8, 4.5),
(3973, '201001002029', 'COLIMES', 'TE', 'GUAYAS', '201001002', '66', NULL, 3.5, 5.5),
(3974, '201001006002', 'MIRA', 'TE', 'CARCHI', '201001006', '67', 'ESPECIAL', 3.5, 5.5),
(3975, '201001002030', 'LAUREL', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3976, '201001006003', 'EL ANGEL', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3977, '201001002031', 'SALITRE', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3978, '201001006004', 'SAN GABRIEL', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3979, '201001002032', 'CHONGON', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3980, '201001006005', 'HUACA', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3981, '201001002033', 'NARANJITO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3982, '201001006006', 'BOLIVAR', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3983, '201001002034', 'ANCON', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(3984, '201001007001', 'LATACUNGA', 'TP', 'COTOPAXI', '201001007', '32', 'PRINCIPAL', 2.8, 4.5),
(3985, '201001002035', 'POSORJA', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(3986, '201001007002', 'SALCEDO', 'TS', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3987, '201001002036', 'PALENQUE', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(3988, '201001007003', 'SAQUISILI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3989, '201001002037', 'BUCAY', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3990, '201001007004', 'PUJILI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3991, '201001002038', 'SIMON BOLIVAR', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3992, '201001007005', 'LA MANA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(3993, '201001002039', 'Km 26 via Duran Tambo', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(3994, '201001007007', 'LASSO', 'TS', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3995, '201001002040', 'PEDRO CARBO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(3996, '201001007008', 'PASTOCALLE', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3997, '201001002041', 'JULIO ANDRADE', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(3998, '201001007009', 'GUAYTACAMA', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(3999, '201001002042', 'PROGRESO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4000, '201001007010', 'MULALO', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4001, '201001002043', 'MONJAS', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(4002, '201001007011', 'TANICUCHI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4003, '201001002046', 'ANCONCITO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4004, '201001007012', 'BELISARIO QUEVEDO', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4005, '201001002048', 'BASE TAURA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4006, '201001007013', 'SAN BUENAVENTURA BELLAVISTA. ', 'TE', 'COTOPAXI', '201001007', '32', NULL, 3.5, 5.5),
(4007, '201001002049', 'EL DESEO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4008, '201001007014', 'Tanicuchchi', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4009, '201001002050', 'LORENZO DE GARAICOA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4010, '201001007015', 'Mulalao', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4011, '201001002051', 'MARISCAL SUCRE', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4012, '201001008001', 'RIOBAMBA', 'TP', 'CHIMBORAZO', '201001008', '44', 'PRINCIPAL', 2.8, 4.5),
(4013, '201001002052', 'ROBERTO ASTUDILLO', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4014, '201001008002', 'ALAUSI', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4015, '201001002053', 'MANUEL J. CALLE', 'TS', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4016, '201001008003', 'CHUNCHI', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4017, '201001002054', 'CHIVERIA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4018, '201001008004', 'GUANO', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4019, '201001002055', 'COLORADAL', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4020, '201001008005', 'CAJABAMBA', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4021, '201001002056', 'GENERAL VERNAZA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4022, '201001008007', 'GUAMOTE', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4023, '201001002057', 'LA MARAVILLA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4024, '201001008008', 'COLTA', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4025, '201001002058', 'LAS ANIMAS', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4026, '201001008010', 'LICAN', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4027, '201001002059', 'LOS TINTOS', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4028, '201001008011', 'YARUQUIES', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4029, '201001002060', 'PETRILLO', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4030, '201001008012', 'Cumanda Chimborazo', 'TE', 'CHIMBORAZO', '201001008', '57', 'ESPECIAL', 3.5, 5.5),
(4031, '201001002061', 'PUENTE LUCIA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4032, '201001009001', 'MACHALA', 'TP', 'EL ORO', '201001009', '36', 'PRINCIPAL', 2.8, 4.5),
(4033, '201001002062', 'SABANILLA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4034, '201001009002', 'PASAJE', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4035, '201001002063', 'TARIFA', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4036, '201001009003', 'PORTOVELO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4037, '201001002064', 'MATILDE ESTHER', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4038, '201001009004', 'PIÑAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4039, '201001002065', 'BOCA DE CAÑA', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(4040, '201001009005', 'ZARUMA', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4041, '201001002066', 'SAMBORONDON (Pueblo)', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(4042, '201001009006', 'ARENILLAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4043, '201001002067', 'BOLICHE', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(4044, '201001009007', 'HUAQUILLAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4045, '201001002068', 'Virgen De FÃ¡tima Km 26', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4046, '201001009008', 'EL GUABO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4047, '201001002069', 'Velasco Ibarra (El Empalme)', 'TE', 'GUAYAS', '201001002', '42', 'ESPECIAL', 3.5, 5.5),
(4048, '201001009009', 'SANTA ROSA', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4049, '201001002070', 'San Antonio (Playas)', 'TE', 'GUAYAS', '201001002', '70', NULL, 3.5, 5.5),
(4050, '201001009010', 'PUERTO BOLIVAR', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4051, '201001002071', 'limonal', 'TE', 'GUAYAS', '201001002', '66', 'ESPECIAL', 3.5, 5.5),
(4052, '201001009011', 'EL CAMBIO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4053, '201001002072', 'La Puntilla', 'TE', 'GUAYAS', '201001002', '11', 'ESPECIAL', 3.5, 5.5),
(4054, '201001009013', 'PONCE ENRIQUEZ', 'TE', 'AZUAY', '201001003', '65', 'ESPECIAL', 3.5, 5.5),
(4055, '201001002073', 'Km 26 Virgen De FÃ¡tima', 'TE', 'GUAYAS', '201001002', '57', NULL, 3.5, 5.5),
(4056, '201001009017', 'La PeaÃ±a', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4057, '201001002074', 'Ingenio San Carlos', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4058, '201001009018', 'Loma De Franco', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4059, '201001002075', 'General Villamil (Playas)', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(4060, '201001009019', 'La Avanzada', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4061, '201001002076', 'Eloy Alfaro DurÃ¡n', 'TE', 'GUAYAS', '201001002', '11', NULL, 3.5, 5.5),
(4062, '201001010001', 'ESMERALDAS', 'TP', 'ESMERALDAS', '201001010', '26', 'PRINCIPAL', 2.8, 4.5),
(4063, '201001002077', 'Data De Playas', 'TE', 'GUAYAS', '201001002', '70', 'ESPECIAL', 3.5, 5.5),
(4064, '201001010003', 'ATACAMES', 'TS', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4065, '201001002078', 'Cumanda Milagro', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4066, '201001010004', 'TONSUPA', 'TE', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4067, '201001003002', 'GIRON', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4068, '201001010008', 'QUININDE', 'TP', 'ESMERALDAS', '201001010', '43', 'ESPECIAL', 3.5, 5.5),
(4069, '201001003003', 'GUALACEO', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4070, '201001010009', 'PEDERNALES', 'TE', 'MANABI', '201001014', '39', 'SECUNDARIO', 3.5, 5.5),
(4071, '201001003004', 'PAUTE', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4072, '201001010010', 'CUMANDA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4073, '201001003005', 'SANTA ISABEL', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4074, '201001010011', 'LA UNION', 'TE', 'ESMERALDAS', '201001010', '56', 'ESPECIAL', 3.5, 5.5),
(4075, '201001003006', 'CHORDELEG', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4076, '201001010013', 'VICHE', 'TE', 'ESMERALDAS', '201001010', '43', 'ESPECIAL', 3.5, 5.5),
(4077, '201001003007', 'SIG SIG', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4078, '201001010016', 'TACHINA', 'TE', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4079, '201001003008', 'PATATE', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4080, '201001011001', 'ATUNTAQUI', 'TP', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4081, '201001003009', 'EL TAMBO', 'TE', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(4082, '201001011002', 'OTAVALO', 'TP', 'IMBABURA', '201001011', '38', 'PRINCIPAL', 2.8, 4.5),
(4083, '201001003011', 'CUENCA', 'TP', 'AZUAY', '201001003', '15', 'PRINCIPAL', 2.8, 4.5),
(4084, '201001011003', 'PIMAMPIRO', 'TE', 'IMBABURA', '201001011', '67', 'ESPECIAL', 3.5, 5.5),
(4085, '201001003016', 'CHAULLABAMBA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4086, '201001011004', 'URCUQUI', 'TE', 'IMBABURA', '201001011', '30', 'ESPECIAL', 3.5, 5.5),
(4087, '201001003017', 'CUMBE', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4088, '201001011005', 'IBARRA', 'TP', 'IMBABURA', '201001011', '30', 'PRINCIPAL', 2.8, 4.5),
(4089, '201001003018', 'YUNGUILLA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4090, '201001011006', 'COTACACHI', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4091, '201001003019', 'ZONA FRANCA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4092, '201001011007', 'SAN PEDRO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4093, '201001003020', 'RICAURTE CUENCA', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(4094, '201001011009', 'ISLA BEJUCAL', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4095, '201001003021', 'Llacao', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4096, '201001011010', 'SAN PABLO IMBABURA', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4097, '201001003022', 'Nulti', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4098, '201001011011', 'SAN ROQUE', 'TE', 'IMBABURA', '201001011', '67', 'ESPECIAL', 3.5, 5.5),
(4099, '201001003023', 'Paccha', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4100, '201001011012', 'GONZALEZ SUAREZ', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4101, '201001003024', 'San Fernando', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4102, '201001011013', 'PEGUCHE', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4103, '201001003025', 'San Joaquín', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4104, '201001011014', 'QUIROGA', 'TE', 'IMBABURA', '201001011', '38', NULL, 3.5, 5.5),
(4105, '201001003026', 'Sidcay', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4106, '201001011018', 'CARANQUI', 'TE', 'IMBABURA', '201001011', '30', 'ESPECIAL', 3.5, 5.5),
(4107, '201001003027', 'SimÃ³n Bolívar (Cab. en GaÃ±anzol)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4108, '201001011019', 'YAGUARCOCHA', 'TS', 'IMBABURA', '201001011', '30', NULL, 3.5, 5.5),
(4109, '201001003028', 'Sinincay', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4110, '201001011020', 'CHORLAVI', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4111, '201001003029', 'Tomebamba', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4112, '201001011021', 'ANDRADE MARIN', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4113, '201001003030', 'Turi', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4114, '201001011022', 'ANTONIO ANTE', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4115, '201001003031', 'Victoria del Portete (Irquis)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4116, '201001011023', 'CHALTURA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4117, '201001003032', 'Zhaglli (Shaglli)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4118, '201001011025', 'NATABUELA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4119, '201001003033', 'Tarqui Cuenca', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4120, '201001011026', 'SAN JOSE', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4121, '201001003034', 'San Juan Cuenca', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4122, '201001011027', 'SAN LUIS', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4123, '201001003035', 'BaÃ±os Cuenca', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(4124, '201001011028', 'SANTA BERTHA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4125, '201001003036', 'Checa (Jidcay)', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4126, '201001011029', 'TIERRA BLANCA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4127, '201001003037', 'Chiquintad', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4128, '201001011030', 'PERUGACHI', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4129, '201001003038', 'Sosudel', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4130, '201001011031', 'San Miguel de Ibarra', 'TE', 'IMBABURA', '201001011', '30', 'SECUNDARIO', 3.5, 5.5),
(4131, '201001003039', 'Firma', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4132, '201001011032', 'Quiroga Otavalo', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4133, '201001003040', 'Sayausi', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4134, '201001012001', 'LOJA', 'TP', 'LOJA', '201001012', '34', 'PRINCIPAL', 2.8, 4.5),
(4135, '201001004001', 'GUARANDA', 'TP', 'BOLIVAR', '201001004', '29', 'PRINCIPAL', 2.8, 4.5),
(4136, '201001012002', 'CATAMAYO', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4137, '201001004002', 'ECHEANDIA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4138, '201001012003', 'CATARAMA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4139, '201001004003', 'SAN JOSE DE CHIMBO', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(4140, '201001012004', 'CARIAMANGA', 'TE', 'LOJA', '201001012', '34', NULL, 3.5, 5.5),
(4141, '201001004006', 'SAN MIGUEL DE BOLIVAR', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(4142, '201001012005', 'CATACOCHA', 'TE', 'LOJA', '201001012', '34', NULL, 3.5, 5.5),
(4143, '201001004007', 'CALUMA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4144, '201001012006', 'MALACATOS', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4145, '201001004008', 'CHAMBO', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4146, '201001012007', 'VILCABAMBA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4147, '201001004011', 'SALINAS DE GUARANDA', 'TE', 'BOLIVAR', '201001004', '29', 'ESPECIAL', 3.5, 5.5),
(4148, '201001012009', 'SARAGURO', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4149, '201001005001', 'AZOGUES', 'TP', 'CAÑAR', '201001005', '18', 'PRINCIPAL', 2.8, 4.5),
(4150, '201001012010', 'GONZANAMA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4151, '201001005002', 'LA TRONCAL', 'TE', 'CAÑAR', '201001005', '57', 'ESPECIAL', 3.5, 5.5),
(4152, '201001012011', 'CELICA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4153, '201001005003', 'CAÑAR', 'TP', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(4154, '201001012013', 'San Pedro de Vilcabamba', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4155, '201001005004', 'BIBLIAN', 'TS', 'CAÑAR', '201001005', '18', 'ESPECIAL', 3.5, 5.5),
(4156, '201001012014', 'San Pedro de La Bendita', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4157, '201001005007', 'COJITAMBO', 'TE', 'CAÑAR', '201001005', '18', NULL, 3.5, 5.5),
(4158, '201001012015', 'San Lucas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4159, '201001006001', 'TULCAN', 'TP', 'CARCHI', '201001006', '47', 'PRINCIPAL', 2.8, 4.5),
(4160, '201001012016', 'Paltas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4161, '201001006002', 'MIRA', 'TE', 'CARCHI', '201001006', '67', 'ESPECIAL', 3.5, 5.5),
(4162, '201001012017', 'Calvas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4163, '201001006003', 'EL ANGEL', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(4164, '201001013001', 'BABAHOYO', 'TP', 'LOS RIOS', '201001013', '19', 'PRINCIPAL', 2.8, 4.5),
(4165, '201001006004', 'SAN GABRIEL', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(4166, '201001013002', 'QUEVEDO', 'TP', 'LOS RIOS', '201001013', '42', 'PRINCIPAL', 2.8, 4.5),
(4167, '201001006005', 'HUACA', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(4168, '201001013003', 'VENTANAS', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4169, '201001006006', 'BOLIVAR', 'TE', 'CARCHI', '201001006', '47', 'ESPECIAL', 3.5, 5.5),
(4170, '201001013004', 'VALENCIA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4171, '201001007001', 'LATACUNGA', 'TP', 'COTOPAXI', '201001007', '32', 'PRINCIPAL', 2.8, 4.5),
(4172, '201001013005', 'BUENA FE', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4173, '201001007002', 'SALCEDO', 'TS', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4174, '201001013006', 'VINCES', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4175, '201001007003', 'SAQUISILI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4176, '201001013007', 'MOCACHE', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4177, '201001007004', 'PUJILI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4178, '201001013008', 'SAN JUAN', 'TE', 'LOS RIOS', '201001013', '19', NULL, 3.5, 5.5),
(4179, '201001007005', 'LA MANA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4180, '201001013009', 'MONTALVO', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4181, '201001007007', 'LASSO', 'TS', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4182, '201001013010', 'PATRICIA PILAR', 'TS', 'LOS RIOS', '201001013', '45', 'SECUNDARIO', 3.5, 5.5),
(4183, '201001007008', 'PASTOCALLE', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4184, '201001013012', 'PUEBLO VIEJO', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4185, '201001007009', 'GUAYTACAMA', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4186, '201001013013', 'BABA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4187, '201001007010', 'MULALO', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4188, '201001013014', 'SAN CAMILO', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4189, '201001007011', 'TANICUCHI', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4190, '201001013015', 'SAN CARLOS', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4191, '201001007012', 'BELISARIO QUEVEDO', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4192, '201001013016', 'RICAURTE LOS RIOS', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4193, '201001007013', 'SAN BUENAVENTURA BELLAVISTA. ', 'TE', 'COTOPAXI', '201001007', '32', NULL, 3.5, 5.5),
(4194, '201001013019', 'QUINSALOMA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4195, '201001007014', 'Tanicuchchi', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4196, '201001013020', 'TRES POSTES', 'TE', 'GUAYAS', '201001002', '19', 'ESPECIAL', 3.5, 5.5),
(4197, '201001007015', 'Mulalao', 'TE', 'COTOPAXI', '201001007', '32', 'ESPECIAL', 3.5, 5.5),
(4198, '201001013021', 'ISLA DE BEJUCAL', 'TE', 'LOS RIOS', '201001013', '19', NULL, 3.5, 5.5),
(4199, '201001008001', 'RIOBAMBA', 'TP', 'CHIMBORAZO', '201001008', '44', 'PRINCIPAL', 2.8, 4.5),
(4200, '201001013022', 'San Juan Babahoyo', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4201, '201001008002', 'ALAUSI', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4202, '201001013023', 'San Jacinto de Buena Fe', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4203, '201001008003', 'CHUNCHI', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4204, '201001013024', 'La UniÃ³n (Valencia)', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4205, '201001008004', 'GUANO', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4206, '201001013025', 'La Julia', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4207, '201001008005', 'CAJABAMBA', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4208, '201001013026', 'La Esperanza', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4209, '201001008007', 'GUAMOTE', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4210, '201001013027', 'Guare', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4211, '201001008008', 'COLTA', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4212, '201001014001', 'MANTA', 'TP', 'MANABI', '201001014', '37', 'PRINCIPAL', 2.8, 4.5),
(4213, '201001008010', 'LICAN', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4214, '201001014002', 'PORTOVIEJO', 'TP', 'MANABI', '201001014', '40', 'PRINCIPAL', 2.8, 4.5),
(4215, '201001008011', 'YARUQUIES', 'TE', 'CHIMBORAZO', '201001008', '44', 'ESPECIAL', 3.5, 5.5),
(4216, '201001014003', 'BAHIA DE CARAQUEZ', 'TP', 'MANABI', '201001014', '20', 'PRINCIPAL', 2.8, 4.5),
(4217, '201001008012', 'Cumanda Chimborazo', 'TE', 'CHIMBORAZO', '201001008', '57', 'ESPECIAL', 3.5, 5.5),
(4218, '201001014004', 'CHONE', 'TS', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4219, '201001009001', 'MACHALA', 'TP', 'EL ORO', '201001009', '36', 'PRINCIPAL', 2.8, 4.5),
(4220, '201001014005', 'EL CARMEN', 'TP', 'MANABI', '201001014', '24', 'PRINCIPAL', 2.8, 4.5),
(4221, '201001009002', 'PASAJE', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4222, '201001014006', 'JIPIJAPA', 'TP', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4223, '201001009003', 'PORTOVELO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4224, '201001014007', 'PICHINCHA MANABI', 'TE', 'MANABI', '201001014', '42', NULL, 3.5, 5.5),
(4225, '201001009004', 'PIÑAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4226, '201001014008', 'SANTA ANA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4227, '201001009005', 'ZARUMA', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4228, '201001014009', 'JUNIN', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4229, '201001009006', 'ARENILLAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4230, '201001014010', 'CRUCITA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4231, '201001009007', 'HUAQUILLAS', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4232, '201001014011', 'COLON', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4233, '201001009008', 'EL GUABO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4234, '201001014012', 'ROCAFUERTE', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4235, '201001009009', 'SANTA ROSA', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4236, '201001014013', 'JARAMIJO', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4237, '201001009010', 'PUERTO BOLIVAR', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4238, '201001014014', 'PAJAN', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4239, '201001009011', 'EL CAMBIO', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4240, '201001014015', 'CHARAPOTO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4241, '201001009013', 'PONCE ENRIQUEZ', 'TE', 'AZUAY', '201001003', '65', 'ESPECIAL', 3.5, 5.5),
(4242, '201001014016', 'CALCETA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4243, '201001009017', 'La PeaÃ±a', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4244, '201001014017', 'TOSAGUA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4245, '201001009018', 'Loma De Franco', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4246, '201001014018', 'SAN VICENTE', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4247, '201001009019', 'La Avanzada', 'TE', 'EL ORO', '201001009', '36', 'ESPECIAL', 3.5, 5.5),
(4248, '201001014019', 'OLMEDO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4249, '201001010001', 'ESMERALDAS', 'TP', 'ESMERALDAS', '201001010', '26', 'PRINCIPAL', 2.8, 4.5),
(4250, '201001014020', 'MONTECRISTI', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4251, '201001010003', 'ATACAMES', 'TS', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4252, '201001014021', 'FLAVIO ALFARO', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4253, '201001010004', 'TONSUPA', 'TE', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4254, '201001014022', 'PUERTO LOPEZ', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4255, '201001010008', 'QUININDE', 'TP', 'ESMERALDAS', '201001010', '43', 'ESPECIAL', 3.5, 5.5),
(4256, '201001014023', 'BALLENITA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4257, '201001010009', 'PEDERNALES', 'TE', 'MANABI', '201001014', '39', 'SECUNDARIO', 3.5, 5.5),
(4258, '201001014024', 'JAMA', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4259, '201001010010', 'CUMANDA', 'TE', 'GUAYAS', '201001002', '57', 'ESPECIAL', 3.5, 5.5),
(4260, '201001014025', 'SAN JACINTO', 'TE', 'MANABI', '201001014', '11', NULL, 3.5, 5.5),
(4261, '201001010011', 'LA UNION', 'TE', 'ESMERALDAS', '201001010', '56', 'ESPECIAL', 3.5, 5.5),
(4262, '201001014026', 'TARQUI', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(4263, '201001010013', 'VICHE', 'TE', 'ESMERALDAS', '201001010', '43', 'ESPECIAL', 3.5, 5.5),
(4264, '201001014027', 'LEONIDAS PLAZA', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4265, '201001010016', 'TACHINA', 'TE', 'ESMERALDAS', '201001010', '26', 'ESPECIAL', 3.5, 5.5),
(4266, '201001014029', 'PUERTO CAYO', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4267, '201001011001', 'ATUNTAQUI', 'TP', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4268, '201001014031', 'CALDERON DE PORTOVIEJO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4269, '201001011002', 'OTAVALO', 'TP', 'IMBABURA', '201001011', '38', 'PRINCIPAL', 2.8, 4.5),
(4270, '201001014032', 'CANUTO', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4271, '201001011003', 'PIMAMPIRO', 'TE', 'IMBABURA', '201001011', '67', 'ESPECIAL', 3.5, 5.5),
(4272, '201001014033', 'ESTANCILLA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4273, '201001011004', 'URCUQUI', 'TE', 'IMBABURA', '201001011', '30', 'ESPECIAL', 3.5, 5.5),
(4274, '201001014034', 'SAN ANTONIO DE CHONE', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4275, '201001011005', 'IBARRA', 'TP', 'IMBABURA', '201001011', '30', 'PRINCIPAL', 2.8, 4.5),
(4276, '201001014035', 'LA DELICIA KM. 29', 'TE', 'MANABI', '201001014', '24', 'ESPECIAL', 3.5, 5.5),
(4277, '201001011006', 'COTACACHI', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4278, '201001014036', 'ALAHUELA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4279, '201001011007', 'SAN PEDRO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4280, '201001014037', 'PICOAZA (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4281, '201001011009', 'ISLA BEJUCAL', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4282, '201001014038', 'SAN PLACIDO (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4283, '201001011010', 'SAN PABLO IMBABURA', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4284, '201001014039', 'RIO CHICO (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4285, '201001011011', 'SAN ROQUE', 'TE', 'IMBABURA', '201001011', '67', 'ESPECIAL', 3.5, 5.5),
(4286, '201001014040', 'RICAURTE MANABI', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4287, '201001011012', 'GONZALEZ SUAREZ', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4288, '201001014041', 'Tarqui Manabi', 'TE', 'MANABI', '201001014', '37', NULL, 3.5, 5.5),
(4289, '201001011013', 'PEGUCHE', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4290, '201001014042', 'Sucre', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4291, '201001011014', 'QUIROGA', 'TE', 'IMBABURA', '201001011', '38', NULL, 3.5, 5.5),
(4292, '201001014043', 'Quiroga Chone', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4293, '201001011018', 'CARANQUI', 'TE', 'IMBABURA', '201001011', '30', 'ESPECIAL', 3.5, 5.5),
(4294, '201001014044', 'colorado', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4295, '201001011019', 'YAGUARCOCHA', 'TS', 'IMBABURA', '201001011', '30', NULL, 3.5, 5.5),
(4296, '201001015001', 'MACAS', 'TO', 'MORONA SANTIAGO', '201001015', '35', 'ORIENTE', 3.5, 5.5),
(4297, '201001011020', 'CHORLAVI', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4298, '201001015002', 'GUALAQUIZA', 'TO', 'MORONA SANTIAGO', '201001015', '48', 'ORIENTE', 3.5, 5.5),
(4299, '201001011021', 'ANDRADE MARIN', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4300, '201001015003', 'YANTZAZA', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4301, '201001011022', 'ANTONIO ANTE', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4302, '201001016001', 'TENA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4303, '201001011023', 'CHALTURA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4304, '201001016002', 'OÑA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4305, '201001011025', 'NATABUELA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4306, '201001016003', 'ARCHIDONA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4307, '201001011026', 'SAN JOSE', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4308, '201001016004', 'PTO. NAPO', 'TO', 'NAPO', '201001016', '46', NULL, 3.5, 5.5),
(4309, '201001011027', 'SAN LUIS', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4310, '201001016005', 'MISAHUALLI', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4311, '201001011028', 'SANTA BERTHA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4312, '201001016006', 'AROSEMENA TOLA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4313, '201001011029', 'TIERRA BLANCA', 'TS', 'IMBABURA', '201001011', '67', 'SECUNDARIO', 3.5, 5.5),
(4314, '201001016007', 'Puerto Napo', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4315, '201001011030', 'PERUGACHI', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4316, '201001016008', 'Carlos Julio Arosemena Tola', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4317, '201001011031', 'San Miguel de Ibarra', 'TE', 'IMBABURA', '201001011', '30', 'SECUNDARIO', 3.5, 5.5),
(4318, '201001016009', 'Carlos Julio Arosemena', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4319, '201001011032', 'Quiroga Otavalo', 'TE', 'IMBABURA', '201001011', '38', 'ESPECIAL', 3.5, 5.5),
(4320, '201001017001', 'FRANCISCO DE ORELLANA', 'TO', 'ORELLANA', '201001017', '25', NULL, 3.5, 5.5);
INSERT INTO `ciudad_laar` (`id_ciudad`, `codigo`, `nombre`, `trayecto`, `provincia`, `codigoProvincia`, `codigor`, `tipo`, `costo`, `precio`) VALUES
(4321, '201001012001', 'LOJA', 'TP', 'LOJA', '201001012', '34', 'PRINCIPAL', 2.8, 4.5),
(4322, '201001017002', 'EL COCA', 'TO', 'ORELLANA', '201001017', '25', NULL, 3.5, 5.5),
(4323, '201001012002', 'CATAMAYO', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4324, '201001017003', 'LAGO AGRIO', 'TO', 'SUCUMBIOS', '201001022', '31', NULL, 3.5, 5.5),
(4325, '201001012003', 'CATARAMA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4326, '201001017004', 'SHELL', 'TO', 'PASTAZA', '201001018', '41', 'ORIENTE', 3.5, 5.5),
(4327, '201001012004', 'CARIAMANGA', 'TE', 'LOJA', '201001012', '34', NULL, 3.5, 5.5),
(4328, '201001017006', 'LA JOYA DE LOS SACHAS', 'TO', 'ORELLANA', '201001017', '25', 'ORIENTE', 3.5, 5.5),
(4329, '201001012005', 'CATACOCHA', 'TE', 'LOJA', '201001012', '34', NULL, 3.5, 5.5),
(4330, '201001017007', 'SUCUA', 'TO', 'MORONA SANTIAGO', '201001015', '35', 'ORIENTE', 3.5, 5.5),
(4331, '201001012006', 'MALACATOS', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4332, '201001017009', 'NUEVO ISRAEL', 'TE', 'MANABI', '201001014', '24', 'ESPECIAL', 3.5, 5.5),
(4333, '201001012007', 'VILCABAMBA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4334, '201001017012', 'EL CHACO', 'TP', 'NAPO', '201001016', '71', 'ORIENTE', 3.5, 5.5),
(4335, '201001012009', 'SARAGURO', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4336, '201001017016', 'LORETO', 'TO', 'ORELLANA', '201001017', '25', 'ORIENTE', 3.5, 5.5),
(4337, '201001012010', 'GONZANAMA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4338, '201001018001', 'PUYO', 'TO', 'PASTAZA', '201001018', '41', 'ORIENTE', 3.5, 5.5),
(4339, '201001012011', 'CELICA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4340, '201001019003', 'MACARA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4341, '201001012013', 'San Pedro de Vilcabamba', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4342, '201001019004', 'PELILEO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4343, '201001012014', 'San Pedro de La Bendita', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4344, '201001019005', 'CEVALLOS', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4345, '201001012015', 'San Lucas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4346, '201001019006', 'PILLARO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4347, '201001012016', 'Paltas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4348, '201001019007', 'MOCHA', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4349, '201001012017', 'Calvas', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4350, '201001019008', 'QUERO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4351, '201001013001', 'BABAHOYO', 'TP', 'LOS RIOS', '201001013', '19', 'PRINCIPAL', 2.8, 4.5),
(4352, '201001019009', 'TISALEO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4353, '201001013002', 'QUEVEDO', 'TP', 'LOS RIOS', '201001013', '42', 'PRINCIPAL', 2.8, 4.5),
(4354, '201001019011', 'HUAMBALO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4355, '201001013003', 'VENTANAS', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4356, '201001019012', 'Ulba', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4357, '201001013004', 'VALENCIA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4358, '201001019013', 'San Pedro De Pelileo', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4359, '201001013005', 'BUENA FE', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4360, '201001019014', 'Betínez (Pachanlica)', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4361, '201001013006', 'VINCES', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4362, '201001020001', 'PUERTO BAQUERIZO MORENO', 'TG', 'GALAPAGOS', '201001020', '27', NULL, 3.5, 5.5),
(4363, '201001013007', 'MOCACHE', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4364, '201001020002', 'SANTA CRUZ', 'TG', 'GALAPAGOS', '201001020', '28', NULL, 3.5, 5.5),
(4365, '201001013008', 'SAN JUAN', 'TE', 'LOS RIOS', '201001013', '19', NULL, 3.5, 5.5),
(4366, '201001020003', 'SAN CRISTOBAL', 'TG', 'GALAPAGOS', '201001020', '27', NULL, 3.5, 5.5),
(4367, '201001013009', 'MONTALVO', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4368, '201001021001', 'ZAMORA', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4369, '201001013010', 'PATRICIA PILAR', 'TS', 'LOS RIOS', '201001013', '45', 'SECUNDARIO', 3.5, 5.5),
(4370, '201001021003', 'TAMBILLO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(4371, '201001013012', 'PUEBLO VIEJO', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4372, '201001021005', 'PANGUI', 'TO', 'ZAMORA', '201001021', '48', NULL, 3.5, 5.5),
(4373, '201001013013', 'BABA', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4374, '201001021006', 'CENTINELA DEL CONDOR', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4375, '201001013014', 'SAN CAMILO', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4376, '201001022001', 'NUEVA LOJA', 'TO', 'SUCUMBIOS', '201001022', '31', NULL, 3.5, 5.5),
(4377, '201001013015', 'SAN CARLOS', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4378, '201001022002', 'SHUSHUFINDI', 'TO', 'SUCUMBIOS', '201001022', '31', 'ORIENTE', 3.5, 5.5),
(4379, '201001013016', 'RICAURTE LOS RIOS', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4380, '201001023001', 'PUNTA CARNERO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4381, '201001013019', 'QUINSALOMA', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4382, '201001023002', 'PUNTA BLANCA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4383, '201001013020', 'TRES POSTES', 'TE', 'GUAYAS', '201001002', '19', 'ESPECIAL', 3.5, 5.5),
(4384, '201001023003', 'MONTAÑITA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4385, '201001013021', 'ISLA DE BEJUCAL', 'TE', 'LOS RIOS', '201001013', '19', NULL, 3.5, 5.5),
(4386, '201001023004', 'MAR BRAVO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4387, '201001013022', 'San Juan Babahoyo', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4388, '201001023005', 'MUEY', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4389, '201001013023', 'San Jacinto de Buena Fe', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4390, '201001023006', 'OLON', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4391, '201001013024', 'La UniÃ³n (Valencia)', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4392, '201001023007', 'PUERTO SANTA ROSA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4393, '201001013025', 'La Julia', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4394, '201001023008', 'CADEATE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4395, '201001013026', 'La Esperanza', 'TE', 'LOS RIOS', '201001013', '42', 'ESPECIAL', 3.5, 5.5),
(4396, '201001023009', 'CAPAES', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4397, '201001013027', 'Guare', 'TE', 'LOS RIOS', '201001013', '19', 'ESPECIAL', 3.5, 5.5),
(4398, '201001023010', 'LIBERTADOR BOLIVAR', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4399, '201001014001', 'MANTA', 'TP', 'MANABI', '201001014', '37', 'PRINCIPAL', 2.8, 4.5),
(4400, '201001023011', 'MANGLARALTO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4401, '201001014002', 'PORTOVIEJO', 'TP', 'MANABI', '201001014', '40', 'PRINCIPAL', 2.8, 4.5),
(4402, '201001023012', 'MONTEVERDE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4403, '201001014003', 'BAHIA DE CARAQUEZ', 'TP', 'MANABI', '201001014', '20', 'PRINCIPAL', 2.8, 4.5),
(4404, '201001023013', 'PALMAR', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4405, '201001014004', 'CHONE', 'TS', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4406, '201001023014', 'PROSPERIDAD', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4407, '201001014005', 'EL CARMEN', 'TP', 'MANABI', '201001014', '24', 'PRINCIPAL', 2.8, 4.5),
(4408, '201001023015', 'PUNTA BARANDUA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4409, '201001014006', 'JIPIJAPA', 'TP', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4410, '201001023016', 'VALDIVIA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4411, '201001014007', 'PICHINCHA MANABI', 'TE', 'MANABI', '201001014', '42', NULL, 3.5, 5.5),
(4412, '201001023017', 'SAN PABLO SANTA ELENA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4413, '201001014008', 'SANTA ANA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4414, '201001023018', 'AYANGUE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4415, '201001014009', 'JUNIN', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4416, '201001023019', 'Punta Centinela', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4417, '201001014010', 'CRUCITA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4418, '201001023020', 'El Tambo Santa Elena', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4419, '201001014011', 'COLON', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4420, '201001023021', 'SANTA ROSA SANTA ELENA', 'TE', 'SANTA ELENA', '201001023', '33', NULL, 3.5, 5.5),
(4421, '201001014012', 'ROCAFUERTE', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4422, '201001024004', 'KM 14 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4423, '201001014013', 'JARAMIJO', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4424, '201001024005', 'KM 24 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4425, '201001014014', 'PAJAN', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4426, '201001024006', 'KM 38.5 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4427, '201001014015', 'CHARAPOTO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4428, '201001024007', 'KM 41 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4429, '201001014016', 'CALCETA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4430, '201001024008', 'LUZ DE AMERICA', 'TS', 'SANTO DOMINGO', '201001024', '45', 'SECUNDARIO', 3.5, 5.5),
(4431, '201001014017', 'TOSAGUA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4432, '201001014018', 'SAN VICENTE', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4433, '201001014019', 'OLMEDO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4434, '201001014020', 'MONTECRISTI', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4435, '201001014021', 'FLAVIO ALFARO', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4436, '201001014022', 'PUERTO LOPEZ', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4437, '201001014023', 'BALLENITA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4438, '201001014024', 'JAMA', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4439, '201001014025', 'SAN JACINTO', 'TE', 'MANABI', '201001014', '11', NULL, 3.5, 5.5),
(4440, '201001014026', 'TARQUI', 'TE', 'AZUAY', '201001003', '15', NULL, 3.5, 5.5),
(4441, '201001014027', 'LEONIDAS PLAZA', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4442, '201001014029', 'PUERTO CAYO', 'TE', 'MANABI', '201001014', '60', 'ESPECIAL', 3.5, 5.5),
(4443, '201001014031', 'CALDERON DE PORTOVIEJO', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4444, '201001014032', 'CANUTO', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4445, '201001014033', 'ESTANCILLA', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4446, '201001014034', 'SAN ANTONIO DE CHONE', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4447, '201001014035', 'LA DELICIA KM. 29', 'TE', 'MANABI', '201001014', '24', 'ESPECIAL', 3.5, 5.5),
(4448, '201001014036', 'ALAHUELA', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4449, '201001014037', 'PICOAZA (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4450, '201001014038', 'SAN PLACIDO (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4451, '201001014039', 'RIO CHICO (DENTRO DEL PERIMETRO URBANO)', 'TE', 'MANABI', '201001014', '40', 'ESPECIAL', 3.5, 5.5),
(4452, '201001014040', 'RICAURTE MANABI', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4453, '201001014041', 'Tarqui Manabi', 'TE', 'MANABI', '201001014', '37', NULL, 3.5, 5.5),
(4454, '201001014042', 'Sucre', 'TE', 'MANABI', '201001014', '20', 'ESPECIAL', 3.5, 5.5),
(4455, '201001014043', 'Quiroga Chone', 'TE', 'MANABI', '201001014', '23', 'SECUNDARIO', 3.5, 5.5),
(4456, '201001014044', 'colorado', 'TE', 'MANABI', '201001014', '37', 'ESPECIAL', 3.5, 5.5),
(4457, '201001015001', 'MACAS', 'TO', 'MORONA SANTIAGO', '201001015', '35', 'ORIENTE', 3.5, 5.5),
(4458, '201001015002', 'GUALAQUIZA', 'TO', 'MORONA SANTIAGO', '201001015', '48', 'ORIENTE', 3.5, 5.5),
(4459, '201001015003', 'YANTZAZA', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4460, '201001016001', 'TENA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4461, '201001016002', 'OÑA', 'TE', 'AZUAY', '201001003', '15', 'ESPECIAL', 3.5, 5.5),
(4462, '201001016003', 'ARCHIDONA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4463, '201001016004', 'PTO. NAPO', 'TO', 'NAPO', '201001016', '46', NULL, 3.5, 5.5),
(4464, '201001016005', 'MISAHUALLI', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4465, '201001016006', 'AROSEMENA TOLA', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4466, '201001016007', 'Puerto Napo', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4467, '201001016008', 'Carlos Julio Arosemena Tola', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4468, '201001016009', 'Carlos Julio Arosemena', 'TO', 'NAPO', '201001016', '46', 'ORIENTE', 3.5, 5.5),
(4469, '201001017001', 'FRANCISCO DE ORELLANA', 'TO', 'ORELLANA', '201001017', '25', NULL, 3.5, 5.5),
(4470, '201001017002', 'EL COCA', 'TO', 'ORELLANA', '201001017', '25', NULL, 3.5, 5.5),
(4471, '201001017003', 'LAGO AGRIO', 'TO', 'SUCUMBIOS', '201001022', '31', NULL, 3.5, 5.5),
(4472, '201001017004', 'SHELL', 'TO', 'PASTAZA', '201001018', '41', 'ORIENTE', 3.5, 5.5),
(4473, '201001017006', 'LA JOYA DE LOS SACHAS', 'TO', 'ORELLANA', '201001017', '25', 'ORIENTE', 3.5, 5.5),
(4474, '201001017007', 'SUCUA', 'TO', 'MORONA SANTIAGO', '201001015', '35', 'ORIENTE', 3.5, 5.5),
(4475, '201001017009', 'NUEVO ISRAEL', 'TE', 'MANABI', '201001014', '24', 'ESPECIAL', 3.5, 5.5),
(4476, '201001017012', 'EL CHACO', 'TP', 'NAPO', '201001016', '71', 'ORIENTE', 3.5, 5.5),
(4477, '201001017016', 'LORETO', 'TO', 'ORELLANA', '201001017', '25', 'ORIENTE', 3.5, 5.5),
(4478, '201001018001', 'PUYO', 'TO', 'PASTAZA', '201001018', '41', 'ORIENTE', 3.5, 5.5),
(4479, '201001019003', 'MACARA', 'TE', 'LOJA', '201001012', '34', 'ESPECIAL', 3.5, 5.5),
(4480, '201001019004', 'PELILEO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4481, '201001019005', 'CEVALLOS', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4482, '201001019006', 'PILLARO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4483, '201001019007', 'MOCHA', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4484, '201001019008', 'QUERO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4485, '201001019009', 'TISALEO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4486, '201001019011', 'HUAMBALO', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4487, '201001019012', 'Ulba', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4488, '201001019013', 'San Pedro De Pelileo', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4489, '201001019014', 'Betínez (Pachanlica)', 'TE', 'TUNGURAHUA', '201001019', '16', 'ESPECIAL', 3.5, 5.5),
(4490, '201001020001', 'PUERTO BAQUERIZO MORENO', 'TG', 'GALAPAGOS', '201001020', '27', NULL, 3.5, 5.5),
(4491, '201001020002', 'SANTA CRUZ', 'TG', 'GALAPAGOS', '201001020', '28', NULL, 3.5, 5.5),
(4492, '201001020003', 'SAN CRISTOBAL', 'TG', 'GALAPAGOS', '201001020', '27', NULL, 3.5, 5.5),
(4493, '201001021001', 'ZAMORA', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4494, '201001021003', 'TAMBILLO', 'TS', 'PICHINCHA', '201001001', '1', 'SECUNDARIO', 3.5, 5.5),
(4495, '201001021005', 'PANGUI', 'TO', 'ZAMORA', '201001021', '48', NULL, 3.5, 5.5),
(4496, '201001021006', 'CENTINELA DEL CONDOR', 'TO', 'ZAMORA', '201001021', '48', 'ORIENTE', 3.5, 5.5),
(4497, '201001022001', 'NUEVA LOJA', 'TO', 'SUCUMBIOS', '201001022', '31', NULL, 3.5, 5.5),
(4498, '201001022002', 'SHUSHUFINDI', 'TO', 'SUCUMBIOS', '201001022', '31', 'ORIENTE', 3.5, 5.5),
(4499, '201001023001', 'PUNTA CARNERO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4500, '201001023002', 'PUNTA BLANCA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4501, '201001023003', 'MONTAÑITA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4502, '201001023004', 'MAR BRAVO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4503, '201001023005', 'MUEY', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4504, '201001023006', 'OLON', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4505, '201001023007', 'PUERTO SANTA ROSA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4506, '201001023008', 'CADEATE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4507, '201001023009', 'CAPAES', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4508, '201001023010', 'LIBERTADOR BOLIVAR', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4509, '201001023011', 'MANGLARALTO', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4510, '201001023012', 'MONTEVERDE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4511, '201001023013', 'PALMAR', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4512, '201001023014', 'PROSPERIDAD', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4513, '201001023015', 'PUNTA BARANDUA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4514, '201001023016', 'VALDIVIA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4515, '201001023017', 'SAN PABLO SANTA ELENA', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4516, '201001023018', 'AYANGUE', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4517, '201001023019', 'Punta Centinela', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4518, '201001023020', 'El Tambo Santa Elena', 'TE', 'SANTA ELENA', '201001023', '33', 'ESPECIAL', 3.5, 5.5),
(4519, '201001023021', 'SANTA ROSA SANTA ELENA', 'TE', 'SANTA ELENA', '201001023', '33', NULL, 3.5, 5.5),
(4520, '201001024004', 'KM 14 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4521, '201001024005', 'KM 24 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4522, '201001024006', 'KM 38.5 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4523, '201001024007', 'KM 41 QUEVEDO', 'TS', 'SANTO DOMINGO', '201001024', '45', NULL, 3.5, 5.5),
(4524, '201001024008', 'LUZ DE AMERICA', 'TS', 'SANTO DOMINGO', '201001024', '45', 'SECUNDARIO', 3.5, 5.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `fiscal_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `razon_social` varchar(1000) NOT NULL,
  `nombre_contacto` varchar(1500) DEFAULT NULL,
  `telefono_contacto` varchar(1500) DEFAULT NULL,
  `cargo_contacto` varchar(1500) DEFAULT NULL,
  `observaciones` varchar(2500) DEFAULT NULL,
  `dias_credito` int NOT NULL,
  `giro_negocio` varchar(1500) DEFAULT NULL,
  `ciudad` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `fiscal_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `razon_social`, `nombre_contacto`, `telefono_contacto`, `cargo_contacto`, `observaciones`, `dias_credito`, `giro_negocio`, `ciudad`) VALUES
(1, 'CONSUMIDO FINAL', 'XXXXXXXXXX', '2345678', 'edu@gmail.com', 'solanda', 1, '2022-05-15 00:00:00', 'CONSUMIDOR FINAL', 'BMBRE', '28766', 'CAGO', 'OSERVA', 15, 'telas', 'MACHACHI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobertura_gintracom`
--

CREATE TABLE `cobertura_gintracom` (
  `id_cobertura` int NOT NULL,
  `trayecto` varchar(10) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cobertura_gintracom`
--

INSERT INTO `cobertura_gintracom` (`id_cobertura`, `trayecto`, `precio`) VALUES
(1, 'TN', 5),
(2, 'TE', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobertura_laar`
--

CREATE TABLE `cobertura_laar` (
  `id_cobertura` bigint UNSIGNED NOT NULL,
  `tipo_cobertura` varchar(100) NOT NULL,
  `costo` double NOT NULL,
  `precio` double NOT NULL,
  `costo_merkatodo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cobertura_laar`
--

INSERT INTO `cobertura_laar` (`id_cobertura`, `tipo_cobertura`, `costo`, `precio`, `costo_merkatodo`) VALUES
(1, 'TP', 3.22, 5.99, 4.6),
(2, 'TE', 4.01, 5.99, 4.6),
(3, 'TL', 3.22, 5.99, 4.6),
(4, 'TS', 3.22, 5.99, 4.6),
(5, 'TO', 4.01, 5.99, 4.6),
(6, 'GAL', 15, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobertura_servientrega`
--

CREATE TABLE `cobertura_servientrega` (
  `id_cobertura` int NOT NULL,
  `tipo_cobertura` varchar(20) NOT NULL,
  `costo` double DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cobertura_servientrega`
--

INSERT INTO `cobertura_servientrega` (`id_cobertura`, `tipo_cobertura`, `costo`, `precio`) VALUES
(1, 'TL', 2.04, 4.75),
(2, 'TC', 3.15, 4.75),
(3, 'TP', 3.48, 5),
(4, 'TR', 3.86, 5.3),
(5, 'TE', 4.66, 5.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisiones`
--

CREATE TABLE `comisiones` (
  `id_comision` int NOT NULL,
  `nombre_comision` varchar(100) NOT NULL,
  `valor_comision` double NOT NULL,
  `estado_comision` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id_comp` int NOT NULL,
  `nombre_comp` varchar(100) NOT NULL,
  `serie_comp` varchar(100) NOT NULL,
  `desde_comp` int NOT NULL,
  `hasta_comp` int NOT NULL,
  `long_comp` int NOT NULL,
  `actual_comp` int NOT NULL,
  `vencimiento_comp` date NOT NULL,
  `estado_comp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`id_comp`, `nombre_comp`, `serie_comp`, `desde_comp`, `hasta_comp`, `long_comp`, `actual_comp`, `vencimiento_comp`, `estado_comp`) VALUES
(1, 'FACTURA UNO', 'A2018', 1, 55, 6, 3, '2020-04-22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes_sri`
--

CREATE TABLE `comprobantes_sri` (
  `id` int NOT NULL,
  `id_comprobante` int DEFAULT NULL,
  `id_factura` int DEFAULT NULL,
  `id_guia` int DEFAULT NULL,
  `id_retencion` int DEFAULT NULL,
  `id_credito` int DEFAULT NULL,
  `id_debito` int DEFAULT NULL,
  `id_liquidacion` int DEFAULT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `claveAcceso` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mensaje` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id_credito` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int NOT NULL,
  `id_sucursal` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos_abonos`
--

CREATE TABLE `creditos_abonos` (
  `id_abono` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `concepto_abono` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos_abonos_prov`
--

CREATE TABLE `creditos_abonos_prov` (
  `id_abono` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `concepto_abono` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito_proveedor`
--

CREATE TABLE `credito_proveedor` (
  `id_credito` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int NOT NULL,
  `id_sucursal` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', 'COP$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY'),
(33, 'Sol', 'S/.', '2', ',', '.', 'PEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_compra`
--

CREATE TABLE `detalle_fact_compra` (
  `id_detalle` int NOT NULL,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `precio_costo` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_cot`
--

CREATE TABLE `detalle_fact_cot` (
  `id_detalle` int NOT NULL,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `desc_venta` double DEFAULT NULL,
  `precio_venta` double NOT NULL,
  `drogshipin_tmp` int DEFAULT NULL,
  `id_producto_origen` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_ventas`
--

CREATE TABLE `detalle_fact_ventas` (
  `id_detalle` int NOT NULL,
  `id_factura` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  `descripcion_detalle` text NOT NULL,
  `aplica_iva` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_traslado`
--

CREATE TABLE `detalle_traslado` (
  `id_detalle_traslado` int NOT NULL,
  `id_traslado` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` double NOT NULL,
  `num_transaccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dropi`
--

CREATE TABLE `dropi` (
  `id_dropi` int NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `contrasena_hash` varchar(250) NOT NULL,
  `token` text,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `pais_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id_egreso` int NOT NULL,
  `referencia_egreso` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `monto` double NOT NULL,
  `descripcion_egreso` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_envio`
--

CREATE TABLE `empresa_envio` (
  `id` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_courier`
--

CREATE TABLE `estado_courier` (
  `id_estado` bigint UNSIGNED NOT NULL,
  `codigo` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `alias` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_courier`
--

INSERT INTO `estado_courier` (`id_estado`, `codigo`, `id_servicio`, `descripcion`, `alias`) VALUES
(407, 7, 1, 'Entregado', 'Entregado'),
(408, 1, 1, 'Envío listo para despachar', 'Pendiente'),
(409, 8, 1, 'Anulacion de Guía', 'Anulado'),
(410, 2, 1, 'Envío creado por procesar', 'Por Recolectar'),
(411, 9, 1, 'Devolucion al Cliente', 'Devolución/Entrega'),
(412, 3, 1, 'Envío Recolectado', 'Recolectado'),
(413, 10, 1, 'Facturado', 'Facturado'),
(414, 4, 1, 'Ingreso en Bodega', 'En Bodega'),
(415, 11, 1, 'En Ruta Regional/Confir. de Salida Confirmación de Salida', 'En Tránsito'),
(416, 5, 1, 'En proceso operativo', 'En Tránsito'),
(417, 12, 1, 'En Ruta Regional/Confir. de Llegada Confirmación de Llegada', 'En Tránsito'),
(418, 6, 1, 'En zona para entrega al destino', 'Zona de Entrega'),
(419, 13, 1, 'Confirmación en Transito', 'En Tránsito'),
(420, 7, 1, 'Entregado', 'Entregado'),
(421, 14, 1, 'En zona para entrega al destino/Novedad', 'Con Novedad'),
(422, 8, 1, 'Anulacion de Guía', 'Anulado'),
(423, 15, 1, 'Ingreso en Bodega / Por no entrega', 'Zona de Entrega'),
(424, 9, 1, 'Devolucion al Cliente', 'Devolución/Entrega'),
(425, 16, 1, 'Eliminacion Novedad', 'Zona de Entrega'),
(426, 10, 1, 'Facturado', 'Facturado'),
(427, 17, 1, 'Envio Provicionalmente en Bodega', 'En Bodega'),
(428, 11, 1, 'En Ruta Regional/Confir. de Salida Confirmación de Salida', 'En Tránsito'),
(429, 18, 1, 'Facturado', 'Facturado'),
(430, 12, 1, 'En Ruta Regional/Confir. de Llegada Confirmación de Llegada', 'En Tránsito'),
(431, 19, 1, 'Confirmación de Llegada Automática por Zona', 'Zona de Entrega'),
(432, 13, 1, 'Confirmación en Transito', 'En Tránsito'),
(433, 20, 1, 'Guía sin la Confirmación de Salida De Regional por no pesar', 'En Tránsito'),
(434, 14, 1, 'En zona para entrega al destino/Novedad', 'Con Novedad'),
(435, 21, 1, 'Guía sin la Confirmación de Llegada De Regional por no pesar', 'En Tránsito'),
(436, 15, 1, 'Ingreso en Bodega / Por no entrega', 'Zona de Entrega'),
(437, 22, 1, 'Guía sin pesar electronicamente y sin registrar en manifiesto de zona', 'Zona de Entrega'),
(438, 16, 1, 'Eliminacion Novedad', 'Zona de Entrega'),
(439, 23, 1, 'Guía Borrada del Manifiesto de Zona', 'Zona de Entrega'),
(440, 17, 1, 'Envio Provicionalmente en Bodega', 'En Bodega'),
(441, 24, 1, 'Guía que no fue Registrada en Bodega', 'Zona de Entrega'),
(442, 18, 1, 'Facturado', 'Facturado'),
(443, 25, 1, 'Liberado Aduana', 'Aduana'),
(444, 19, 1, 'Confirmación de Llegada Automática por Zona', 'Zona de Entrega'),
(445, 26, 1, 'No Liberado Aduana', 'Aduana'),
(446, 20, 1, 'Guía sin la Confirmación de Salida De Regional por no pesar', 'En Tránsito'),
(447, 27, 1, 'Devolución Regional', 'Devolución Regional'),
(448, 21, 1, 'Guía sin la Confirmación de Llegada De Regional por no pesar', 'En Tránsito'),
(449, 28, 1, 'Registro en Zona por el Courier de Limites de Intentos', 'Zona de Entrega/Registro Limite'),
(450, 22, 1, 'Guía sin pesar electronicamente y sin registrar en manifiesto de zona', 'Zona de Entrega'),
(451, 29, 1, 'Eliminacion Novedad Devolución', 'Reversa de Devolución'),
(452, 23, 1, 'Guía Borrada del Manifiesto de Zona', 'Zona de Entrega'),
(453, 30, 1, 'Registro de Devolución en Zona de Entrega', 'Zona de Entrega/Registro Devolución'),
(454, 24, 1, 'Guía que no fue Registrada en Bodega', 'Zona de Entrega'),
(455, 31, 1, 'Registro de Usuario que modifico POD PE', 'Digitación'),
(456, 25, 1, 'Liberado Aduana', 'Aduana'),
(457, 32, 1, 'Registro de Usuario que modifico POD GC', 'Digitación'),
(458, 26, 1, 'No Liberado Aduana', 'Aduana'),
(459, 33, 1, 'Registro de Usuario que Elimino POD GC', 'Digitación'),
(460, 27, 1, 'Devolución Regional', 'Devolución Regional'),
(461, 34, 1, 'Registro de Observacion Guia Retorno', 'Digitacion'),
(462, 28, 1, 'Registro en Zona por el Courier de Limites de Intentos', 'Zona de Entrega/Registro Limite'),
(463, 35, 1, 'Registro del Cierre de COD Cartera para el Pago al Cliente', 'COD'),
(464, 29, 1, 'Eliminacion Novedad Devolución', 'Reversa de Devolución'),
(465, 36, 1, 'Registro del Cierre de COD Facturación para Cobro al Cliente', 'COD'),
(466, 30, 1, 'Registro de Devolución en Zona de Entrega', 'Zona de Entrega/Registro Devolución'),
(467, 37, 1, 'Registro de Usuario que Elimino POD UTILITARIO', 'Digitación'),
(468, 31, 1, 'Registro de Usuario que modifico POD PE', 'Digitación'),
(469, 38, 1, 'Envío No Recolectado', 'No Recolectado'),
(470, 32, 1, 'Registro de Usuario que modifico POD GC', 'Digitación'),
(471, 39, 1, 'Envío No Recolectado Cerrado', 'Cierre No Recolección'),
(472, 33, 1, 'Registro de Usuario que Elimino POD GC', 'Digitación'),
(473, 40, 1, 'Registro del Usuario que Ingreso la Devolución', 'Registro(Devolucion)'),
(474, 34, 1, 'Registro de Observacion Guia Retorno', 'Digitacion'),
(475, 41, 1, 'Registro del Usuario que Ingreso los Datos Acutalizados', 'Registro(Actualizacion)'),
(476, 35, 1, 'Registro del Cierre de COD Cartera para el Pago al Cliente', 'COD'),
(477, 42, 1, 'Registro del Usuario que Ingreso el Mal Direccionado', 'Registro(Mal Direccionado)'),
(478, 36, 1, 'Registro del Cierre de COD Facturación para Cobro al Cliente', 'COD'),
(479, 43, 1, 'Registro del Usuario que Ingreso el Cambio Trayecto', 'Registro(Cambio Trayecto)'),
(480, 37, 1, 'Registro de Usuario que Elimino POD UTILITARIO', 'Digitación'),
(481, 44, 1, 'Registro de Actualizacion de Guia Cliente (Dev, Actualizacion o Cambio Trayecto)', 'Registro(Dev-CTray-Act)'),
(482, 38, 1, 'Envío No Recolectado', 'No Recolectado'),
(483, 45, 1, 'Registro de Excepcion de un Cod por falta de pago', 'COD'),
(484, 39, 1, 'Envío No Recolectado Cerrado', 'Cierre No Recolección'),
(485, 46, 1, 'Registro de Deposito de COD', 'COD'),
(486, 40, 1, 'Registro del Usuario que Ingreso la Devolución', 'Registro(Devolucion)'),
(487, 47, 1, 'Registro Entregas Sabado/Feriado', 'SAC'),
(488, 48, 1, 'Registro de Novedad de COD x Inventario', 'COD'),
(489, 41, 1, 'Registro del Usuario que Ingreso los Datos Acutalizados', 'Registro(Actualizacion)'),
(490, 49, 1, 'Eliminacion COD', 'COD'),
(491, 42, 1, 'Registro del Usuario que Ingreso el Mal Direccionado', 'Registro(Mal Direccionado)'),
(492, 50, 1, 'Actualizacion Valor COD', 'COD'),
(493, 43, 1, 'Registro del Usuario que Ingreso el Cambio Trayecto', 'Registro(Cambio Trayecto)'),
(494, 44, 1, 'Registro de Actualizacion de Guia Cliente (Dev, Actualizacion o Cambio Trayecto)', 'Registro(Dev-CTray-Act)'),
(495, 45, 1, 'Registro de Excepcion de un Cod por falta de pago', 'COD'),
(496, 46, 1, 'Registro de Deposito de COD', 'COD'),
(497, 47, 1, 'Registro Entregas Sabado/Feriado', 'SAC'),
(498, 48, 1, 'Registro de Novedad de COD x Inventario', 'COD'),
(499, 49, 1, 'Eliminacion COD', 'COD'),
(500, 50, 1, 'Actualizacion Valor COD', 'COD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_guia_sistema`
--

CREATE TABLE `estado_guia_sistema` (
  `id_estado` bigint UNSIGNED NOT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_guia_sistema`
--

INSERT INTO `estado_guia_sistema` (`id_estado`, `estado`) VALUES
(1, 'Confirmar'),
(2, 'Pick y Pack '),
(3, 'Despachado'),
(4, 'Zona de entrega '),
(5, 'Cobrado'),
(6, 'Pagado '),
(7, 'Liquidado'),
(8, 'Anulado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_compras`
--

CREATE TABLE `facturas_compras` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_proveedor` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` int NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint NOT NULL,
  `id_users_factura` int NOT NULL,
  `id_sucursal` int NOT NULL,
  `ref_factura` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_cot`
--

CREATE TABLE `facturas_cot` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `validez` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `telefono` varchar(500) NOT NULL,
  `provincia` varchar(500) NOT NULL,
  `c_principal` varchar(500) NOT NULL,
  `ciudad_cot` varchar(150) NOT NULL,
  `c_secundaria` varchar(1500) NOT NULL,
  `referencia` varchar(1500) NOT NULL,
  `observacion` varchar(1500) NOT NULL,
  `guia_enviada` int DEFAULT '0',
  `transporte` varchar(100) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `cod` tinyint(1) DEFAULT NULL,
  `valor_seguro` double DEFAULT NULL,
  `drogshipin` int DEFAULT NULL,
  `tienda` varchar(500) DEFAULT NULL,
  `importado` int DEFAULT '0',
  `plataforma_importa` varchar(500) DEFAULT NULL,
  `estado_guia_sistema` int DEFAULT NULL,
  `id_factura_origen` int DEFAULT NULL,
  `impreso` tinyint DEFAULT NULL,
  `facturada` int DEFAULT '0',
  `factura_numero` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `facturas_cot`
--

INSERT INTO `facturas_cot` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `monto_factura`, `estado_factura`, `id_users_factura`, `validez`, `id_sucursal`, `nombre`, `telefono`, `provincia`, `c_principal`, `ciudad_cot`, `c_secundaria`, `referencia`, `observacion`, `guia_enviada`, `transporte`, `identificacion`, `celular`, `cod`, `valor_seguro`, `drogshipin`, `tienda`, `importado`, `plataforma_importa`, `estado_guia_sistema`, `id_factura_origen`, `impreso`, `facturada`, `factura_numero`) VALUES
(29, 'COT-000001', '2023-09-26 13:15:02', 1, 1, '1', 10, 1, 1, 3, 1, 'sdfsdf', 'sdf', '17', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(30, 'COT-000002', '2023-09-26 13:15:43', 1, 1, '1', 28, 1, 1, 3, 1, 'asd', 'asdw', '22', 'asd', 'asd', 'asd', 'asd', 's', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_ventas`
--

CREATE TABLE `facturas_ventas` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `formaPago` varchar(4) DEFAULT NULL,
  `secuencial` varchar(255) DEFAULT NULL,
  `plazodias` int DEFAULT NULL,
  `monto_iva` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gracias`
--

CREATE TABLE `gracias` (
  `id_gacias` bigint UNSIGNED NOT NULL,
  `contenido` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `gracias`
--

INSERT INTO `gracias` (`id_gacias`, `contenido`) VALUES
(1, 'GRACIAS POR SU COMPRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

CREATE TABLE `guia` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `dirPartida` varchar(255) DEFAULT NULL,
  `fechaIniTransporte` datetime DEFAULT NULL,
  `fechaFinTransporte` datetime DEFAULT NULL,
  `razonSocialTransportista` varchar(255) DEFAULT NULL,
  `rucTransportista` varchar(13) DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `motivoTraslado` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guiahasproducto`
--

CREATE TABLE `guiahasproducto` (
  `id_detalle` int NOT NULL,
  `id_notacredito` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia_laar`
--

CREATE TABLE `guia_laar` (
  `id_guia` bigint UNSIGNED NOT NULL,
  `tienda_venta` varchar(400) DEFAULT NULL,
  `guia_sistema` varchar(400) DEFAULT NULL,
  `guia_laar` varchar(400) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `zpl` longtext,
  `tienda_proveedor` varchar(500) DEFAULT NULL,
  `url_guia` varchar(400) DEFAULT NULL,
  `id_pedido` int DEFAULT NULL,
  `identificacionO` varchar(500) DEFAULT NULL,
  `ciudadO` varchar(500) DEFAULT NULL,
  `nombreO` varchar(500) DEFAULT NULL,
  `direccionO` varchar(500) DEFAULT NULL,
  `referenciaO` varchar(500) DEFAULT NULL,
  `numeroCasaO` varchar(500) DEFAULT NULL,
  `postalO` varchar(500) DEFAULT NULL,
  `telefonoO` varchar(500) DEFAULT NULL,
  `celularO` varchar(500) DEFAULT NULL,
  `identificacionD` varchar(500) DEFAULT NULL,
  `ciudadD` varchar(500) DEFAULT NULL,
  `nombreD` varchar(500) DEFAULT NULL,
  `direccionD` varchar(500) DEFAULT NULL,
  `referenciaD` varchar(500) DEFAULT NULL,
  `numeroCasaD` varchar(500) DEFAULT NULL,
  `postalD` varchar(500) DEFAULT NULL,
  `telefonoD` varchar(500) DEFAULT NULL,
  `celularD` varchar(500) DEFAULT NULL,
  `tipoServicio` varchar(500) DEFAULT NULL,
  `noPiezas` int DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `valorDeclarado` double DEFAULT NULL,
  `contiene` varchar(500) DEFAULT NULL,
  `cod` int DEFAULT NULL,
  `costoflete` double DEFAULT NULL,
  `costoproducto` double DEFAULT NULL,
  `valor_costo` double DEFAULT NULL,
  `tipocobro` varchar(500) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `estado_guia` int NOT NULL,
  `id_transporte` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_productos`
--

CREATE TABLE `historial_productos` (
  `id_historial` int NOT NULL,
  `id_producto` int NOT NULL,
  `id_users` int NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `nota_historial` varchar(255) NOT NULL,
  `referencia_historial` varchar(100) NOT NULL,
  `cantidad_historial` double NOT NULL,
  `tipo_historial` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horizontal`
--

CREATE TABLE `horizontal` (
  `id_horizontal` bigint UNSIGNED NOT NULL,
  `texto` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `estado` int NOT NULL,
  `posicion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestocomprobanteretencion`
--

CREATE TABLE `impuestocomprobanteretencion` (
  `id` int NOT NULL,
  `retencion_id` int NOT NULL,
  `codigo` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `codigoretencion` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `baseimponible` decimal(10,2) NOT NULL DEFAULT '0.00',
  `porcentajeretener` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorretenido` decimal(10,2) NOT NULL DEFAULT '0.00',
  `numdocsustento` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fechaemisiondocsustento` date NOT NULL,
  `coddocsustento` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestocomprobanteretencion20`
--

CREATE TABLE `impuestocomprobanteretencion20` (
  `id_detalle` int NOT NULL,
  `id_retencion` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `descripcion_venta` varchar(255) NOT NULL DEFAULT '',
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  `codigo` varchar(1) NOT NULL,
  `codigoretencion` varchar(5) NOT NULL,
  `baseimponible` decimal(10,2) NOT NULL,
  `porcentajeretener` decimal(10,2) NOT NULL,
  `valorretenido` decimal(10,2) NOT NULL,
  `numdocsustento` varchar(15) NOT NULL DEFAULT '',
  `fechaemisiondocsustento` date NOT NULL,
  `coddocsustento` varchar(2) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `id_imp` int NOT NULL,
  `nombre_imp` varchar(100) NOT NULL,
  `valor_imp` double NOT NULL,
  `estado_imp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingreso` int NOT NULL,
  `id_consulta` int NOT NULL,
  `id_paciente` int NOT NULL,
  `monto` double NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `id_kardex` int NOT NULL,
  `fecha_kardex` date DEFAULT NULL,
  `producto_kardex` int DEFAULT NULL,
  `cant_entrada` double DEFAULT NULL,
  `costo_entrada` double DEFAULT NULL,
  `total_entrada` double DEFAULT NULL,
  `cant_salida` double DEFAULT NULL,
  `costo_salida` double DEFAULT NULL,
  `total_salida` double DEFAULT NULL,
  `cant_saldo` double DEFAULT NULL,
  `costo_saldo` double DEFAULT NULL,
  `total_saldo` double DEFAULT NULL,
  `added_kardex` datetime DEFAULT NULL,
  `users_kardex` int DEFAULT NULL,
  `tipo_movimiento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing`
--

CREATE TABLE `landing` (
  `id_landing` bigint UNSIGNED NOT NULL,
  `id_producto` int NOT NULL,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_producto`
--

CREATE TABLE `landing_producto` (
  `id_landing` bigint UNSIGNED NOT NULL,
  `url_imagen` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto_boton` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_imagen2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto_boton2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion2` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto_l` int NOT NULL,
  `codigo_pro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `id_linea` int NOT NULL,
  `nombre_linea` varchar(255) NOT NULL,
  `descripcion_linea` text NOT NULL,
  `estado_linea` int NOT NULL,
  `date_added` datetime NOT NULL,
  `online` int NOT NULL,
  `imagen` varchar(1500) DEFAULT NULL,
  `tipo` varchar(150) NOT NULL,
  `padre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacioncompra`
--

CREATE TABLE `liquidacioncompra` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `fechaEmision` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacioncomprahasproducto`
--

CREATE TABLE `liquidacioncomprahasproducto` (
  `id_detalle` int NOT NULL,
  `id_liquidacion` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES
(1, 'Inicio'),
(2, 'Productos'),
(3, 'Proveedores'),
(4, 'Clientes'),
(5, 'Reportes'),
(6, 'Configuracion'),
(7, 'Usuarios'),
(8, 'Permisos'),
(9, 'Categorias'),
(10, 'Ventas'),
(11, 'Compras'),
(12, 'Pedidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivodebito`
--

CREATE TABLE `motivodebito` (
  `id` int NOT NULL,
  `id_debito` int NOT NULL DEFAULT '0',
  `nombre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `valor` decimal(10,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivodebito20`
--

CREATE TABLE `motivodebito20` (
  `id_detalle` int NOT NULL,
  `id_notadebito` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int DEFAULT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `descripcion_venta` varchar(255) NOT NULL DEFAULT '',
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `motivodebito20`
--

INSERT INTO `motivodebito20` (`id_detalle`, `id_notadebito`, `numero_factura`, `id_producto`, `cantidad`, `desc_venta`, `descripcion_venta`, `precio_venta`, `importe_venta`) VALUES
(26, 26, '000000009', NULL, 1, 0, 'prueba', 12, 12),
(27, 27, '000000009', NULL, 1, 0, 'prueba', 12, 12),
(28, 28, '000000009', NULL, 1, 0, 'prueba', 12, 12),
(29, 29, '000000009', NULL, 1, 0, 'prueba', 12, 12),
(30, 30, '000000010', NULL, 1, 0, 'prueba', 12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motorizado_guia`
--

CREATE TABLE `motorizado_guia` (
  `id` int NOT NULL,
  `empleado_id` int NOT NULL,
  `guia_fast` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacredito`
--

CREATE TABLE `notacredito` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `fechaEmision` datetime DEFAULT NULL,
  `tipodocmodulo` varchar(50) DEFAULT NULL,
  `fechaemisiondocmodulo` datetime DEFAULT NULL,
  `numdocmod` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notacreditohasproducto`
--

CREATE TABLE `notacreditohasproducto` (
  `id_detalle` int NOT NULL,
  `id_notacredito` int NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` double NOT NULL,
  `desc_venta` int NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notadebito`
--

CREATE TABLE `notadebito` (
  `id_debito` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double DEFAULT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) DEFAULT NULL,
  `fechaEmision` datetime DEFAULT NULL,
  `tipodocmodulo` varchar(50) DEFAULT NULL,
  `fechaemisiondocmodulo` datetime DEFAULT NULL,
  `numdocmod` varchar(50) DEFAULT NULL,
  `subtotal0` decimal(10,4) DEFAULT NULL,
  `subtotal12` decimal(10,4) DEFAULT NULL,
  `valorTotal` decimal(10,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notadebito20`
--

CREATE TABLE `notadebito20` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `fechaEmision` datetime DEFAULT NULL,
  `tipodocmodulo` varchar(50) DEFAULT NULL,
  `fechaemisiondocmodulo` datetime DEFAULT NULL,
  `numdocmod` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen_laar`
--

CREATE TABLE `origen_laar` (
  `id_origen` bigint UNSIGNED NOT NULL,
  `identificacion` varchar(100) NOT NULL,
  `provinciaO` varchar(100) DEFAULT NULL,
  `ciudadO` varchar(100) DEFAULT NULL,
  `nombreO` varchar(100) DEFAULT NULL,
  `direccion` varchar(1200) DEFAULT NULL,
  `referencia` varchar(1200) DEFAULT NULL,
  `numeroCasa` varchar(100) DEFAULT NULL,
  `postal` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `origen_laar`
--

INSERT INTO `origen_laar` (`id_origen`, `identificacion`, `provinciaO`, `ciudadO`, `nombreO`, `direccion`, `referencia`, `numeroCasa`, `postal`, `telefono`, `celular`) VALUES
(1, '99999999999', '201001001', '201001001001', 'Imporsuit', 'Biloxi', 'Biloxi', 's2556', '', '0999999998', '0999999999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int NOT NULL,
  `nombre_empresa` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `giro_empresa` text NOT NULL,
  `fiscal_empresa` varchar(25) NOT NULL,
  `pais` int NOT NULL DEFAULT '1',
  `direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ciudad` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `codigo_postal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estado` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `impuesto` int NOT NULL,
  `nom_impuesto` varchar(50) NOT NULL,
  `moneda` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ambiente` varchar(1) NOT NULL,
  `tipoEmision` varchar(1) NOT NULL,
  `codigo_establecimiento` varchar(3) DEFAULT NULL,
  `codigo_punto_emision` varchar(3) DEFAULT NULL,
  `firma` varchar(200) DEFAULT NULL,
  `ruc` varchar(200) DEFAULT NULL,
  `passFirma` varchar(255) DEFAULT NULL,
  `secuencialfactura` varchar(255) DEFAULT NULL,
  `secuencialcredito` varchar(255) DEFAULT NULL,
  `secuencialdebito` varchar(255) DEFAULT NULL,
  `secuencialliquidacion` varchar(255) DEFAULT NULL,
  `secuencialguia` varchar(255) DEFAULT NULL,
  `secuencialretencion` varchar(255) DEFAULT NULL,
  `autofactura` varchar(1) DEFAULT NULL,
  `autocredito` varchar(1) DEFAULT NULL,
  `autodebito` varchar(1) DEFAULT NULL,
  `autoliquidacion` varchar(1) DEFAULT NULL,
  `autoguia` varchar(1) DEFAULT NULL,
  `autoretencion` varchar(1) DEFAULT NULL,
  `color` varchar(100) NOT NULL,
  `color_botones` varchar(100) NOT NULL,
  `color_footer` varchar(100) NOT NULL,
  `facebook` varchar(1000) NOT NULL,
  `instagram` varchar(1000) NOT NULL,
  `tiktok` varchar(1000) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `texto_cabecera` varchar(1000) NOT NULL,
  `texto_boton` varchar(1000) NOT NULL,
  `texto_footer` varchar(1000) NOT NULL,
  `texto_precio` varchar(1000) NOT NULL,
  `mapa` varchar(1000) NOT NULL,
  `texto_contactos` varchar(100) NOT NULL,
  `banner` varchar(10000) NOT NULL,
  `flotante` int NOT NULL,
  `habilitar_proveedor` int NOT NULL,
  `favicon` text,
  `nodevolucion` tinyint NOT NULL DEFAULT '0',
  `texto_slider` text,
  `texto_btn_slider` text,
  `enlace_btn_slider` text NOT NULL,
  `titulo_slider` text,
  `alineacion_slider` int NOT NULL,
  `caracteristicas_home` int DEFAULT '0',
  `banner_opacidad` double DEFAULT '0.5',
  `banner_color_filtro` text,
  `whatsapp_flotante` int NOT NULL DEFAULT '0',
  `boton_compra_flotante` int NOT NULL DEFAULT '0',
  `activar_destacados` varchar(100) NOT NULL DEFAULT '1',
  `envioGratis_checkout` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `giro_empresa`, `fiscal_empresa`, `pais`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `nom_impuesto`, `moneda`, `logo_url`, `ambiente`, `tipoEmision`, `codigo_establecimiento`, `codigo_punto_emision`, `firma`, `ruc`, `passFirma`, `secuencialfactura`, `secuencialcredito`, `secuencialdebito`, `secuencialliquidacion`, `secuencialguia`, `secuencialretencion`, `autofactura`, `autocredito`, `autodebito`, `autoliquidacion`, `autoguia`, `autoretencion`, `color`, `color_botones`, `color_footer`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `texto_cabecera`, `texto_boton`, `texto_footer`, `texto_precio`, `mapa`, `texto_contactos`, `banner`, `flotante`, `habilitar_proveedor`, `favicon`, `nodevolucion`, `texto_slider`, `texto_btn_slider`, `enlace_btn_slider`, `titulo_slider`, `alineacion_slider`, `caracteristicas_home`, `banner_opacidad`, `banner_color_filtro`, `whatsapp_flotante`, `boton_compra_flotante`, `activar_destacados`, `envioGratis_checkout`) VALUES
(1, 'IMPORSUIT', 'IMPORTADORA', '1111111111001', 1, 'SU DIRECCION', 'SU CIUDAD', '593', 'PROVINCIA', '099999999999', 'ventas@imporshop.app', 12, 'IVA', '$', '../../img/perfil/1699498022_1699487640_2 (1).jpg', '1', '1', '001', '001', '', '1713683801001', '***', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '#111111', '#fd0d0d', '#111111', 'https://www.facebook.com/profile.php?id=100088418753162&mibextid=ZbWKwL', 'https://instagram.com/imporshop.ec', 'https://www.tiktok.com/@imporshop.factory', '', '#ffffff', '#ffffff', '#ffffff', '#000000', 'a', 'a', '../../img/1699498073_1699487640_2 (1).jpg', 1, 0, NULL, 1, NULL, NULL, '', NULL, 0, 0, 0.5, NULL, 0, 0, '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pixel`
--

CREATE TABLE `pixel` (
  `id_pixel` bigint UNSIGNED NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `pixel` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politicas`
--

CREATE TABLE `politicas` (
  `id_politica` bigint UNSIGNED NOT NULL,
  `politica` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `politicas_empresa`
--

CREATE TABLE `politicas_empresa` (
  `id_politica` bigint UNSIGNED NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `politica` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `codigo_producto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `id_linea_producto` int NOT NULL,
  `id_med_producto` int DEFAULT NULL,
  `id_proveedor` int NOT NULL,
  `inv_producto` tinyint NOT NULL,
  `iva_producto` tinyint NOT NULL,
  `estado_producto` tinyint NOT NULL,
  `costo_producto` double NOT NULL,
  `utilidad_producto` double NOT NULL,
  `moneda_producto` int DEFAULT NULL,
  `valor1_producto` double NOT NULL,
  `valor2_producto` double NOT NULL,
  `valor3_producto` double NOT NULL,
  `stock_producto` double DEFAULT NULL,
  `stock_min_producto` double NOT NULL,
  `date_added` datetime NOT NULL,
  `image_path` varchar(300) DEFAULT NULL,
  `id_imp_producto` int NOT NULL,
  `pagina_web` int DEFAULT NULL,
  `formato` int DEFAULT NULL,
  `url_a1` varchar(150) DEFAULT NULL,
  `url_a2` varchar(150) DEFAULT NULL,
  `url_a3` varchar(150) DEFAULT NULL,
  `url_a4` varchar(150) DEFAULT NULL,
  `url_a5` varchar(150) DEFAULT NULL,
  `valor4_producto` double DEFAULT NULL,
  `tienda` varchar(500) DEFAULT NULL,
  `drogshipin` int NOT NULL DEFAULT '0',
  `id_producto_origen` int DEFAULT NULL,
  `id_marketplace` int DEFAULT NULL,
  `aplica_iva` int DEFAULT '0',
  `destacado` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL,
  `nombre_proveedor` varchar(255) NOT NULL,
  `fiscal_proveedor` varchar(100) NOT NULL,
  `web_proveedor` varchar(255) NOT NULL,
  `direccion_proveedor` text NOT NULL,
  `contacto_proveedor` varchar(255) NOT NULL,
  `email_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `estado_proveedor` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `fiscal_proveedor`, `web_proveedor`, `direccion_proveedor`, `contacto_proveedor`, `email_proveedor`, `telefono_proveedor`, `date_added`, `estado_proveedor`) VALUES
(6, 'S/P', '9999999999', '', '', 'TIENDAS', '', '09999999', '2023-11-08 11:21:30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia_laar`
--

CREATE TABLE `provincia_laar` (
  `id_prov` bigint UNSIGNED NOT NULL,
  `provincia` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_laar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_provincia` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pais` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincia_laar`
--

INSERT INTO `provincia_laar` (`id_prov`, `provincia`, `codigo_laar`, `codigo_provincia`, `id_pais`) VALUES
(170, 'TUNGURAHUA', NULL, '201001019', 1),
(171, 'PICHINCHA', NULL, '201001001', 1),
(172, 'SANTO DOMINGO', NULL, '201001024', 1),
(173, 'IMBABURA', NULL, '201001011', 1),
(174, 'GUAYAS', NULL, '201001002', 1),
(175, 'MANABI', NULL, '201001014', 1),
(176, 'SANTA ELENA', NULL, '201001023', 1),
(177, 'LOS RIOS', NULL, '201001013', 1),
(178, 'CARCHI', NULL, '201001006', 1),
(179, 'AZUAY', NULL, '201001003', 1),
(180, 'CAÑAR', NULL, '201001005', 1),
(181, 'BOLIVAR', NULL, '201001004', 1),
(182, 'CHIMBORAZO', NULL, '201001008', 1),
(183, 'COTOPAXI', NULL, '201001007', 1),
(184, 'EL ORO', NULL, '201001009', 1),
(185, 'ESMERALDAS', NULL, '201001010', 1),
(186, 'LOJA', NULL, '201001012', 1),
(187, 'MORONA SANTIAGO', NULL, '201001015', 1),
(188, 'ZAMORA', NULL, '201001021', 1),
(189, 'NAPO', NULL, '201001016', 1),
(190, 'ORELLANA', NULL, '201001017', 1),
(191, 'SUCUMBIOS', NULL, '201001022', 1),
(192, 'PASTAZA', NULL, '201001018', 1),
(193, 'GALAPAGOS', NULL, '201001020', 1),
(194, 'Chachapoyas', NULL, '0101', 2),
(195, 'Chachapoyas', NULL, '0101', 2),
(196, 'Bagua', NULL, '0102', 2),
(197, 'Bagua', NULL, '0102', 2),
(198, 'Bongará', NULL, '0103', 2),
(199, 'Bongará', NULL, '0103', 2),
(200, 'Condorcanqui', NULL, '0104', 2),
(201, 'Condorcanqui', NULL, '0104', 2),
(202, 'Luya', NULL, '0105', 2),
(203, 'Luya', NULL, '0105', 2),
(204, 'Rodríguez de Mendoza', NULL, '0106', 2),
(205, 'Rodríguez de Mendoza', NULL, '0106', 2),
(206, 'Utcubamba', NULL, '0107', 2),
(207, 'Utcubamba', NULL, '0107', 2),
(208, 'Huaraz', NULL, '0201', 2),
(209, 'Huaraz', NULL, '0201', 2),
(210, 'Aija', NULL, '0202', 2),
(211, 'Aija', NULL, '0202', 2),
(212, 'Antonio Raymondi', NULL, '0203', 2),
(213, 'Antonio Raymondi', NULL, '0203', 2),
(214, 'Asunción', NULL, '0204', 2),
(215, 'Asunción', NULL, '0204', 2),
(216, 'Bolognesi', NULL, '0205', 2),
(217, 'Bolognesi', NULL, '0205', 2),
(218, 'Carhuaz', NULL, '0206', 2),
(219, 'Carhuaz', NULL, '0206', 2),
(220, 'Carlos Fermín Fitzcarrald', NULL, '0207', 2),
(221, 'Carlos Fermín Fitzcarrald', NULL, '0207', 2),
(222, 'Casma', NULL, '0208', 2),
(223, 'Casma', NULL, '0208', 2),
(224, 'Corongo', NULL, '0209', 2),
(225, 'Corongo', NULL, '0209', 2),
(226, 'Huari', NULL, '0210', 2),
(227, 'Huari', NULL, '0210', 2),
(228, 'Huarmey', NULL, '0211', 2),
(229, 'Huarmey', NULL, '0211', 2),
(230, 'Huaylas', NULL, '0212', 2),
(231, 'Huaylas', NULL, '0212', 2),
(232, 'Mariscal Luzuriaga', NULL, '0213', 2),
(233, 'Mariscal Luzuriaga', NULL, '0213', 2),
(234, 'Ocros', NULL, '0214', 2),
(235, 'Ocros', NULL, '0214', 2),
(236, 'Pallasca', NULL, '0215', 2),
(237, 'Pallasca', NULL, '0215', 2),
(238, 'Pomabamba', NULL, '0216', 2),
(239, 'Pomabamba', NULL, '0216', 2),
(240, 'Recuay', NULL, '0217', 2),
(241, 'Recuay', NULL, '0217', 2),
(242, 'Santa', NULL, '0218', 2),
(243, 'Santa', NULL, '0218', 2),
(244, 'Sihuas', NULL, '0219', 2),
(245, 'Sihuas', NULL, '0219', 2),
(246, 'Yungay', NULL, '0220', 2),
(247, 'Yungay', NULL, '0220', 2),
(248, 'Abancay', NULL, '0301', 2),
(249, 'Abancay', NULL, '0301', 2),
(250, 'Andahuaylas', NULL, '0302', 2),
(251, 'Andahuaylas', NULL, '0302', 2),
(252, 'Antabamba', NULL, '0303', 2),
(253, 'Antabamba', NULL, '0303', 2),
(254, 'Aymaraes', NULL, '0304', 2),
(255, 'Aymaraes', NULL, '0304', 2),
(256, 'Cotabambas', NULL, '0305', 2),
(257, 'Cotabambas', NULL, '0305', 2),
(258, 'Chincheros', NULL, '0306', 2),
(259, 'Chincheros', NULL, '0306', 2),
(260, 'Grau', NULL, '0307', 2),
(261, 'Grau', NULL, '0307', 2),
(262, 'Arequipa', NULL, '0401', 2),
(263, 'Arequipa', NULL, '0401', 2),
(264, 'Camaná', NULL, '0402', 2),
(265, 'Camaná', NULL, '0402', 2),
(266, 'Caravelí', NULL, '0403', 2),
(267, 'Caravelí', NULL, '0403', 2),
(268, 'Castilla', NULL, '0404', 2),
(269, 'Castilla', NULL, '0404', 2),
(270, 'Caylloma', NULL, '0405', 2),
(271, 'Caylloma', NULL, '0405', 2),
(272, 'Condesuyos', NULL, '0406', 2),
(273, 'Condesuyos', NULL, '0406', 2),
(274, 'Islay', NULL, '0407', 2),
(275, 'Islay', NULL, '0407', 2),
(276, 'La Uniòn', NULL, '0408', 2),
(277, 'La Uniòn', NULL, '0408', 2),
(278, 'Huamanga', NULL, '0501', 2),
(279, 'Huamanga', NULL, '0501', 2),
(280, 'Cangallo', NULL, '0502', 2),
(281, 'Cangallo', NULL, '0502', 2),
(282, 'Huanca Sancos', NULL, '0503', 2),
(283, 'Huanca Sancos', NULL, '0503', 2),
(284, 'Huanta', NULL, '0504', 2),
(285, 'Huanta', NULL, '0504', 2),
(286, 'La Mar', NULL, '0505', 2),
(287, 'La Mar', NULL, '0505', 2),
(288, 'Lucanas', NULL, '0506', 2),
(289, 'Lucanas', NULL, '0506', 2),
(290, 'Parinacochas', NULL, '0507', 2),
(291, 'Parinacochas', NULL, '0507', 2),
(292, 'Pàucar del Sara Sara', NULL, '0508', 2),
(293, 'Pàucar del Sara Sara', NULL, '0508', 2),
(294, 'Sucre', NULL, '0509', 2),
(295, 'Sucre', NULL, '0509', 2),
(296, 'Víctor Fajardo', NULL, '0510', 2),
(297, 'Víctor Fajardo', NULL, '0510', 2),
(298, 'Vilcas Huamán', NULL, '0511', 2),
(299, 'Vilcas Huamán', NULL, '0511', 2),
(300, 'Cajamarca', NULL, '0601', 2),
(301, 'Cajamarca', NULL, '0601', 2),
(302, 'Cajabamba', NULL, '0602', 2),
(303, 'Cajabamba', NULL, '0602', 2),
(304, 'Celendín', NULL, '0603', 2),
(305, 'Celendín', NULL, '0603', 2),
(306, 'Chota', NULL, '0604', 2),
(307, 'Chota', NULL, '0604', 2),
(308, 'Contumazá', NULL, '0605', 2),
(309, 'Contumazá', NULL, '0605', 2),
(310, 'Cutervo', NULL, '0606', 2),
(311, 'Cutervo', NULL, '0606', 2),
(312, 'Hualgayoc', NULL, '0607', 2),
(313, 'Hualgayoc', NULL, '0607', 2),
(314, 'Jaén', NULL, '0608', 2),
(315, 'Jaén', NULL, '0608', 2),
(316, 'San Ignacio', NULL, '0609', 2),
(317, 'San Ignacio', NULL, '0609', 2),
(318, 'San Marcos', NULL, '0610', 2),
(319, 'San Marcos', NULL, '0610', 2),
(320, 'San Miguel', NULL, '0611', 2),
(321, 'San Miguel', NULL, '0611', 2),
(322, 'San Pablo', NULL, '0612', 2),
(323, 'San Pablo', NULL, '0612', 2),
(324, 'Santa Cruz', NULL, '0613', 2),
(325, 'Santa Cruz', NULL, '0613', 2),
(326, 'Prov. Const. del Callao', NULL, '0701', 2),
(327, 'Prov. Const. del Callao', NULL, '0701', 2),
(328, 'Cusco', NULL, '0801', 2),
(329, 'Cusco', NULL, '0801', 2),
(330, 'Acomayo', NULL, '0802', 2),
(331, 'Acomayo', NULL, '0802', 2),
(332, 'Anta', NULL, '0803', 2),
(333, 'Anta', NULL, '0803', 2),
(334, 'Calca', NULL, '0804', 2),
(335, 'Calca', NULL, '0804', 2),
(336, 'Canas', NULL, '0805', 2),
(337, 'Canas', NULL, '0805', 2),
(338, 'Canchis', NULL, '0806', 2),
(339, 'Canchis', NULL, '0806', 2),
(340, 'Chumbivilcas', NULL, '0807', 2),
(341, 'Chumbivilcas', NULL, '0807', 2),
(342, 'Espinar', NULL, '0808', 2),
(343, 'Espinar', NULL, '0808', 2),
(344, 'La Convención', NULL, '0809', 2),
(345, 'La Convención', NULL, '0809', 2),
(346, 'Paruro', NULL, '0810', 2),
(347, 'Paruro', NULL, '0810', 2),
(348, 'Paucartambo', NULL, '0811', 2),
(349, 'Paucartambo', NULL, '0811', 2),
(350, 'Quispicanchi', NULL, '0812', 2),
(351, 'Quispicanchi', NULL, '0812', 2),
(352, 'Urubamba', NULL, '0813', 2),
(353, 'Urubamba', NULL, '0813', 2),
(354, 'Huancavelica', NULL, '0901', 2),
(355, 'Huancavelica', NULL, '0901', 2),
(356, 'Acobamba', NULL, '0902', 2),
(357, 'Acobamba', NULL, '0902', 2),
(358, 'Angaraes', NULL, '0903', 2),
(359, 'Angaraes', NULL, '0903', 2),
(360, 'Castrovirreyna', NULL, '0904', 2),
(361, 'Castrovirreyna', NULL, '0904', 2),
(362, 'Churcampa', NULL, '0905', 2),
(363, 'Churcampa', NULL, '0905', 2),
(364, 'Huaytará', NULL, '0906', 2),
(365, 'Huaytará', NULL, '0906', 2),
(366, 'Tayacaja', NULL, '0907', 2),
(367, 'Tayacaja', NULL, '0907', 2),
(368, 'Huánuco', NULL, '1001', 2),
(369, 'Huánuco', NULL, '1001', 2),
(370, 'Ambo', NULL, '1002', 2),
(371, 'Ambo', NULL, '1002', 2),
(372, 'Dos de Mayo', NULL, '1003', 2),
(373, 'Dos de Mayo', NULL, '1003', 2),
(374, 'Huacaybamba', NULL, '1004', 2),
(375, 'Huacaybamba', NULL, '1004', 2),
(376, 'Huamalíes', NULL, '1005', 2),
(377, 'Huamalíes', NULL, '1005', 2),
(378, 'Leoncio Prado', NULL, '1006', 2),
(379, 'Leoncio Prado', NULL, '1006', 2),
(380, 'Marañón', NULL, '1007', 2),
(381, 'Marañón', NULL, '1007', 2),
(382, 'Pachitea', NULL, '1008', 2),
(383, 'Pachitea', NULL, '1008', 2),
(384, 'Puerto Inca', NULL, '1009', 2),
(385, 'Puerto Inca', NULL, '1009', 2),
(386, 'Lauricocha ', NULL, '1010', 2),
(387, 'Lauricocha ', NULL, '1010', 2),
(388, 'Yarowilca ', NULL, '1011', 2),
(389, 'Yarowilca ', NULL, '1011', 2),
(390, 'Ica ', NULL, '1101', 2),
(391, 'Ica ', NULL, '1101', 2),
(392, 'Chincha ', NULL, '1102', 2),
(393, 'Chincha ', NULL, '1102', 2),
(394, 'Nazca ', NULL, '1103', 2),
(395, 'Nazca ', NULL, '1103', 2),
(396, 'Palpa ', NULL, '1104', 2),
(397, 'Palpa ', NULL, '1104', 2),
(398, 'Pisco ', NULL, '1105', 2),
(399, 'Pisco ', NULL, '1105', 2),
(400, 'Huancayo ', NULL, '1201', 2),
(401, 'Huancayo ', NULL, '1201', 2),
(402, 'Concepción ', NULL, '1202', 2),
(403, 'Concepción ', NULL, '1202', 2),
(404, 'Chanchamayo ', NULL, '1203', 2),
(405, 'Chanchamayo ', NULL, '1203', 2),
(406, 'Jauja ', NULL, '1204', 2),
(407, 'Jauja ', NULL, '1204', 2),
(408, 'Junín ', NULL, '1205', 2),
(409, 'Junín ', NULL, '1205', 2),
(410, 'Satipo ', NULL, '1206', 2),
(411, 'Satipo ', NULL, '1206', 2),
(412, 'Tarma ', NULL, '1207', 2),
(413, 'Tarma ', NULL, '1207', 2),
(414, 'Yauli ', NULL, '1208', 2),
(415, 'Yauli ', NULL, '1208', 2),
(416, 'Chupaca ', NULL, '1209', 2),
(417, 'Chupaca ', NULL, '1209', 2),
(418, 'Trujillo ', NULL, '1301', 2),
(419, 'Trujillo ', NULL, '1301', 2),
(420, 'Ascope ', NULL, '1302', 2),
(421, 'Ascope ', NULL, '1302', 2),
(422, 'Bolívar ', NULL, '1303', 2),
(423, 'Bolívar ', NULL, '1303', 2),
(424, 'Chepén ', NULL, '1304', 2),
(425, 'Chepén ', NULL, '1304', 2),
(426, 'Julcán ', NULL, '1305', 2),
(427, 'Julcán ', NULL, '1305', 2),
(428, 'Otuzco ', NULL, '1306', 2),
(429, 'Otuzco ', NULL, '1306', 2),
(430, 'Pacasmayo ', NULL, '1307', 2),
(431, 'Pacasmayo ', NULL, '1307', 2),
(432, 'Pataz ', NULL, '1308', 2),
(433, 'Pataz ', NULL, '1308', 2),
(434, 'Sánchez Carrión ', NULL, '1309', 2),
(435, 'Sánchez Carrión ', NULL, '1309', 2),
(436, 'Santiago de Chuco ', NULL, '1310', 2),
(437, 'Santiago de Chuco ', NULL, '1310', 2),
(438, 'Gran Chimú ', NULL, '1311', 2),
(439, 'Gran Chimú ', NULL, '1311', 2),
(440, 'Virú ', NULL, '1312', 2),
(441, 'Virú ', NULL, '1312', 2),
(442, 'Chiclayo ', NULL, '1401', 2),
(443, 'Chiclayo ', NULL, '1401', 2),
(444, 'Ferreñafe ', NULL, '1402', 2),
(445, 'Ferreñafe ', NULL, '1402', 2),
(446, 'Lambayeque ', NULL, '1403', 2),
(447, 'Lambayeque ', NULL, '1403', 2),
(448, 'Lima ', NULL, '1501', 2),
(449, 'Lima ', NULL, '1501', 2),
(450, 'Barranca ', NULL, '1502', 2),
(451, 'Barranca ', NULL, '1502', 2),
(452, 'Cajatambo ', NULL, '1503', 2),
(453, 'Cajatambo ', NULL, '1503', 2),
(454, 'Canta ', NULL, '1504', 2),
(455, 'Canta ', NULL, '1504', 2),
(456, 'Cañete ', NULL, '1505', 2),
(457, 'Cañete ', NULL, '1505', 2),
(458, 'Huaral ', NULL, '1506', 2),
(459, 'Huaral ', NULL, '1506', 2),
(460, 'Huarochirí ', NULL, '1507', 2),
(461, 'Huarochirí ', NULL, '1507', 2),
(462, 'Huaura ', NULL, '1508', 2),
(463, 'Huaura ', NULL, '1508', 2),
(464, 'Oyón ', NULL, '1509', 2),
(465, 'Oyón ', NULL, '1509', 2),
(466, 'Yauyos ', NULL, '1510', 2),
(467, 'Yauyos ', NULL, '1510', 2),
(468, 'Maynas ', NULL, '1601', 2),
(469, 'Maynas ', NULL, '1601', 2),
(470, 'Alto Amazonas ', NULL, '1602', 2),
(471, 'Alto Amazonas ', NULL, '1602', 2),
(472, 'Loreto ', NULL, '1603', 2),
(473, 'Loreto ', NULL, '1603', 2),
(474, 'Mariscal Ramón Castilla ', NULL, '1604', 2),
(475, 'Mariscal Ramón Castilla ', NULL, '1604', 2),
(476, 'Requena ', NULL, '1605', 2),
(477, 'Requena ', NULL, '1605', 2),
(478, 'Ucayali ', NULL, '1606', 2),
(479, 'Ucayali ', NULL, '1606', 2),
(480, 'Datem del Marañón ', NULL, '1607', 2),
(481, 'Datem del Marañón ', NULL, '1607', 2),
(482, 'Putumayo', NULL, '1608', 2),
(483, 'Putumayo', NULL, '1608', 2),
(484, 'Tambopata ', NULL, '1701', 2),
(485, 'Tambopata ', NULL, '1701', 2),
(486, 'Manu ', NULL, '1702', 2),
(487, 'Manu ', NULL, '1702', 2),
(488, 'Tahuamanu ', NULL, '1703', 2),
(489, 'Tahuamanu ', NULL, '1703', 2),
(490, 'Mariscal Nieto ', NULL, '1801', 2),
(491, 'Mariscal Nieto ', NULL, '1801', 2),
(492, 'General Sánchez Cerro ', NULL, '1802', 2),
(493, 'General Sánchez Cerro ', NULL, '1802', 2),
(494, 'Ilo ', NULL, '1803', 2),
(495, 'Ilo ', NULL, '1803', 2),
(496, 'Pasco ', NULL, '1901', 2),
(497, 'Pasco ', NULL, '1901', 2),
(498, 'Daniel Alcides Carrión ', NULL, '1902', 2),
(499, 'Daniel Alcides Carrión ', NULL, '1902', 2),
(500, 'Oxapampa ', NULL, '1903', 2),
(501, 'Oxapampa ', NULL, '1903', 2),
(502, 'Piura ', NULL, '2001', 2),
(503, 'Piura ', NULL, '2001', 2),
(504, 'Ayabaca ', NULL, '2002', 2),
(505, 'Ayabaca ', NULL, '2002', 2),
(506, 'Huancabamba ', NULL, '2003', 2),
(507, 'Huancabamba ', NULL, '2003', 2),
(508, 'Morropón ', NULL, '2004', 2),
(509, 'Morropón ', NULL, '2004', 2),
(510, 'Paita ', NULL, '2005', 2),
(511, 'Paita ', NULL, '2005', 2),
(512, 'Sullana ', NULL, '2006', 2),
(513, 'Sullana ', NULL, '2006', 2),
(514, 'Talara ', NULL, '2007', 2),
(515, 'Talara ', NULL, '2007', 2),
(516, 'Sechura ', NULL, '2008', 2),
(517, 'Sechura ', NULL, '2008', 2),
(518, 'Puno ', NULL, '2101', 2),
(519, 'Puno ', NULL, '2101', 2),
(520, 'Azángaro ', NULL, '2102', 2),
(521, 'Azángaro ', NULL, '2102', 2),
(522, 'Carabaya ', NULL, '2103', 2),
(523, 'Carabaya ', NULL, '2103', 2),
(524, 'Chucuito ', NULL, '2104', 2),
(525, 'Chucuito ', NULL, '2104', 2),
(526, 'El Collao ', NULL, '2105', 2),
(527, 'El Collao ', NULL, '2105', 2),
(528, 'Huancané ', NULL, '2106', 2),
(529, 'Huancané ', NULL, '2106', 2),
(530, 'Lampa ', NULL, '2107', 2),
(531, 'Lampa ', NULL, '2107', 2),
(532, 'Melgar ', NULL, '2108', 2),
(533, 'Melgar ', NULL, '2108', 2),
(534, 'Moho ', NULL, '2109', 2),
(535, 'Moho ', NULL, '2109', 2),
(536, 'San Antonio de Putina ', NULL, '2110', 2),
(537, 'San Antonio de Putina ', NULL, '2110', 2),
(538, 'San Román ', NULL, '2111', 2),
(539, 'San Román ', NULL, '2111', 2),
(540, 'Sandia ', NULL, '2112', 2),
(541, 'Sandia ', NULL, '2112', 2),
(542, 'Yunguyo ', NULL, '2113', 2),
(543, 'Yunguyo ', NULL, '2113', 2),
(544, 'Moyobamba ', NULL, '2201', 2),
(545, 'Moyobamba ', NULL, '2201', 2),
(546, 'Bellavista ', NULL, '2202', 2),
(547, 'Bellavista ', NULL, '2202', 2),
(548, 'El Dorado ', NULL, '2203', 2),
(549, 'El Dorado ', NULL, '2203', 2),
(550, 'Huallaga ', NULL, '2204', 2),
(551, 'Huallaga ', NULL, '2204', 2),
(552, 'Lamas ', NULL, '2205', 2),
(553, 'Lamas ', NULL, '2205', 2),
(554, 'Mariscal Cáceres ', NULL, '2206', 2),
(555, 'Mariscal Cáceres ', NULL, '2206', 2),
(556, 'Picota ', NULL, '2207', 2),
(557, 'Picota ', NULL, '2207', 2),
(558, 'Rioja ', NULL, '2208', 2),
(559, 'Rioja ', NULL, '2208', 2),
(560, 'San Martín ', NULL, '2209', 2),
(561, 'San Martín ', NULL, '2209', 2),
(562, 'Tocache ', NULL, '2210', 2),
(563, 'Tocache ', NULL, '2210', 2),
(564, 'Tacna ', NULL, '2301', 2),
(565, 'Tacna ', NULL, '2301', 2),
(566, 'Candarave ', NULL, '2302', 2),
(567, 'Candarave ', NULL, '2302', 2),
(568, 'Jorge Basadre ', NULL, '2303', 2),
(569, 'Jorge Basadre ', NULL, '2303', 2),
(570, 'Tarata ', NULL, '2304', 2),
(571, 'Tarata ', NULL, '2304', 2),
(572, 'Tumbes ', NULL, '2401', 2),
(573, 'Tumbes ', NULL, '2401', 2),
(574, 'Contralmirante Villar ', NULL, '2402', 2),
(575, 'Contralmirante Villar ', NULL, '2402', 2),
(576, 'Zarumilla ', NULL, '2403', 2),
(577, 'Zarumilla ', NULL, '2403', 2),
(578, 'Coronel Portillo ', NULL, '2501', 2),
(579, 'Coronel Portillo ', NULL, '2501', 2),
(580, 'Atalaya ', NULL, '2502', 2),
(581, 'Atalaya ', NULL, '2502', 2),
(582, 'Padre Abad ', NULL, '2503', 2),
(583, 'Padre Abad ', NULL, '2503', 2),
(584, 'Purús', NULL, '2504', 2),
(585, 'Purús', NULL, '2504', 2),
(586, 'Antioquia', NULL, '5', 3),
(587, 'Antioquia', NULL, '5', 3),
(588, 'Boyacá', NULL, '15', 3),
(589, 'Boyacá', NULL, '15', 3),
(590, 'Córdoba', NULL, '23', 3),
(591, 'Córdoba', NULL, '23', 3),
(592, 'Chocó', NULL, '27', 3),
(593, 'Chocó', NULL, '27', 3),
(594, 'Nariño', NULL, '52', 3),
(595, 'Nariño', NULL, '52', 3),
(596, 'Santander', NULL, '68', 3),
(597, 'Santander', NULL, '68', 3),
(598, 'Meta', NULL, '50', 3),
(599, 'Meta', NULL, '50', 3),
(600, 'Atlántico', NULL, '8', 3),
(601, 'Atlántico', NULL, '8', 3),
(602, 'Bolívar', NULL, '13', 3),
(603, 'Bolívar', NULL, '13', 3),
(604, 'Caldas', NULL, '17', 3),
(605, 'Caldas', NULL, '17', 3),
(606, 'Caquetá', NULL, '18', 3),
(607, 'Caquetá', NULL, '18', 3),
(608, 'Cauca', NULL, '19', 3),
(609, 'Cauca', NULL, '19', 3),
(610, 'Cesar', NULL, '20', 3),
(611, 'Cesar', NULL, '20', 3),
(612, 'Cundinamarca', NULL, '25', 3),
(613, 'Cundinamarca', NULL, '25', 3),
(614, 'Huila', NULL, '41', 3),
(615, 'Huila', NULL, '41', 3),
(616, 'La Guajira', NULL, '44', 3),
(617, 'La Guajira', NULL, '44', 3),
(618, 'Magdalena', NULL, '47', 3),
(619, 'Magdalena', NULL, '47', 3),
(620, 'Quindío', NULL, '63', 3),
(621, 'Quindío', NULL, '63', 3),
(622, 'Risaralda', NULL, '66', 3),
(623, 'Risaralda', NULL, '66', 3),
(624, 'Sucre', NULL, '70', 3),
(625, 'Sucre', NULL, '70', 3),
(626, 'Tolima', NULL, '73', 3),
(627, 'Tolima', NULL, '73', 3),
(628, 'Arauca', NULL, '81', 3),
(629, 'Arauca', NULL, '81', 3),
(630, 'Casanare', NULL, '85', 3),
(631, 'Casanare', NULL, '85', 3),
(632, 'Putumayo', NULL, '86', 3),
(633, 'Putumayo', NULL, '86', 3),
(634, 'Amazonas', NULL, '91', 3),
(635, 'Amazonas', NULL, '91', 3),
(636, 'Guainía', NULL, '94', 3),
(637, 'Guainía', NULL, '94', 3),
(638, 'Vaupés', NULL, '97', 3),
(639, 'Vaupés', NULL, '97', 3),
(640, 'Vichada', NULL, '99', 3),
(641, 'Vichada', NULL, '99', 3),
(642, 'Guaviare', NULL, '95', 3),
(643, 'Guaviare', NULL, '95', 3),
(644, 'Archipiélago de San Andrés, Providencia y Santa Catalina', NULL, '88', 3),
(645, 'Archipiélago de San Andrés, Providencia y Santa Catalina', NULL, '88', 3),
(646, 'Bogotá D.C.', NULL, '11', 3),
(647, 'Bogotá D.C.', NULL, '11', 3),
(648, 'Norte de Santander', NULL, '54', 3),
(649, 'Norte de Santander', NULL, '54', 3),
(650, 'Valle del Cauca', NULL, '76', 3),
(651, 'Valle del Cauca', NULL, '76', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_visitas`
--

CREATE TABLE `registros_visitas` (
  `id` int NOT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` int NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `pagina` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros_visitas`
--

INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:25:13', 'inicio'),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:25:21', 'inicio'),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 62, '2023-09-02 18:25:37', 'categorias'),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 542, '2023-09-02 18:25:50', 'productos'),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:28:08', 'inicio'),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:50:22', 'inicio'),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:53:53', 'inicio'),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:53:54', 'inicio'),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:57:28', 'inicio'),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:57:56', 'inicio'),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:57:59', 'inicio'),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:58:45', 'inicio'),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:58:47', 'inicio'),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:59:13', 'inicio'),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 18:59:53', 'inicio'),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:03:40', 'inicio'),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:04:18', 'inicio'),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:07:49', 'inicio'),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:10:34', 'inicio'),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:10:36', 'inicio'),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:10:56', 'inicio'),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:11:05', 'inicio'),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:18:56', 'inicio'),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:21:57', 'inicio'),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:21:59', 'inicio'),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:23:11', 'inicio'),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:29:06', 'inicio'),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:30:17', 'inicio'),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:30:39', 'inicio'),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:30:45', 'inicio'),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:31:47', 'inicio'),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:34:45', 'inicio'),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:35:42', 'inicio'),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:37:44', 'inicio'),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:38:56', 'inicio'),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:39:39', 'inicio'),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:41:15', 'inicio'),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:41:16', 'inicio'),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:41:25', 'inicio'),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:48:37', 'inicio'),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:48:41', 'inicio'),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:48:50', 'inicio'),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:49:12', 'inicio'),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:49:15', 'inicio'),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:49:22', 'inicio'),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:50:48', 'inicio'),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:53:22', 'inicio'),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:53:30', 'inicio'),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 19:55:22', 'inicio'),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:02:05', 'inicio'),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:00', 'inicio'),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:13', 'inicio'),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:17', 'inicio'),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:26', 'inicio'),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:41', 'inicio'),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:43', 'inicio'),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:03:45', 'inicio'),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:05:04', 'inicio'),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:05:07', 'inicio'),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:05:08', 'inicio'),
(163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-02 20:05:15', 'inicio'),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:06:31', 'inicio'),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:06:35', 'inicio'),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:12:02', 'inicio'),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:12:06', 'inicio'),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:15:53', 'inicio'),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:16:30', 'inicio'),
(170, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-02 20:16:45', 'inicio'),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:17:27', 'inicio'),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:18:03', 'inicio'),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:21:06', 'inicio'),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:21:17', 'inicio'),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:22:21', 'inicio'),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:22:24', 'inicio'),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:23:32', 'inicio'),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:24:31', 'inicio'),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:24:34', 'inicio'),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:25:35', 'inicio'),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:25:51', 'inicio'),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:25:55', 'inicio'),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:26:31', 'inicio'),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:26:36', 'inicio'),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:26:56', 'inicio'),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:27:15', 'inicio'),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:28:13', 'inicio'),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:29:03', 'inicio'),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-02 20:30:15', 'inicio'),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-03 18:59:28', 'inicio'),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-03 18:59:47', 'inicio'),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-03 19:00:19', 'inicio'),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-03 19:13:09', 'inicio'),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:03:11', 'inicio'),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:03:13', 'inicio'),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:08:25', 'inicio'),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:08:29', 'inicio'),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:08:37', 'inicio'),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:08:49', 'inicio'),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:09:26', 'inicio'),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:10:02', 'inicio'),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:10:34', 'inicio'),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:11:14', 'inicio'),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:11:38', 'inicio'),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:12:49', 'inicio'),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:12:51', 'inicio'),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:18:56', 'inicio'),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:19:01', 'inicio'),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:21:34', 'inicio'),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:22:37', 'inicio'),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:23:11', 'inicio'),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:23:12', 'inicio'),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:23:19', 'inicio'),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:28:18', 'inicio'),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:28:45', 'inicio'),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:28:54', 'inicio'),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:30:01', 'inicio'),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:30:23', 'inicio'),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:30:33', 'inicio'),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:31:32', 'inicio'),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:31:38', 'inicio'),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:35:04', 'inicio'),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:35:07', 'inicio'),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:47:18', 'inicio'),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:47:31', 'inicio'),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:47:50', 'inicio'),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:48:50', 'inicio'),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:49:03', 'inicio'),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:49:27', 'inicio'),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:49:46', 'inicio'),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:49:49', 'inicio'),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:50:12', 'inicio'),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:50:31', 'inicio'),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:50:51', 'inicio'),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:51:24', 'inicio'),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:53:31', 'inicio'),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:53:44', 'inicio'),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:53:46', 'inicio'),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:54:40', 'inicio'),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:55:28', 'inicio'),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:57:39', 'inicio'),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:57:51', 'inicio'),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:58:03', 'inicio'),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:58:43', 'inicio'),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 14:58:45', 'inicio'),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 15:00:09', 'inicio'),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:22:34', 'inicio'),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:22:39', 'inicio'),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:23:27', 'inicio'),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:23:30', 'inicio'),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:24:11', 'inicio'),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:24:35', 'inicio'),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:25:13', 'inicio'),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:25:58', 'inicio'),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:26:02', 'inicio'),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:27:17', 'inicio'),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:29:28', 'inicio'),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:31:13', 'inicio'),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:31:15', 'inicio'),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:32:39', 'inicio'),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:34:24', 'inicio'),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:34:37', 'inicio'),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:35:52', 'inicio'),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:38:52', 'inicio'),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:39:05', 'inicio'),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:39:45', 'inicio'),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:45:04', 'inicio'),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:45:06', 'inicio'),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:46:03', 'inicio'),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:46:08', 'inicio'),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 0, '2023-09-04 22:47:02', 'inicio'),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:47:21', 'inicio'),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:47:26', 'inicio'),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:47:39', 'inicio'),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:48:07', 'inicio'),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:48:09', 'inicio'),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:48:17', 'inicio'),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:48:36', 'inicio'),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:49:01', 'inicio'),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:51:47', 'inicio'),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:53:09', 'inicio'),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:55:40', 'inicio'),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:56:33', 'inicio'),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:57:15', 'inicio'),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:57:38', 'inicio'),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:58:18', 'inicio'),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:58:27', 'inicio'),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:59:27', 'inicio'),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 22:59:48', 'inicio'),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:02:06', 'inicio'),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:03:13', 'inicio'),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:03:19', 'inicio'),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:04:09', 'inicio'),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:04:38', 'inicio'),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:04:46', 'inicio'),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:05:44', 'inicio'),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:07:11', 'inicio'),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:07:13', 'inicio'),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:07:27', 'inicio'),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:08:51', 'inicio'),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:08:55', 'inicio'),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:09:45', 'inicio'),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:11:52', 'inicio'),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:18:59', 'inicio'),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:19:43', 'inicio'),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:20:20', 'inicio'),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:20:44', 'inicio'),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:20:52', 'inicio'),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:20:55', 'inicio'),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:21:31', 'inicio'),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:22:04', 'inicio'),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:22:43', 'inicio'),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:23:04', 'inicio'),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:24:08', 'inicio'),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:24:40', 'inicio'),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:25:31', 'inicio'),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:25:32', 'inicio'),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:27:45', 'inicio'),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:27:48', 'inicio'),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:27:50', 'inicio'),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:27:57', 'inicio'),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:28:00', 'inicio'),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:28:02', 'inicio'),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:28:51', 'inicio'),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:31:33', 'inicio'),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:32:37', 'inicio'),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:34:22', 'inicio'),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:34:53', 'inicio'),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:35:12', 'inicio'),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:37:22', 'inicio'),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:40:09', 'inicio'),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:40:59', 'inicio'),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:41:58', 'inicio'),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:42:37', 'inicio'),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:42:52', 'inicio'),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:46:44', 'inicio'),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:48:32', 'inicio'),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:50:44', 'inicio'),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:54:02', 'inicio'),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:54:07', 'inicio'),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-04 23:58:26', 'inicio'),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 00:02:21', 'inicio'),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 00:05:04', 'inicio'),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 00:05:17', 'inicio'),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 09:01:44', 'inicio'),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:20:51', 'inicio'),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:20:56', 'inicio'),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:26:45', 'inicio'),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:28:02', 'inicio'),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:28:37', 'inicio'),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:29:37', 'inicio'),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:29:50', 'inicio'),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:32:28', 'inicio'),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:33:21', 'inicio'),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:34:57', 'inicio'),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 13:59:29', 'inicio'),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:04:27', 'inicio'),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:04:48', 'inicio'),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:06:37', 'inicio'),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:08:21', 'inicio'),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:08:31', 'inicio'),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:09:01', 'inicio'),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:09:19', 'inicio'),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:09:25', 'inicio'),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:09:34', 'inicio'),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:09:46', 'inicio'),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:10:16', 'inicio'),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:10:36', 'inicio'),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:10:46', 'inicio'),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:11:11', 'inicio'),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:13:43', 'inicio'),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:14:37', 'inicio'),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:14:58', 'inicio'),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:15:06', 'inicio'),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:15:15', 'inicio'),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:15:30', 'inicio'),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:16:35', 'inicio'),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:17:04', 'inicio'),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:17:57', 'inicio'),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:18:58', 'inicio'),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:19:05', 'inicio'),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-05 14:19:08', 'categorias'),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:19:10', 'inicio'),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:19:22', 'inicio'),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:20:02', 'inicio'),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:20:25', 'inicio'),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:21:05', 'inicio'),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:21:49', 'inicio'),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-05 14:22:42', 'categorias'),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:22:43', 'inicio'),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:23:12', 'inicio'),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:23:54', 'inicio'),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:24:06', 'inicio'),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:24:09', 'inicio'),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:24:27', 'inicio'),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:24:42', 'inicio'),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:26:27', 'inicio'),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:27:19', 'inicio'),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:28:55', 'inicio'),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:31:12', 'inicio'),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:31:49', 'inicio'),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:32:06', 'inicio'),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:32:23', 'inicio'),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:32:35', 'inicio'),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:32:50', 'inicio'),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:34:38', 'inicio'),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:35:19', 'inicio'),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:36:02', 'inicio'),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:36:17', 'inicio'),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-05 14:37:01', 'categorias'),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:37:03', 'inicio'),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:38:06', 'inicio'),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:39:52', 'inicio'),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:40:21', 'inicio'),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:40:59', 'inicio'),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:41:46', 'inicio'),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:42:08', 'inicio'),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:42:21', 'inicio'),
(419, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:45:36', 'inicio'),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:45:56', 'inicio'),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:46:29', 'inicio'),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:47:41', 'inicio'),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:49:07', 'inicio'),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:49:23', 'inicio'),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:49:32', 'inicio'),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:49:43', 'inicio'),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:51:10', 'inicio'),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:53:34', 'inicio'),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:53:51', 'inicio'),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:54:22', 'inicio'),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:54:41', 'inicio'),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:54:49', 'inicio'),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:54:55', 'inicio'),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:55:15', 'inicio'),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:56:18', 'inicio'),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:57:08', 'inicio'),
(437, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:57:39', 'inicio'),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:58:34', 'inicio'),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-05 14:58:55', 'categorias'),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 14:59:02', 'inicio'),
(441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:03:10', 'inicio'),
(442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:03:21', 'inicio'),
(443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:03:23', 'inicio'),
(444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:04:47', 'inicio'),
(445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:04:48', 'inicio'),
(446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:05:43', 'inicio'),
(447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:05:46', 'inicio'),
(448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:06:19', 'inicio'),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:06:36', 'inicio'),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:06:45', 'inicio'),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:06:58', 'inicio'),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:07:00', 'inicio'),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:07:27', 'inicio'),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:07:53', 'inicio'),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:12:07', 'inicio'),
(456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:19:11', 'inicio'),
(457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:21:02', 'inicio'),
(458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:21:39', 'inicio'),
(459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:22:08', 'inicio'),
(460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:24:29', 'inicio'),
(461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:24:32', 'inicio'),
(462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:24:33', 'inicio');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:27:25', 'inicio'),
(464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:28:47', 'inicio'),
(465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:29:14', 'inicio'),
(466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:31:44', 'inicio'),
(467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:32:12', 'inicio'),
(468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:32:14', 'inicio'),
(469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:33:15', 'inicio'),
(470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:33:37', 'inicio'),
(471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:33:39', 'inicio'),
(472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:33:57', 'inicio'),
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:34:07', 'inicio'),
(474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:36:06', 'inicio'),
(475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:37:23', 'inicio'),
(476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:37:36', 'inicio'),
(477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:40:20', 'inicio'),
(478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:40:39', 'inicio'),
(479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-05 15:40:45', 'categorias'),
(480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:40:52', 'inicio'),
(481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:42:45', 'inicio'),
(482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:43:16', 'inicio'),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:43:58', 'inicio'),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:44:28', 'inicio'),
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:45:50', 'inicio'),
(486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:46:21', 'inicio'),
(487, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:47:25', 'inicio'),
(488, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:47:46', 'inicio'),
(489, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 65, '2023-09-05 15:48:07', 'categorias'),
(490, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:48:11', 'inicio'),
(491, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 62, '2023-09-05 15:48:12', 'categorias'),
(492, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:48:14', 'inicio'),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:48:29', 'inicio'),
(494, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:49:08', 'inicio'),
(495, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:49:13', 'inicio'),
(496, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 65, '2023-09-05 15:49:15', 'categorias'),
(497, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:49:16', 'inicio'),
(498, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 62, '2023-09-05 15:49:20', 'categorias'),
(499, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:49:22', 'inicio'),
(500, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:49:47', 'inicio'),
(501, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 15:50:02', 'inicio'),
(502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:50:17', 'inicio'),
(503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:51:05', 'inicio'),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:51:44', 'inicio'),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 15:52:53', 'inicio'),
(506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 15:53:05', 'inicio'),
(507, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 15:53:38', 'inicio'),
(508, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 15:53:54', 'inicio'),
(509, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 15:54:26', 'inicio'),
(510, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 16:03:31', 'inicio'),
(511, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 16:03:33', 'inicio'),
(512, '192.168.68.110', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-09-05 16:03:55', 'inicio'),
(513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:05:16', 'inicio'),
(514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:06:51', 'inicio'),
(515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:07:45', 'inicio'),
(516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:07:58', 'inicio'),
(517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:09:27', 'inicio'),
(518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:09:37', 'inicio'),
(519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:10:24', 'inicio'),
(520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:10:51', 'inicio'),
(521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:11:38', 'inicio'),
(522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:12:21', 'inicio'),
(523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:12:54', 'inicio'),
(524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:13:07', 'inicio'),
(525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:14:20', 'inicio'),
(526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:15:05', 'inicio'),
(527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:16:06', 'inicio'),
(528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:16:45', 'inicio'),
(529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:16:48', 'inicio'),
(530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:17:07', 'inicio'),
(531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 67, '2023-09-05 16:17:09', 'categorias'),
(532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:17:11', 'inicio'),
(533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:19:04', 'inicio'),
(534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:19:18', 'inicio'),
(535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:20:33', 'inicio'),
(536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:20:34', 'inicio'),
(537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:21:26', 'inicio'),
(538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:21:56', 'inicio'),
(539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:22:13', 'inicio'),
(540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:22:20', 'inicio'),
(541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:24:06', 'inicio'),
(542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:26:31', 'inicio'),
(543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:26:50', 'inicio'),
(544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:27:09', 'inicio'),
(545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:27:36', 'inicio'),
(546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:30:59', 'inicio'),
(547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:31:18', 'inicio'),
(548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:32:40', 'inicio'),
(549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:32:58', 'inicio'),
(550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:33:23', 'inicio'),
(551, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:33:39', 'inicio'),
(552, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:33:57', 'inicio'),
(553, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:34:24', 'inicio'),
(554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:34:45', 'inicio'),
(555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:35:58', 'inicio'),
(556, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:36:19', 'inicio'),
(557, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:36:54', 'inicio'),
(558, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:37:22', 'inicio'),
(559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:37:46', 'inicio'),
(560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:38:12', 'inicio'),
(561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:38:28', 'inicio'),
(562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:38:53', 'inicio'),
(563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:39:45', 'inicio'),
(564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:39:51', 'inicio'),
(565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:39:59', 'inicio'),
(566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:43:35', 'inicio'),
(567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:43:38', 'inicio'),
(568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-05 16:43:43', 'categorias'),
(569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-05 16:43:59', 'categorias'),
(570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:44:03', 'inicio'),
(571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:44:13', 'inicio'),
(572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:45:34', 'inicio'),
(573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:46:08', 'inicio'),
(574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:46:55', 'inicio'),
(575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:46:57', 'inicio'),
(576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:47:17', 'inicio'),
(577, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-05 16:47:53', 'inicio'),
(578, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-05 22:11:50', 'inicio'),
(579, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 62, '2023-09-05 22:13:16', 'categorias'),
(580, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 62, '2023-09-05 22:13:37', 'categorias'),
(581, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-06 21:55:19', 'inicio'),
(582, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-06 21:56:16', 'inicio'),
(583, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-06 21:56:25', 'categorias'),
(584, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-08 12:25:59', 'inicio'),
(585, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 0, '2023-09-08 12:26:08', 'inicio'),
(586, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 62, '2023-09-08 12:26:16', 'categorias'),
(587, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-08 15:17:47', 'inicio'),
(588, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:04:51', 'inicio'),
(589, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:04:56', 'inicio'),
(590, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:05:04', 'inicio'),
(591, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:07:46', 'inicio'),
(592, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:08:54', 'inicio'),
(593, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:10:55', 'inicio'),
(594, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:12:37', 'inicio'),
(595, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:13:49', 'inicio'),
(596, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:14:25', 'inicio'),
(597, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:15:02', 'inicio'),
(598, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:15:20', 'inicio'),
(599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:16:01', 'inicio'),
(600, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:17:46', 'inicio'),
(601, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-11 00:17:52', 'categorias'),
(602, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:17:55', 'inicio'),
(603, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-11 00:17:57', 'categorias'),
(604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-11 00:18:01', 'productos'),
(605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-11 00:18:13', 'categorias'),
(606, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:18:14', 'inicio'),
(607, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-11 00:18:14', 'categorias'),
(608, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:28:21', 'inicio'),
(609, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:56:26', 'inicio'),
(610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:57:03', 'inicio'),
(611, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:57:54', 'inicio'),
(612, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:58:20', 'inicio'),
(613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:58:44', 'inicio'),
(614, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 00:58:58', 'inicio'),
(615, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 01:00:37', 'inicio'),
(616, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 01:01:12', 'inicio'),
(617, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-11 01:01:30', 'categorias'),
(618, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-11 23:54:15', 'categorias'),
(619, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 23:54:18', 'inicio'),
(620, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-11 23:58:13', 'inicio'),
(621, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:05:39', 'inicio'),
(622, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:06:31', 'inicio'),
(623, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:06:47', 'inicio'),
(624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:07:10', 'inicio'),
(625, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:07:44', 'inicio'),
(626, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:08:47', 'inicio'),
(627, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 65, '2023-09-12 00:08:58', 'categorias'),
(628, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:09:00', 'inicio'),
(629, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-12 00:09:02', 'categorias'),
(630, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:10:30', 'inicio'),
(631, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:16:56', 'inicio'),
(632, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:21:31', 'inicio'),
(633, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:22:42', 'inicio'),
(634, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:24:38', 'inicio'),
(635, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:27:08', 'inicio'),
(636, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:27:31', 'inicio'),
(637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:27:52', 'inicio'),
(638, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:29:05', 'inicio'),
(639, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:29:25', 'inicio'),
(640, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:30:35', 'inicio'),
(641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:33:21', 'inicio'),
(642, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:33:39', 'inicio'),
(643, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:35:06', 'inicio'),
(644, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-12 00:35:19', 'inicio'),
(645, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:32:44', 'inicio'),
(646, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:33:07', 'inicio'),
(647, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:34:17', 'inicio'),
(648, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:34:44', 'inicio'),
(649, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:36:15', 'inicio'),
(650, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:36:36', 'inicio'),
(651, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:37:00', 'inicio'),
(652, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:37:03', 'inicio'),
(653, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:40:19', 'inicio'),
(654, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:40:41', 'inicio'),
(655, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:41:00', 'inicio'),
(656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:41:31', 'inicio'),
(657, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:42:57', 'inicio'),
(658, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:43:51', 'inicio'),
(659, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:44:19', 'inicio'),
(660, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:46:16', 'inicio'),
(661, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:46:43', 'inicio'),
(662, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:47:12', 'inicio'),
(663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:48:09', 'inicio'),
(664, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:48:11', 'inicio'),
(665, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:48:56', 'inicio'),
(666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:49:51', 'inicio'),
(667, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:53:02', 'inicio'),
(668, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:56:16', 'inicio'),
(669, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 21:59:00', 'inicio'),
(670, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:01:41', 'inicio'),
(671, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:02:05', 'inicio'),
(672, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:02:24', 'inicio'),
(673, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:02:34', 'inicio'),
(674, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:02:53', 'inicio'),
(675, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:04:49', 'inicio'),
(676, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:08:10', 'inicio'),
(677, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:09:15', 'inicio'),
(678, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:10:51', 'inicio'),
(679, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:11:58', 'inicio'),
(680, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:12:22', 'inicio'),
(681, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:13:27', 'inicio'),
(682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:13:49', 'inicio'),
(683, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:13:59', 'inicio'),
(684, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:14:08', 'inicio'),
(685, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:15:18', 'inicio'),
(686, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:15:21', 'inicio'),
(687, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:19:27', 'inicio'),
(688, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:20:43', 'inicio'),
(689, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:20:45', 'inicio'),
(690, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:20:54', 'inicio'),
(691, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:21:02', 'inicio'),
(692, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:21:55', 'inicio'),
(693, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-15 22:22:02', 'categorias'),
(694, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:22:08', 'inicio'),
(695, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:23:29', 'inicio'),
(696, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:24:36', 'inicio'),
(697, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:25:32', 'inicio'),
(698, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:26:09', 'inicio'),
(699, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:26:35', 'inicio'),
(700, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:27:41', 'inicio'),
(701, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:27:43', 'inicio'),
(702, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:27:53', 'inicio'),
(703, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:30:58', 'inicio'),
(704, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:32:38', 'inicio'),
(705, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:32:46', 'inicio'),
(706, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:32:48', 'inicio'),
(707, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:34:22', 'inicio'),
(708, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:34:51', 'inicio'),
(709, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:35:04', 'inicio'),
(710, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:35:46', 'inicio'),
(711, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:36:09', 'inicio'),
(712, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:36:18', 'inicio'),
(713, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:36:23', 'inicio'),
(714, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:37:18', 'inicio'),
(715, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:37:50', 'inicio'),
(716, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:37:52', 'inicio'),
(717, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:38:13', 'inicio'),
(718, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:38:56', 'inicio'),
(719, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:39:17', 'inicio'),
(720, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:39:52', 'inicio'),
(721, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:40:05', 'inicio'),
(722, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:40:39', 'inicio'),
(723, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:41:14', 'inicio'),
(724, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:47:42', 'inicio'),
(725, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 22:48:03', 'inicio'),
(726, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:00:30', 'inicio'),
(727, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:00:38', 'inicio'),
(728, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:00:59', 'inicio'),
(729, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:01:04', 'inicio'),
(730, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:01:37', 'inicio'),
(731, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:02:36', 'inicio'),
(732, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:03:05', 'inicio'),
(733, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:03:08', 'inicio'),
(734, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:03:12', 'inicio'),
(735, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:04:05', 'inicio'),
(736, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:04:53', 'inicio'),
(737, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:04:56', 'inicio'),
(738, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:05:44', 'inicio'),
(739, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:05:56', 'inicio'),
(740, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:06:30', 'inicio'),
(741, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:06:43', 'inicio'),
(742, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:06:47', 'inicio'),
(743, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:07:22', 'inicio'),
(744, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:08:56', 'inicio'),
(745, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:09:26', 'inicio'),
(746, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:09:53', 'inicio'),
(747, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:10:32', 'inicio'),
(748, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:10:36', 'inicio'),
(749, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:11:15', 'inicio'),
(750, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:12:14', 'inicio'),
(751, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:12:18', 'inicio'),
(752, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:12:52', 'inicio'),
(753, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:13:31', 'inicio'),
(754, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:14:22', 'inicio'),
(755, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:14:27', 'inicio'),
(756, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:14:51', 'inicio'),
(757, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:14:58', 'inicio'),
(758, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:15:45', 'inicio'),
(759, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:16:13', 'inicio'),
(760, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:17:06', 'inicio'),
(761, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:17:16', 'inicio'),
(762, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:17:56', 'inicio'),
(763, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:18:08', 'inicio'),
(764, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:18:25', 'inicio'),
(765, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:18:36', 'inicio'),
(766, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:18:40', 'inicio'),
(767, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:18:46', 'inicio'),
(768, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:19:05', 'inicio'),
(769, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:19:07', 'inicio'),
(770, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:19:19', 'inicio'),
(771, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:21:03', 'inicio'),
(772, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:21:12', 'inicio'),
(773, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:22:16', 'inicio'),
(774, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:23:05', 'inicio'),
(775, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:25:19', 'categorias'),
(776, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:26:17', 'categorias'),
(777, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:26:36', 'categorias'),
(778, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:26:51', 'categorias'),
(779, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:27:15', 'inicio'),
(780, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:27:39', 'inicio'),
(781, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:28:16', 'categorias'),
(782, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:28:38', 'categorias'),
(783, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:29:37', 'categorias'),
(784, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:30:33', 'categorias'),
(785, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:31:56', 'categorias'),
(786, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:32:15', 'categorias'),
(787, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:33:58', 'categorias'),
(788, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:34:55', 'categorias'),
(789, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:35:44', 'categorias'),
(790, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:35:59', 'categorias'),
(791, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:36:19', 'categorias'),
(792, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:37:01', 'categorias'),
(793, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:37:35', 'categorias'),
(794, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:38:11', 'categorias'),
(795, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:38:41', 'categorias'),
(796, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:39:15', 'categorias'),
(797, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 10, '2023-09-15 23:39:23', 'categorias'),
(798, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-15 23:39:31', 'categorias'),
(799, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 62, '2023-09-15 23:39:57', 'categorias'),
(800, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:40:20', 'categorias'),
(801, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:40:41', 'categorias'),
(802, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:41:43', 'categorias'),
(803, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:41:57', 'categorias'),
(804, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:01', 'categorias'),
(805, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:30', 'categorias'),
(806, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:39', 'categorias'),
(807, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:42', 'categorias'),
(808, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:55', 'inicio'),
(809, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:42:58', 'categorias'),
(810, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:45:16', 'categorias'),
(811, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:45:31', 'categorias'),
(812, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:45:36', 'categorias'),
(813, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:46:08', 'categorias'),
(814, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:46:50', 'inicio'),
(815, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:46:55', 'inicio');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(816, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:47:08', 'inicio'),
(817, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:47:31', 'inicio'),
(818, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:47:33', 'categorias'),
(819, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:49:18', 'categorias'),
(820, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:49:36', 'inicio'),
(821, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:51:56', 'inicio'),
(822, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:51:58', 'categorias'),
(823, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:52:45', 'inicio'),
(824, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:52:48', 'inicio'),
(825, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:52:51', 'categorias'),
(826, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-15 23:52:57', 'inicio'),
(827, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:02:33', 'categorias'),
(828, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:02:46', 'inicio'),
(829, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:02:48', 'inicio'),
(830, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:02:50', 'categorias'),
(831, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:04:43', 'inicio'),
(832, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:05:09', 'categorias'),
(833, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:09:11', 'categorias'),
(834, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:09:49', 'categorias'),
(835, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:10:56', 'categorias'),
(836, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:11:16', 'categorias'),
(837, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:12:52', 'categorias'),
(838, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:13:17', 'categorias'),
(839, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:14:15', 'categorias'),
(840, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:14:43', 'categorias'),
(841, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:14:53', 'categorias'),
(842, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:16:06', 'categorias'),
(843, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:17:48', 'categorias'),
(844, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:18:21', 'categorias'),
(845, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:18:58', 'categorias'),
(846, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:19:01', 'categorias'),
(847, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:19:39', 'categorias'),
(848, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:19:58', 'categorias'),
(849, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:20:26', 'categorias'),
(850, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:23:21', 'categorias'),
(851, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:24:08', 'categorias'),
(852, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:25:32', 'categorias'),
(853, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:25:53', 'categorias'),
(854, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:25:56', 'categorias'),
(855, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:26:02', 'categorias'),
(856, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:26:26', 'categorias'),
(857, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:26:50', 'categorias'),
(858, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:27:58', 'categorias'),
(859, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:28:40', 'categorias'),
(860, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:29:11', 'categorias'),
(861, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:29:15', 'categorias'),
(862, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:31:11', 'categorias'),
(863, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:31:56', 'categorias'),
(864, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:33:40', 'categorias'),
(865, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:34:23', 'categorias'),
(866, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:36:30', 'categorias'),
(867, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:37:09', 'categorias'),
(868, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:37:48', 'categorias'),
(869, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:38:39', 'categorias'),
(870, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:39:02', 'categorias'),
(871, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:39:53', 'categorias'),
(872, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:40:46', 'categorias'),
(873, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:43:59', 'categorias'),
(874, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:44:32', 'categorias'),
(875, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:44:56', 'categorias'),
(876, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:45:06', 'categorias'),
(877, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:45:46', 'categorias'),
(878, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:46:01', 'categorias'),
(879, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:46:44', 'categorias'),
(880, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:47:01', 'categorias'),
(881, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:47:35', 'categorias'),
(882, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:47:59', 'categorias'),
(883, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:49:22', 'categorias'),
(884, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:49:29', 'categorias'),
(885, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:50:38', 'categorias'),
(886, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:51:30', 'categorias'),
(887, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:52:07', 'categorias'),
(888, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:52:47', 'categorias'),
(889, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:53:09', 'categorias'),
(890, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:54:17', 'categorias'),
(891, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:55:02', 'categorias'),
(892, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:55:42', 'categorias'),
(893, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:55:58', 'categorias'),
(894, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:57:38', 'categorias'),
(895, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 00:58:36', 'categorias'),
(896, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:00:45', 'categorias'),
(897, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:01:29', 'categorias'),
(898, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:03:39', 'categorias'),
(899, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:04:02', 'categorias'),
(900, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:04:43', 'categorias'),
(901, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:05:19', 'inicio'),
(902, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:05:24', 'categorias'),
(903, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:06:19', 'categorias'),
(904, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:07:42', 'categorias'),
(905, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:08:03', 'categorias'),
(906, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:09:38', 'categorias'),
(907, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:10:24', 'categorias'),
(908, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:11:13', 'categorias'),
(909, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:12:02', 'categorias'),
(910, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:13:21', 'categorias'),
(911, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:14:37', 'categorias'),
(912, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:15:29', 'categorias'),
(913, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:16:23', 'categorias'),
(914, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:16:57', 'categorias'),
(915, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:17:35', 'categorias'),
(916, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:18:11', 'categorias'),
(917, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:18:28', 'categorias'),
(918, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:18:51', 'categorias'),
(919, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:19:07', 'categorias'),
(920, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:19:19', 'categorias'),
(921, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:20:41', 'categorias'),
(922, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:20:46', 'inicio'),
(923, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:20:48', 'categorias'),
(924, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:21:14', 'inicio'),
(925, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:21:18', 'inicio'),
(926, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:23:38', 'inicio'),
(927, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:24:24', 'inicio'),
(928, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:24:26', 'inicio'),
(929, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:24:29', 'inicio'),
(930, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:24:31', 'inicio'),
(931, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:24:49', 'inicio'),
(932, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:25:04', 'inicio'),
(933, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:25:05', 'inicio'),
(934, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:26:27', 'categorias'),
(935, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:27:15', 'categorias'),
(936, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:27:55', 'categorias'),
(937, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:28:39', 'categorias'),
(938, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:29:52', 'categorias'),
(939, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:30:38', 'categorias'),
(940, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:32:01', 'categorias'),
(941, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:32:07', 'categorias'),
(942, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:35:50', 'categorias'),
(943, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:36:12', 'inicio'),
(944, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:36:14', 'categorias'),
(945, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:36:16', 'inicio'),
(946, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:36:18', 'categorias'),
(947, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:36:26', 'categorias'),
(948, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:40:36', 'productos'),
(949, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:41:27', 'productos'),
(950, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:41:29', 'categorias'),
(951, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:43:13', 'categorias'),
(952, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:43:47', 'categorias'),
(953, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 01:44:06', 'categorias'),
(954, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:44:08', 'productos'),
(955, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:45:00', 'productos'),
(956, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:48:27', 'productos'),
(957, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:49:01', 'productos'),
(958, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:49:14', 'productos'),
(959, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:49:37', 'productos'),
(960, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:50:10', 'productos'),
(961, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:50:43', 'productos'),
(962, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:51:03', 'productos'),
(963, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:53:09', 'productos'),
(964, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:53:20', 'productos'),
(965, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:53:31', 'productos'),
(966, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:54:06', 'productos'),
(967, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:54:20', 'productos'),
(968, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:54:25', 'productos'),
(969, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:54:44', 'productos'),
(970, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:55:58', 'productos'),
(971, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:56:16', 'productos'),
(972, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:57:41', 'productos'),
(973, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:58:01', 'productos'),
(974, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:58:09', 'productos'),
(975, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 01:59:35', 'productos'),
(976, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:00:04', 'productos'),
(977, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:00:57', 'productos'),
(978, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:02:33', 'productos'),
(979, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:03:04', 'productos'),
(980, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:03:58', 'productos'),
(981, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:06:36', 'productos'),
(982, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:09:50', 'productos'),
(983, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:10:38', 'productos'),
(984, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:11:50', 'productos'),
(985, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:12:01', 'productos'),
(986, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:12:11', 'productos'),
(987, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:12:22', 'productos'),
(988, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:12:55', 'productos'),
(989, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:13:21', 'productos'),
(990, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:14:20', 'productos'),
(991, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:15:01', 'productos'),
(992, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:16:02', 'productos'),
(993, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:17:00', 'productos'),
(994, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:17:08', 'productos'),
(995, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:17:21', 'productos'),
(996, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:17:34', 'productos'),
(997, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:18:04', 'productos'),
(998, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:18:44', 'productos'),
(999, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:19:21', 'productos'),
(1000, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:19:38', 'productos'),
(1001, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:20:44', 'productos'),
(1002, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:21:16', 'categorias'),
(1003, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:21:18', 'inicio'),
(1004, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:21:19', 'categorias'),
(1005, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:21:22', 'categorias'),
(1006, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:21:25', 'productos'),
(1007, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:22:23', 'productos'),
(1008, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:23:50', 'productos'),
(1009, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:23:53', 'productos'),
(1010, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:24:50', 'productos'),
(1011, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:25:04', 'productos'),
(1012, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:25:08', 'inicio'),
(1013, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:25:10', 'categorias'),
(1014, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:25:13', 'productos'),
(1015, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:26:02', 'productos'),
(1016, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:27:22', 'productos'),
(1017, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:27:50', 'productos'),
(1018, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:29:06', 'productos'),
(1019, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:29:41', 'productos'),
(1020, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:29:58', 'productos'),
(1021, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:30:22', 'inicio'),
(1022, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:30:28', 'categorias'),
(1023, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:32:14', 'categorias'),
(1024, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:32:18', 'productos'),
(1025, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:33:11', 'productos'),
(1026, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:33:53', 'productos'),
(1027, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:34:29', 'productos'),
(1028, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:35:07', 'productos'),
(1029, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:35:21', 'productos'),
(1030, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 02:37:37', 'productos'),
(1031, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:37:39', 'inicio'),
(1032, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 02:37:42', 'categorias'),
(1033, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:37:43', 'productos'),
(1034, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:39:31', 'productos'),
(1035, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:39:40', 'productos'),
(1036, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:39:46', 'productos'),
(1037, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:40:19', 'productos'),
(1038, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:43:51', 'productos'),
(1039, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:44:16', 'productos'),
(1040, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:44:43', 'productos'),
(1041, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:45:51', 'productos'),
(1042, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:46:21', 'productos'),
(1043, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:46:48', 'productos'),
(1044, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:47:26', 'productos'),
(1045, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:47:58', 'productos'),
(1046, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 02:48:50', 'productos'),
(1047, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:06:52', 'inicio'),
(1048, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:06:58', 'categorias'),
(1049, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:07:14', 'productos'),
(1050, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:08:04', 'categorias'),
(1051, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:08:06', 'productos'),
(1052, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:11:02', 'productos'),
(1053, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:11:21', 'productos'),
(1054, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:12:28', 'productos'),
(1055, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:13:07', 'productos'),
(1056, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:13:35', 'productos'),
(1057, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:13:49', 'productos'),
(1058, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:14:57', 'productos'),
(1059, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:18:10', 'productos'),
(1060, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:21:14', 'inicio'),
(1061, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:21:17', 'categorias'),
(1062, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:21:19', 'productos'),
(1063, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:21:26', 'productos'),
(1064, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:21:56', 'categorias'),
(1065, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:21:58', 'productos'),
(1066, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:23:57', 'productos'),
(1067, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:24:23', 'productos'),
(1068, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:24:33', 'productos'),
(1069, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:27:30', 'productos'),
(1070, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:27:40', 'productos'),
(1071, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:29:54', 'productos'),
(1072, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:30:04', 'productos'),
(1073, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:31:31', 'productos'),
(1074, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:31:51', 'productos'),
(1075, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:32:42', 'productos'),
(1076, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:33:05', 'productos'),
(1077, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-16 22:33:40', 'productos'),
(1078, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:34:01', 'categorias'),
(1079, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:34:05', 'productos'),
(1080, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:34:38', 'productos'),
(1081, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:35:13', 'productos'),
(1082, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:35:30', 'productos'),
(1083, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:35:48', 'productos'),
(1084, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:35:59', 'productos'),
(1085, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:36:21', 'productos'),
(1086, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:37:27', 'productos'),
(1087, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:41:07', 'productos'),
(1088, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:41:38', 'productos'),
(1089, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:41:55', 'productos'),
(1090, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:42:42', 'productos'),
(1091, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:44:16', 'productos'),
(1092, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:44:30', 'productos'),
(1093, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:46:34', 'productos'),
(1094, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:47:25', 'productos'),
(1095, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:47:44', 'productos'),
(1096, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:47:51', 'productos'),
(1097, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:48:12', 'productos'),
(1098, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:48:25', 'productos'),
(1099, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:48:51', 'productos'),
(1100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:49:02', 'productos'),
(1101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:49:17', 'productos'),
(1102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:49:33', 'productos'),
(1103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:49:48', 'productos'),
(1104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 22:51:26', 'productos'),
(1105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 22:51:43', 'categorias'),
(1106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:51:45', 'productos'),
(1107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:52:21', 'productos'),
(1108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:52:50', 'productos'),
(1109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:53:05', 'productos'),
(1110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:53:58', 'productos'),
(1111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:54:44', 'productos'),
(1112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:54:57', 'productos'),
(1113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:55:36', 'productos'),
(1114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:55:48', 'productos'),
(1115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:56:42', 'productos'),
(1116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:57:30', 'productos'),
(1117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 22:59:19', 'productos'),
(1118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:00:13', 'productos'),
(1119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:00:23', 'productos'),
(1120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:00:25', 'productos'),
(1121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:01:02', 'productos'),
(1122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:01:17', 'productos'),
(1123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-16 23:01:47', 'productos'),
(1124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:02:15', 'inicio'),
(1125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:02:16', 'categorias'),
(1126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:02:18', 'productos'),
(1127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:02:30', 'categorias'),
(1128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:02:33', 'productos'),
(1129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:02:55', 'productos'),
(1130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:03:21', 'productos'),
(1131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:03:30', 'inicio'),
(1132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:03:35', 'categorias'),
(1133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:03:37', 'productos'),
(1134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:03:55', 'productos'),
(1135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:04:07', 'productos'),
(1136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:05:18', 'productos'),
(1137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:06:02', 'inicio'),
(1138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:07:04', 'categorias'),
(1139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:23:22', 'inicio'),
(1140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:23:27', 'categorias'),
(1141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:23:29', 'productos'),
(1142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-16 23:25:08', 'productos'),
(1143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:25:28', 'inicio'),
(1144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:25:56', 'inicio'),
(1145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:26:06', 'categorias'),
(1146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:26:14', 'inicio'),
(1147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:59:36', 'inicio'),
(1148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-16 23:59:52', 'inicio'),
(1149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:00:32', 'inicio'),
(1150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:01:34', 'inicio'),
(1151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:02:23', 'inicio'),
(1152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:04:18', 'inicio'),
(1153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:05:36', 'inicio'),
(1154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:05:49', 'inicio'),
(1155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:06:44', 'inicio'),
(1156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:08:16', 'inicio'),
(1157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:08:56', 'inicio'),
(1158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:02', 'inicio'),
(1159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:29', 'inicio'),
(1160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:34', 'inicio'),
(1161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:48', 'categorias'),
(1162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:50', 'inicio'),
(1163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:52', 'categorias'),
(1164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:53', 'inicio'),
(1165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:55', 'categorias');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(1166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:09:56', 'inicio'),
(1167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:10:08', 'inicio'),
(1168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:10:20', 'categorias'),
(1169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:11:37', 'inicio'),
(1170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:11:40', 'categorias'),
(1171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:11:53', 'categorias'),
(1172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:11:56', 'inicio'),
(1173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:12:03', 'categorias'),
(1174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:12:54', 'categorias'),
(1175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:13:10', 'categorias'),
(1176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:13:37', 'categorias'),
(1177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:13:49', 'categorias'),
(1178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:14:41', 'categorias'),
(1179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:15:11', 'categorias'),
(1180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:16:00', 'inicio'),
(1181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 00:16:15', 'productos'),
(1182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:16:26', 'categorias'),
(1183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:16:50', 'categorias'),
(1184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 00:17:27', 'productos'),
(1185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 00:17:30', 'productos'),
(1186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:17:33', 'categorias'),
(1187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:18:41', 'categorias'),
(1188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:19:27', 'categorias'),
(1189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 547, '2023-09-17 00:19:30', 'productos'),
(1190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:19:33', 'categorias'),
(1191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:19:37', 'categorias'),
(1192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:21:30', 'categorias'),
(1193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:21:33', 'categorias'),
(1194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:22:03', 'categorias'),
(1195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:22:53', 'categorias'),
(1196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:22:56', 'inicio'),
(1197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:22:57', 'inicio'),
(1198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:23:07', 'categorias'),
(1199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:23:09', 'inicio'),
(1200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:23:37', 'categorias'),
(1201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:25:09', 'inicio'),
(1202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:25:22', 'inicio'),
(1203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:48:14', 'inicio'),
(1204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:48:30', 'categorias'),
(1205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:48:52', 'categorias'),
(1206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:48:54', 'inicio'),
(1207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:48:55', 'categorias'),
(1208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:50:01', 'inicio'),
(1209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:50:02', 'inicio'),
(1210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:50:30', 'inicio'),
(1211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:50:38', 'categorias'),
(1212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:50:40', 'inicio'),
(1213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:55:55', 'inicio'),
(1214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 00:55:58', 'categorias'),
(1215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:02:55', 'categorias'),
(1216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:03:17', 'inicio'),
(1217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:03:22', 'categorias'),
(1218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:03:28', 'inicio'),
(1219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:03:33', 'categorias'),
(1220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 01:03:37', 'productos'),
(1221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:03:41', 'inicio'),
(1222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:05:05', 'categorias'),
(1223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:05:47', 'categorias'),
(1224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:06:53', 'categorias'),
(1225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:08:12', 'categorias'),
(1226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:08:41', 'categorias'),
(1227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:08:58', 'categorias'),
(1228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:10:30', 'categorias'),
(1229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:11:11', 'categorias'),
(1230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:11:19', 'categorias'),
(1231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:12:54', 'categorias'),
(1232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:13:10', 'categorias'),
(1233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:13:44', 'categorias'),
(1234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:14:38', 'categorias'),
(1235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:15:13', 'categorias'),
(1236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:15:15', 'categorias'),
(1237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:15:50', 'categorias'),
(1238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:17:03', 'categorias'),
(1239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:17:57', 'categorias'),
(1240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:18:00', 'categorias'),
(1241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:12', 'categorias'),
(1242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:14', 'categorias'),
(1243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:18', 'categorias'),
(1244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:20', 'inicio'),
(1245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:22', 'categorias'),
(1246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:19:26', 'categorias'),
(1247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:20:52', 'categorias'),
(1248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:20:56', 'categorias'),
(1249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:21:38', 'categorias'),
(1250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:25:25', 'categorias'),
(1251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:27:05', 'categorias'),
(1252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:29:07', 'categorias'),
(1253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:29:52', 'categorias'),
(1254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:30:51', 'categorias'),
(1255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:31:11', 'categorias'),
(1256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:31:39', 'categorias'),
(1257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:31:59', 'categorias'),
(1258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:32:06', 'categorias'),
(1259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:32:21', 'categorias'),
(1260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:32:42', 'categorias'),
(1261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:33:13', 'categorias'),
(1262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:34:34', 'categorias'),
(1263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:34:38', 'categorias'),
(1264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:34:41', 'categorias'),
(1265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:34:46', 'inicio'),
(1266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:35:59', 'inicio'),
(1267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:36:02', 'categorias'),
(1268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:37:02', 'categorias'),
(1269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:37:16', 'categorias'),
(1270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:37:47', 'categorias'),
(1271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:38:07', 'categorias'),
(1272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:38:09', 'inicio'),
(1273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:38:20', 'inicio'),
(1274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:39:34', 'inicio'),
(1275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:40:47', 'inicio'),
(1276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:40:48', 'inicio'),
(1277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:41:30', 'inicio'),
(1278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:41:34', 'inicio'),
(1279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:42:12', 'inicio'),
(1280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:00', 'inicio'),
(1281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:02', 'inicio'),
(1282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:05', 'categorias'),
(1283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:12', 'inicio'),
(1284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:14', 'categorias'),
(1285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:18', 'inicio'),
(1286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:20', 'categorias'),
(1287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:25', 'inicio'),
(1288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:27', 'categorias'),
(1289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:43:35', 'inicio'),
(1290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:03', 'inicio'),
(1291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:06', 'categorias'),
(1292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:28', 'categorias'),
(1293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:30', 'inicio'),
(1294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:32', 'categorias'),
(1295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:36', 'categorias'),
(1296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 01:44:38', 'productos'),
(1297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:44:44', 'inicio'),
(1298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:45:12', 'inicio'),
(1299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:45:18', 'inicio'),
(1300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:45:26', 'categorias'),
(1301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:45:58', 'categorias'),
(1302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:00', 'inicio'),
(1303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:02', 'categorias'),
(1304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:29', 'inicio'),
(1305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:32', 'categorias'),
(1306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:41', 'inicio'),
(1307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:46:47', 'inicio'),
(1308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:47:12', 'categorias'),
(1309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:47:32', 'categorias'),
(1310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:47:33', 'categorias'),
(1311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:47:35', 'inicio'),
(1312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:21', 'categorias'),
(1313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:23', 'inicio'),
(1314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:24', 'categorias'),
(1315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:27', 'inicio'),
(1316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:28', 'categorias'),
(1317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:49:31', 'inicio'),
(1318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:50:18', 'inicio'),
(1319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:50:20', 'categorias'),
(1320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:50:50', 'categorias'),
(1321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:50:52', 'inicio'),
(1322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:50:54', 'categorias'),
(1323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:51:21', 'categorias'),
(1324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:52:59', 'categorias'),
(1325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:53:03', 'inicio'),
(1326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:53:05', 'categorias'),
(1327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:08', 'categorias'),
(1328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:34', 'categorias'),
(1329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:37', 'categorias'),
(1330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:39', 'categorias'),
(1331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:41', 'inicio'),
(1332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:54:43', 'categorias'),
(1333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:30', 'categorias'),
(1334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:34', 'inicio'),
(1335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:36', 'categorias'),
(1336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:41', 'inicio'),
(1337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:46', 'categorias'),
(1338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:55:53', 'inicio'),
(1339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:56:00', 'categorias'),
(1340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:57:38', 'categorias'),
(1341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:57:41', 'inicio'),
(1342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:57:43', 'categorias'),
(1343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:57:46', 'categorias'),
(1344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:57:58', 'inicio'),
(1345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:58:02', 'categorias'),
(1346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:59:10', 'categorias'),
(1347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:59:12', 'inicio'),
(1348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:59:12', 'inicio'),
(1349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:59:15', 'categorias'),
(1350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 01:59:26', 'inicio'),
(1351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:00:14', 'inicio'),
(1352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:00:19', 'inicio'),
(1353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:00:23', 'categorias'),
(1354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:01:22', 'categorias'),
(1355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-17 02:01:29', 'productos'),
(1356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-17 02:01:29', 'productos'),
(1357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:01:44', 'inicio'),
(1358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:02:46', 'inicio'),
(1359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:09:48', 'inicio'),
(1360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:09:58', 'inicio'),
(1361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:10:54', 'inicio'),
(1362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:12:18', 'inicio'),
(1363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:12:21', 'inicio'),
(1364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:12:32', 'inicio'),
(1365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:13:06', 'inicio'),
(1366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:13:08', 'categorias'),
(1367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:13:30', 'inicio'),
(1368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:13:35', 'categorias'),
(1369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:14:19', 'categorias'),
(1370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:14:25', 'inicio'),
(1371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:14:32', 'categorias'),
(1372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 02:14:35', 'productos'),
(1373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:14:43', 'categorias'),
(1374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:15:28', 'categorias'),
(1375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:15:56', 'categorias'),
(1376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:16:26', 'categorias'),
(1377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:16:30', 'inicio'),
(1378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:16:49', 'inicio'),
(1379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:16:51', 'inicio'),
(1380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:17:35', 'inicio'),
(1381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:17:54', 'inicio'),
(1382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:17:59', 'categorias'),
(1383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:18:02', 'inicio'),
(1384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:18:15', 'categorias'),
(1385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:20:55', 'categorias'),
(1386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:20:57', 'inicio'),
(1387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:20:59', 'categorias'),
(1388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:21:02', 'inicio'),
(1389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:22:14', 'inicio'),
(1390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:22:49', 'categorias'),
(1391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:23:26', 'categorias'),
(1392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:24:00', 'inicio'),
(1393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:24:04', 'categorias'),
(1394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:24:35', 'categorias'),
(1395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:24:38', 'inicio'),
(1396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:26:36', 'categorias'),
(1397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:27:34', 'categorias'),
(1398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:27:59', 'categorias'),
(1399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:28:25', 'categorias'),
(1400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 02:28:33', 'productos'),
(1401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:29:53', 'categorias'),
(1402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:35:52', 'categorias'),
(1403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-17 02:36:05', 'productos'),
(1404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-17 02:37:16', 'productos'),
(1405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 543, '2023-09-17 02:37:18', 'productos'),
(1406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 02:50:00', 'categorias'),
(1407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 02:50:03', 'productos'),
(1408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 02:50:20', 'productos'),
(1409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 542, '2023-09-17 02:50:37', 'productos'),
(1410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:00:36', 'inicio'),
(1411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:00:56', 'inicio'),
(1412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:01:40', 'inicio'),
(1413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:02:04', 'inicio'),
(1414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:03:08', 'inicio'),
(1415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:04:47', 'inicio'),
(1416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:05:38', 'inicio'),
(1417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:07:08', 'inicio'),
(1418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:07:14', 'inicio'),
(1419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:07:44', 'inicio'),
(1420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:08:04', ''),
(1421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:08:13', ''),
(1422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:08:22', 'gracias'),
(1423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:09:29', 'gracias'),
(1424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:09:32', 'inicio'),
(1425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:09:33', 'categorias'),
(1426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:35:55', 'categorias'),
(1427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-17 03:53:24', 'inicio'),
(1428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 10:49:37', 'inicio'),
(1429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 10:50:00', 'inicio'),
(1430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 10:50:02', 'inicio'),
(1431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 10:52:02', 'inicio'),
(1432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 10:52:05', 'inicio'),
(1433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 11:15:40', 'inicio'),
(1434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 11:18:17', 'inicio'),
(1435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 11:22:54', 'inicio'),
(1436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 11:23:15', 'inicio'),
(1437, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-19 12:05:01', 'inicio'),
(1438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 12:12:34', 'inicio'),
(1439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 12:34:06', 'inicio'),
(1440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 12:43:20', 'inicio'),
(1441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 12:47:09', 'inicio'),
(1442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:05:27', 'inicio'),
(1443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:05:42', 'inicio'),
(1444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:06:08', 'inicio'),
(1445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:06:22', 'inicio'),
(1446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:06:28', 'categorias'),
(1447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:10:13', 'categorias'),
(1448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:10:36', 'categorias'),
(1449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:10:50', 'inicio'),
(1450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:10:51', 'categorias'),
(1451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:11:11', 'categorias'),
(1452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:11:12', 'inicio'),
(1453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:11:13', 'categorias'),
(1454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:11:32', 'categorias'),
(1455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:11:57', 'categorias'),
(1456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:12:48', 'categorias'),
(1457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:13:07', 'categorias'),
(1458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:13:24', 'categorias'),
(1459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:13:33', 'inicio'),
(1460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:13:35', 'categorias'),
(1461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:17:54', 'categorias'),
(1462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:18:07', 'categorias'),
(1463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:18:59', 'categorias'),
(1464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:20:02', 'categorias'),
(1465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:21:44', 'categorias'),
(1466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:21:54', 'categorias'),
(1467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 13:31:55', 'categorias'),
(1468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 14:39:00', 'inicio'),
(1469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:31:20', 'categorias'),
(1470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:31:23', 'inicio'),
(1471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:31:28', 'inicio'),
(1472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:33:28', 'inicio'),
(1473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:33:36', 'inicio'),
(1474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:33:45', 'categorias'),
(1475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:33:53', 'productos'),
(1476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:34:28', 'categorias'),
(1477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:34:42', 'productos'),
(1478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:35:18', 'categorias'),
(1479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:35:32', 'inicio'),
(1480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 15:35:57', 'categorias'),
(1481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:35:59', 'productos'),
(1482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:37:22', 'productos'),
(1483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:37:40', 'productos'),
(1484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:38:08', 'productos'),
(1485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:38:33', 'productos'),
(1486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:38:45', 'productos'),
(1487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:40:20', 'productos'),
(1488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:41:17', 'productos'),
(1489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:43:02', 'productos'),
(1490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:44:30', 'productos'),
(1491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:44:57', 'productos'),
(1492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:54:14', 'productos'),
(1493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 15:59:20', 'productos'),
(1494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:16:15', 'productos'),
(1495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:16:48', 'productos'),
(1496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:17:34', 'productos'),
(1497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:19:29', 'productos'),
(1498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:19:47', 'productos'),
(1499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:22:28', 'productos'),
(1500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 16:22:46', 'categorias'),
(1501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:22:51', 'productos'),
(1502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 16:23:21', 'inicio'),
(1503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 16:23:33', 'inicio'),
(1504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 16:30:35', 'inicio'),
(1505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-19 16:30:40', 'categorias'),
(1506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:30:43', 'productos'),
(1507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:32:23', 'productos'),
(1508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:32:25', 'productos'),
(1509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:33:31', 'productos'),
(1510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:33:34', 'productos'),
(1511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:33:48', 'productos'),
(1512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:33:50', 'productos'),
(1513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:37:16', 'productos'),
(1514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:38:57', 'productos'),
(1515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:40:10', 'productos'),
(1516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:41:00', 'productos'),
(1517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:41:10', 'productos');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(1518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:41:26', 'productos'),
(1519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:45:34', 'productos'),
(1520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:46:03', 'productos'),
(1521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:48:59', 'productos'),
(1522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-19 16:55:21', 'productos'),
(1523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:00:31', 'inicio'),
(1524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:02:25', 'inicio'),
(1525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:02:27', 'categorias'),
(1526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:02:59', 'categorias'),
(1527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:03:00', 'productos'),
(1528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:04:39', 'productos'),
(1529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:05:14', 'productos'),
(1530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:08:46', 'productos'),
(1531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:10:17', 'productos'),
(1532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:11:47', 'productos'),
(1533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:12:03', 'productos'),
(1534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:18:28', 'productos'),
(1535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:18:46', 'productos'),
(1536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:18:53', 'productos'),
(1537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:19:20', 'productos'),
(1538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:19:42', 'productos'),
(1539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:20:11', 'productos'),
(1540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:20:14', 'productos'),
(1541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:22:29', 'productos'),
(1542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:22:31', 'productos'),
(1543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:23:36', 'productos'),
(1544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:23:55', 'productos'),
(1545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:28:19', 'productos'),
(1546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:37:28', 'productos'),
(1547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:37:30', 'productos'),
(1548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 22:38:04', 'productos'),
(1549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:38:14', 'inicio'),
(1550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:38:18', 'inicio'),
(1551, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:41:15', 'inicio'),
(1552, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:41:27', 'inicio'),
(1553, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:41:55', 'inicio'),
(1554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:42:04', 'inicio'),
(1555, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:43:55', 'inicio'),
(1556, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:43:56', 'inicio'),
(1557, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:43:57', 'inicio'),
(1558, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.31', 0, '2023-09-20 22:44:55', 'inicio'),
(1559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:48:20', 'inicio'),
(1560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:48:42', 'inicio'),
(1561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:49:06', 'inicio'),
(1562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:49:47', 'inicio'),
(1563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:50:18', 'inicio'),
(1564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:50:47', 'inicio'),
(1565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:51:19', 'inicio'),
(1566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:51:28', 'inicio'),
(1567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:51:33', 'inicio'),
(1568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:51:35', 'inicio'),
(1569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:53:51', 'inicio'),
(1570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:54:39', 'inicio'),
(1571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:54:53', 'inicio'),
(1572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:56:45', 'inicio'),
(1573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:57:09', 'inicio'),
(1574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:59:23', 'inicio'),
(1575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:59:39', 'inicio'),
(1576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 22:59:58', 'inicio'),
(1577, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:01:43', 'inicio'),
(1578, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:01:46', 'inicio'),
(1579, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:01:49', 'categorias'),
(1580, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:01:53', 'productos'),
(1581, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:02:16', 'productos'),
(1582, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:03:14', 'productos'),
(1583, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:04:02', 'productos'),
(1584, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:04:22', 'productos'),
(1585, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:04:33', 'productos'),
(1586, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:05:38', 'productos'),
(1587, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:05:51', 'productos'),
(1588, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:07:05', 'productos'),
(1589, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:09:24', 'productos'),
(1590, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:10:06', 'productos'),
(1591, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:10:20', 'productos'),
(1592, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:10:45', 'productos'),
(1593, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:11:33', 'productos'),
(1594, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:11:37', 'inicio'),
(1595, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:11:38', 'categorias'),
(1596, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:12:56', 'categorias'),
(1597, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:13:39', 'categorias'),
(1598, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:14:10', 'categorias'),
(1599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:14:11', 'categorias'),
(1600, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:14:18', 'categorias'),
(1601, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:15:16', 'categorias'),
(1602, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:16:02', 'categorias'),
(1603, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:16:41', 'categorias'),
(1604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:17:02', 'categorias'),
(1605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:18:20', 'categorias'),
(1606, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:21:06', 'categorias'),
(1607, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:21:20', 'categorias'),
(1608, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:22:59', 'categorias'),
(1609, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:23:37', 'categorias'),
(1610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:29:41', 'categorias'),
(1611, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:29:52', 'categorias'),
(1612, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:30:55', 'categorias'),
(1613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:21', 'categorias'),
(1614, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:31', 'inicio'),
(1615, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:32', 'categorias'),
(1616, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:34', 'inicio'),
(1617, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:38', 'categorias'),
(1618, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:31:43', 'inicio'),
(1619, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:32:08', 'inicio'),
(1620, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:32:12', 'categorias'),
(1621, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:32:13', 'inicio'),
(1622, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:32:59', 'inicio'),
(1623, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:33:13', 'inicio'),
(1624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:33:33', 'categorias'),
(1625, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:33:52', 'categorias'),
(1626, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:34:40', 'categorias'),
(1627, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:35:13', 'categorias'),
(1628, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:35:36', 'categorias'),
(1629, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:36:49', 'categorias'),
(1630, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:37:35', 'categorias'),
(1631, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:37:42', 'inicio'),
(1632, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:37:48', 'inicio'),
(1633, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:37:52', 'categorias'),
(1634, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:37:55', 'inicio'),
(1635, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:38:09', 'inicio'),
(1636, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:38:45', 'inicio'),
(1637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:39:11', 'categorias'),
(1638, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:40:09', 'inicio'),
(1639, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:40:10', 'categorias'),
(1640, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:40:14', 'productos'),
(1641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:40:20', 'inicio'),
(1642, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:40:51', 'inicio'),
(1643, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:41:04', 'inicio'),
(1644, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-20 23:41:17', 'categorias'),
(1645, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:41:23', 'productos'),
(1646, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:42:21', 'productos'),
(1647, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:42:23', 'productos'),
(1648, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:42:48', 'productos'),
(1649, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:43:42', 'productos'),
(1650, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:44:49', 'productos'),
(1651, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:46:32', 'productos'),
(1652, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:46:54', 'productos'),
(1653, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:47:23', 'productos'),
(1654, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:47:34', 'productos'),
(1655, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:47:48', 'productos'),
(1656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:48:44', 'productos'),
(1657, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:49:07', 'productos'),
(1658, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:50:45', 'productos'),
(1659, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:51:00', 'productos'),
(1660, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:51:27', 'productos'),
(1661, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:51:42', 'productos'),
(1662, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:53:13', 'productos'),
(1663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:53:56', 'productos'),
(1664, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:55:01', 'productos'),
(1665, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:55:19', 'productos'),
(1666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:57:53', 'productos'),
(1667, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-20 23:58:21', 'productos'),
(1668, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:02:18', 'productos'),
(1669, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:03:45', 'productos'),
(1670, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:04:02', 'productos'),
(1671, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:04:18', 'productos'),
(1672, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:04:44', 'productos'),
(1673, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:05:57', 'productos'),
(1674, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:07:13', 'productos'),
(1675, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:07:43', 'productos'),
(1676, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:08:14', 'productos'),
(1677, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:08:38', 'productos'),
(1678, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:09:10', 'productos'),
(1679, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:09:39', 'productos'),
(1680, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:09:57', 'productos'),
(1681, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:10:23', 'productos'),
(1682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:11:04', 'productos'),
(1683, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:12:42', 'productos'),
(1684, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:13:30', 'productos'),
(1685, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-21 00:13:59', 'inicio'),
(1686, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-21 00:14:13', 'categorias'),
(1687, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:14:15', 'productos'),
(1688, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:15:29', 'productos'),
(1689, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:15:41', 'productos'),
(1690, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:15:53', 'productos'),
(1691, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:19:32', 'productos'),
(1692, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:19:56', 'productos'),
(1693, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:20:38', 'productos'),
(1694, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:21:16', 'productos'),
(1695, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 00:21:56', 'productos'),
(1696, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-21 00:49:39', 'inicio'),
(1697, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-21 23:25:23', 'inicio'),
(1698, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 0, '2023-09-21 23:25:23', 'inicio'),
(1699, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-21 23:58:45', 'productos'),
(1700, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:25:35', 'productos'),
(1701, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:28:25', 'productos'),
(1702, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:31:31', 'productos'),
(1703, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:47:55', 'productos'),
(1704, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:48:46', 'productos'),
(1705, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:48:54', 'productos'),
(1706, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:53:37', 'productos'),
(1707, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:54:49', 'productos'),
(1708, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:55:38', 'productos'),
(1709, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:57:04', 'productos'),
(1710, '201.183.167.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 00:57:41', 'productos'),
(1711, '200.7.247.213', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 525, '2023-09-22 14:28:27', 'productos'),
(1712, '181.196.73.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 525, '2023-09-22 14:52:19', 'productos'),
(1713, '200.7.247.213', 'WhatsApp/2.23.20.0', 525, '2023-09-22 14:53:21', 'productos'),
(1714, '181.196.73.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 14:58:04', 'productos'),
(1715, '181.196.73.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-22 15:01:19', 'productos'),
(1716, '181.196.73.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 525, '2023-09-22 15:05:42', 'productos'),
(1717, '200.7.246.191', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 524, '2023-09-23 11:30:35', 'productos'),
(1718, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 12:45:32', 'productos'),
(1719, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 12:48:35', 'productos'),
(1720, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 12:50:38', 'productos'),
(1721, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 12:53:58', 'productos'),
(1722, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 12:55:37', 'productos'),
(1723, '172.255.48.147', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-23 12:59:03', 'productos'),
(1724, '172.255.48.147', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-23 12:59:06', 'productos'),
(1725, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:04:36', 'productos'),
(1726, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 526, '2023-09-23 13:07:05', 'productos'),
(1727, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-23 13:12:20', 'productos'),
(1728, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:13:02', 'productos'),
(1729, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:13:18', 'productos'),
(1730, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:13:45', 'productos'),
(1731, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:14:33', 'productos'),
(1732, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:17:07', 'productos'),
(1733, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:20:50', 'productos'),
(1734, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:21:34', 'productos'),
(1735, '172.255.48.146', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-23 13:22:18', 'productos'),
(1736, '172.255.48.146', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-23 13:22:22', 'productos'),
(1737, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:31:15', 'productos'),
(1738, '181.199.38.113', 'WhatsApp/2.23.17.82 i', 524, '2023-09-23 13:32:00', 'productos'),
(1739, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:34:43', 'productos'),
(1740, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:39:51', 'productos'),
(1741, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:41:34', 'productos'),
(1742, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:43:57', 'productos'),
(1743, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 13:51:41', 'productos'),
(1744, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-23 14:09:03', 'productos'),
(1745, '157.100.140.55', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 524, '2023-09-23 14:14:03', 'productos'),
(1746, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-23 14:27:48', 'productos'),
(1747, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-23 14:27:56', 'productos'),
(1748, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 527, '2023-09-23 14:28:28', 'productos'),
(1749, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-23 14:29:00', 'productos'),
(1750, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-23 14:37:48', 'productos'),
(1751, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-23 14:40:48', 'productos'),
(1752, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-23 14:41:05', 'productos'),
(1753, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-23 17:03:41', 'productos'),
(1754, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-23 17:25:45', 'productos'),
(1755, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 525, '2023-09-23 17:37:40', 'productos'),
(1756, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-23 17:38:03', 'productos'),
(1757, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-23 17:40:10', 'productos'),
(1758, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/117.0.5938.108 Mobile/15E148 Safari/604.1', 524, '2023-09-23 18:06:09', 'productos'),
(1759, '200.7.246.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/117.0.5938.108 Mobile/15E148 Safari/604.1', 524, '2023-09-23 19:11:56', 'productos'),
(1760, '157.100.140.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 525, '2023-09-24 00:22:25', 'productos'),
(1761, '181.199.38.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 524, '2023-09-24 14:48:19', 'productos'),
(1762, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-24 17:12:10', 'productos'),
(1763, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 524, '2023-09-24 17:12:38', 'productos'),
(1764, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:23:59', 'productos'),
(1765, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/117.0.5938.108 Mobile/15E148 Safari/604.1', 524, '2023-09-24 17:25:03', 'productos'),
(1766, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:25:52', 'productos'),
(1767, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:26:13', 'productos'),
(1768, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:26:35', 'productos'),
(1769, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:28:07', 'productos'),
(1770, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 526, '2023-09-24 17:30:11', 'productos'),
(1771, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 17:30:21', 'productos'),
(1772, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 526, '2023-09-24 17:42:48', 'productos'),
(1773, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 20:43:53', 'productos'),
(1774, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:04:06', 'productos'),
(1775, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 527, '2023-09-24 21:06:28', 'productos'),
(1776, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:07:49', 'productos'),
(1777, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:46:04', 'productos'),
(1778, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:57:58', 'productos'),
(1779, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:58:46', 'productos'),
(1780, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 21:59:09', 'productos'),
(1781, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 22:00:23', 'productos'),
(1782, '172.255.48.145', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-24 22:03:09', 'productos'),
(1783, '172.255.48.145', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36 GTmetrix', 524, '2023-09-24 22:03:14', 'productos'),
(1784, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 22:04:09', 'productos'),
(1785, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 22:06:22', 'productos'),
(1786, '181.199.38.113', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 527, '2023-09-24 22:34:38', 'productos'),
(1787, '181.199.38.113', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 527, '2023-09-24 22:34:43', 'productos'),
(1788, '181.199.38.113', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 527, '2023-09-24 22:34:50', 'productos'),
(1789, '181.199.38.113', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 527, '2023-09-24 22:34:52', 'productos'),
(1790, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 22:35:19', 'productos'),
(1791, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 23:26:11', 'productos'),
(1792, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-24 23:39:45', 'productos'),
(1793, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 00:09:19', 'productos'),
(1794, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/117.0.5938.108 Mobile/15E148 Safari/604.1', 524, '2023-09-25 02:28:12', 'productos'),
(1795, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 527, '2023-09-25 09:10:21', 'productos'),
(1796, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:13:36', 'productos'),
(1797, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:13:40', 'productos'),
(1798, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:13:43', 'productos'),
(1799, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:15', 'productos'),
(1800, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:24', 'productos'),
(1801, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:27', 'productos'),
(1802, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:28', 'productos'),
(1803, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:30', 'productos'),
(1804, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:37', 'productos'),
(1805, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:15:58', 'productos'),
(1806, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:00', 'productos'),
(1807, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:01', 'productos'),
(1808, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:03', 'productos'),
(1809, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:05', 'productos'),
(1810, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:07', 'productos'),
(1811, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:08', 'productos'),
(1812, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:10', 'productos'),
(1813, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:22', 'productos'),
(1814, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:26', 'productos'),
(1815, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:27', 'productos'),
(1816, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:28', 'productos'),
(1817, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:16:47', 'productos'),
(1818, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:17:03', 'productos'),
(1819, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:17:21', 'productos'),
(1820, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:17:41', 'productos'),
(1821, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:17:46', 'productos'),
(1822, '190.152.237.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 526, '2023-09-25 09:19:16', 'productos'),
(1823, '181.199.58.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 11:25:32', 'productos'),
(1824, '181.199.58.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 16:49:36', 'productos'),
(1825, '181.199.58.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 16:51:24', 'productos'),
(1826, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 18:37:34', 'productos'),
(1827, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 19:00:18', 'productos'),
(1828, '181.199.38.113', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/117.0.5938.108 Mobile/15E148 Safari/604.1', 524, '2023-09-25 19:03:23', 'productos'),
(1829, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 19:22:15', 'productos'),
(1830, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 19:23:40', 'productos'),
(1831, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 19:52:30', 'productos'),
(1832, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-25 21:04:36', 'productos'),
(1833, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-26 00:16:46', 'productos'),
(1834, '181.199.38.113', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 524, '2023-09-26 00:17:41', 'productos'),
(1835, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 527, '2023-09-26 11:29:24', 'productos'),
(1836, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 527, '2023-09-26 11:30:13', 'productos');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(1837, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 527, '2023-09-26 11:30:21', 'productos'),
(1838, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 527, '2023-09-26 11:45:46', 'productos'),
(1839, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 527, '2023-09-26 11:46:04', 'productos'),
(1840, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 527, '2023-09-26 13:11:16', 'productos'),
(1841, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 525, '2023-09-26 13:26:09', 'productos'),
(1842, '181.196.72.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 526, '2023-09-26 13:26:50', 'productos'),
(1843, '157.100.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 10:36:13', 'INICIO'),
(1844, '157.100.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 10:36:14', 'INICIO'),
(1845, '190.10.173.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 10:36:30', 'INICIO'),
(1846, '190.10.173.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 10:36:32', 'INICIO'),
(1847, '91.213.50.8', 'Opera/7.50 (Windows ME; U) [en]', 0, '2023-11-08 10:38:02', 'INICIO'),
(1848, '206.204.60.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 10:42:34', 'INICIO'),
(1849, '168.151.246.189', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 10:42:34', 'INICIO'),
(1850, '34.171.21.159', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 0, '2023-11-08 10:58:52', 'INICIO'),
(1851, '34.171.21.159', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 0, '2023-11-08 10:59:04', 'INICIO'),
(1852, '34.171.21.159', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 920)', 0, '2023-11-08 10:59:06', 'INICIO'),
(1853, '34.171.21.159', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 920)', 0, '2023-11-08 10:59:07', 'INICIO'),
(1854, '34.171.21.159', 'python-requests/2.31.0', 0, '2023-11-08 10:59:14', 'INICIO'),
(1855, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 11:00:12', 'INICIO'),
(1856, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 11:00:18', 'INICIO'),
(1857, '34.254.53.125', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', 0, '2023-11-08 11:09:47', 'INICIO'),
(1858, '34.254.53.125', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/118.0', 0, '2023-11-08 11:09:47', 'INICIO'),
(1859, '34.254.53.125', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/118.0', 0, '2023-11-08 11:09:48', 'INICIO'),
(1860, '34.254.53.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 0, '2023-11-08 11:09:48', 'INICIO'),
(1861, '34.254.53.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 0, '2023-11-08 11:09:48', 'INICIO'),
(1862, '34.254.53.125', 'Mozilla/5.0 (X11; Linux x86_64; rv:83.0) Gecko/20100101 Firefox/83.0', 0, '2023-11-08 11:10:01', 'INICIO'),
(1863, '34.254.53.125', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/118.0', 0, '2023-11-08 11:10:01', 'INICIO'),
(1864, '34.254.53.125', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/118.0', 0, '2023-11-08 11:10:01', 'INICIO'),
(1865, '34.254.53.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 0, '2023-11-08 11:10:02', 'INICIO'),
(1866, '34.254.53.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', 0, '2023-11-08 11:10:02', 'INICIO'),
(1867, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:36:58', 'INICIO'),
(1868, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:36:58', 'INICIO'),
(1869, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:37:08', 'INICIO'),
(1870, '157.100.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 11:41:50', 'INICIO'),
(1871, '157.100.139.143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 11:41:52', 'INICIO'),
(1872, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:52:01', 'INICIO'),
(1873, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:52:01', 'INICIO'),
(1874, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 11:52:02', 'INICIO'),
(1875, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:02:24', 'INICIO'),
(1876, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:02:24', 'INICIO'),
(1877, '139.162.204.149', 'Go-http-client/1.1', 0, '2023-11-08 12:07:16', 'INICIO'),
(1878, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:07:19', 'INICIO'),
(1879, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:07:19', 'INICIO'),
(1880, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:07:36', 'INICIO'),
(1881, '201.183.164.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 12:07:36', 'INICIO'),
(1882, '45.79.149.111', 'Go-http-client/1.1', 0, '2023-11-08 12:11:24', 'INICIO'),
(1883, '198.44.136.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 12:41:23', 'INICIO'),
(1884, '198.44.136.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 12:41:34', 'INICIO'),
(1885, '133.242.174.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-11-08 13:20:52', 'INICIO'),
(1886, '139.162.204.149', 'Go-http-client/1.1', 0, '2023-11-08 13:23:23', 'INICIO'),
(1887, '172.104.233.239', 'Go-http-client/1.1', 0, '2023-11-08 13:27:52', 'INICIO'),
(1888, '146.70.200.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 13:28:28', 'INICIO'),
(1889, '133.242.174.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-11-08 13:36:32', 'INICIO'),
(1890, '204.152.216.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 15:05:32', 'INICIO'),
(1891, '204.152.216.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 15:05:47', 'INICIO'),
(1892, '146.70.196.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 0, '2023-11-08 15:44:18', 'INICIO'),
(1893, '171.244.43.14', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 0, '2023-11-08 16:25:35', 'INICIO'),
(1894, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:18:57', 'INICIO'),
(1895, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:18:57', 'INICIO'),
(1896, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:24:44', 'INICIO'),
(1897, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:24:48', 'INICIO'),
(1898, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:24:52', 'CATALOGO'),
(1899, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:24:54', 'INICIO'),
(1900, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:17', 'INICIO'),
(1901, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:17', 'INICIO'),
(1902, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:44', 'CATALOGO'),
(1903, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:45', 'INICIO'),
(1904, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:45', 'INICIO'),
(1905, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:25:45', 'INICIO'),
(1906, '200.7.246.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:26:02', 'INICIO'),
(1907, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 528, '2023-11-08 18:27:59', 'PRODUCTO'),
(1908, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:00', 'INICIO'),
(1909, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:01', 'INICIO'),
(1910, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:01', 'INICIO'),
(1911, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:02', 'INICIO'),
(1912, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:02', 'INICIO'),
(1913, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:02', 'INICIO'),
(1914, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:07', 'INICIO'),
(1915, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:07', 'INICIO'),
(1916, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:07', 'INICIO'),
(1917, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:28:13', 'INICIO'),
(1918, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:34:19', 'CATALOGO'),
(1919, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:34:20', 'INICIO'),
(1920, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:34:21', 'INICIO'),
(1921, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:34:21', 'INICIO'),
(1922, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:34:21', 'INICIO'),
(1923, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:38:37', 'INICIO'),
(1924, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:38:41', 'INICIO'),
(1925, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:38:45', 'CATALOGO'),
(1926, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:01', 'INICIO'),
(1927, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:23', 'CATALOGO'),
(1928, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:26', 'INICIO'),
(1929, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:27', 'INICIO'),
(1930, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:30', 'CATALOGO'),
(1931, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:31', 'INICIO'),
(1932, '200.7.247.129', 'WhatsApp/2.23.20.0', 0, '2023-11-08 18:39:45', 'CATALOGO'),
(1933, '200.7.247.129', 'WhatsApp/2.23.20.0', 0, '2023-11-08 18:39:46', 'INICIO'),
(1934, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:39:54', 'CATALOGO'),
(1935, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:56', 'CATALOGO'),
(1936, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:39:56', 'INICIO'),
(1937, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:39:58', 'INICIO'),
(1938, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:39:58', 'INICIO'),
(1939, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:39:58', 'INICIO'),
(1940, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:40:00', 'INICIO'),
(1941, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:40:21', 'INICIO'),
(1942, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:40:21', 'INICIO'),
(1943, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:40:27', 'INICIO'),
(1944, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:40:40', 'INICIO'),
(1945, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:40:41', 'INICIO'),
(1946, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:40:41', 'INICIO'),
(1947, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 529, '2023-11-08 18:41:01', 'PRODUCTO'),
(1948, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:41:02', 'INICIO'),
(1949, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:41:03', 'INICIO'),
(1950, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:41:06', 'INICIO'),
(1951, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:06', 'INICIO'),
(1952, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:06', 'INICIO'),
(1953, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:14', 'INICIO'),
(1954, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 529, '2023-11-08 18:42:23', 'PRODUCTO'),
(1955, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:24', 'INICIO'),
(1956, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:24', 'INICIO'),
(1957, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:24', 'INICIO'),
(1958, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:24', 'INICIO'),
(1959, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:25', 'INICIO'),
(1960, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:42:30', 'CATALOGO'),
(1961, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:47', 'INICIO'),
(1962, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:51', 'INICIO'),
(1963, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:42:52', 'INICIO'),
(1964, '200.7.247.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:43:17', 'INICIO'),
(1965, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:43:49', 'INICIO'),
(1966, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:43:53', 'INICIO'),
(1967, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:06', 'INICIO'),
(1968, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:07', 'INICIO'),
(1969, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:07', 'INICIO'),
(1970, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:07', 'INICIO'),
(1971, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:07', 'INICIO'),
(1972, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:09', 'CATALOGO'),
(1973, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:10', 'INICIO'),
(1974, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:10', 'INICIO'),
(1975, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:11', 'INICIO'),
(1976, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:11', 'INICIO'),
(1977, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:19', 'CATALOGO'),
(1978, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:20', 'INICIO'),
(1979, '181.198.15.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 18:44:20', 'INICIO'),
(1980, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:05', 'INICIO'),
(1981, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:11', 'INICIO'),
(1982, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:11', 'INICIO'),
(1983, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:12', 'INICIO'),
(1984, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:58', 'CATALOGO'),
(1985, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:58', 'INICIO'),
(1986, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:59', 'INICIO'),
(1987, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:51:59', 'INICIO'),
(1988, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 528, '2023-11-08 18:52:01', 'PRODUCTO'),
(1989, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:02', 'INICIO'),
(1990, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:02', 'INICIO'),
(1991, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:02', 'INICIO'),
(1992, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:02', 'INICIO'),
(1993, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:02', 'INICIO'),
(1994, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:03', 'INICIO'),
(1995, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:06', 'INICIO'),
(1996, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:06', 'INICIO'),
(1997, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:18', 'INICIO'),
(1998, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:18', 'INICIO'),
(1999, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:18', 'INICIO'),
(2000, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:18', 'INICIO'),
(2001, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:21', 'INICIO'),
(2002, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:21', 'INICIO'),
(2003, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:21', 'INICIO'),
(2004, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:26', 'INICIO'),
(2005, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:26', 'INICIO'),
(2006, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:26', 'INICIO'),
(2007, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:26', 'INICIO'),
(2008, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:31', 'CATALOGO'),
(2009, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:31', 'INICIO'),
(2010, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:31', 'INICIO'),
(2011, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:31', 'INICIO'),
(2012, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:32', 'INICIO'),
(2013, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:32', 'INICIO'),
(2014, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 530, '2023-11-08 18:52:33', 'PRODUCTO'),
(2015, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:33', 'INICIO'),
(2016, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:33', 'INICIO'),
(2017, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:33', 'INICIO'),
(2018, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:34', 'INICIO'),
(2019, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:34', 'INICIO'),
(2020, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:52:34', 'INICIO'),
(2021, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:53:37', 'INICIO'),
(2022, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:53:38', 'INICIO'),
(2023, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:54:05', 'INICIO'),
(2024, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:54:05', 'INICIO'),
(2025, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:54:06', 'INICIO'),
(2026, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:00', 'CATALOGO'),
(2027, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:01', 'INICIO'),
(2028, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:01', 'INICIO'),
(2029, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:01', 'INICIO'),
(2030, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:04', 'INICIO'),
(2031, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:29', 'INICIO'),
(2032, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:29', 'INICIO'),
(2033, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2034, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2035, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2036, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2037, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2038, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2039, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2040, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2041, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2042, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2043, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2044, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2045, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:30', 'INICIO'),
(2046, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2047, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2048, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2049, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2050, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2051, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2052, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2053, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:31', 'INICIO'),
(2054, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:41', 'INICIO'),
(2055, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:41', 'INICIO'),
(2056, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 18:58:46', 'INICIO'),
(2057, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:06', 'CATALOGO'),
(2058, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:06', 'INICIO'),
(2059, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:06', 'INICIO'),
(2060, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:07', 'INICIO'),
(2061, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:07', 'INICIO'),
(2062, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:07', 'INICIO'),
(2063, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2064, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2065, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2066, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2067, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2068, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'CATALOGO'),
(2069, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:08', 'INICIO'),
(2070, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:09', 'INICIO'),
(2071, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:09', 'INICIO'),
(2072, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:09', 'INICIO'),
(2073, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:09', 'INICIO'),
(2074, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2075, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2076, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2077, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2078, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2079, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2080, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:10', 'INICIO'),
(2081, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:11', 'INICIO'),
(2082, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:11', 'INICIO'),
(2083, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:11', 'INICIO'),
(2084, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:11', 'INICIO'),
(2085, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:11', 'INICIO'),
(2086, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2087, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2088, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2089, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2090, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2091, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2092, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:12', 'INICIO'),
(2093, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2094, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2095, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2096, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2097, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2098, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2099, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:13', 'INICIO'),
(2100, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2101, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2102, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2103, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2104, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2105, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2106, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2107, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:14', 'INICIO'),
(2108, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2109, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2110, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2111, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2112, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2113, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2114, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2115, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2116, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:15', 'INICIO'),
(2117, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2118, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2119, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2120, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2121, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2122, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:16', 'INICIO'),
(2123, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:23', 'INICIO'),
(2124, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:51', 'CATALOGO'),
(2125, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:53', 'INICIO'),
(2126, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:53', 'INICIO'),
(2127, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2128, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2129, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2130, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2131, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2132, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2133, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:54', 'INICIO'),
(2134, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(2135, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2136, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2137, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2138, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2139, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2140, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2141, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2142, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:55', 'INICIO'),
(2143, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2144, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2145, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2146, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2147, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2148, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2149, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2150, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:56', 'INICIO'),
(2151, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:01:57', 'INICIO'),
(2152, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:51', 'CATALOGO'),
(2153, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:52', 'INICIO'),
(2154, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:52', 'INICIO'),
(2155, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:52', 'INICIO'),
(2156, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:53', 'CATALOGO'),
(2157, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:54', 'INICIO'),
(2158, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:54', 'INICIO'),
(2159, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:54', 'INICIO'),
(2160, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:02:57', 'CATALOGO'),
(2161, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:01', 'INICIO'),
(2162, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:01', 'INICIO'),
(2163, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:01', 'INICIO'),
(2164, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:47', 'CATALOGO'),
(2165, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:47', 'INICIO'),
(2166, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:48', 'INICIO'),
(2167, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:48', 'INICIO'),
(2168, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:51', 'CATALOGO'),
(2169, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:54', 'INICIO'),
(2170, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:54', 'INICIO'),
(2171, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 19:03:54', 'INICIO'),
(2172, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:25', 'CATALOGO'),
(2173, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:25', 'INICIO'),
(2174, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:26', 'INICIO'),
(2175, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:26', 'INICIO'),
(2176, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:26', 'INICIO'),
(2177, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:26', 'INICIO'),
(2178, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:26', 'INICIO'),
(2179, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2180, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2181, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2182, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2183, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2184, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2185, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:27', 'INICIO'),
(2186, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2187, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2188, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2189, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2190, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2191, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2192, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2193, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:28', 'INICIO'),
(2194, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:29', 'INICIO'),
(2195, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:29', 'INICIO'),
(2196, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:29', 'INICIO'),
(2197, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:29', 'INICIO'),
(2198, '200.125.230.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 19:05:29', 'INICIO'),
(2199, '47.242.224.70', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092816', 0, '2023-11-08 19:11:09', 'INICIO'),
(2200, '47.242.224.70', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092816', 0, '2023-11-08 19:11:09', 'INICIO'),
(2201, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:31', 'INICIO'),
(2202, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:33', 'INICIO'),
(2203, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:35', 'INICIO'),
(2204, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:40', 'INICIO'),
(2205, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:41', 'INICIO'),
(2206, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:42', 'INICIO'),
(2207, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:40:51', 'INICIO'),
(2208, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:02', 'INICIO'),
(2209, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:16', 'INICIO'),
(2210, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:16', 'INICIO'),
(2211, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:24', 'INICIO'),
(2212, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:33', 'INICIO'),
(2213, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:33', 'INICIO'),
(2214, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:41', 'INICIO'),
(2215, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:42', 'INICIO'),
(2216, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:50', 'INICIO'),
(2217, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:53', 'INICIO'),
(2218, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:41:58', 'CATALOGO'),
(2219, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:00', 'INICIO'),
(2220, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:01', 'INICIO'),
(2221, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:02', 'INICIO'),
(2222, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:24', 'INICIO'),
(2223, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:32', 'INICIO'),
(2224, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:42:38', 'INICIO'),
(2225, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:43:51', 'CATALOGO'),
(2226, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:43:53', 'INICIO'),
(2227, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:43:55', 'INICIO'),
(2228, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:43:59', 'INICIO'),
(2229, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 532, '2023-11-08 21:44:08', 'PRODUCTO'),
(2230, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:09', 'INICIO'),
(2231, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:09', 'INICIO'),
(2232, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:09', 'INICIO'),
(2233, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:09', 'INICIO'),
(2234, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:09', 'INICIO'),
(2235, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:10', 'INICIO'),
(2236, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:10', 'INICIO'),
(2237, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:14', 'INICIO'),
(2238, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:19', 'INICIO'),
(2239, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:19', 'INICIO'),
(2240, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:58', 'CATALOGO'),
(2241, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:58', 'INICIO'),
(2242, '157.100.87.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-11-08 21:44:59', 'INICIO'),
(2243, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:45:19', 'INICIO'),
(2244, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:45:23', 'INICIO'),
(2245, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:45:28', 'INICIO'),
(2246, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 0, '2023-11-08 21:45:30', 'INICIO'),
(2247, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:46:09', 'INICIO'),
(2248, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:46:17', 'INICIO'),
(2249, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:46:33', 'INICIO'),
(2250, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:47:02', 'INICIO'),
(2251, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:48:10', 'INICIO'),
(2252, '201.183.167.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 0, '2023-11-08 21:48:13', 'INICIO'),
(2253, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 9; ONEPLUS A5010) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.89 Mobile Safari/537.36', 0, '2023-11-08 22:18:11', 'INICIO'),
(2254, '35.88.188.244', 'Opera/9.80 (Windows NT 6.1; U; en) Presto/2.7.62 Version/11.01', 0, '2023-11-08 22:18:18', 'INICIO'),
(2255, '35.88.188.244', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us; Silk/1.0.13.81_10003810) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16 Silk-Accelerated=true', 0, '2023-11-08 22:18:26', 'INICIO'),
(2256, '35.88.188.244', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A5362a Safari/604.1', 0, '2023-11-08 22:18:26', 'INICIO'),
(2257, '35.88.188.244', 'Mozilla/5.0 (Linux; U; Android 7.1.2; el-gr; Redmi 4X Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.9.7-g', 0, '2023-11-08 22:18:26', 'INICIO'),
(2258, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/7046A194A', 0, '2023-11-08 22:18:26', 'INICIO'),
(2259, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2859.0 Safari/537.36', 0, '2023-11-08 22:18:26', 'INICIO'),
(2260, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:2.0.1) Gecko/20100101 Firefox/4.0.1', 0, '2023-11-08 22:18:26', 'INICIO'),
(2261, '35.88.188.244', 'Mozilla/5.0 (X11; U; OpenBSD i386; en-US; rv:1.9.1) Gecko/20090702 Firefox/3.5', 0, '2023-11-08 22:18:26', 'INICIO'),
(2262, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:2.0.1) Gecko/20100101 Firefox/4.0.1', 0, '2023-11-08 22:18:26', 'INICIO'),
(2263, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 7.1.1; Coolpad 3632A Build/NMF26F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36', 0, '2023-11-08 22:18:26', 'INICIO'),
(2264, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 0, '2023-11-08 22:18:26', 'INICIO'),
(2265, '35.88.188.244', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; IEMobile 7.11)', 0, '2023-11-08 22:18:26', 'INICIO'),
(2266, '35.88.188.244', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 YaBrowser/18.11.1.715 (beta) Yowser/2.5 Safari/537.36', 0, '2023-11-08 22:18:27', 'INICIO'),
(2267, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36', 0, '2023-11-08 22:18:27', 'INICIO'),
(2268, '35.88.188.244', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 YaBrowser/19.7.1.114 Yowser/2.5 Safari/537.36', 0, '2023-11-08 22:18:28', 'INICIO'),
(2269, '35.88.188.244', 'Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41', 0, '2023-11-08 22:18:30', 'INICIO'),
(2270, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 8.0.0; moto e5 plus Build/OPPS27.91-122-3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36', 0, '2023-11-08 22:18:30', 'INICIO'),
(2271, '35.88.188.244', 'Mozilla/5.0 (BlackBerry; U; BlackBerry 9800; en) AppleWebKit/534.1  (KHTML, Like Gecko) Version/6.0.0.141 Mobile Safari/534.1', 0, '2023-11-08 22:18:30', 'INICIO'),
(2272, '35.88.188.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.35 Safari/537.36', 0, '2023-11-08 22:18:30', 'INICIO'),
(2273, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 OPR/62.0.3331.99', 0, '2023-11-08 22:18:30', 'INICIO'),
(2274, '35.88.188.244', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 0, '2023-11-08 22:18:31', 'INICIO'),
(2275, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 0, '2023-11-08 22:18:31', 'INICIO'),
(2276, '35.88.188.244', 'Mozilla/5.0 (X11; FreeBSD amd64) AppleWebKit/536.5 (KHTML like Gecko) Chrome/19.0.1084.56 Safari/536.5', 0, '2023-11-08 22:18:31', 'INICIO'),
(2277, '35.88.188.244', 'Googlebot-News', 0, '2023-11-08 22:18:32', 'INICIO'),
(2278, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36', 0, '2023-11-08 22:18:32', 'INICIO'),
(2279, '35.88.188.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4', 0, '2023-11-08 22:18:32', 'INICIO'),
(2280, '35.88.188.244', 'Mozilla/5.0 (Linux; U; Android 1.5; en-gb; T-Mobile_G2_Touch Build/CUPCAKE) AppleWebKit/528.5  (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1', 0, '2023-11-08 22:18:32', 'INICIO'),
(2281, '35.88.188.244', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 0, '2023-11-08 22:18:33', 'INICIO'),
(2282, '35.88.188.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 0, '2023-11-08 22:18:34', 'INICIO'),
(2283, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.71 Safari/537.36 OPR/63.0.3368.17 (Edition beta)', 0, '2023-11-08 22:18:36', 'INICIO'),
(2284, '35.88.188.244', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.5; en-US; rv:1.9.0.3) Gecko/2008092414 Firefox/3.0.3', 0, '2023-11-08 22:19:15', 'INICIO'),
(2285, '35.88.188.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16C104 MicroMessenger/7.0.5(0x17000523) NetType/4G Language/zh_CN', 0, '2023-11-08 22:19:15', 'INICIO'),
(2286, '35.88.188.244', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.6) Gecko/20040614 Firefox/0.8', 0, '2023-11-08 22:19:15', 'INICIO'),
(2287, '35.88.188.244', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.17) Gecko/20110123 SeaMonkey/2.0.12', 0, '2023-11-08 22:19:15', 'INICIO'),
(2288, '35.88.188.244', 'Mozilla/5.0 (SymbianOS/9.2; U; Series60/3.1 NokiaN95/10.0.018; Profile/MIDP-2.0 Configuration/CLDC-1.1) AppleWebKit/413 (KHTML, like Gecko) Safari/413 UP.Link/6.3.0.0.0', 0, '2023-11-08 22:19:15', 'INICIO'),
(2289, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 9; ONEPLUS A6010) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36', 0, '2023-11-08 22:19:15', 'INICIO'),
(2290, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 0, '2023-11-08 22:19:15', 'INICIO'),
(2291, '35.88.188.244', 'Mozilla/5.0 (X11; FreeBSD amd64) AppleWebKit/535.22+ (KHTML, like Gecko) Chromium/17.0.963.56 Chrome/17.0.963.56 Safari/535.22+ Epiphany/2.30.6', 0, '2023-11-08 22:19:15', 'INICIO'),
(2292, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/607.2.6 (KHTML, like Gecko) Version/12.1.1 Safari/607.2.6 Maxthon/5.1.132', 0, '2023-11-08 22:19:15', 'INICIO'),
(2293, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 9; Nokia 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.143 Mobile Safari/537.36', 0, '2023-11-08 22:19:15', 'INICIO'),
(2294, '35.88.188.244', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/538.1 (KHTML, like Gecko) QupZilla/1.8.6 Safari/538.1', 0, '2023-11-08 22:19:15', 'INICIO'),
(2295, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 4.4.2; SM-T230NU Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.81 Safari/537.36', 0, '2023-11-08 22:19:15', 'INICIO'),
(2296, '35.88.188.244', 'Mozilla/5.0 (X11; CrOS x86_64 12371.22.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.35 Safari/537.36', 0, '2023-11-08 22:19:16', 'INICIO'),
(2297, '35.88.188.244', 'Mozilla/5.0 (PLAYSTATION 3; 2.00)', 0, '2023-11-08 22:19:19', 'INICIO'),
(2298, '35.88.188.244', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.2)', 0, '2023-11-08 22:19:19', 'INICIO'),
(2299, '35.88.188.244', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.5) Gecko/20091107 Firefox/3.5.5', 0, '2023-11-08 22:19:19', 'INICIO'),
(2300, '35.88.188.244', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaX7-00/021.004; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.1.21 Mobile Safari/533.4 3gpp-gba', 0, '2023-11-08 22:19:19', 'INICIO'),
(2301, '35.88.188.244', 'Mozilla/5.0 (iPad; CPU OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G36 Safari/601.1', 0, '2023-11-08 22:19:19', 'INICIO'),
(2302, '35.88.188.244', 'SonyEricssonT610/R201 Profile/MIDP-1.0 Configuration/CLDC-1.0', 0, '2023-11-08 22:19:19', 'INICIO'),
(2303, '35.88.188.244', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 0, '2023-11-08 22:19:19', 'INICIO'),
(2304, '35.88.188.244', 'Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Firefox/38.0 Iceweasel/38.2.1', 0, '2023-11-08 22:19:19', 'INICIO'),
(2305, '35.88.188.244', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', 0, '2023-11-08 22:19:19', 'INICIO'),
(2306, '35.88.188.244', 'Mozilla/5.0 (Linux; Android 5.0.1; SCH-R970 Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.84 Mobile Safari/537.36', 0, '2023-11-08 22:19:19', 'INICIO'),
(2307, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 0, '2023-11-08 22:19:19', 'INICIO'),
(2308, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 0, '2023-11-08 22:19:19', 'INICIO'),
(2309, '35.88.188.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 0, '2023-11-08 22:19:20', 'INICIO'),
(2310, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.2 Safari/605.1.15', 0, '2023-11-08 22:19:20', 'INICIO'),
(2311, '35.88.188.244', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.35 Safari/537.36', 0, '2023-11-08 22:19:21', 'INICIO'),
(2312, '47.89.193.239', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:45', 'INICIO'),
(2313, '47.88.101.3', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:45', 'INICIO'),
(2314, '47.88.101.3', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:46', 'INICIO'),
(2315, '47.251.15.21', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:47', 'INICIO'),
(2316, '47.88.86.63', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:48', 'INICIO'),
(2317, '47.251.13.32', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:26:49', 'INICIO'),
(2318, '47.89.193.162', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:40:14', 'INICIO'),
(2319, '47.254.25.10', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:40:14', 'INICIO'),
(2320, '47.88.94.28', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:40:16', 'INICIO'),
(2321, '47.251.13.32', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:40:16', 'INICIO'),
(2322, '47.89.193.239', 'Mozilla/5.0 (Linux; Android 11; M2004J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', 0, '2023-11-08 22:40:18', 'INICIO'),
(2323, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:37', 'INICIO'),
(2324, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2325, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2326, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'CATALOGO'),
(2327, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2328, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2329, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2330, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2331, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2332, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2333, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:38', 'INICIO'),
(2334, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:39', 'INICIO'),
(2335, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:39', 'INICIO'),
(2336, '154.28.229.94', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', 0, '2023-11-08 22:56:39', 'INICIO'),
(2337, '91.213.50.8', 'Mozilla/5.0 (Linux; U; Android 2.2; en-us; Sprint APA9292KT Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1', 0, '2023-11-08 23:15:24', 'INICIO'),
(2338, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:26', 'INICIO'),
(2339, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2340, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2341, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2342, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'CATALOGO'),
(2343, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2344, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2345, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2346, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2347, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2348, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2349, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2350, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2351, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2352, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2353, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2354, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2355, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2356, '154.28.229.87', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.6 (KHTML, like Gecko) Chrome/16.0.897.0 Safari/535.6', 0, '2023-11-08 23:15:27', 'INICIO'),
(2357, '119.13.202.84', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 23:20:40', 'INICIO'),
(2358, '150.129.95.40', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 23:20:40', 'INICIO'),
(2359, '168.151.119.18', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 23:20:41', 'INICIO'),
(2360, '180.149.9.132', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2023-11-08 23:20:42', 'INICIO'),
(2361, '18.141.195.17', 'python-requests/2.25.1', 0, '2023-11-09 00:53:06', 'INICIO'),
(2362, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 0, '2023-11-09 06:56:19', 'INICIO'),
(2363, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 11; AC2001) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.101 Mobile Safari/537.36', 0, '2023-11-09 06:56:20', 'INICIO'),
(2364, '15.236.226.46', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8', 0, '2023-11-09 06:56:35', 'INICIO'),
(2365, '15.236.226.46', 'Mozilla/5.0 (X11; CrOS x86_64 14526.89.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2366, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2367, '15.236.226.46', 'MOT-V177/0.1.75 UP.Browser/6.2.3.9.c.12 (GUI) MMP/2.0 UP.Link/6.3.1.13.0', 0, '2023-11-09 06:56:35', 'INICIO'),
(2368, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 11; 100011886A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2369, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 11; SM-M317F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2370, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', 0, '2023-11-09 06:56:35', 'INICIO'),
(2371, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_6_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60', 0, '2023-11-09 06:56:35', 'INICIO'),
(2372, '15.236.226.46', 'Opera/7.50 (Windows ME; U) [en]', 0, '2023-11-09 06:56:35', 'INICIO'),
(2373, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Safari/605.1.15', 0, '2023-11-09 06:56:35', 'INICIO'),
(2374, '15.236.226.46', 'Mozilla/5.0 (Maemo; Linux armv7l; rv:10.0.1) Gecko/20100101 Firefox/10.0.1 Fennec/10.0.1', 0, '2023-11-09 06:56:35', 'INICIO'),
(2375, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0', 0, '2023-11-09 06:56:35', 'INICIO'),
(2376, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2377, '15.236.226.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 0, '2023-11-09 06:56:35', 'INICIO'),
(2378, '15.236.226.46', 'POLARIS/6.01(BREW 3.1.5;U;en-us;LG;LX265;POLARIS/6.01/WAP;)MMP/2.0 profile/MIDP-201 Configuration /CLDC-1.1', 0, '2023-11-09 06:56:41', 'INICIO'),
(2379, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36 Edg/101.0.1210.39', 0, '2023-11-09 06:56:41', 'INICIO'),
(2380, '15.236.226.46', 'Mozilla/5.0 (SymbianOS 9.4; Series60/5.0 NokiaN97-1/10.0.012; Profile/MIDP-2.1 Configuration/CLDC-1.1; en-us) AppleWebKit/525 (KHTML, like Gecko) WicKed/7.1.12344', 0, '2023-11-09 06:56:41', 'INICIO'),
(2381, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1', 0, '2023-11-09 06:56:41', 'INICIO'),
(2382, '15.236.226.46', 'WebZIP/3.5 (http://www.spidersoft.com)', 0, '2023-11-09 06:56:41', 'INICIO'),
(2383, '15.236.226.46', 'Mozilla/5.0 (Linux; U; Android 2.0.1; de-de; Milestone Build/SHOLS_U2_01.14.0) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17', 0, '2023-11-09 06:56:41', 'INICIO'),
(2384, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 10; SM-M315F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.50 Mobile Safari/537.36', 0, '2023-11-09 06:56:41', 'INICIO'),
(2385, '15.236.226.46', 'Mozilla/5.0 (Linux; U; Android 2.2; en-us; Sprint APA9292KT Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1', 0, '2023-11-09 06:56:41', 'INICIO'),
(2386, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0', 0, '2023-11-09 06:56:41', 'INICIO'),
(2387, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.31 (KHTML like Gecko) Chrome/26.0.1410.63 Safari/537.31', 0, '2023-11-09 06:56:41', 'INICIO'),
(2388, '15.236.226.46', 'Mozilla/5.0 (Linux; U; Android 2.1-update1; de-de; HTC Desire 1.19.161.5 Build/ERE27) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17', 0, '2023-11-09 06:56:41', 'INICIO'),
(2389, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36', 0, '2023-11-09 06:56:41', 'INICIO'),
(2390, '15.236.226.46', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)', 0, '2023-11-09 06:56:41', 'INICIO'),
(2391, '15.236.226.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.40 Safari/537.36', 0, '2023-11-09 06:56:41', 'INICIO'),
(2392, '15.236.226.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/101.0.4951.44 Mobile/15E148 Safari/604.1', 0, '2023-11-09 06:56:58', 'INICIO'),
(2393, '15.236.226.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS/448 ZaloTheme/light ZaloLanguage/en', 0, '2023-11-09 06:56:58', 'INICIO'),
(2394, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 8.0.0; HWI-AL00) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', 0, '2023-11-09 06:56:58', 'INICIO'),
(2395, '15.236.226.46', 'CSSCheck/1.2.2', 0, '2023-11-09 06:56:58', 'INICIO'),
(2396, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 11; RMX1851) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 0, '2023-11-09 06:56:58', 'INICIO'),
(2397, '15.236.226.46', 'Mozilla/5.0 (iPod touch; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML like Gecko) Version/7.0 Mobile/11D167 Safari/123E71C', 0, '2023-11-09 06:56:58', 'INICIO'),
(2398, '15.236.226.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', 0, '2023-11-09 06:56:58', 'INICIO'),
(2399, '15.236.226.46', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240', 0, '2023-11-09 06:56:58', 'INICIO'),
(2400, '15.236.226.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Mobile/15E148 Safari/604.1', 0, '2023-11-09 06:56:58', 'INICIO'),
(2401, '15.236.226.46', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.2; Trident/5.0)', 0, '2023-11-09 06:56:58', 'INICIO'),
(2402, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3', 0, '2023-11-09 06:56:58', 'INICIO'),
(2403, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_6_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.60', 0, '2023-11-09 06:56:58', 'INICIO'),
(2404, '15.236.226.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Zalo iOS/448 ZaloTheme/light ZaloLanguage/en', 0, '2023-11-09 06:56:58', 'INICIO'),
(2405, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 0, '2023-11-09 06:56:58', 'INICIO'),
(2406, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.6.1000 Chrome/30.0.1599.101 Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2407, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.88 Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2408, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.166 Safari/537.36 OPR/20.0.1396.73172', 0, '2023-11-09 06:57:04', 'INICIO'),
(2409, '15.236.226.46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.141 YaBrowser/22.3.3.852 Yowser/2.5 Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2410, '15.236.226.46', 'Lynx/2.8.7dev.4 libwww-FM/2.14 SSL-MM/1.4.1 OpenSSL/0.9.8d', 0, '2023-11-09 06:57:04', 'INICIO'),
(2411, '15.236.226.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e Safari/602.1', 0, '2023-11-09 06:57:04', 'INICIO'),
(2412, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 11; RMX2161) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2413, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.141 YaBrowser/22.3.3.866 Yowser/2.5 Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2414, '15.236.226.46', 'Mozilla/5.0 (Linux; Android 7.0; Nexus 9 Build/NRD90R) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.124 Safari/537.36', 0, '2023-11-09 06:57:04', 'INICIO'),
(2415, '15.236.226.46', 'Mozilla/5.0 (X11; Linux x86_64; rv:19.0) Gecko/20100101 Firefox/19.0 Iceweasel/19.0.2', 0, '2023-11-09 06:57:04', 'INICIO'),
(2416, '15.236.226.46', 'Opera/9.60 (J2ME/MIDP; Opera Mini/4.1.11320/608; U; en) Presto/2.2.0', 0, '2023-11-09 06:57:04', 'INICIO'),
(2417, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:35.0) Gecko/20100101 Firefox/35.0', 0, '2023-11-09 06:57:04', 'INICIO'),
(2418, '15.236.226.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.59', 0, '2023-11-09 06:57:04', 'INICIO'),
(2419, '15.236.226.46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.54 Safari/535.2', 0, '2023-11-09 06:57:04', 'INICIO'),
(2420, '47.242.224.70', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:28.0) Gecko/20100101 Firefox/31.0', 0, '2023-11-09 06:57:53', 'INICIO'),
(2421, '47.242.224.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36', 0, '2023-11-09 06:57:54', 'INICIO'),
(2422, '157.245.74.223', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 0, '2023-11-09 07:30:14', 'INICIO');
INSERT INTO `registros_visitas` (`id`, `ip`, `user_agent`, `id_producto`, `fecha_hora`, `pagina`) VALUES
(2423, '157.245.74.223', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 0, '2023-11-09 07:30:14', 'INICIO'),
(2424, '147.182.236.227', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 0, '2023-11-09 08:38:06', 'INICIO'),
(2425, '147.182.236.227', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 0, '2023-11-09 08:38:07', 'INICIO'),
(2434, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 0, '2023-12-04 10:31:42', 'INICIO'),
(2435, '51.15.66.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 0, '2024-05-17 21:16:59', 'INICIO'),
(2436, '51.15.66.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 0, '2024-05-17 21:16:59', 'INICIO'),
(2437, '34.28.216.33', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36', 0, '2024-05-17 21:17:30', 'INICIO'),
(2438, '34.28.216.33', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1667.0 Safari/537.36', 0, '2024-05-17 21:17:30', 'INICIO'),
(2439, '198.240.89.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2024-05-17 21:21:15', 'INICIO'),
(2440, '198.240.89.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2024-05-17 21:21:15', 'INICIO'),
(2441, '161.129.163.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2024-05-17 21:21:15', 'INICIO'),
(2442, '161.129.163.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', 0, '2024-05-17 21:21:15', 'INICIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retencion`
--

CREATE TABLE `retencion` (
  `id_retencion` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double DEFAULT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) DEFAULT NULL,
  `fechaEmision` datetime DEFAULT NULL,
  `periodoFiscal` varchar(200) DEFAULT NULL,
  `subtotal0` decimal(10,4) DEFAULT NULL,
  `subtotal12` decimal(10,4) DEFAULT NULL,
  `valorTotal` decimal(10,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `retencion`
--

INSERT INTO `retencion` (`id_retencion`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `monto_factura`, `estado_factura`, `id_users_factura`, `dinero_resibido_fac`, `id_sucursal`, `id_comp_factura`, `num_trans_factura`, `fechaEmision`, `periodoFiscal`, `subtotal0`, `subtotal12`, `valorTotal`) VALUES
(1, 'A2018000521', '2023-07-26 10:58:59', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-26 00:00:00', '05/2022', NULL, NULL, NULL),
(2, 'A2018000521', '2023-07-26 10:59:30', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-26 00:00:00', '05/2022', NULL, NULL, NULL),
(3, 'A2018000521', '2023-07-26 10:59:43', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-26 00:00:00', '05/2022', NULL, NULL, NULL),
(4, 'A2018000523', '2023-07-31 16:49:56', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '05/2022', NULL, NULL, NULL),
(5, 'A2018000523', '2023-07-31 16:51:36', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '05/2022', NULL, NULL, NULL),
(6, 'A2018000523', '2023-07-31 16:54:47', 882, 3, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '05/2022', NULL, NULL, NULL),
(7, 'A2018000523', '2023-07-31 17:00:05', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '25/2022', NULL, NULL, NULL),
(8, 'A2018000523', '2023-07-31 17:11:17', 882, 3, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '05/2022', NULL, NULL, NULL),
(9, 'A2018000523', '2023-07-31 17:13:51', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '25/2022', NULL, NULL, NULL),
(10, 'A2018000523', '2023-07-31 17:31:30', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-07-31 00:00:00', '05/2022', NULL, NULL, NULL),
(11, 'A2018000528', '2023-08-03 16:41:16', 867, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-08-03 00:00:00', '05/2022', NULL, NULL, NULL),
(12, 'A2018000528', '2023-08-03 16:46:56', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-08-03 00:00:00', '05/2022', NULL, NULL, NULL),
(13, 'A2018000567', '2023-08-19 12:17:06', 882, 1, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-08-19 00:00:00', '05/2022', NULL, NULL, NULL),
(14, 'A2018000567', '2023-08-19 12:21:30', 867, 3, '1', 0, 1, 1, NULL, 1, 1, NULL, '2023-08-19 00:00:00', '05/2022', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retencion20`
--

CREATE TABLE `retencion20` (
  `id_factura` int NOT NULL,
  `numero_factura` varchar(20) DEFAULT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int NOT NULL,
  `id_comp_factura` int NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL,
  `fechaEmision` datetime DEFAULT NULL,
  `periodofiscal` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `retencion20`
--

INSERT INTO `retencion20` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `monto_factura`, `estado_factura`, `id_users_factura`, `dinero_resibido_fac`, `id_sucursal`, `id_comp_factura`, `num_trans_factura`, `fechaEmision`, `periodofiscal`) VALUES
(1, '000000001', '2023-08-22 12:00:38', 867, 1, '1', 0, 1, 1, 30, 1, 1, 'T000473', '2023-08-22 12:00:38', '05/2022'),
(2, '000000002', '2023-08-22 12:01:51', 882, 1, '1', 0, 1, 1, 30, 1, 1, 'T000473', '2023-08-22 12:01:51', '05/2022'),
(3, '000000003', '2023-08-22 12:45:00', 867, 1, '1', 0, 1, 1, 30, 1, 1, 'T000473', '2023-08-22 12:45:00', '05/2022'),
(4, '000000004', '2023-08-22 13:12:03', 882, 1, '1', 0, 1, 1, 30, 1, 1, 'T000473', '2023-08-22 13:12:03', '05/2022'),
(5, '000000004', '2023-08-22 13:13:03', 867, 1, '1', 0, 1, 1, 30, 1, 1, 'T000473', '2023-08-22 13:13:03', '05/2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_stock` int NOT NULL,
  `id_producto_stock` int NOT NULL,
  `id_sucursal_stock` int NOT NULL,
  `cantidad_stock` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursal` int NOT NULL,
  `codigo_sucursal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(255) NOT NULL,
  `direccion_sucursal` text NOT NULL,
  `limite_sucursal` double NOT NULL,
  `estado_sucursal` tinyint NOT NULL,
  `fecha_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursal`, `codigo_sucursal`, `nombre_sucursal`, `direccion_sucursal`, `limite_sucursal`, `estado_sucursal`, `fecha_added`) VALUES
(1, 'SC001', 'MATRIZ', 'AV RUMICHACA Y AV SOLANDA', 20, 1, '2018-01-05 11:09:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id_testimonio` bigint UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonio` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `date_added` datetime NOT NULL,
  `id_producto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_compra`
--

CREATE TABLE `tmp_compra` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `costo_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_compra`
--

INSERT INTO `tmp_compra` (`id_tmp`, `id_producto`, `cantidad_tmp`, `costo_tmp`, `session_id`) VALUES
(20, 11, 2, 8.00, 'ee7a341d7405acfed5aedab63207a6bc'),
(372, 252, 3, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(371, 238, 3, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(370, 234, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(369, 33, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(368, 31, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(367, 28, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(366, 291, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(365, 272, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(364, 277, 7, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(363, 294, 7, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(362, 248, 18, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(361, 280, 3, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(360, 243, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(359, 233, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(358, 297, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(357, 260, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(356, 286, 18, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(355, 267, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(354, 249, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(353, 315, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(352, 302, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(351, 285, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(350, 215, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(349, 314, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(348, 301, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(347, 284, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(346, 16, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(345, 116, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(344, 312, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(343, 299, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(342, 105, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(341, 282, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(340, 71, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(339, 262, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(338, 117, 9, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(337, 313, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(336, 214, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(335, 106, 4, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(334, 300, 4, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(333, 283, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(332, 14, 8, 8.00, '08e0ca8dd00c5919dca9810424f9d829'),
(331, 113, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(330, 296, 24, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(329, 279, 18, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(328, 70, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(327, 55, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(326, 45, 6, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(325, 211, 8, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(324, 258, 12, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(323, 231, 4, 10.00, '08e0ca8dd00c5919dca9810424f9d829'),
(322, 11, 12, 8.00, '08e0ca8dd00c5919dca9810424f9d829'),
(306, 242, 1, 10.00, '0a1d8cdcce69838e202192dc5e101b09'),
(305, 231, 1, 10.00, '0a1d8cdcce69838e202192dc5e101b09'),
(271, 452, 2, 10.00, 'b0eb2b4bac9922a4c407c8913ee66430'),
(270, 397, 4, 10.00, 'b0eb2b4bac9922a4c407c8913ee66430'),
(268, 0, 3, 0.00, 'b0eb2b4bac9922a4c407c8913ee66430'),
(259, 0, 2, 0.00, '63ad31c7bc8ced602bcd3fc60c6243a8'),
(258, 27, 1, 10.00, '63ad31c7bc8ced602bcd3fc60c6243a8'),
(211, 290, 1, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(210, 282, 4, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(209, 279, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(208, 317, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(207, 209, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(206, 213, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(205, 231, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(204, 241, 4, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(203, 0, 5, 0.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(202, 258, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(201, 259, 7, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(200, 262, 7, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(199, 264, 3, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(198, 295, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(197, 296, 6, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(196, 299, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(195, 168, 3, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(194, 312, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(193, 308, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(192, 309, 5, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(191, 434, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(190, 514, 2, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(189, 380, 1, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(188, 459, 1, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(187, 447, 1, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(186, 448, 1, 10.00, '497ebe25fdf5f469823d85c2ab9fcf99'),
(781, 322, 1, 14.00, 'a49d8778e9e1dbadfedea6859ec7428a'),
(740, 515, 1, 3.49, '2c507cffa2837895bd33eb5332decb53'),
(739, 42, 1, 33.00, '2c507cffa2837895bd33eb5332decb53'),
(738, 206, 1, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(737, 241, 2, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(736, 263, 1, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(735, 17, 2, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(734, 278, 2, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(733, 116, 2, 4.04, '2c507cffa2837895bd33eb5332decb53'),
(732, 105, 2, 4.04, '2c507cffa2837895bd33eb5332decb53'),
(731, 285, 1, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(730, 284, 2, 10.00, '2c507cffa2837895bd33eb5332decb53'),
(729, 0, 2, 0.00, '2c507cffa2837895bd33eb5332decb53'),
(728, 31, 1, 4.04, '2c507cffa2837895bd33eb5332decb53'),
(727, 29, 1, 4.04, '2c507cffa2837895bd33eb5332decb53'),
(726, 126, 1, 5.46, '2c507cffa2837895bd33eb5332decb53'),
(596, 0, 3, 0.00, 'd25dd8f0dc25ef712eb68677d0d7da9b'),
(480, 0, 4, 0.00, 'e973f96576d2601d84e0dad23cb10b16'),
(462, 231, 1, 10.00, '70071a9f3f81c6818bba35b106716884'),
(461, 294, 2, 10.00, '70071a9f3f81c6818bba35b106716884'),
(1071, 180, 2, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1070, 177, 3, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1069, 175, 2, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1068, 174, 3, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1067, 157, 2, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1066, 154, 2, 35.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1065, 153, 50, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1064, 137, 4, 10.00, '24c08a04b6e706ceff4aa3b983f33e83'),
(1063, 110, 1, 10.00, '24c08a04b6e706ceff4aa3b983f33e83');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_cotizacion`
--

CREATE TABLE `tmp_cotizacion` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `drogshipin_tmp` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_cotizacion`
--

INSERT INTO `tmp_cotizacion` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `desc_tmp`, `session_id`, `drogshipin_tmp`) VALUES
(23, 9, 1, 15.000, 30, '543765537ec6e73e7d28fd61778cba4b', NULL),
(31, 11, 28, 10.570, 0, 'fe50bea321d271034e9a891cd54d757d', NULL),
(30, 10, 3, 20.000, 0, '3e5831fb90abcfa15eac2bbf1641e96b', NULL),
(51, 132, 1, 10.230, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(52, 376, 1, 46.860, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(53, 333, 5, 36.830, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(54, 427, 6, 40.180, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(55, 0, 1, 0.000, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(56, 0, 1, 0.000, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(57, 0, 1, 0.000, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(58, 0, 1, 0.000, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(59, 0, 1, 0.000, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(60, 356, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(61, 360, 2, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(62, 363, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(63, 364, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(64, 361, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(65, 365, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL),
(66, 362, 1, 12.050, 0, 'b0eb2b4bac9922a4c407c8913ee66430', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_guia`
--

CREATE TABLE `tmp_guia` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_liquidacioncompra`
--

CREATE TABLE `tmp_liquidacioncompra` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_notacredito`
--

CREATE TABLE `tmp_notacredito` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `tmp_notacredito`
--

INSERT INTO `tmp_notacredito` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `desc_tmp`, `session_id`) VALUES
(4639, 10, 1, 20.000, 0, 'jlvj5a2i6folo1u3cai5r7ar5t'),
(4667, 10, 1, 20.000, 0, '12ftp9rv9a8rtvtlh5391b79ro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_notadebito20`
--

CREATE TABLE `tmp_notadebito20` (
  `id_tmp` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_debito` int DEFAULT NULL,
  `cantidad_tmp` double DEFAULT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `descripcion_tmp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_retencion20`
--

CREATE TABLE `tmp_retencion20` (
  `id_tmp` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_retencion` int DEFAULT NULL,
  `cantidad_tmp` double DEFAULT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `descripcion_tmp` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tipoImpuesto` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `codRetencion` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `porcentaje` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `baseImponible` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `documento` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tipoDoc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_ventas`
--

CREATE TABLE `tmp_ventas` (
  `id_tmp` int NOT NULL,
  `id_producto` int NOT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double(8,3) DEFAULT NULL,
  `desc_tmp` int NOT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `drogshipin_tmp` int DEFAULT NULL,
  `iva_tmp` int DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_ventas`
--

INSERT INTO `tmp_ventas` (`id_tmp`, `id_producto`, `descripcion`, `cantidad_tmp`, `precio_tmp`, `desc_tmp`, `session_id`, `drogshipin_tmp`, `iva_tmp`) VALUES
(149, 9, NULL, 1, 15.000, 0, '3q2p4kf1a1aq30e45qlibv5spl', NULL, 0),
(153, 10, NULL, 1, 20.000, 52, '22c0b8b274312fdb062c755b4d9b380b', NULL, 0),
(154, 11, NULL, 1, 10.570, 0, 'b319a158e20e677fd8088d4cda8e7951', NULL, 0),
(836, 456, NULL, 1, 16.600, 0, '6e1c17f0f428dbf7a63b10afb9e72e94', NULL, 0),
(2440, 515, NULL, 1, 3.600, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2439, 290, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2438, 403, NULL, 3, 11.320, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2437, 220, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2436, 95, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2435, 316, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2434, 318, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2433, 274, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2431, 301, NULL, 3, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2432, 304, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2430, 221, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2429, 306, NULL, 3, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2428, 285, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2427, 242, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(1773, 285, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1772, 219, NULL, 2, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1771, 215, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1770, 289, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1769, 273, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1082, 228, NULL, 1, 10.570, 0, '3ae74b2c7016872e5e61fc709ba0a1dd', NULL, 0),
(1052, 11, NULL, 1, 17.360, 50, '11f1f592e537cca88345ee55245ceac9', NULL, 0),
(1050, 11, NULL, 1, 10.570, 50, 'ee7a341d7405acfed5aedab63207a6bc', NULL, 0),
(2426, 71, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2425, 55, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(1777, 85, NULL, 2, 10.570, 0, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1776, 279, NULL, 1, 10.570, 0, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1775, 393, NULL, 1, 45.000, 0, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1774, 126, NULL, 1, 16.800, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1761, 11, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1768, 315, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1767, 29, NULL, 1, 16.800, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1766, 71, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1765, 112, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1764, 69, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1763, 44, NULL, 1, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1585, 28, NULL, 3, 10.230, 5, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1584, 56, NULL, 2, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1583, 106, NULL, 2, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1582, 117, NULL, 2, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1579, 199, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1580, 314, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1581, 515, NULL, 1, 3.600, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1578, 142, NULL, 1, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1577, 16, NULL, 3, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1576, 116, NULL, 3, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1575, 88, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1574, 294, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1573, 277, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1572, 301, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1571, 216, NULL, 1, 17.360, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1586, 105, NULL, 1, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1569, 71, NULL, 3, 10.570, 0, 'd2164db5b7666c8a51e28729b64e7418', NULL, 0),
(1554, 468, NULL, 1, 23.310, 0, '2b720fa88fb1cfb9611135d471a8c22a', NULL, 0),
(1762, 24, NULL, 2, 17.360, 50, 'cc367b1bee397631c30905aa8b331f05', NULL, 0),
(1854, 380, NULL, 1, 26.790, 0, 'fa03de1698f6f0ad575c7f35df8b24fb', NULL, 0),
(1853, 143, NULL, 1, 32.040, 0, 'fa03de1698f6f0ad575c7f35df8b24fb', NULL, 0),
(2424, 259, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2423, 56, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2422, 302, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2421, 307, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2420, 265, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2419, 269, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2361, 70, NULL, 2, 10.570, 0, 'ea5073a4673e1cb9c158961a11e5bde2', NULL, 0),
(2360, 427, NULL, 1, 60.000, 40, 'ea5073a4673e1cb9c158961a11e5bde2', NULL, 0),
(2359, 12, NULL, 1, 10.570, 0, 'e88c758c6b10325de913c047b99e9e5b', NULL, 0),
(2358, 11, NULL, 1, 10.570, 0, 'e88c758c6b10325de913c047b99e9e5b', NULL, 0),
(2357, 10, NULL, 1, 20.000, 0, 'e88c758c6b10325de913c047b99e9e5b', NULL, 0),
(2356, 9, NULL, 1, 15.000, 0, 'e88c758c6b10325de913c047b99e9e5b', NULL, 0),
(2355, 9, NULL, 1, 15.000, 0, 'b2a5e1b08322835738ba2e59d426a15b', NULL, 0),
(2441, 267, NULL, 1, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2442, 219, NULL, 2, 10.570, 0, '63b52c64e51f83e1876b1d5a27a1bb51', NULL, 0),
(2969, 130, NULL, 1, 10.230, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2965, 280, NULL, 2, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2622, 309, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2621, 515, NULL, 1, 3.600, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2620, 296, NULL, 2, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2619, 69, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2618, 241, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2617, 231, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2610, 130, NULL, 1, 10.230, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2611, 126, NULL, 1, 10.230, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2612, 132, NULL, 1, 10.230, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2613, 259, NULL, 2, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2614, 258, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2615, 102, NULL, 2, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2616, 113, NULL, 1, 10.570, 0, '60e11d296bc34feb1ef4dbc4db61a8c4', NULL, 0),
(2974, 82, NULL, 1, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(4303, 515, NULL, 1, 3.600, 0, '9ab44fe09e313aff8d5507ae05458e99', NULL, 0),
(4302, 380, NULL, 1, 26.790, 0, '9ab44fe09e313aff8d5507ae05458e99', NULL, 0),
(4301, 448, NULL, 1, 14.630, 0, '9ab44fe09e313aff8d5507ae05458e99', NULL, 0),
(4271, 515, NULL, 1, 3.600, 0, '0186b92b760374f99553b2f8991f7866', NULL, 0),
(4270, 287, NULL, 1, 10.570, 0, '0186b92b760374f99553b2f8991f7866', NULL, 0),
(4269, 256, NULL, 1, 10.570, 0, '0186b92b760374f99553b2f8991f7866', NULL, 0),
(4129, 468, NULL, 1, 23.310, 0, 'f216294215578d81444ca0fb92e39b24', NULL, 0),
(4128, 470, NULL, 3, 15.270, 0, 'f216294215578d81444ca0fb92e39b24', NULL, 0),
(2973, 272, NULL, 1, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2972, 204, NULL, 2, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2971, 226, NULL, 1, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2970, 316, NULL, 1, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2968, 128, NULL, 1, 10.230, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2967, 126, NULL, 1, 10.230, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(2966, 12, NULL, 1, 10.570, 0, '7962661bc588717f89d43bb76d9a893a', NULL, 0),
(3684, 137, NULL, 1, 36.000, 0, '092a274ad8590504a188e8d047d9d1df', NULL, 0),
(3683, 427, NULL, 3, 60.000, 0, '092a274ad8590504a188e8d047d9d1df', NULL, 0),
(3558, 515, NULL, 1, 3.600, 0, '57292535d300c4b7ca94786b79bf07a4', NULL, 0),
(3557, 333, NULL, 3, 60.500, 0, '57292535d300c4b7ca94786b79bf07a4', NULL, 0),
(3556, 126, NULL, 1, 16.800, 50, '57292535d300c4b7ca94786b79bf07a4', NULL, 0),
(3555, 130, NULL, 2, 16.800, 50, '57292535d300c4b7ca94786b79bf07a4', NULL, 0),
(3308, 126, NULL, 6, 10.230, 0, 'fc83c3f97ebb374663ff699d7e247e9c', NULL, 0),
(3284, 126, NULL, 6, 10.230, 0, '22e9404f07ac18c72fce373f5c59dec7', NULL, 0),
(4127, 393, NULL, 1, 27.700, 0, 'f216294215578d81444ca0fb92e39b24', NULL, 0),
(4234, 457, NULL, 1, 33.420, 0, 'eab3a562be8945d4f097efd16a2479ba', NULL, 0),
(4267, 56, NULL, 1, 10.570, 0, '0186b92b760374f99553b2f8991f7866', NULL, 0),
(4268, 209, NULL, 1, 10.570, 0, '0186b92b760374f99553b2f8991f7866', NULL, 0),
(4645, 10, NULL, 3, 20.000, 0, 'ajjiehculdcc0ube0sabcs76f5', NULL, 0),
(4682, 10, NULL, 1, 20.000, 0, '6aa97ebfd742d86c1082d9ef3d02d22a', NULL, 0),
(4689, 524, NULL, 3, 100.000, 0, 'user_1496886091', NULL, 0),
(4690, 525, NULL, 1, 1.000, 0, 'user_1087610421', NULL, 0),
(4692, 525, NULL, 2, 1.000, 0, 'user_1986003700', NULL, 0),
(4693, 524, NULL, 1, 100.000, 0, 'user_1986003700', NULL, 0),
(4694, 525, NULL, 1, 1.000, 0, 'user_68871906', NULL, 0),
(4695, 525, NULL, 1, 1.000, 0, 'user_315605554', NULL, 0),
(4696, 525, NULL, 1, 1.000, 0, 'user_1875730092', NULL, 0),
(4697, 524, NULL, 1, 100.000, 0, 'user_102785090', NULL, 0),
(4699, 524, NULL, 1, 200.000, 0, '1f467aca4843fc24c430b54f684666bc', NULL, 0),
(4700, 525, NULL, 1, 1.000, 0, 'user_1651286517', NULL, 0),
(4701, 524, NULL, 1, 25.000, 0, 'user_10407520', NULL, 0),
(4702, 524, NULL, 1, 25.000, 0, 'user_2128254020', NULL, 0),
(4703, 524, NULL, 1, 25.000, 0, 'user_1886679602', NULL, 0),
(4704, 524, NULL, 1, 25.000, 0, 'user_940050477', NULL, 0),
(4706, 524, NULL, 1, 25.000, 0, 'user_901958040', NULL, 0),
(4707, 524, NULL, 1, 25.000, 0, 'user_2081181059', NULL, 0),
(4708, 524, NULL, 1, 25.000, 0, 'user_1953622110', NULL, 0),
(4709, 524, NULL, 1, 25.000, 0, 'user_1834645733', NULL, 0),
(4710, 526, NULL, 2, 2.000, 0, 'undefined', NULL, 0),
(4711, 526, NULL, 2, 2.000, 0, 'user_1640655618', NULL, 0),
(4714, 524, NULL, 1, 25.000, 0, 'user_259930387', NULL, 0),
(4715, 524, NULL, 1, 25.000, 0, 'user_1970922484', NULL, 0),
(4716, 524, NULL, 1, 25.000, 0, 'user_1999839135', NULL, 0),
(4717, 524, NULL, 1, 25.000, 0, 'user_473026191', NULL, 0),
(4720, 524, NULL, 1, 25.000, 0, '7d87761eae3c330e165014e54ce2adca', NULL, 0),
(4721, 525, NULL, 1, 11.110, 0, '6cfd2fd40d1bfa93a1c14919d6a60c06', NULL, 0),
(4722, 524, NULL, 1, 25.000, 0, '8413fd34bdaaac0f3378a1a47010e86a', NULL, 0),
(4723, 524, NULL, 1, 25.000, 0, 'user_1556712506', NULL, 0),
(4724, 524, NULL, 1, 25.000, 0, 'user_1867536813', NULL, 0),
(4725, 525, NULL, 1, 11.110, 0, '7a76d014dff05e7905e289e031c3f30e', NULL, 0),
(4726, 527, NULL, 1, 10.000, 0, 'user_2055098353', NULL, 0),
(4727, 527, NULL, 1, 10.000, 0, 'user_290579770', NULL, 0),
(4728, 527, NULL, 1, 10.000, 0, 'user_1603479151', NULL, 0),
(4744, 526, NULL, 1, 2.000, 0, 'user_71485790', NULL, 0),
(4743, 524, NULL, 1, 25.000, 0, 'user_1226559411', NULL, 0),
(4745, 525, NULL, 1, 1.000, 0, 'user_383823798', NULL, 0),
(4746, 526, NULL, 1, 2.000, 0, 'user_1213628928', NULL, 0),
(4747, 526, NULL, 1, 2.000, 0, 'user_282558043', NULL, 0),
(4748, 531, NULL, 1, 50.000, 0, 'user_1824872624', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores_envio`
--

CREATE TABLE `trabajadores_envio` (
  `id` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `contacto` varchar(13) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `empresa` int NOT NULL,
  `estado` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslados`
--

CREATE TABLE `traslados` (
  `id_traslado` int NOT NULL,
  `referencia_traslado` varchar(50) NOT NULL,
  `origen_traslado` int NOT NULL,
  `destino_traslado` int NOT NULL,
  `monto_traslado` int NOT NULL,
  `fecha_added` datetime NOT NULL,
  `id_users` int NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  `estado_traslado` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` bigint UNSIGNED NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `nombre_users` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `apellido_users` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `usuario_users` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `con_users` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email_users` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `tipo_users` tinyint DEFAULT NULL,
  `cargo_users` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sucursal_users` tinyint NOT NULL,
  `date_added` datetime NOT NULL,
  `comision_users` double DEFAULT NULL,
  `token_act` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `estado_token` int DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `cedula_facturacion` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `correo_facturacion` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `direccion_facturacion` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_users`, `nombre_users`, `apellido_users`, `usuario_users`, `con_users`, `email_users`, `tipo_users`, `cargo_users`, `sucursal_users`, `date_added`, `comision_users`, `token_act`, `estado_token`, `fecha_actualizacion`, `cedula_facturacion`, `correo_facturacion`, `direccion_facturacion`) VALUES
(1, 'ADMIN', 'ADMIN', 'admin', '$2a$12$IDyj/VdohPM7c.C9oHNbG.Wk/.iPO6QXdedJDME2FuQJfPBZnRY8y', 'root@admin.com', 0, '1', 1, '2016-05-21 15:06:00', 1, NULL, NULL, NULL, '', '', ''),
(1000, 'SOPORTE', 'SOPORTE', 'v.espinoza', '$2y$10$RYmgltYpSvcWM6Qf52RpUO/Usiv//PyyWacV1EbvmTVbGLgc7Z/Ou', 'v.espinoza@admin.com', 0, '1', 1, '2016-05-21 15:06:00', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_group`
--

CREATE TABLE `user_group` (
  `user_group_id` bigint UNSIGNED NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `permission` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`, `date_added`) VALUES
(1, 'Super Administrador', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;Pedidos,1,1,1;Integraciones,1,1,1;Dominios,1,1,1;Wallets,1,1,1;Datos,1,1,1;Referidos,1,1,1;', '2017-08-09 10:22:15'),
(2, 'CLIENTE', 'Inicio,0,0,0;Productos,0,0,0;Proveedores,0,0,0;Clientes,0,0,0;Reportes,0,0,0;Configuracion,0,0,0;Usuarios,0,0,0;Permisos,0,0,0;Categorias,0,0,0;Ventas,0,0,0;Compras,0,0,0;Pedidos,0,0,0;', '2021-10-12 07:59:42'),
(3, 'VENTAS', 'Inicio,1,0,0;Productos,1,0,0;Proveedores,0,0,0;Clientes,1,1,0;Reportes,0,0,0;Configuracion,0,0,0;Usuarios,0,0,0;Permisos,0,0,0;Categorias,0,0,0;Ventas,1,0,0;Compras,0,0,0;Pedidos,1,0,0;', '2022-06-08 22:58:28'),
(4, 'JORGE', 'Inicio,1,0,0;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,0;Reportes,1,1,0;Configuracion,0,0,0;Usuarios,1,0,0;Permisos,0,0,0;Categorias,1,1,1;Ventas,1,1,0;Compras,1,1,0;Pedidos,1,1,0;', '2022-07-18 18:01:29'),
(5, 'ERICK', 'Inicio,1,0,0;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,0;Reportes,1,1,0;Configuracion,0,0,0;Usuarios,1,0,0;Permisos,0,0,0;Categorias,1,1,1;Ventas,1,1,0;Compras,1,1,0;Pedidos,1,1,0;', '2023-04-04 17:39:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atributos`
--
ALTER TABLE `atributos`
  ADD UNIQUE KEY `id_atributo` (`id_atributo`);

--
-- Indices de la tabla `banner_adicional`
--
ALTER TABLE `banner_adicional`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `banner_marketplace`
--
ALTER TABLE `banner_marketplace`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabecera_cuenta_pagar`
--
ALTER TABLE `cabecera_cuenta_pagar`
  ADD PRIMARY KEY (`id_cabecera`);

--
-- Indices de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `caracteristicas_tienda`
--
ALTER TABLE `caracteristicas_tienda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `ciudad_cotizacion`
--
ALTER TABLE `ciudad_cotizacion`
  ADD PRIMARY KEY (`id_cotizacion`);

--
-- Indices de la tabla `ciudad_laar`
--
ALTER TABLE `ciudad_laar`
  ADD UNIQUE KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

--
-- Indices de la tabla `cobertura_gintracom`
--
ALTER TABLE `cobertura_gintracom`
  ADD PRIMARY KEY (`id_cobertura`);

--
-- Indices de la tabla `cobertura_laar`
--
ALTER TABLE `cobertura_laar`
  ADD PRIMARY KEY (`id_cobertura`);

--
-- Indices de la tabla `cobertura_servientrega`
--
ALTER TABLE `cobertura_servientrega`
  ADD PRIMARY KEY (`id_cobertura`);

--
-- Indices de la tabla `comisiones`
--
ALTER TABLE `comisiones`
  ADD PRIMARY KEY (`id_comision`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id_comp`);

--
-- Indices de la tabla `comprobantes_sri`
--
ALTER TABLE `comprobantes_sri`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id_credito`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `creditos_abonos`
--
ALTER TABLE `creditos_abonos`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indices de la tabla `creditos_abonos_prov`
--
ALTER TABLE `creditos_abonos_prov`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indices de la tabla `credito_proveedor`
--
ALTER TABLE `credito_proveedor`
  ADD PRIMARY KEY (`id_credito`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_fact_compra`
--
ALTER TABLE `detalle_fact_compra`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Indices de la tabla `detalle_fact_cot`
--
ALTER TABLE `detalle_fact_cot`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `numero_factura` (`numero_factura`);

--
-- Indices de la tabla `detalle_fact_ventas`
--
ALTER TABLE `detalle_fact_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `numero_factura` (`numero_factura`);

--
-- Indices de la tabla `detalle_traslado`
--
ALTER TABLE `detalle_traslado`
  ADD PRIMARY KEY (`id_detalle_traslado`),
  ADD KEY `id_traslado` (`id_traslado`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `dropi`
--
ALTER TABLE `dropi`
  ADD PRIMARY KEY (`id_dropi`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id_egreso`),
  ADD KEY `users` (`users`);

--
-- Indices de la tabla `empresa_envio`
--
ALTER TABLE `empresa_envio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `estado_courier`
--
ALTER TABLE `estado_courier`
  ADD UNIQUE KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `estado_guia_sistema`
--
ALTER TABLE `estado_guia_sistema`
  ADD UNIQUE KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `facturas_compras`
--
ALTER TABLE `facturas_compras`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_users_factura` (`id_users_factura`);

--
-- Indices de la tabla `facturas_cot`
--
ALTER TABLE `facturas_cot`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `facturas_ventas`
--
ALTER TABLE `facturas_ventas`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `gracias`
--
ALTER TABLE `gracias`
  ADD UNIQUE KEY `id_gacias` (`id_gacias`);

--
-- Indices de la tabla `guia`
--
ALTER TABLE `guia`
  ADD PRIMARY KEY (`id_factura`) USING BTREE;

--
-- Indices de la tabla `guiahasproducto`
--
ALTER TABLE `guiahasproducto`
  ADD PRIMARY KEY (`id_detalle`) USING BTREE,
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`) USING BTREE,
  ADD KEY `numero_factura` (`numero_factura`) USING BTREE,
  ADD KEY `id_factura` (`id_notacredito`) USING BTREE;

--
-- Indices de la tabla `guia_laar`
--
ALTER TABLE `guia_laar`
  ADD UNIQUE KEY `id_guia` (`id_guia`);

--
-- Indices de la tabla `historial_productos`
--
ALTER TABLE `historial_productos`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `horizontal`
--
ALTER TABLE `horizontal`
  ADD UNIQUE KEY `id_horizontal` (`id_horizontal`);

--
-- Indices de la tabla `impuestocomprobanteretencion`
--
ALTER TABLE `impuestocomprobanteretencion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `impuestocomprobanteretencion20`
--
ALTER TABLE `impuestocomprobanteretencion20`
  ADD PRIMARY KEY (`id_detalle`) USING BTREE,
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`) USING BTREE,
  ADD KEY `numero_factura` (`numero_factura`) USING BTREE,
  ADD KEY `id_factura` (`id_retencion`) USING BTREE;

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`id_imp`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `id_consulta` (`id_consulta`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `users` (`users`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`id_kardex`);

--
-- Indices de la tabla `landing`
--
ALTER TABLE `landing`
  ADD UNIQUE KEY `id_landing` (`id_landing`);

--
-- Indices de la tabla `landing_producto`
--
ALTER TABLE `landing_producto`
  ADD UNIQUE KEY `id_landing` (`id_landing`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indices de la tabla `liquidacioncompra`
--
ALTER TABLE `liquidacioncompra`
  ADD PRIMARY KEY (`id_factura`) USING BTREE;

--
-- Indices de la tabla `liquidacioncomprahasproducto`
--
ALTER TABLE `liquidacioncomprahasproducto`
  ADD PRIMARY KEY (`id_detalle`) USING BTREE,
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`) USING BTREE,
  ADD KEY `numero_factura` (`numero_factura`) USING BTREE,
  ADD KEY `id_factura` (`id_liquidacion`) USING BTREE;

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `motivodebito`
--
ALTER TABLE `motivodebito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motivodebito20`
--
ALTER TABLE `motivodebito20`
  ADD PRIMARY KEY (`id_detalle`) USING BTREE,
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`) USING BTREE,
  ADD KEY `numero_factura` (`numero_factura`) USING BTREE,
  ADD KEY `id_factura` (`id_notadebito`) USING BTREE;

--
-- Indices de la tabla `motorizado_guia`
--
ALTER TABLE `motorizado_guia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  ADD PRIMARY KEY (`id_factura`) USING BTREE;

--
-- Indices de la tabla `notacreditohasproducto`
--
ALTER TABLE `notacreditohasproducto`
  ADD PRIMARY KEY (`id_detalle`) USING BTREE,
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`) USING BTREE,
  ADD KEY `numero_factura` (`numero_factura`) USING BTREE,
  ADD KEY `id_factura` (`id_notacredito`) USING BTREE;

--
-- Indices de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  ADD PRIMARY KEY (`id_debito`) USING BTREE;

--
-- Indices de la tabla `notadebito20`
--
ALTER TABLE `notadebito20`
  ADD PRIMARY KEY (`id_factura`) USING BTREE;

--
-- Indices de la tabla `origen_laar`
--
ALTER TABLE `origen_laar`
  ADD UNIQUE KEY `id_origen` (`id_origen`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `pixel`
--
ALTER TABLE `pixel`
  ADD UNIQUE KEY `id_pixel` (`id_pixel`);

--
-- Indices de la tabla `politicas`
--
ALTER TABLE `politicas`
  ADD UNIQUE KEY `id_politica` (`id_politica`);

--
-- Indices de la tabla `politicas_empresa`
--
ALTER TABLE `politicas_empresa`
  ADD UNIQUE KEY `id_politica` (`id_politica`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_cat_producto` (`id_linea_producto`),
  ADD KEY `id_med_producto` (`id_med_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `provincia_laar`
--
ALTER TABLE `provincia_laar`
  ADD UNIQUE KEY `id_prov` (`id_prov`),
  ADD UNIQUE KEY `id_prov_2` (`id_prov`),
  ADD UNIQUE KEY `id_prov_3` (`id_prov`),
  ADD UNIQUE KEY `id_prov_4` (`id_prov`),
  ADD UNIQUE KEY `id_prov_5` (`id_prov`),
  ADD UNIQUE KEY `id_prov_6` (`id_prov`);

--
-- Indices de la tabla `registros_visitas`
--
ALTER TABLE `registros_visitas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `retencion`
--
ALTER TABLE `retencion`
  ADD PRIMARY KEY (`id_retencion`) USING BTREE;

--
-- Indices de la tabla `retencion20`
--
ALTER TABLE `retencion20`
  ADD PRIMARY KEY (`id_factura`) USING BTREE;

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_producto_stock` (`id_producto_stock`),
  ADD KEY `id_sucursal_stock` (`id_sucursal_stock`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD UNIQUE KEY `id_testimonio` (`id_testimonio`);

--
-- Indices de la tabla `tmp_compra`
--
ALTER TABLE `tmp_compra`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `tmp_guia`
--
ALTER TABLE `tmp_guia`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indices de la tabla `tmp_liquidacioncompra`
--
ALTER TABLE `tmp_liquidacioncompra`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indices de la tabla `tmp_notacredito`
--
ALTER TABLE `tmp_notacredito`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indices de la tabla `tmp_notadebito20`
--
ALTER TABLE `tmp_notadebito20`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indices de la tabla `tmp_retencion20`
--
ALTER TABLE `tmp_retencion20`
  ADD PRIMARY KEY (`id_tmp`) USING BTREE;

--
-- Indices de la tabla `tmp_ventas`
--
ALTER TABLE `tmp_ventas`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `trabajadores_envio`
--
ALTER TABLE `trabajadores_envio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa` (`empresa`);

--
-- Indices de la tabla `traslados`
--
ALTER TABLE `traslados`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `user_name` (`usuario_users`),
  ADD UNIQUE KEY `user_email` (`email_users`),
  ADD UNIQUE KEY `id_users` (`id_users`);

--
-- Indices de la tabla `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`),
  ADD UNIQUE KEY `user_group_id_2` (`user_group_id`),
  ADD KEY `user_group_id` (`user_group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atributos`
--
ALTER TABLE `atributos`
  MODIFY `id_atributo` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `banner_adicional`
--
ALTER TABLE `banner_adicional`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banner_marketplace`
--
ALTER TABLE `banner_marketplace`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  MODIFY `id_caja` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caracteristicas_tienda`
--
ALTER TABLE `caracteristicas_tienda`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad_cotizacion`
--
ALTER TABLE `ciudad_cotizacion`
  MODIFY `id_cotizacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=809;

--
-- AUTO_INCREMENT de la tabla `ciudad_laar`
--
ALTER TABLE `ciudad_laar`
  MODIFY `id_ciudad` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4525;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2932;

--
-- AUTO_INCREMENT de la tabla `cobertura_gintracom`
--
ALTER TABLE `cobertura_gintracom`
  MODIFY `id_cobertura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cobertura_servientrega`
--
ALTER TABLE `cobertura_servientrega`
  MODIFY `id_cobertura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comisiones`
--
ALTER TABLE `comisiones`
  MODIFY `id_comision` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id_comp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comprobantes_sri`
--
ALTER TABLE `comprobantes_sri`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id_credito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT de la tabla `creditos_abonos`
--
ALTER TABLE `creditos_abonos`
  MODIFY `id_abono` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=964;

--
-- AUTO_INCREMENT de la tabla `creditos_abonos_prov`
--
ALTER TABLE `creditos_abonos_prov`
  MODIFY `id_abono` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `credito_proveedor`
--
ALTER TABLE `credito_proveedor`
  MODIFY `id_credito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_compra`
--
ALTER TABLE `detalle_fact_compra`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_cot`
--
ALTER TABLE `detalle_fact_cot`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_ventas`
--
ALTER TABLE `detalle_fact_ventas`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5110;

--
-- AUTO_INCREMENT de la tabla `detalle_traslado`
--
ALTER TABLE `detalle_traslado`
  MODIFY `id_detalle_traslado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dropi`
--
ALTER TABLE `dropi`
  MODIFY `id_dropi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id_egreso` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa_envio`
--
ALTER TABLE `empresa_envio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado_courier`
--
ALTER TABLE `estado_courier`
  MODIFY `id_estado` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `estado_guia_sistema`
--
ALTER TABLE `estado_guia_sistema`
  MODIFY `id_estado` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `facturas_compras`
--
ALTER TABLE `facturas_compras`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `facturas_cot`
--
ALTER TABLE `facturas_cot`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `facturas_ventas`
--
ALTER TABLE `facturas_ventas`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT de la tabla `gracias`
--
ALTER TABLE `gracias`
  MODIFY `id_gacias` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `guia`
--
ALTER TABLE `guia`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `guiahasproducto`
--
ALTER TABLE `guiahasproducto`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `guia_laar`
--
ALTER TABLE `guia_laar`
  MODIFY `id_guia` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_productos`
--
ALTER TABLE `historial_productos`
  MODIFY `id_historial` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT de la tabla `horizontal`
--
ALTER TABLE `horizontal`
  MODIFY `id_horizontal` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `impuestocomprobanteretencion`
--
ALTER TABLE `impuestocomprobanteretencion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `impuestocomprobanteretencion20`
--
ALTER TABLE `impuestocomprobanteretencion20`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `id_imp` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `id_kardex` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7249;

--
-- AUTO_INCREMENT de la tabla `landing`
--
ALTER TABLE `landing`
  MODIFY `id_landing` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `landing_producto`
--
ALTER TABLE `landing_producto`
  MODIFY `id_landing` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `id_linea` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `liquidacioncompra`
--
ALTER TABLE `liquidacioncompra`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `liquidacioncomprahasproducto`
--
ALTER TABLE `liquidacioncomprahasproducto`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id_modulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `motivodebito`
--
ALTER TABLE `motivodebito`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `motivodebito20`
--
ALTER TABLE `motivodebito20`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `motorizado_guia`
--
ALTER TABLE `motorizado_guia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notacredito`
--
ALTER TABLE `notacredito`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;

--
-- AUTO_INCREMENT de la tabla `notacreditohasproducto`
--
ALTER TABLE `notacreditohasproducto`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5113;

--
-- AUTO_INCREMENT de la tabla `notadebito`
--
ALTER TABLE `notadebito`
  MODIFY `id_debito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `notadebito20`
--
ALTER TABLE `notadebito20`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `origen_laar`
--
ALTER TABLE `origen_laar`
  MODIFY `id_origen` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pixel`
--
ALTER TABLE `pixel`
  MODIFY `id_pixel` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `politicas`
--
ALTER TABLE `politicas`
  MODIFY `id_politica` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `politicas_empresa`
--
ALTER TABLE `politicas_empresa`
  MODIFY `id_politica` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `provincia_laar`
--
ALTER TABLE `provincia_laar`
  MODIFY `id_prov` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT de la tabla `registros_visitas`
--
ALTER TABLE `registros_visitas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2443;

--
-- AUTO_INCREMENT de la tabla `retencion`
--
ALTER TABLE `retencion`
  MODIFY `id_retencion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `retencion20`
--
ALTER TABLE `retencion20`
  MODIFY `id_factura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id_sucursal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id_testimonio` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tmp_compra`
--
ALTER TABLE `tmp_compra`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1155;

--
-- AUTO_INCREMENT de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `tmp_guia`
--
ALTER TABLE `tmp_guia`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tmp_liquidacioncompra`
--
ALTER TABLE `tmp_liquidacioncompra`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tmp_notacredito`
--
ALTER TABLE `tmp_notacredito`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4669;

--
-- AUTO_INCREMENT de la tabla `tmp_notadebito20`
--
ALTER TABLE `tmp_notadebito20`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tmp_retencion20`
--
ALTER TABLE `tmp_retencion20`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tmp_ventas`
--
ALTER TABLE `tmp_ventas`
  MODIFY `id_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4749;

--
-- AUTO_INCREMENT de la tabla `trabajadores_envio`
--
ALTER TABLE `trabajadores_envio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslados`
--
ALTER TABLE `traslados`
  MODIFY `id_traslado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de la tabla `user_group`
--
ALTER TABLE `user_group`
  MODIFY `user_group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `trabajadores_envio`
--
ALTER TABLE `trabajadores_envio`
  ADD CONSTRAINT `trabajadores_envio_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `empresa_envio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
