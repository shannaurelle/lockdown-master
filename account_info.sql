-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2020 at 05:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `info_id` int(11) NOT NULL,
  `field1` varchar(512) NOT NULL,
  `field2` varchar(512) NOT NULL,
  `field3` varchar(512) NOT NULL,
  `field4` varchar(512) NOT NULL,
  `field5` varchar(512) NOT NULL,
  `field6` varchar(512) NOT NULL,
  `field7` varchar(512) NOT NULL,
  `field8` varchar(512) NOT NULL,
  `field9` varchar(512) NOT NULL,
  `field10` varchar(512) NOT NULL,
  `field11` varchar(512) NOT NULL,
  `field12` varchar(512) NOT NULL,
  `field13` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
