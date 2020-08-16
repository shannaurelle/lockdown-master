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
-- Table structure for table `table_template`
--

CREATE TABLE `table_template` (
  `table_id` int(11) NOT NULL,
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

--
-- Dumping data for table `table_template`
--

INSERT INTO `table_template` (`table_id`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `field10`, `field11`, `field12`, `field13`) VALUES
(1, 'first_name', 'middle_name', 'last_name', 'email', 'phone_number', 'address', 'province', 'city', 'country', 'field_of_interest', 'paymaya_account_number', 'TIN_number', 'username');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_template`
--
ALTER TABLE `table_template`
  ADD PRIMARY KEY (`table_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_template`
--
ALTER TABLE `table_template`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
