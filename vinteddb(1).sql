-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 01:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinteddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagepath` varchar(200) DEFAULT '/content/images/categories/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagepath`) VALUES
(1, 'men', '/content/images/categories/men.png'),
(2, 'women', '/content/images/categories/women.png'),
(3, 'tops', '/content/images/categories/tops.png'),
(4, 'shoes', '/content/images/categories/shoes.png'),
(5, 'leggins', '/content/images/categories/leggins.png');

-- --------------------------------------------------------

--
-- Table structure for table `categoriaproducts`
--

CREATE TABLE `categoriaproducts` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoriaproducts`
--

INSERT INTO `categoriaproducts` (`id`, `idProduct`, `idCategoria`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 5),
(4, 2, 2),
(5, 2, 3),
(6, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_coords`
--

CREATE TABLE `pma__designer_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `talla` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `moneda` varchar(255) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `categoria`, `marca`, `talla`, `estado`, `precio`, `moneda`, `idUser`) VALUES
(1, 'nombre', 'desc', 'Zapatillas', 'Adidas', '30', 'Nuevo', 49.99, 'EUR', 1),
(2, 'nombre', 'desc', 'Zapatillas', 'Adidas', '30', 'Nuevo', 49.99, 'EUR', 1),
(3, 'nombre', 'desc', 'Pantalones', 'Adidas', '30', 'Nuevo', 49.99, 'RUB', 1),
(4, 'nombre', 'desc', 'Zapatillas', 'Adidas', '30', 'Nuevo', 49.99, 'USD', 1),
(5, 'nombre', 'desc', '', 'Adidas', '30', '', 49.99, '', 1),
(6, 'nombre', 'desc', 'Zapatillas', 'Adidas', '30', 'Nuevo', 49.99, 'EUR', 1),
(7, 'nombre', 'desc', '', 'Adidas', '30', '', 49.99, '', 1),
(8, 'nombre de mi marca de zapatillas to guapas', 'desc', 'Zapatillas', 'Adidas', '30', 'Nuevo', 49.99, 'EUR', 1),
(9, 'nombre', 'desc', 'Pantalones', 'Adidas', '30', 'Nuevo', 49.99, 'EUR', 2),
(10, 'nombre', 'desc', 'Abrigos', 'Adidas', '30', 'Usado', 49.99, 'RSD', 1),
(11, 'nombre mi producto', 'desc', 'Abrigos', 'Adidas', '30', 'Usado', 49.99, 'RUB', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `talla` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `moneda` varchar(255) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT '/content/images/default.png',
  `EnVenta` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nombre`, `descripcion`, `categoria`, `marca`, `talla`, `estado`, `precio`, `moneda`, `idUser`, `imagePath`, `EnVenta`) VALUES
