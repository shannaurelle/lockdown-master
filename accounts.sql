-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 12:07 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lockdown-storage`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `access` varchar(256) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `access`, `date_created`) VALUES
(69, 'Vaccaria', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Seller', '2020-08-01 00:00:00'),
(2222, 'Trucker', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Trucker', '2020-08-01 00:00:00'),
(535833, 'Fucker', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Buyer', '2020-08-01 00:00:00'),
(22223232, 'Raven', '$2b$10$efncogp/VUkFVuvwd2HQPuWnrzDL4baJDUL1M73l4Y2st353TECh2', 'Seller', '2020-08-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
