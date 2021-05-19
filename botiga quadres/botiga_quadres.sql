-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2021 at 06:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botiga_quadres`
--

-- --------------------------------------------------------

--
-- Table structure for table `comprador_quadres`
--

CREATE TABLE `comprador_quadres` (
  `nom` varchar(30) NOT NULL,
  `cognom` varchar(30) NOT NULL,
  `DNI` text NOT NULL,
  `quadre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_quadres`
--

CREATE TABLE `stock_quadres` (
  `id_quadres` int(11) NOT NULL,
  `preu` int(11) NOT NULL,
  `autor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comprador_quadres`
--
ALTER TABLE `comprador_quadres`
  ADD PRIMARY KEY (`quadre_id`),
  ADD UNIQUE KEY `DNI` (`DNI`(9));

--
-- Indexes for table `stock_quadres`
--
ALTER TABLE `stock_quadres`
  ADD PRIMARY KEY (`id_quadres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_quadres`
--
ALTER TABLE `stock_quadres`
  MODIFY `id_quadres` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comprador_quadres`
--
ALTER TABLE `comprador_quadres`
  ADD CONSTRAINT `comprador_quadres_ibfk_1` FOREIGN KEY (`quadre_id`) REFERENCES `stock_quadres` (`id_quadres`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
