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
-- Database: `Vueling`
--

-- --------------------------------------------------------

--
-- Table structure for table `avions`
--

CREATE TABLE `avions` (
  `id_avio` int(11) NOT NULL,
  `capacitat` int(10) NOT NULL,
  `model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avions`
--

INSERT INTO `avions` (`id_avio`, `capacitat`, `model`) VALUES
(1, 138, 'Airbus A380'),
(2, 138, 'Boeing 747');

-- --------------------------------------------------------

--
-- Table structure for table `seients`
--

CREATE TABLE `seients` (
  `id_seient` int(11) NOT NULL,
  `avio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seients`
--

INSERT INTO `seients` (`id_seient`, `avio_id`) VALUES
(138, 1),
(20, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`id_avio`),
  ADD UNIQUE KEY `id_avio` (`id_avio`);

--
-- Indexes for table `seients`
--
ALTER TABLE `seients`
  ADD PRIMARY KEY (`id_seient`),
  ADD KEY `avio_id` (`avio_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avions`
--
ALTER TABLE `avions`
  MODIFY `id_avio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seients`
--
ALTER TABLE `seients`
  MODIFY `id_seient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seients`
--
ALTER TABLE `seients`
  ADD CONSTRAINT `seients_ibfk_1` FOREIGN KEY (`avio_id`) REFERENCES `avions` (`id_avio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
