-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 03:22 PM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(512) NOT NULL,
  `product_owner` text NOT NULL,
  `product_description` varchar(512) NOT NULL,
  `product_price` double NOT NULL,
  `product_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_tag` tinytext NOT NULL,
  `product_volume` int(11) NOT NULL,
  `product_popularity` tinyint(4) NOT NULL,
  `product_rating` tinyint(4) NOT NULL,
  `product_img_path` longtext NOT NULL,
  `product_packaging` varchar(128) NOT NULL,
  `product_qty_per_package` int(11) NOT NULL,
  `product_unit_measurement` varchar(16) NOT NULL,
  `product_location` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_owner`, `product_description`, `product_price`, `product_date`, `product_tag`, `product_volume`, `product_popularity`, `product_rating`, `product_img_path`, `product_packaging`, `product_qty_per_package`, `product_unit_measurement`, `product_location`) VALUES
(1, 'Apple', 'Hans', 'Fuji', 15, '2020-08-24 19:09:08', 'Agriculture', 200, 67, 84, 'assets/images/dummy_images/1_x.png', 'Box', 5, 'kg', 'Tacloban'),
(2, 'Apple', 'Hans', 'Pacific Rose', 30, '2020-08-24 19:08:28', 'Agriculture', 150, 67, 91, 'assets/images/dummy_images/2_x.png', 'Box', 5, 'kg', 'Calbayog'),
(3, 'Orange', 'Hans', 'Jaffa', 12, '2020-08-24 19:08:28', 'Agriculture', 120, 76, 78, 'assets/images/dummy_images/3_x.png', 'Box', 7, 'kg', 'Calbayog'),
(4, 'Orange', 'Hans', 'Valencia', 23, '2020-08-24 19:08:28', 'Agriculture', 430, 6, 89, 'assets/images/dummy_images/4_x.png', 'Box', 8, 'kg', 'Calbayog'),
(5, 'Banana', 'Hans', 'Lady Finger', 11, '2020-08-24 19:08:28', 'Agriculture', 90, 80, 46, 'assets/images/dummy_images/5_x.png', 'Box', 3, 'kg', 'Calbayog'),
(6, 'Banana', 'Hans', 'Gold Finger', 7, '2020-08-24 19:08:28', 'Agriculture', 210, 40, 25, 'assets/images/dummy_images/6_x.png', 'Box', 7, 'kg', 'Calbayog'),
(7, 'Papaya', 'Hans', 'Guinea Gold', 9, '2020-08-24 19:08:28', 'Agriculture', 100, 14, 26, 'assets/images/dummy_images/1_x.png', 'Box', 6, 'kg', 'Calbayog'),
(8, 'Papaya', 'Hans', 'Maradol', 8, '2020-08-24 19:08:28', 'Agriculture', 80, 94, 76, 'assets/images/dummy_images/2_x.png', 'Box', 9, 'kg', 'Calbayog'),
(9, 'Lettuce', 'Hans', 'Butterhead', 9, '2020-08-24 19:08:28', 'Agriculture', 60, 93, 21, 'assets/images/dummy_images/3_x.png', 'Box', 8, 'kg', 'Calbayog'),
(10, 'Lettuce', 'Hans', 'Betavia', 14, '2020-08-24 19:08:28', 'Agriculture', 170, 40, 48, 'assets/images/dummy_images/4_x.png', 'Box', 3, 'kg', 'Calbayog'),
(11, 'Mango', 'Hans', 'Ataulfo', 12, '2020-08-24 19:08:28', 'Agriculture', 50, 39, 54, 'assets/images/dummy_images/5_x.png', 'Box', 7, 'kg', 'Calbayog'),
(12, 'Mango', 'Hans', 'Alphonso', 10, '2020-08-24 19:08:28', 'Agriculture', 240, 90, 4, 'assets/images/dummy_images/6_x.png', 'Box', 6, 'kg', 'Calbayog'),
(13, 'Pineapple', 'Hans', 'Queen', 8, '2020-08-24 19:08:28', 'Agriculture', 160, 12, 98, 'assets/images/dummy_images/1_x.png', 'Box', 4, 'kg', 'Calbayog'),
(14, 'Pineapple', 'Hans', 'Hawaiian', 60, '2020-08-24 19:08:28', 'Agriculture', 240, 93, 98, 'assets/images/dummy_images/2_x.png', 'Box', 9, 'kg', 'Calbayog'),
(15, 'Coconut', 'Hans', 'Malayan Yellow Dwarf', 35, '2020-08-24 19:08:28', 'Agriculture', 600, 35, 51, 'assets/images/dummy_images/3_x.png', 'Sack', 7, 'kg', 'Calbayog'),
(16, 'Crankset', 'Hans', 'FC-MT511-1', 889, '2020-08-24 19:08:28', 'Hardware', 250, 61, 7, 'assets/images/dummy_images/4_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(17, 'Bottom Racket', 'Hans', 'SM-BB52', 705, '2020-08-24 19:08:28', 'Hardware', 450, 95, 62, 'assets/images/dummy_images/5_x.png', 'Box', 4, 'pcs', 'Calbayog'),
(18, 'Rear Derailleur', 'Hans', 'RD-M6100-SGS', 468, '2020-08-24 19:08:28', 'Hardware', 350, 70, 75, 'assets/images/dummy_images/6_x.png', 'Box', 3, 'pcs', 'Calbayog'),
(19, 'Cassette Sprocket', 'Hans', 'CS-M6100-12', 514, '2020-08-24 19:08:28', 'Hardware', 230, 22, 72, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(20, 'Disc Brake Rotor', 'Hans', 'SM-RT64', 902, '2020-08-24 19:08:28', 'Hardware', 130, 24, 81, 'assets/images/dummy_images/2_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(21, 'Brake', 'Hans', 'BR-M6120', 760, '2020-08-24 19:08:28', 'Hardware', 120, 87, 18, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(22, 'Brake Lever', 'Hans', 'BL-M6100', 348, '2020-08-24 19:08:28', 'Hardware', 60, 86, 15, 'assets/images/dummy_images/4_x.png', 'Box', 4, 'pcs', 'Calbayog'),
(23, 'Quick Link', 'Hans', 'SM-CN910-12', 124, '2020-08-24 19:08:28', 'Hardware', 270, 45, 58, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(24, 'Chain', 'Hans', 'CN-M6100', 116, '2020-08-24 19:08:28', 'Hardware', 170, 65, 33, 'assets/images/dummy_images/6_x.png', 'Box', 3, 'pcs', 'Calbayog'),
(25, 'Disc Brake Hose', 'Hans', 'SM-BH90-SS', 241, '2020-08-24 19:08:28', 'Hardware', 140, 50, 94, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(26, 'Front Hub', 'Hans', 'HB-MT410-B', 202, '2020-08-24 19:08:28', 'Hardware', 70, 31, 10, 'assets/images/dummy_images/2_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(27, 'Freehub', 'Hans', 'FH-MT410-B', 121, '2020-08-24 19:08:28', 'Hardware', 190, 38, 54, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(28, 'Wheel', 'Hans', 'WH-MT601-TL-R12-B-29', 698, '2020-08-24 19:08:28', 'Hardware', 60, 94, 90, 'assets/images/dummy_images/4_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(29, 'Outer Casing', 'Hans', 'OT-SP41', 983, '2020-08-24 19:08:28', 'Hardware', 80, 11, 80, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(30, 'Pedal (SPD)', 'Hans', 'PD-ME700', 101, '2020-08-24 19:08:28', 'Hardware', 40, 100, 39, 'assets/images/dummy_images/6_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(31, 'Pedal (Flat)', 'Hans', 'PD-GR500', 185, '2020-08-24 19:08:28', 'Hardware', 160, 40, 68, 'assets/images/dummy_images/1_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(32, 'Shifting Lever', 'Hans', 'SL-M6100-R', 678, '2020-08-24 19:08:28', 'Hardware', 200, 34, 87, 'assets/images/dummy_images/2_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(33, 'Seat Post Lever', 'Hans', 'SL-MT500-L', 597, '2020-08-24 19:08:28', 'Hardware', 50, 9, 65, 'assets/images/dummy_images/3_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(34, 'Front Derailleur', 'Hans', 'FD-TY710-TS6', 294, '2020-08-24 19:08:28', 'Hardware', 30, 24, 34, 'assets/images/dummy_images/4_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(35, 'Multiple Freewheel', 'Hans', 'MF-TZ510-7', 792, '2020-08-24 19:08:28', 'Hardware', 80, 37, 18, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(36, 'Roller Brake', 'Hans', 'RH-IM10', 379, '2020-08-24 19:08:28', 'Hardware', 40, 41, 12, 'assets/images/dummy_images/6_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(37, 'CI Deck', 'Hans', 'SM-TX36', 771, '2020-08-24 19:08:28', 'Hardware', 240, 60, 56, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs', 'Calbayog'),
(38, 'E-THRU Axle', 'Hans', 'AX-MT700-142x12', 398, '2020-08-24 19:08:28', 'Hardware', 150, 28, 10, 'assets/images/dummy_images/2_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(39, 'Integration Unit for Shifting Lever', 'Hans', 'SM-SL82-B', 567, '2020-08-24 19:08:28', 'Hardware', 140, 88, 10, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs', 'Calbayog'),
(40, 'Chainring', 'Hans', 'SM-CR82', 354, '2020-08-24 19:08:28', 'Hardware', 170, 90, 47, 'assets/images/dummy_images/4_x.png', 'Box', 3, 'pcs', 'Calbayog'),
(41, 'Chain Device', 'Hans', 'SM-CD50', 301, '2020-08-24 19:08:28', 'Hardware', 160, 61, 50, 'assets/images/dummy_images/5_x.png', 'Box', 3, 'pcs', 'Calbayog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `product_name` (`product_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