(1, 'Nike Air Force 1 Low 07 Just do it Photon Dust Red', 'Las zapatillas son totalmente nuevas, en su caja original. Puedo enseñar factura de compra en tienda oficial, y no tengo problemas en que realicéis un legit check. Preferible entrega en mano en Madrid.', 'Men', 'BrandX', '39', 'New', 39.99, 'USD', 1, '/content/images/1.png', 0),
(2, 'Converse Chuck 70 Hi DuPont Tyvek', 'Converse Chuck 70 Hi DuPont Tyvek', 'Women', 'FashionCo', '42', 'New', 19.99, 'USD', 2, '/content/images/2.png', 0),
(3, 'pulsera serpiente ', 'Pulsera', 'Women', 'OuterwearTech', 'Small', 'New', 129.99, 'USD', 3, '/content/images/3.png', 0),
(4, 'Ropa lacoste', 'Precio razonable nueva con su etiqueta no extrenada talla M con si pantalon a juego hago envío por privado y por Wallapop ', 'Men', 'Lacoste', 'M', 'New', 50.00, 'USD', 1, '/content/images/4.png', 1),
(5, 'Bolso Kitty', '2yK Hello Kitty', 'Women', 'Brand Y', 'L', 'Used', 30.00, 'USD', 1, '/content/images/5.png', 1),
(6, 'Chaqueta elegante de Piel/Cuero', 'Chaqueta de cuero/piel de hombre,elegante para vestir,unicamente hago envios,cualquier duda diganme!😊', 'Men', 'Brand Z', 'M', 'New', 75.50, 'EUR', 2, '/content/images/6.png', 0),
(7, 'Bolso Bandolera Harry Potter', '🔴 Sólo se hacen envíos', 'Men', 'Brand X', 'XL', 'Used', 20.00, 'USD', 2, '/content/images/7.png', 0),
(8, 'Peluca Sintética verde mechas azules', 'Preciosa peluca sintética con flequillo en media melena en color verde con mechas azules,apenas usada', 'Women', 'Brand Z', 'M', 'New', 40.00, 'USD', 10, '/content/images/8.png', 0),
(9, 'Chaqueta Columbia de hombre NUEVA ', 'Chaqueta de hombre Columbia.', 'Men', 'Brand Y', 'L', 'Used', 60.00, 'USD', 10, '/content/images/9.png', 0),
(10, 'Falda larga gris y blanco Talla 40', 'Falda larga en gris y blanco con poco uso', 'Women', 'Brand X', 'S', 'New', 25.00, 'USD', 10, '/content/images/10.png', 0),
(11, 'ROLEX SKYDWELLER 2023 NUEVO', 'Se vende Rolex SkyDweller acero y oro referencia 336933 nuevo a estrenar de septiembre del 2023.', 'Men', 'Brand Y', 'M', 'Used', 45.00, 'USD', 3, '/content/images/11.png', 0),
(12, 'Nike x Travis Scott reverse mocha', 'Nike x Travis Scott reverse mocha, talla 45. Sin usar ', 'Men', 'Brand Z', 'XL', 'New', 55.00, 'USD', 3, '/content/images/12.png', 0),
(13, 'Sudadera granate Levis', 'Sudadera granate en buen estado', 'Women', 'Brand X', 'S', 'New', 30.00, 'USD', 4, '/content/images/13.png', 0),
(14, 'Pantalones tejanos', 'pantalones tejanos tipo cagao', 'Women', 'Brand Y', 'L', 'Used', 40.00, 'USD', 4, '/content/images/14.png', 0),
(15, 'Pantalones cortos con estampado floral para mujer', 'Pantalones cortos de cintura baja con estampado floral para mujer/talla S', 'Women', 'Brand Z', 'M', 'New', 60.00, 'USD', 5, '/content/images/15.png', 1),
(16, 'Ray Ban Gold', 'Se venden Ray Ban Gold valoradas en 400€ rebajadas a 340€ en Black Friday.', 'Men', 'Brand X', 'XL', 'Used', 25.00, 'USD', 5, '/content/images/16.png', 0),
(17, 'Chaqueta de lúrex de Oltre ', 'Elegante chaqueta de Oltre tejida con lurex, que dan luminosidad a la prenda, haciéndola elegante y refinada.', 'Men', 'Brand Y', 'S', 'Used', 35.00, 'USD', 6, '/content/images/17.png', 1),
(18, 'Camisa vaquera mujer sin mangas ', 'Es una camisa denim claro, muy poco usada', 'Women', 'Brand Z', 'L', 'New', 50.00, 'USD', 6, '/content/images/18.png', 0),
(19, 'Chaqueton ellese', 'Talla M', 'Men', 'Brand X', 'M', 'New', 45.00, 'USD', 7, '/content/images/19.png', 1),
(20, 'CHAQUETA', 'azul indigo y gris ideal!!', 'Men', 'Brand Y', 'XL', 'Used', 30.00, 'USD', 7, '/content/images/20.png', 1),
(21, 'llavero', 'llavero con palabra vivir, sin usar los hago yo', 'Men', 'Brand Z', 'S', 'New', 40.00, 'USD', 8, '/content/images/21.png', 1),
(22, 'clip pelo', '5 pares de clip para pelo variados de colores', 'Women', 'Brand X', 'L', 'Used', 55.00, 'USD', 8, '/content/images/22.png', 1),
(23, 'Camisa Harmont&Blain', 'camisa de algodón elástico.. 100% original, usada varias veces ', 'Women', 'Brand Y', 'M', 'Used', 50.00, 'USD', 9, '/content/images/23.png', 0),
(24, 'Camiseta Nike', 'Camiseta deportiva básica Nike ', 'Men', 'Brand Z', 'XL', 'New', 35.00, 'USD', 9, '/content/images/24.png', 0),
(25, 'Vestidos Malha Grossa ', 'Nuevo con etiqueta ', 'Women', 'Adidas', '30', 'Usado', 49.99, 'RUB', 8, '/content/images/25.png', 0),
(26, 'Zapatillas Adidas Gazelle', 'Zapatillas adidas, color azul, modelo Gazelle, talla 43 y un tercio', 'Men', 'Brand1', 'Size1', 'New', 29.99, 'USD', 8, '/content/images/26.png', 1),
(27, 'Zapatos negros Tacón ancho.', 'zapatos negros tacón ancho. Sin estrenar por equivocación en número. ', 'Women', 'Brand2', 'Size2', 'New', 39.99, 'USD', 8, '/content/images/27.png', 1),
(28, 'Abrigo pull and bear', 'esta practicamente nueva unas 2/3 veces usada. Muy calentita y comoda. color gris talla XS tambien sirve para S', 'Men', 'Brand3', 'Size3', 'New', 49.99, 'USD', 8, '/content/images/28.png', 1),
(29, 'GORRO INVIERNO', 'Gorro color beix , talla M', 'Men', 'Brand4', 'Size4', 'New', 59.99, 'USD', 5, '/content/images/29.png', 1),
(30, 'Reloj. Timberland verde militar ', 'Reloj. Verde militar de Timberland.', 'Men', 'Brand5', 'Size5', 'New', 69.99, 'USD', 9, '/content/images/30.png', 1),
(31, 'Camiseta LIU•JO', 'Camiseta LIU•JO con bolsillo ', 'Women', 'Brand6', 'Size6', 'New', 79.99, 'USD', 8, '/content/images/31.png', 1),
(32, 'bufanda de lana hecha a mano', 'bufanda de lana suave de 130 cm de longitud, 17 cm de ancho con flecos, tejida', 'Women', 'Brand7', 'Size7', 'New', 89.99, 'USD', 7, '/content/images/32.png', 1),
(33, 'BOLSO DE TRABAJO', 'BOLSO DE HOMBRO PARA PORTÁTIL THE BRIDGE, NEGRO ', 'Men', 'Brand8', 'Size8', 'New', 99.99, 'USD', 5, '/content/images/33.png', 1),
(34, 'Sudadera de snoopy', 'sudadera de snoopy talla M usada 2 veces', 'Men', 'Brand9', 'Size9', 'New', 109.99, 'USD', 2, '/content/images/34.png', 1),
(35, 'GAFAS GUCCI GG0704S 002', 'Son unas gafas en buen estado un pco usadas pero a muy buen precio si quereis fotos de las gafas escribidme pa que las veais que ahora mismo no estoy en casa gracias 😊', 'Men', 'Brand10', 'Size10', 'New', 119.99, 'USD', 4, '/content/images/35.png', 0),
(36, 'Blusa', 'Blusa colores pastel', 'Women', 'Brand11', 'Size11', 'New', 129.99, 'USD', 3, '/content/images/36.png', 1),
(37, 'Zapatillas Nike 270 para mujer', 'Zapatillas Nike para mujer como nuevas ', 'Women', 'Brand12', 'Size12', 'New', 139.99, 'USD', 6, '/content/images/37.png', 1),
(38, 'Camiseta H&M', 'camiseta vintage de H&M ', 'Women', 'Adidas', '30', 'Usado', 49.99, 'YEN', 2, '/content/images/38.png', 1),
(39, 'Zapatillas Birkenstock', 'Zapatillas Birkenstock', 'Women', 'Adidas', '30', 'Usado', 49.99, 'YEN', 3, '/content/images/39.png', 1),
(40, 'Camiseta OVS', 'Camiseta básica OVS azul mar', 'Men', 'asd', '123', 'Nuevo', 56.00, 'EUR', 5, '/content/images/40.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `rating_user` int(11) DEFAULT NULL,
  `rated_user` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `rating_user`, `rated_user`, `rating`) VALUES
