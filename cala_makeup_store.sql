-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2021 at 11:56 AM
-- Server version: 5.7.32
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cala_makeup_store`
--
CREATE DATABASE IF NOT EXISTS `cala_makeup_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cala_makeup_store`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
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
(1, 'Piel', 1, 'Piel', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(2, 'Ojos', 1, 'Ojos', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(3, 'Cuidado para la piel', 1, 'Cuidado para la piel', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(4, 'Accesorios', 1, 'Accesorios', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(5, 'Promociones', 1, 'Promociones', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(6, 'Labios', 1, 'Labios', '2021-01-22 06:22:05', '2021-01-23 14:51:01'),
(7, 'Cejas', 1, 'Cejas', '2021-01-22 06:22:05', '2021-01-23 14:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `salePrice` double NOT NULL,
  `purchasePrice` double NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'https://picsum.photos/1000/1000',
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `id_brand` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'Primers', 1, 'primers', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(2, 'Correctores', 1, 'correctores', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(3, 'Bases', 1, 'bases', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(4, 'Contornos e iluminadores', 1, 'contornos-iluminadores', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(5, 'Iluminadores', 1, 'iluminadores', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(6, 'Rubores', 1, 'rubores', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(7, 'Colvos', 1, 'polvos', 1, '2021-01-22 06:51:12', '2021-01-23 14:46:03'),
(8, 'Pestaniñas', 1, 'pestaniñas', 2, '2021-01-22 06:52:43', '2021-01-23 14:46:03'),
(9, 'Delineadores', 1, 'delineadores', 2, '2021-01-22 06:52:43', '2021-01-23 14:46:03'),
(10, 'Pestañas postizas', 1, 'pestañas-postizas', 2, '2021-01-22 06:52:43', '2021-01-23 14:46:03'),
(11, 'Sombras', 1, 'sombras', 2, '2021-01-22 06:52:43', '2021-01-23 14:46:03'),
(12, 'Primers', 1, 'primers', 2, '2021-01-22 06:52:43', '2021-01-23 14:46:03'),
(13, 'Tónicos', 1, 'tonicos', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(14, 'Desmaquillantes', 1, 'desmaquillantes', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(15, 'Exfoliantes', 1, 'exfoliantes', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(16, 'Mascarillas', 1, 'mascarillas', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(17, 'Otros', 1, 'otros', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(18, 'Cremas', 1, 'cremas', 3, '2021-01-22 06:54:26', '2021-01-23 14:46:03'),
(19, 'Esponjas', 1, 'esponjas', 4, '2021-01-22 06:55:40', '2021-01-23 14:46:03'),
(20, 'Brochas', 1, 'brochas', 4, '2021-01-22 06:55:40', '2021-01-23 14:46:04'),
(21, 'Cintillos', 1, 'cintillos', 4, '2021-01-22 06:55:40', '2021-01-23 14:46:04'),
(22, 'Labiales en barra', 1, 'labiales-barra', 6, '2021-01-22 06:58:43', '2021-01-23 14:46:04'),
(23, 'Lápices', 1, 'lapices', 6, '2021-01-22 06:58:43', '2021-01-23 14:46:04'),
(24, 'Labiales liquidos', 1, 'labiales-liquidos', 6, '2021-01-22 06:58:43', '2021-01-23 14:46:04'),
(25, 'Brillos y humectantes', 1, 'brillos-humectantes', 6, '2021-01-22 06:58:43', '2021-01-23 14:46:04'),
(26, 'Lápices', 1, 'lapices', 7, '2021-01-22 07:00:51', '2021-01-23 14:46:04'),
(27, 'Betunes', 1, 'betunes', 7, '2021-01-22 07:00:51', '2021-01-23 14:46:04'),
(28, 'Kit', 1, 'kit', 7, '2021-01-22 07:00:51', '2021-01-23 14:46:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `id_brand` (`id_brand`);

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
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
