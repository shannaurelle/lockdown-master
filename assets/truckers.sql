-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 02:35 PM
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
-- Table structure for table `truckers`
--

CREATE TABLE `truckers` (
  `truck_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `truck_operator` varchar(512) NOT NULL,
  `truck_origin` varchar(512) NOT NULL,
  `truck_model` varchar(512) NOT NULL,
  `truck_plate_number` varchar(256) NOT NULL,
  `truck_capacity` double NOT NULL,
  `truck_service_type` varchar(256) NOT NULL,
  `truck_delivery_fee` double NOT NULL,
  `truck_driver_license_imgpath` varchar(256) NOT NULL,
  `truck_picture_path` varchar(256) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `truckers`
--

INSERT INTO `truckers` (`truck_id`, `owner_id`, `truck_operator`, `truck_origin`, `truck_model`, `truck_plate_number`, `truck_capacity`, `truck_service_type`, `truck_delivery_fee`, `truck_driver_license_imgpath`, `truck_picture_path`, `date_created`) VALUES
(1, 0, 'Oliver Driver', 'Calbayog City', 'Mitsubishi Strada', 'AGA 1625', 100, 'Normal', 100, '', '', '0000-00-00 00:00:00'),
(2, 0, 'Arman Driver', 'Calbayog City', 'Ford Ranger', 'AXA 1617', 567, 'Refrigerated', 100, '', '', '2020-08-21 02:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `truckers`
--
ALTER TABLE `truckers`
  ADD PRIMARY KEY (`truck_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `truckers`
--
ALTER TABLE `truckers`
  MODIFY `truck_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
