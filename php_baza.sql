-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 08:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_frizer`
--
CREATE DATABASE IF NOT EXISTS `php_frizer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `php_frizer`;

-- --------------------------------------------------------

--
-- Table structure for table `frizer`
--

CREATE TABLE `frizer` (
  `id` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `broj_telefona` varchar(30) NOT NULL,
  `lokal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frizer`
--

INSERT INTO `frizer` (`id`, `ime`, `prezime`, `broj_telefona`, `lokal`) VALUES
(1, 'ImeF', 'PrezimeF', '0646322134', 'Lokal 1'),
(2, 'ImeF2', 'ImeF3', '0645623342', 'Lokal 2');

-- --------------------------------------------------------

--
-- Table structure for table `musterija`
--

CREATE TABLE `musterija` (
  `id` int(11) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `broj_telefona` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `musterija`
--

INSERT INTO `musterija` (`id`, `ime`, `prezime`, `broj_telefona`) VALUES
(1, 'ImeM1', 'PrezimeM1', '0615342342'),
(2, 'ImeM2', 'PrezimeM2', '0618342321');

-- --------------------------------------------------------

--
-- Table structure for table `termin`
--

CREATE TABLE `termin` (
  `id` int(11) NOT NULL,
  `datum` varchar(20) NOT NULL,
  `lokal` varchar(50) NOT NULL,
  `musterija_id` int(11) NOT NULL,
  `frizer_id` int(11) NOT NULL,
  `usluga` varchar(30) NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `termin`
--

INSERT INTO `termin` (`id`, `datum`, `lokal`, `musterija_id`, `frizer_id`, `usluga`, `cena`) VALUES
(1, '28.12.2022', 'Lokal 1', 1, 2, 'Feniranje ', 1500),
(2, '27.12.2022', 'Lokal 2', 2, 1, 'Farbanje', 2800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frizer`
--
ALTER TABLE `frizer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musterija`
--
ALTER TABLE `musterija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termin`
--
ALTER TABLE `termin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `musterija_id_fk` (`musterija_id`),
  ADD KEY `frizer_id_fk` (`frizer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frizer`
--
ALTER TABLE `frizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `musterija`
--
ALTER TABLE `musterija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `termin`
--
ALTER TABLE `termin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `termin`
--
ALTER TABLE `termin`
  ADD CONSTRAINT `frizer_id_fk` FOREIGN KEY (`frizer_id`) REFERENCES `frizer` (`id`),
  ADD CONSTRAINT `musterija_id_fk` FOREIGN KEY (`musterija_id`) REFERENCES `musterija` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
