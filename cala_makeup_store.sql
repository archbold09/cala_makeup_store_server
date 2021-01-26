-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2021 at 05:47 PM
-- Server version: 5.7.32
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cala_makeup_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `state`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Piel', 1, 'piel', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(2, 'Ojos', 1, 'ojos', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(3, 'Cuidado para la piel', 1, 'cuidado-para-la-piel', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(4, 'Accesorios', 1, 'accesorios', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(5, 'Promociones', 1, 'promociones', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(6, 'Labios', 1, 'labios', '2021-01-22 01:22:05', '2021-01-23 02:04:00'),
(7, 'Cejas', 1, 'cejas', '2021-01-22 01:22:05', '2021-01-23 02:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `salePrice` double NOT NULL,
  `purchasePrice` double NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT '''https://source.unsplash.com/user/erondu/1600x900''',
  `slug` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `id_brand` int(11) DEFAULT NULL,
  `id_subcategory` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `salePrice`, `purchasePrice`, `image`, `slug`, `state`, `id_brand`, `id_subcategory`, `created_at`, `updated_at`) VALUES
(57, 'Broom - Angled', 654.91, 23.91, 'http://dummyimage.com/162x224.png/dddddd/000000', '', 1, NULL, 5, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(58, 'Bread - English Muffin', 174.58, 41.54, 'http://dummyimage.com/198x193.jpg/ff4444/ffffff', '', 1, NULL, 6, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(60, 'Cheese - Mozzarella, Buffalo', 839.06, 92.2, 'http://dummyimage.com/103x141.bmp/dddddd/000000', '', 1, NULL, 1, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(61, 'Ostrich - Fan Fillet', 330.32, 59, 'http://dummyimage.com/168x233.png/5fa2dd/ffffff', '', 1, NULL, 1, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(66, 'Tea Peppermint', 397.9, 28.66, 'http://dummyimage.com/245x229.bmp/cc0000/ffffff', '', 1, NULL, 1, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(67, 'Strawberries - California', 987.4, 88.06, 'http://dummyimage.com/133x219.jpg/ff4444/ffffff', '', 1, NULL, 7, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(72, 'Fish - Halibut, Cold Smoked', 994.38, 73.4, 'http://dummyimage.com/244x114.bmp/cc0000/ffffff', '', 1, NULL, 4, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(73, 'Devonshire Cream', 913.2, 32.75, 'http://dummyimage.com/167x203.bmp/ff4444/ffffff', '', 1, NULL, 4, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(87, 'Arrowroot', 471.88, 32.04, 'http://dummyimage.com/168x115.bmp/dddddd/000000', '', 1, NULL, 6, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(92, 'Chocolate - Milk', 635.68, 5.02, 'http://dummyimage.com/111x204.png/dddddd/000000', '', 1, NULL, 4, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(95, 'Mushroom - Chanterelle Frozen', 852.16, 84.17, 'http://dummyimage.com/248x130.jpg/ff4444/ffffff', '', 1, NULL, 6, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(97, 'Sugar - Sweet N Low, Individual', 244.96, 67.69, 'http://dummyimage.com/229x195.bmp/5fa2dd/ffffff', '', 1, NULL, 4, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(100, 'Apricots - Dried', 212.68, 47.98, 'http://dummyimage.com/224x248.bmp/ff4444/ffffff', '', 1, NULL, 2, '2021-01-26 21:25:56', '2021-01-26 21:25:56'),
(107, 'Broom - Angled', 654.91, 23.91, 'http://dummyimage.com/162x224.png/dddddd/000000', '', 1, NULL, 5, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(108, 'Bread - English Muffin', 174.58, 41.54, 'http://dummyimage.com/198x193.jpg/ff4444/ffffff', '', 1, NULL, 6, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(110, 'Cheese - Mozzarella, Buffalo', 839.06, 92.2, 'http://dummyimage.com/103x141.bmp/dddddd/000000', '', 1, NULL, 1, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(111, 'Ostrich - Fan Fillet', 330.32, 59, 'http://dummyimage.com/168x233.png/5fa2dd/ffffff', '', 1, NULL, 1, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(116, 'Tea Peppermint', 397.9, 28.66, 'http://dummyimage.com/245x229.bmp/cc0000/ffffff', '', 1, NULL, 1, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(117, 'Strawberries - California', 987.4, 88.06, 'http://dummyimage.com/133x219.jpg/ff4444/ffffff', '', 1, NULL, 7, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(122, 'Fish - Halibut, Cold Smoked', 994.38, 73.4, 'http://dummyimage.com/244x114.bmp/cc0000/ffffff', '', 1, NULL, 4, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(123, 'Devonshire Cream', 913.2, 32.75, 'http://dummyimage.com/167x203.bmp/ff4444/ffffff', '', 1, NULL, 4, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(137, 'Arrowroot', 471.88, 32.04, 'http://dummyimage.com/168x115.bmp/dddddd/000000', '', 1, NULL, 6, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(142, 'Chocolate - Milk', 635.68, 5.02, 'http://dummyimage.com/111x204.png/dddddd/000000', '', 1, NULL, 4, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(145, 'Mushroom - Chanterelle Frozen', 852.16, 84.17, 'http://dummyimage.com/248x130.jpg/ff4444/ffffff', '', 1, NULL, 6, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(147, 'Sugar - Sweet N Low, Individual', 244.96, 67.69, 'http://dummyimage.com/229x195.bmp/5fa2dd/ffffff', '', 1, NULL, 4, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(150, 'Apricots - Dried', 212.68, 47.98, 'http://dummyimage.com/224x248.bmp/ff4444/ffffff', '', 1, NULL, 2, '2021-01-26 21:26:38', '2021-01-26 21:26:38'),
(154, 'Nantucket Orange Juice', 281.56, 31.44, 'http://dummyimage.com/102x250.png/5fa2dd/ffffff', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(156, 'True - Vue Containers', 594.87, 27.73, 'http://dummyimage.com/242x139.png/cc0000/ffffff', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(159, 'Wine - White, Cooking', 813.41, 98.38, 'http://dummyimage.com/163x145.bmp/cc0000/ffffff', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(166, 'Shrimp - Prawn', 412.7, 82.09, 'http://dummyimage.com/181x134.jpg/5fa2dd/ffffff', '', 1, NULL, 7, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(170, 'Potatoes - Peeled', 382.34, 19.4, 'http://dummyimage.com/227x213.jpg/ff4444/ffffff', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(178, 'Quail - Whole, Bone - In', 922.38, 90.76, 'http://dummyimage.com/241x129.png/dddddd/000000', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(182, 'Sole - Iqf', 871.19, 23.52, 'http://dummyimage.com/133x194.bmp/5fa2dd/ffffff', '', 1, NULL, 1, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(184, 'Cheese - Pont Couvert', 191.83, 15.36, 'http://dummyimage.com/144x198.png/5fa2dd/ffffff', '', 1, NULL, 6, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(193, 'Pate - Cognac', 993.47, 3.9, 'http://dummyimage.com/245x197.jpg/5fa2dd/ffffff', '', 1, NULL, 3, '2021-01-26 21:29:18', '2021-01-26 21:29:18'),
(199, 'Wine - White, Schroder And Schyl', 480.97, 50.69, 'http://dummyimage.com/204x193.jpg/dddddd/000000', '', 1, NULL, 4, '2021-01-26 21:29:18', '2021-01-26 21:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `slug` varchar(100) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `state`, `slug`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Primers', 1, 'primers', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(2, 'Correctores', 1, 'correctores', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(3, 'Bases', 1, 'bases', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(4, 'Contornos e iluminadores', 1, 'contornos-iluminadores', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(5, 'Iluminadores', 1, 'iluminadores', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(6, 'Rubores', 1, 'rubores', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
(7, 'Polvos', 1, 'polvos', 1, '2021-01-22 01:51:12', '2021-01-26 19:44:00'),
(8, 'Pestaniñas', 1, 'pestaninas', 2, '2021-01-22 01:52:43', '2021-01-23 02:11:07'),
(9, 'Delineadores', 1, 'delineadores', 2, '2021-01-22 01:52:43', '2021-01-23 02:11:07'),
(10, 'Pestañas postizas', 1, 'pestanas-postizas', 2, '2021-01-22 01:52:43', '2021-01-23 02:11:07'),
(11, 'Sombras', 1, 'sombras', 2, '2021-01-22 01:52:43', '2021-01-23 02:11:07'),
(12, 'Primers', 1, 'primers', 2, '2021-01-22 01:52:43', '2021-01-23 02:11:07'),
(13, 'Tónicos', 1, 'tonicos', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(14, 'Desmaquillantes', 1, 'desmaquillantes', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(15, 'Exfoliantes', 1, 'exfoliantes', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(16, 'Mascarillas', 1, 'mascarillas', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(17, 'Otros', 1, 'otros', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(18, 'Cremas', 1, 'cremas', 3, '2021-01-22 01:54:26', '2021-01-23 02:11:07'),
(19, 'Esponjas', 1, 'esponjas', 4, '2021-01-22 01:55:40', '2021-01-23 02:11:07'),
(20, 'Brochas', 1, 'brochas', 4, '2021-01-22 01:55:40', '2021-01-23 02:11:07'),
(21, 'Cintillos', 1, 'cintillos', 4, '2021-01-22 01:55:40', '2021-01-23 02:11:07'),
(22, 'Labiales en barra', 1, 'labiales-barra', 6, '2021-01-22 01:58:43', '2021-01-23 02:11:07'),
(23, 'Lápices', 1, 'lapices', 6, '2021-01-22 01:58:43', '2021-01-23 02:11:07'),
(24, 'Labiales liquidos', 1, 'labiales-liquidos', 6, '2021-01-22 01:58:43', '2021-01-23 02:11:07'),
(25, 'Brillos y humectantes', 1, 'brillos-humectantes', 6, '2021-01-22 01:58:43', '2021-01-23 02:11:07'),
(26, 'Lápices', 1, 'lapices', 7, '2021-01-22 02:00:51', '2021-01-23 02:11:07'),
(27, 'Betunes', 1, 'betunes', 7, '2021-01-22 02:00:51', '2021-01-23 02:11:07'),
(28, 'Kit', 1, 'kit', 7, '2021-01-22 02:00:51', '2021-01-23 02:11:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_subcategory` (`id_subcategory`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_subcategory`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
