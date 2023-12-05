-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 02:50 AM
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
(1, 'Comfort Fit Trousers', 'Casual trousers for men', 'Men', 'BrandX', 'Medium', 'New', 39.99, 'USD', 1, '/content/images/default.png', 1),
(2, 'Cotton T-shirt', 'Classic white T-shirt', 'Women', 'FashionCo', 'Large', 'New', 19.99, 'USD', 2, '/content/images/default.png', 1),
(3, 'Winter Jacket', 'Water-resistant winter jacket', 'Men', 'OuterwearTech', 'Small', 'New', 129.99, 'USD', 3, '/content/images/default.png', 1),
(4, 'Product 1', 'Description 1', 'Men', 'Brand X', 'M', 'New', 50.00, 'USD', 1, '/content/images/default.png', 1),
(5, 'Product 2', 'Description 2', 'Men', 'Brand Y', 'L', 'Used', 30.00, 'USD', 1, '/content/images/default.png', 1),
(6, 'Product 3', 'Description 3', 'Women', 'Brand Z', 'S', 'New', 75.50, 'EUR', 2, '/content/images/default.png', 1),
(7, 'Product 4', 'Description 4', 'Women', 'Brand X', 'XL', 'Used', 20.00, 'USD', 2, '/content/images/default.png', 1),
(8, 'Product 33', 'Description 33', 'Women', 'Brand Z', 'M', 'New', 40.00, 'USD', 10, '/content/images/default.png', 1),
(9, 'Product 34', 'Description 34', 'Men', 'Brand Y', 'L', 'Used', 60.00, 'USD', 10, '/content/images/default.png', 1),
(10, 'Product 35', 'Description 35', 'Men', 'Brand X', 'S', 'New', 25.00, 'USD', 10, '/content/images/default.png', 1),
(11, 'Product 5', 'Description 5', 'Men', 'Brand Y', 'M', 'Used', 45.00, 'USD', 3, '/content/images/default.png', 1),
(12, 'Product 6', 'Description 6', 'Men', 'Brand Z', 'XL', 'New', 55.00, 'USD', 3, '/content/images/default.png', 1),
(13, 'Product 7', 'Description 7', 'Men', 'Brand X', 'S', 'New', 30.00, 'USD', 4, '/content/images/default.png', 1),
(14, 'Product 8', 'Description 8', 'Men', 'Brand Y', 'L', 'Used', 40.00, 'USD', 4, '/content/images/default.png', 1),
(15, 'Product 9', 'Description 9', 'Men', 'Brand Z', 'M', 'New', 60.00, 'USD', 5, '/content/images/default.png', 1),
(16, 'Product 10', 'Description 10', 'Men', 'Brand X', 'XL', 'Used', 25.00, 'USD', 5, '/content/images/default.png', 1),
(17, 'Product 11', 'Description 11', 'Men', 'Brand Y', 'S', 'Used', 35.00, 'USD', 6, '/content/images/default.png', 1),
(18, 'Product 12', 'Description 12', 'Men', 'Brand Z', 'L', 'New', 50.00, 'USD', 6, '/content/images/default.png', 1),
(19, 'Product 13', 'Description 13', 'Women', 'Brand X', 'M', 'New', 45.00, 'USD', 7, '/content/images/default.png', 1),
(20, 'Product 14', 'Description 14', 'Women', 'Brand Y', 'XL', 'Used', 30.00, 'USD', 7, '/content/images/default.png', 1),
(21, 'Product 15', 'Description 15', 'Women', 'Brand Z', 'S', 'New', 40.00, 'USD', 8, '/content/images/default.png', 1),
(22, 'Product 16', 'Description 16', 'Women', 'Brand X', 'L', 'Used', 55.00, 'USD', 8, '/content/images/default.png', 1),
(23, 'Product 17', 'Description 17', 'Women', 'Brand Y', 'M', 'Used', 50.00, 'USD', 9, '/content/images/default.png', 1),
(24, 'Product 18', 'Description 18', 'Women', 'Brand Z', 'XL', 'New', 35.00, 'USD', 9, '/content/images/default.png', 1),
(25, '4bigguys', 'desc', 'Women', 'Adidas', '30', 'Usado', 49.99, 'RUB', 1, '/content/images/14bigguys.png', 0),
(26, 'Kids Product', 'Description1', 'Women', 'Brand1', 'Size1', 'New', 29.99, 'USD', 1, '/content/images/default.png', 1),
(27, 'Beauty Product', 'Description2', 'Women', 'Brand2', 'Size2', 'New', 39.99, 'USD', 1, '/content/images/default.png', 1),
(28, 'Bags Product', 'Description3', 'Women', 'Brand3', 'Size3', 'New', 49.99, 'USD', 1, '/content/images/default.png', 1),
(29, 'Activewear Product', 'Description4', 'Men', 'Brand4', 'Size4', 'New', 59.99, 'USD', 1, '/content/images/default.png', 1),
(30, 'Sleepwear Product', 'Description5', 'Men', 'Brand5', 'Size5', 'New', 69.99, 'USD', 1, '/content/images/default.png', 1),
(31, 'Swimwear Product', 'Description6', 'Men', 'Brand6', 'Size6', 'New', 79.99, 'USD', 1, '/content/images/default.png', 1),
(32, 'Underwear Product', 'Description7', 'Men', 'Brand7', 'Size7', 'New', 89.99, 'USD', 1, '/content/images/default.png', 1),
(33, 'Shoes Product', 'Description8', 'Men', 'Brand8', 'Size8', 'New', 99.99, 'USD', 1, '/content/images/default.png', 1),
(34, 'Tops Product', 'Description9', 'Men', 'Brand9', 'Size9', 'New', 109.99, 'USD', 1, '/content/images/default.png', 1),
(35, 'Dresses Product', 'Description10', 'Men', 'Brand10', 'Size10', 'New', 119.99, 'USD', 1, '/content/images/default.png', 1),
(36, 'Men Product', 'Description11', 'Men', 'Brand11', 'Size11', 'New', 129.99, 'USD', 1, '/content/images/default.png', 1),
(37, 'Women Product', 'Description12', 'Women', 'Brand12', 'Size12', 'New', 139.99, 'USD', 1, '/content/images/default.png', 1),
(38, 's', 'desc', 'Men', 'Adidas', '30', 'Usado', 49.99, 'YEN', 1, '/content/images/1s.png', 1),
(39, 's', 'desc', 'Men', 'Adidas', '30', 'Usado', 49.99, 'YEN', 1, '/content/images/.png', 1);

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
(36, 1, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'uchigatana', '123'),
(2, 'user1', 'password1'),
(3, 'user2', 'password2'),
(4, 'user3', 'password3'),
(5, 'user4', 'password4'),
(6, 'user5', 'password5'),
(7, 'user6', 'password6'),
(8, 'user7', 'password7'),
(9, 'user8', 'password8'),
(10, 'user9', 'password9'),
(11, 'user10', 'password10'),
(12, 'user11', 'password11'),
(13, 'user12', 'password12'),
(14, 'user13', 'password13'),
(15, 'user14', 'password14'),
(16, 'user15', 'password15'),
(17, 'user16', 'password16'),
(18, 'user17', 'password17'),
(19, 'user18', 'password18'),
(20, 'user19', 'password19'),
(21, 'user20', 'password20');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
