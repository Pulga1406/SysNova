-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-02-2025 a las 21:05:41
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sysnova`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos_inactivos`
--

CREATE TABLE `activos_inactivos` (
  `tipo_identificacion` varchar(255) NOT NULL,
  `documento` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `asociado` varchar(255) NOT NULL,
  `oficina` varchar(255) NOT NULL,
  `segmento` varchar(255) NOT NULL,
  `validacion` varchar(255) NOT NULL,
  `habilidad` varchar(255) NOT NULL,
  `saldo_total_ahorro` varchar(255) NOT NULL,
  `saldo_crediavance` varchar(255) NOT NULL,
  `hora_promedio` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_inventario`
--

CREATE TABLE `auditoria_inventario` (
  `id` int NOT NULL,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `accion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `producto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `detalles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auditoria_inventario`
--

INSERT INTO `auditoria_inventario` (`id`, `usuario`, `accion`, `producto`, `fecha`, `detalles`) VALUES
(1, 'JHONATAN ', 'Insertar', 'HEROCKA003', '2025-01-28 14:15:52', 'Producto \'Asesor 1\' añadido al inventario con cantidad 50 y precio 58000.'),
(2, 'JHONATAN ', 'Eliminar', '77', '2025-01-28 14:16:49', 'Producto con ID 77 eliminado del inventario.'),
(3, 'JHONATAN ', 'Eliminar', '79', '2025-01-28 14:20:52', 'Producto con ID 79 eliminado del inventario.'),
(4, 'JHONATAN ', 'Actualizar', '73', '2025-01-28 14:28:38', 'Producto \'Asesor 1\' actualizado: estado cambiado a \'Vendido\', cantidad 1, precio 58000.00.'),
(5, 'JHONATAN ', 'Eliminar', '73', '2025-01-28 14:37:37', 'Producto con ID 73 eliminado del inventario.'),
(6, 'JHONATAN ', 'Eliminar', '74', '2025-01-29 15:06:53', 'Producto con ID 74 eliminado del inventario.'),
(7, 'JHONATAN ', 'Eliminar', '66', '2025-01-29 15:07:04', 'Producto con ID 66 eliminado del inventario.'),
(8, 'JHONATAN ', 'Eliminar', '70', '2025-01-29 15:07:23', 'Producto con ID 70 eliminado del inventario.'),
(9, 'JHONATAN ', 'Eliminar', '78', '2025-01-29 15:08:12', 'Producto con ID 78 eliminado del inventario.'),
(10, 'JHONATAN ', 'Eliminar', '76', '2025-01-29 15:08:25', 'Producto con ID 76 eliminado del inventario.'),
(11, 'JHONATAN ', 'Eliminar', '75', '2025-01-29 15:08:30', 'Producto con ID 75 eliminado del inventario.'),
(12, 'JHONATAN ', 'Eliminar', '72', '2025-01-29 15:08:32', 'Producto con ID 72 eliminado del inventario.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_cliente` enum('Individual','Empresa') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Individual',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('Activo','Inactivo') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `ciudad`, `departamento`, `tipo_cliente`, `fecha_registro`, `estado`) VALUES
(19, 'arnold ramirez', '1110580593', 'anrol.ramirez@prosperando.co', '3223459170', 'margaritas', 'ibagué', 'tolima', 'Individual', '2025-01-29 18:01:18', 'Activo'),
(20, 'jerson olarye', '1110533561', 'herock@gmail.com', '3156599493', 'mz 4 cs 8', 'ibagué', 'tolima', 'Individual', '2025-01-29 21:09:55', 'Activo'),
(22, 'ximena  alejandra locuada  aguiar', '1110463765', 'xlocuadaaguiar@gmail.com', '3114788786', 'mz 23 ca 10', 'ibagué', 'tolima', 'Individual', '2025-02-07 17:43:43', 'Activo'),
(24, 'jhonatan pulgarin cañon', '1007232807', 'jhonatan.pulgarin@prosperando.co', '3005669746', 'mz c cs a', 'ibagué', 'tolima', 'Individual', '2025-02-10 09:13:08', 'Activo'),
(25, 'bianey castro españa', '55157646', 'bianey.castro@gmail.com', '3223459170', 'mz b cs 5 barrio bello horizonte', 'ibagué', 'tolima', 'Individual', '2025-02-10 21:04:46', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditodigital`
--

CREATE TABLE `creditodigital` (
  `tipo_identificacion` varchar(255) NOT NULL,
  `documento` varchar(11) NOT NULL,
  `antiguedad` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `rango_edad` varchar(255) NOT NULL,
  `segmento` varchar(255) NOT NULL,
  `linea_credito` varchar(255) NOT NULL,
  `tasa_interes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int NOT NULL,
  `cedula` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `cedula`, `nombre`, `cargo`, `salario`) VALUES
(100005559, 65753872, 'ROA DIAZ DIANA LUCIA', 'GERENTE GENERAL', 19224744.00),
(100005560, 1110491844, 'RUGELES URUEÑA ANDRES FELIPE', 'DIRECTOR ADMINISTRATIVO, DE PLANEACIÓN Y DESARROLLO', 6868571.00),
(100005561, 28555322, 'VARGAS RODRIGUEZ CAROLINA', 'DIRECTOR DE MERCADEO Y VENTAS', 6868571.00),
(100005562, 1110533337, 'LABRADOR GARCIA PAOLA  ANDREA', 'DIRECTOR FINANCIERO Y DE PRODUCTOS', 6868571.00),
(100005563, 1109842935, 'GUARNIZO USECHE MAYRA LICETH', 'CONTADOR', 5342141.00),
(100005564, 28741309, 'ARIAS VASQUEZ NOHORA JULIANA', 'DIRECTOR DE OFICINA', 5132686.00),
(100005565, 39761112, 'ZEA QUINCHIA MARIA ANDREA', 'DIRECTOR DE OFICINA', 4503441.00),
(100005566, 1110473432, 'SANDOVAL ROZO LEIDY VIVIANA', 'EJECUTIVO DE CANALES Y CONVENIOS', 4153296.00),
(100005567, 1105788249, 'YOSA GONZALEZ DANIEL LEONARDO', 'DIRECTOR DE OFICINA', 4153295.00),
(100005568, 1121898591, 'RUBIANO RAMIREZ ANYI PAOLA', 'DIRECTOR DE OFICINA', 4153295.00),
(100005569, 65634840, 'TORRES TOVAR XIOMAR ANDREA', 'DIRECTOR DE OFICINA', 4153295.00),
(100005570, 11314981, 'URQUIJO GUZMAN GUSTAVO', 'COORDINADOR DE ASEGURAMIENTO DE LA CALIDAD', 3709782.00),
(100005571, 1006004636, 'VALENCIA VASQUEZ ANYI CAROLINA', 'COORDINADOR DE CARTERA €', 3709782.00),
(100005572, 52109835, 'CHITIVA CADENA LILIANA PATRICIA', 'COORDINADOR DE CREDITO', 3709782.00),
(100005573, 93374897, 'ZARTA MARTINEZ CARLOS ROSEMBERG', 'COORDINADOR DE MICROCREDITO', 3448746.00),
(100005574, 1110490855, 'ROMERO PARRAGA ALEXANDRA', 'ASISTENTE DE GERENCIA', 3273339.00),
(100005575, 28553809, 'CAMPOS PARRA JOHANNA ALEJANDRA', 'ANALISTA DE CREDITO MEDIO', 2711278.00),
(100005576, 1110469545, 'SANCHEZ MENDOZA FABIAN AUGUSTO', 'AUDITOR INTERNO', 2711278.00),
(100005577, 1014206825, 'MORENO CASTAÑO IVAN CAMILO', 'JEFE DE OFICINA', 2711278.00),
(100005578, 28551632, 'FORERO FLOREZ JOHANNA PATRICIA', 'ANALISTA DE CREDITO', 2255665.00),
(100005579, 39582403, 'RINCON AMAYA MARIA DEL PILAR', 'ASISTENTE DE OFICINA', 2255665.00),
(100005580, 65788339, 'YARA GONZALEZ DEYCY', 'ASISTENTE DE OFICINA', 2255665.00),
(100005581, 11315723, 'TELLEZ LAGUNA VICTOR ALFONSO', 'ASESOR INTEGRAL DE CAJA', 2255665.00),
(100005582, 65634324, 'ROJAS RINCON ANGELA MARIA', 'ANALISTA DE CREDITO', 2157050.00),
(100005583, 93410116, 'LIBERATO RODRIGUEZ WILLIAM ALBERTO', 'ANALISTA DE CREDITO', 2157050.00),
(100005584, 1110518789, 'MORENO CLAVIJO JESSICA ALEJANDRA', 'ANALISTA DE TECNOLOGIA, INFORMACIÓN Y COMUNICACIONES', 2157050.00),
(100005585, 1110504860, 'SANCHEZ GARZON JHON FREDDY', 'ANALISTA DE CARTERA', 2157050.00),
(100005586, 1106948994, 'BUSTOS CHOLO YEIMY PAOLA', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005587, 80032935, 'GOMEZ MARTINEZ JAIRO ANDRES', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005588, 28542424, 'SAAVEDRA BONILLA CLAUDIA MILENA', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005589, 14012624, 'REINOSO AGUIAR DAIRO ENRIQUE', 'ASESOR DE MICROCREDITO AGROPECUARIO', 2029846.00),
(100005590, 1111192890, 'RUIZ CONDE MAYERLY MARISOL', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005591, 1110518275, 'VILLANUEVA ROJAS ANDRES FELIPE', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005592, 1007687962, 'GRACIA PAEZ DANIEL FELIPE', 'ASESOR DE MICROCREDITO SENIOR', 2029846.00),
(100005593, 1110558270, 'DIAZ ROJAS NATHALIA MARCELA', 'ANALISTA DE SERVICIO AL ASOCIADO', 2015763.00),
(100005594, 1110593806, 'MARIA CAMILA URUEÑA DEVIA', 'AUXILIAR DE MARKETING DIGITAL', 2015763.00),
(100005595, 1110576150, 'MEDINA BOHORQUEZ LAURA CAMILA', 'AUXILIAR DE MERCADEO', 2015763.00),
(100005596, 1110576862, 'ARTEAGA AGUDELO SHESLY YEANDRY', 'OFICIAL DE CUMPLIMIENTO', 2015763.00),
(100005597, 1110549463, 'YARA GARCIA LEIDY JOHANA', 'AUXILIAR DE TESORERIA', 2015763.00),
(100005598, 1005149628, 'NAVARRO SUAREZ DANIELA', 'PROFESIONAL DE SEGURIDAD Y SALUD EN EL TRABAJO', 2015763.00),
(100005599, 5820791, 'GONZALEZ ROJAS JOSE OCTAVIO', 'SUPERNUMERARIO', 2015763.00),
(100005600, 1007232807, 'PULGARIN CAÑON JHONATAN', 'AUXILIAR DE ANALITICA DE DATOS', 2015763.00),
(100005601, 1022932004, 'VANEGAS BURITICA LUIS ALEJANDRO', 'AUXILIAR DE PROGRAMACION', 2015763.00),
(100005602, 1007453596, 'CUELLAR CAMARGO LAURA DANIELA', 'AUXILIAR DE ASEGURAMIENTO DE LA CALIDAD', 2015763.00),
(100005603, 1072198268, 'OSPINA NAGLES ANDRES FELIPE', 'AUXILIAR DE RIESGOS', 2015763.00),
(100005604, 1234638892, 'LOZANO GIL YULIANA', 'ASISTENTE DE OFICINA', 1929860.00),
(100005605, 1110511794, 'GONZALEZ DELVASTO ANA MARIA', 'ASISTENTE DE OFICINA', 1929860.00),
(100005606, 65796538, 'MURCIA LOPEZ YENNY MARCELA', 'ASISTENTE DE OFICINA', 1929860.00),
(100005607, 1016019385, 'BARRIOS SALCEDO LEIDY JOHANA', 'ASISTENTE DE OFICINA', 1929860.00),
(100005608, 1106779351, 'CASTRO CRIOLLO YENNY ARACELY', 'ASISTENTE DE OFICINA', 1929860.00),
(100005609, 30878176, 'PUELLO RIVERA MILENA AURORA', 'ASESOR COMERCIAL', 1901982.00),
(100005610, 1032360878, 'MURCIA AROCA SANDRA LILIANA', 'ASESOR INTEGRAL CAJA', 1818552.00),
(100005611, 1110451692, 'RODRIGUEZ VANEGAS JOHN ALEJANDRO', 'ASESOR INTEGRAL CAJA', 1818552.00),
(100005612, 65783044, 'BONILLA GUIZA DIANA CAROLINA', 'ASESOR INTEGRAL DE CAJA', 1818552.00),
(100005613, 1111192811, 'CAVIEDES RINCÓN YESSICA VIVIANA', 'ASESOR INTEGRAL DE CAJA', 1818552.00),
(100005614, 5825768, 'ROSERO MURILLO WILSON HAROLD', 'ASESOR INTEGRAL DE CAJA', 1818552.00),
(100005615, 1001881621, 'OROZCO FUENTES KEITLYN DANIELA', 'ASESOR INTEGRAL DE CAJA', 1818552.00),
(100005616, 1110501040, 'GUZMAN CASTILLA JENNIFER DUPERLY', 'ASESOR COMERCIAL', 1783107.00),
(100005617, 1110489219, 'HERNANDEZ MONTILLA VIVIANA', 'ASESOR COMERCIAL', 1783107.00),
(100005618, 1007430946, 'LASSO BEJARANO LAURA VANESSA', 'ASESOR COMERCIAL', 1783107.00),
(100005619, 93393570, 'VERGARA SANCHEZ HERLICHS ADOLFO', 'GESTOR DE CARTERA', 1673858.00),
(100005620, 1110545464, 'LERMA MORENO JENNY PAOLA', 'GESTOR DE CARTERA', 1673858.00),
(100005621, 1110593765, 'GARCIA ROMERO JEFERSSON STIVEN', 'GESTOR DE CARTERA', 1673858.00),
(100005622, 65630470, 'CASTELBLANCO  REYES VANEXA ALEXANDRA', 'AUXILIAR DE CREDITO', 1486280.00),
(100005623, 1110511266, 'RUBIANO MEDINA ANGELICA MARIA', 'AUXILIAR DE CREDITO', 1486280.00),
(100005624, 14297965, 'PEREZ CAMILO ANDRES', 'AUXILIAR DE GESTION DOCUMENTAL', 1486280.00),
(100005625, 1192762718, 'VASQUEZ OSPINA MARIA NATALIA', 'AUXILIAR DE SISTEMAS', 1486280.00),
(100005626, 1110448695, 'RAMIREZ ALDANA JHENNIFER ANGELICA', 'ASESOR EXTERNO', 1423500.00),
(100005627, 65729023, 'MORA MARROQUIN TERESA', 'AUXILIAR DE OFICINA', 1423500.00),
(100005628, 65747973, 'TRUJILLO CASTELLANOS SANDRA LILIANA', 'AUXILIAR DE OFICINA', 1423500.00),
(100005629, 1108999539, 'OLIVERA VELEZ VIVIAN ROCIO', 'ASESOR DE PROFUNDIZACIÓN EN VENTAS', 1423500.00),
(100005630, 1106772493, 'MAX ANDREY GUTIERREZ LEAL', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005631, 1108833116, 'VERJAN TRIANA JHONATAN ALEXIS', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005632, 1110444987, 'MANCHOLA DEVIA VICTOR ALFONSO', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005633, 1106790486, 'RIOS CABRERA JORGE IVÁN', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005634, 1007324202, 'DIAZ TAPIERO LUIS ALEJANDRO', 'APRENDIZ UNIVERSITARIO', 1423500.00),
(100005635, 1105683972, 'CUELLAR ORTEGON LEIDY YOLIMA', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005636, 1007231612, 'AGUIRRE RAMIREZ SEBASTIAN', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005637, 1070587216, 'GONZALEZ PARADA ALLAN HAROD', 'APRENDIZ UNIVERSITARIO', 1423500.00),
(100005638, 1106788399, 'OVIEDO ZAMUDIO NELSON AUGUSTO', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005639, 1070592863, 'LABRADOR MARTINEZ NELSON ZAHIR', 'ASESOR DE MICROCREDITO JUNIOR', 1423500.00),
(100005640, 1016947226, 'ALAPE PEREA MARIA CAMILA', 'APRENDIZ SENA', 1067625.00),
(100005641, 65633210, 'FORERO MENESES SANDRA VIVIANA', 'MENSAJERO', 711750.00),
(100005642, 39566013, 'MENDOZA ROCIO', 'AUXILIAR DE OFICINA', 711750.00),
(100005643, 65796235, 'ZARATE CRUZ LILIANA', 'AUXILIAR DE OFICINA', 711750.00),
(100005644, 65828243, 'ROBLEDO DIAZ SANDRA MILENA', 'AUXILIAR DE OFICINA', 711750.00),
(100005645, 1105463998, 'CABALLERO PEÑA JUAN DAVID', 'APRENDIZ SENA', 711750.00),
(100005646, 1105782922, 'RIVERA BEJARANO EDWIN ESTIVEN', 'APRENDIZ SENA', 711750.00),
(100005647, 1110594599, 'VARGAS GONZALEZ JENNY LORENA', 'AUXILIAR DE OFICINA', 711750.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_descarga`
--

CREATE TABLE `historico_descarga` (
  `id` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_hora` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historico_descarga`
--

INSERT INTO `historico_descarga` (`id`, `email`, `file_name`, `fecha_hora`) VALUES
(4, 'andres.rugeles@prosperando.co', 'pri.xlsx', '2024-06-05 20:34:58'),
(5, 'jhonatan.pulgarin@prosperando.co', 'cosechas.xlsx', '2024-07-11 20:37:56'),
(6, 'auxiliarsarlaft@prosperando.co', 'pri.xlsx', '2024-07-18 16:18:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int NOT NULL,
  `codigo_unico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8mb4_general_ci DEFAULT 'Sin Marca',
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tallas_disponibles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `colores_disponibles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cantidad` int NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_ingreso` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo_unico`, `nombre`, `marca`, `descripcion`, `tallas_disponibles`, `colores_disponibles`, `cantidad`, `ubicacion`, `estado`, `fecha_ingreso`) VALUES
(186, 'HEROCKA001', '', '', 'Conjunto completo', 'XS', NULL, 10, 'Fabrica General', '', '2025-02-10 00:00:00'),
(187, 'HEROCKA004', '', '', 'Conjunto completo', 'M', NULL, 10, 'Fabrica General', '', '2025-01-31 00:00:00'),
(188, 'HEROCKA001', '', '', 'Conjunto completo', 'M', NULL, 7, 'Fabrica General', '', '2025-01-31 00:00:00'),
(189, 'HEROCKA004', '', '', 'Conjunto completo', 'XS', NULL, 10, 'Fabrica General', '', '2025-01-31 00:00:00'),
(190, 'HEROCKA001', '', '', 'Conjunto completo', 'XS', NULL, 5, 'Tienda Física', '', '2025-02-08 00:00:00'),
(191, 'HEROCKA001', '', '', 'Conjunto completo', 'M', NULL, 10, 'Tienda Física', '', '2025-01-31 00:00:00'),
(192, 'HEROCKA004', '', '', 'Conjunto completo', 'XS', NULL, 20, 'Tienda Física', '', '2025-02-08 00:00:00'),
(193, 'HEROCKA004', '', '', 'Conjunto completo', 'M', NULL, 9, 'Tienda Física', '', '2025-01-31 00:00:00'),
(194, 'HEROCKA006', '', '', 'Conjunto completo', 'XS', NULL, 10, 'Tienda Física', '', '2025-01-31 00:00:00'),
(195, 'HEROCKA006', '', '', 'Conjunto completo', 'M', NULL, 9, 'Tienda Física', '', '2025-01-31 00:00:00'),
(197, 'HEROCKA006', '', '', 'Conjunto completo', 'M', NULL, 30, 'Fabrica General', '', '2025-01-31 00:00:00'),
(198, 'HEROCKA001', '', '', 'Conjunto completo', 'S', NULL, 7, 'Tienda Física', '', '2025-02-03 00:00:00'),
(199, 'HEROCKA004', '', '', 'Conjunto completo', 'S', NULL, 8, 'Tienda Física', '', '2025-01-31 00:00:00'),
(200, 'HEROCKA006', '', '', 'Conjunto completo', 'S', NULL, 8, 'Tienda Física', '', '2025-01-31 00:00:00'),
(203, 'HEROCKA001', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 9, 'Fabrica General', 'En Stock', '2025-02-01 00:00:00'),
(204, 'HEROCKA002', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-01 00:00:00'),
(205, 'HEROCKA002', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-01 00:00:00'),
(206, 'HEROCKA002', NULL, 'Sin Marca', 'Conjunto completo', 'XL', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-01 00:00:00'),
(207, 'HEROCKA002', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-01 00:00:00'),
(208, 'HEROCKA002', NULL, 'Sin Marca', 'Conjunto completo', 'L', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-01 00:00:00'),
(209, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-01 00:00:00'),
(210, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-01 00:00:00'),
(211, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'L', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-01 00:00:00'),
(213, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 00:00:00'),
(214, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 00:00:00'),
(215, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'M', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 00:00:00'),
(216, 'HEROCKA001', NULL, 'Sin Marca', 'Conjunto completo', 'L', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-03 00:00:00'),
(217, 'HEROCKA001', NULL, 'Sin Marca', 'Conjunto completo', 'XL', NULL, 17, 'Tienda Física', 'En Stock', '2025-02-03 00:00:00'),
(218, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 00:00:00'),
(219, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 3, 'Fabrica General', 'En Stock', '2025-02-03 16:14:00'),
(220, 'HEROCKA005', NULL, 'Sin Marca', 'Conjunto completo', 'M', NULL, 2, 'Fabrica General', 'En Stock', '2025-02-03 16:17:00'),
(221, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-03 17:50:00'),
(222, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 8, 'Tienda Física', 'En Stock', '2025-02-03 17:51:00'),
(223, 'HEROCKA006', NULL, 'Sin Marca', 'Conjunto completo', 'XS', NULL, 9, 'Fabrica General', 'En Stock', '2025-02-03 18:01:00'),
(224, 'HEROCKA006', NULL, 'Sin Marca', 'Conjunto completo', 'S', NULL, 6, 'Fabrica General', 'En Stock', '2025-02-03 18:01:00'),
(225, 'HEROCKA006', NULL, 'Sin Marca', 'Conjunto completo', 'L', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 18:02:00'),
(226, 'HEROCKA006', NULL, 'Sin Marca', 'Conjunto completo', 'XL', NULL, 10, 'Fabrica General', 'En Stock', '2025-02-03 18:02:00'),
(228, 'HEROCKA003', NULL, 'Sin Marca', 'Conjunto completo', 'XL', NULL, 10, 'Tienda Física', 'En Stock', '2025-02-08 11:22:00'),
(229, 'HEROCKA001', NULL, 'Sin Marca', 'Conjunto completo', 'XL', NULL, 9, 'Fabrica General', 'En Stock', '2025-02-10 08:58:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `microempresarios`
--

CREATE TABLE `microempresarios` (
  `tipo_identificacion` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `documento` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `oficina` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `celular` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barrio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_inventario`
--

CREATE TABLE `movimientos_inventario` (
  `id` int NOT NULL,
  `producto_id` int NOT NULL,
  `usuario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accion` enum('Entrada','Salida','Ajuste') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad_anterior` int NOT NULL,
  `cantidad_nueva` int NOT NULL,
  `fecha_movimiento` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

CREATE TABLE `sugerencias` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `respuesta` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `archivo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_persona` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`id`, `nombre`, `descripcion`, `img`, `fecha_hora`, `estado`, `respuesta`, `archivo`, `id_persona`) VALUES
(20, 'PÃ±wlwl', 'pspwpspw', '../images_soporte/17212327061146415603087299678857.jpg', '2024-07-17 11:11:59', 'REALIZADA', 'Solicitud atendida.', '2 (1) (1).jpg', 'jhonatan.pulgarin@prosperando.co'),
(22, 'SOLICITUD EXPORTAR DATOS DE BI A EXCEL', 'por favor para exportar a un excel la informacion de creditos desembolsados, aprobados y en estudio ', '../images_soporte/Captura de pantalla .png', '2024-08-23 11:54:48', 'REALIZADA', 'solicitud atendida', 'consolidado desembolsos.csv', 'alberth.barreto@prosperando.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_temp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `contrasena`, `rol`, `password_temp`) VALUES
(55, 'JHONATAN ', 'jhonatan.pulgarin@prosperando.co', '2807', 'Administrador', ''),
(77, 'jhonatan pulgarin', 'pulgarin1406@gmail.com', '', 'Administrador', 'SYSNOVA2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `producto_id` int NOT NULL,
  `codigo_unico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_cliente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `talla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedula_id_cliente` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_venta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `codigo_unico`, `nombre_cliente`, `marca`, `descripcion`, `talla`, `color`, `precio`, `cantidad`, `ubicacion`, `estado`, `cedula_id_cliente`, `fecha_venta`, `usuario`) VALUES
(77, 186, 'HEROCKA001', 'jhonatan pulgarin', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Fábrica General', NULL, '1007232807', '2025-02-10 08:30:00', 'JHONATAN '),
(78, 200, 'HEROCKA006', 'arnold ramirez', NULL, 'Conjunto completo', 'S', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110580593', '2025-02-10 08:30:00', 'JHONATAN '),
(79, 224, 'HEROCKA006', 'ximena  alejandra locuada  aguiar', NULL, 'Conjunto completo', 'S', NULL, 100000.00, 1, 'Fábrica General', NULL, '1110463765', '2025-02-10 08:31:00', 'JHONATAN '),
(80, 190, 'HEROCKA001', 'arnold ramirez', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110580593', '2025-02-10 08:33:00', 'JHONATAN '),
(81, 190, 'HEROCKA001', 'jerson olarye', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110533561', '2025-02-10 08:34:00', 'JHONATAN '),
(83, 190, 'HEROCKA001', 'arnold ramirez', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110580593', '2025-02-10 08:56:00', 'JHONATAN '),
(84, 217, 'HEROCKA001', 'arnold ramirez', NULL, 'Conjunto completo', 'XL', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110580593', '2025-02-10 08:57:00', 'JHONATAN '),
(85, 229, 'HEROCKA001', 'ximena  alejandra locuada  aguiar', NULL, 'Conjunto completo', 'XL', NULL, 100000.00, 1, 'Fábrica General', NULL, '1110463765', '2025-02-10 08:58:00', 'JHONATAN '),
(86, 190, 'HEROCKA001', 'jerson olarye', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110533561', '2025-02-10 08:59:00', 'JHONATAN '),
(87, 217, 'HEROCKA001', 'arnold ramirez', NULL, 'Conjunto completo', 'XL', NULL, 100000.00, 1, 'Tienda Física', NULL, '1110580593', '2025-02-10 08:59:00', 'JHONATAN '),
(88, 190, 'HEROCKA001', 'bianey castro españa', NULL, 'Conjunto completo', 'XS', NULL, 100000.00, 1, 'Tienda Física', NULL, '55157646', '2025-02-10 21:11:00', 'JHONATAN ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos_inactivos`
--
ALTER TABLE `activos_inactivos`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `auditoria_inventario`
--
ALTER TABLE `auditoria_inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `historico_descarga`
--
ALTER TABLE `historico_descarga`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `microempresarios`
--
ALTER TABLE `microempresarios`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria_inventario`
--
ALTER TABLE `auditoria_inventario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100005648;

--
-- AUTO_INCREMENT de la tabla `historico_descarga`
--
ALTER TABLE `historico_descarga`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimientos_inventario`
--
ALTER TABLE `movimientos_inventario`
  ADD CONSTRAINT `movimientos_inventario_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `inventario` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
