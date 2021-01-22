-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 03:03 AM
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Piel', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(2, 'Ojos', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(3, 'Cuidado para la piel', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(4, 'Accesorios', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(5, 'Promociones', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(6, 'Labios', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05'),
(7, 'Cejas', 0, '2021-01-22 01:22:05', '2021-01-22 01:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `salePrice` double NOT NULL,
  `purchasePrice` double NOT NULL,
  `id_brand` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
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
  `id_category` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `state`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Primers', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(2, 'Correctores', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(3, 'Bases', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(4, 'Contornos e iluminadores', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(5, 'Iluminadores', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(6, 'Rubores', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(7, 'Colvos', 1, 1, '2021-01-22 01:51:12', '2021-01-22 01:51:12'),
(8, 'Pestaniñas', 1, 2, '2021-01-22 01:52:43', '2021-01-22 01:52:43'),
(9, 'Delineadores', 1, 2, '2021-01-22 01:52:43', '2021-01-22 01:52:43'),
(10, 'Pestañas postizas', 1, 2, '2021-01-22 01:52:43', '2021-01-22 01:52:43'),
(11, 'Sombras', 1, 2, '2021-01-22 01:52:43', '2021-01-22 01:52:43'),
(12, 'Primers', 1, 2, '2021-01-22 01:52:43', '2021-01-22 01:52:43'),
(13, 'Tónicos', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(14, 'Desmaquillantes', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(15, 'Exfoliantes', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(16, 'Mascarillas', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(17, 'Otros', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(18, 'Cremas', 1, 3, '2021-01-22 01:54:26', '2021-01-22 01:54:26'),
(19, 'Esponjas', 1, 4, '2021-01-22 01:55:40', '2021-01-22 01:55:40'),
(20, 'Brochas', 1, 4, '2021-01-22 01:55:40', '2021-01-22 01:55:40'),
(21, 'Cintillos', 1, 4, '2021-01-22 01:55:40', '2021-01-22 01:55:40'),
(22, 'Labiales en barra', 1, 6, '2021-01-22 01:58:43', '2021-01-22 01:58:43'),
(23, 'Lápices', 1, 6, '2021-01-22 01:58:43', '2021-01-22 01:58:43'),
(24, 'Labiales liquidos', 1, 6, '2021-01-22 01:58:43', '2021-01-22 01:58:43'),
(25, 'Brillos y humectantes', 1, 6, '2021-01-22 01:58:43', '2021-01-22 01:58:43'),
(26, 'Lápices', 1, 7, '2021-01-22 02:00:51', '2021-01-22 02:00:51'),
(27, 'Betunes', 1, 7, '2021-01-22 02:00:51', '2021-01-22 02:00:51'),
(28, 'Kit', 1, 7, '2021-01-22 02:00:51', '2021-01-22 02:00:51');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
