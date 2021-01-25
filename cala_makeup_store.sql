-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 12:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cala_makeup_store`
--
CREATE DATABASE IF NOT EXISTS `cala_makeup_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cala_makeup_store`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `id_brand` int(11) NOT NULL,
  `id_subcategory` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(100) NOT NULL,
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
(7, 'Colvos', 1, 'colvos', 1, '2021-01-22 01:51:12', '2021-01-23 02:11:07'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