(1, 1, 2, 3),
(2, 1, 3, 2),
(12, 3, 1, 5),
(13, 2, 4, 3),
(14, 5, 3, 2),
(15, 4, 1, 4),
(16, 2, 3, 5),
(17, 3, 5, 3),
(18, 4, 2, 1),
(19, 5, 1, 4),
(20, 2, 5, 2),
(21, 3, 4, 3),
(22, 4, 5, 1),
(23, 5, 2, 4),
(25, 1, 4, 2),
(26, 1, 5, 5),
(28, 1, 6, 2),
(29, 1, 21, 1),
(30, 1, 12, 5),
(31, 1, 20, 3),
(32, 1, 19, 1),
(33, 1, 17, 0),
(35, 1, 7, 4),
(36, 1, 10, 2),
(39, 1, 8, 5),
(40, 1, 9, 3),
(41, 1, 15, 2),
(42, 1, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagePath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `imagePath`) VALUES
(1, 'uchigatana', '123', '/content/images/users/emo.png'),
(2, 'DrakeTheNomad', 'password1', '/content/images/users/astarion.png'),
(3, 'LunaSculptor83', 'password2', '/content/images/users/eminem.png'),
(4, 'AthenaExplorer', 'password3', '/content/images/users/erizo.png'),
(5, 'SonicWandererX', 'password4', '/content/images/users/geralt.png'),
(6, 'EzioGalactic', 'password5', '/content/images/users/icecube.png'),
(7, 'SeraphinaDream', 'password6', '/content/images/users/shadowheart.png'),
(8, 'LeonStardust', 'password7', '/content/images/users/xbox1.png'),
(9, 'JoelStellarCraft', 'password8', '/content/images/users/emo.png'),
(10, 'NebulaNyx', 'password9', '/content/images/users/astarion.png'),
(11, 'LaraQuantumRaider', 'password10', '/content/images/users/shadowheart.png'),
(12, 'EthanCosmicHarmony', 'password11', '/content/images/users/erizo.png'),
(13, 'ZaraPixelQuest', 'password12', '/content/images/users/eminem.png'),
(14, 'DanteEtheric', 'password13', '/content/images/users/icecube.png'),
(15, 'IsabellaQuantum', 'password14', '/content/images/users/geralt.png'),
(16, 'RaidenRiftWalker', 'password15', '/content/images/users/emo.png'),
(17, 'EllieEchoWhisper', 'password16', '/content/images/users/icecube.png'),
(18, 'SamusCelestial', 'password17', '/content/images/users/erizo.png'),
(19, 'Ice Cube', 'password18', '/content/images/users/astarion.png'),
(20, 'Dr Dre', 'password19', '/content/images/users/xbox1.png'),
(21, 'DOGG', 'password20', '/content/images/users/shadowheart.png');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`) VALUES
(1, 'uchigatana', '123'),
(2, 'test', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `fecha` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `idUsuario`, `idProducto`, `fecha`) VALUES
(1, 1, 1, '2023-12-01'),
(2, 2, 2, '2023-12-01'),
(3, 1, 3, '2023-12-02'),
(4, 1, 6, '2023-12-02'),
(5, 1, 7, '2023-12-02'),
(6, 1, 8, '2023-12-02'),
(7, 1, 9, '2023-12-02'),
(8, 1, 10, '2023-12-02'),
(9, 1, 11, '2023-12-02'),
(10, 1, 13, '2023-12-03'),
(11, 1, 12, '2023-12-04'),
(12, 1, 16, '2023-12-04'),
(13, 1, 24, '2023-12-04'),
(14, 1, 14, '2023-12-04'),
(15, 1, 18, '2023-12-04'),
(16, 1, 23, '2023-12-04'),
(17, 1, 35, '2023-12-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriaproducts`
--
ALTER TABLE `categoriaproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_coords`
--
ALTER TABLE `pma__designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `UK_RATINGUSERS_RATING` (`rating_user`,`rated_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idProducto` (`idProducto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categoriaproducts`
--
ALTER TABLE `categoriaproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categoriaproducts`
--
ALTER TABLE `categoriaproducts`
  ADD CONSTRAINT `categoriaproducts_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `categoriaproducts_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`);

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
