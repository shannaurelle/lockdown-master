-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 05:31 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `access` varchar(256) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `access`, `date_created`) VALUES
(1, 'shanndummy', '$2y$10$dh1Zjlbtzzn7lAAoGOS.6uAjMqRiNDj5cC4MX4UqmsnLkCAcTH7E2', 'Buyer', '2020-08-24 16:02:33'),
(2, 'shannaurelle', '$2y$10$B596l7Ri8Tjg2OgYHk7kYe1mhh2FmQWe2H.a6pnA57BfiUQho9jxG', 'Buyer', '2020-08-20 03:40:34'),
(3, 'dummyseller', '$2y$10$cLrAUSA18biUrpO1EBbrOeLfKTz4DmO0uJJE9uXqP6HYFgZVL8q02', 'Seller', '2020-08-24 16:10:26'),
(4, 'shannbuyer', '$2y$10$kr/Efr4sJpE.TjH90WKR2OCCXVzjC2nMtfvH28.WnNVA3h8a8wSra', 'Buyer', '2020-08-24 16:26:22');

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
  `field13` varchar(512) NOT NULL,
  `field14` varchar(512) NOT NULL,
  `field15` varchar(512) NOT NULL,
  `field16` varchar(512) NOT NULL,
  `field17` varchar(512) NOT NULL,
  `field18` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`info_id`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `field10`, `field11`, `field12`, `field13`, `field14`, `field15`, `field16`, `field17`, `field18`) VALUES
(1, 'Shann Aurelle', 'Graniten', 'Ripalda', 'shannaurelleg@gmail.com', '0999-999-9999', 'LINO GONZAGA AVE, DOWNTOWN', 'LEYTE', 'TACLOBAN CITY', 'PH', 'Agriculture', '0996-567-8975', '123-456-789-000', 'shanndummy', '1990', '2', '3', 'M', '6500'),
(2, 'Michael Sean Brian', 'Billate', 'Omisol', 'michael_omisol@gmail.com', '+639182348706', 'M', '2001-02-14', 'Rama Extension, Brgy. East Awang', 'Calbayog City, Samar', 'Samar', 'Calbayog ', 'Philippines', 'Agriculture', '', '', 'Vaccaria', 'PH', '6710'),
(3, 'sdas', 'dsadsad', 'sadassd', 'dasdsadsa@gmail.com', 'assadsad', 'LINO GONZAGA AVE, DOWNTOWN', 'LEYTE', 'TACLOBAN CITY', 'PH', 'Agriculture', '54456457667', '123456789000', 'dummyseller', '1900', '10', '1', 'M', '6500'),
(4, 'Shann Aurelle', 'Graniten', 'Ripalda', 'shannaurelleg@gmail.com', '0999-999-9999', 'LINO GONZAGA AVE, DOWNTOWN', 'LEYTE', 'TACLOBAN CITY', 'PH', 'Agriculture', '09566809833', '123456789000', 'shannbuyer', '1900', '1', '1', 'F', '6500');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_volume` int(11) NOT NULL,
  `cart_owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `product_volume`, `cart_owner`) VALUES
(123456, 0, 234, ''),
(123456, 2, 2345, ''),
(2, 8208860, 100, ''),
(2, 1, 1, ''),
(2, 3, 3, ''),
(2, 4, 6, ''),
(4, 1, 1, ''),
(4, 2, 1, ''),
(4, 3, 1, ''),
(4, 4, 1, ''),
(2, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cart_costs`
--

CREATE TABLE `cart_costs` (
  `cart_id` int(11) NOT NULL,
  `cart_subtotal` double NOT NULL,
  `cart_item_count` int(11) NOT NULL,
  `cart_trucking_fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_costs`
--

INSERT INTO `cart_costs` (`cart_id`, `cart_subtotal`, `cart_item_count`, `cart_trucking_fee`) VALUES
(2, 0, 0, 120.5),
(4, 0, 0, 0);

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
  `product_unit_measurement` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_owner`, `product_description`, `product_price`, `product_date`, `product_tag`, `product_volume`, `product_popularity`, `product_rating`, `product_img_path`, `product_packaging`, `product_qty_per_package`, `product_unit_measurement`) VALUES
(1, 'Apple', 'Hans', 'Fuji', 15, '0000-00-00 00:00:00', 'Agriculture', 200, 67, 84, 'assets/images/dummy_images/1_x.png', 'Box', 5, 'kg'),
(2, 'Apple', 'Hans', 'Pacific Rose', 30, '0000-00-00 00:00:00', 'Agriculture', 150, 67, 91, 'assets/images/dummy_images/2_x.png', 'Box', 5, 'kg'),
(3, 'Orange', 'Hans', 'Jaffa', 12, '0000-00-00 00:00:00', 'Agriculture', 120, 76, 78, 'assets/images/dummy_images/3_x.png', 'Box', 7, 'kg'),
(4, 'Orange', 'Hans', 'Valencia', 23, '0000-00-00 00:00:00', 'Agriculture', 430, 6, 89, 'assets/images/dummy_images/4_x.png', 'Box', 8, 'kg'),
(5, 'Banana', 'Hans', 'Lady Finger', 11, '0000-00-00 00:00:00', 'Agriculture', 90, 80, 46, 'assets/images/dummy_images/5_x.png', 'Box', 3, 'kg'),
(6, 'Banana', 'Hans', 'Gold Finger', 7, '0000-00-00 00:00:00', 'Agriculture', 210, 40, 25, 'assets/images/dummy_images/6_x.png', 'Box', 7, 'kg'),
(7, 'Papaya', 'Hans', 'Guinea Gold', 9, '0000-00-00 00:00:00', 'Agriculture', 100, 14, 26, 'assets/images/dummy_images/1_x.png', 'Box', 6, 'kg'),
(8, 'Papaya', 'Hans', 'Maradol', 8, '0000-00-00 00:00:00', 'Agriculture', 80, 94, 76, 'assets/images/dummy_images/2_x.png', 'Box', 9, 'kg'),
(9, 'Lettuce', 'Hans', 'Butterhead', 9, '0000-00-00 00:00:00', 'Agriculture', 60, 93, 21, 'assets/images/dummy_images/3_x.png', 'Box', 8, 'kg'),
(10, 'Lettuce', 'Hans', 'Betavia', 14, '0000-00-00 00:00:00', 'Agriculture', 170, 40, 48, 'assets/images/dummy_images/4_x.png', 'Box', 3, 'kg'),
(11, 'Mango', 'Hans', 'Ataulfo', 12, '0000-00-00 00:00:00', 'Agriculture', 50, 39, 54, 'assets/images/dummy_images/5_x.png', 'Box', 7, 'kg'),
(12, 'Mango', 'Hans', 'Alphonso', 10, '0000-00-00 00:00:00', 'Agriculture', 240, 90, 4, 'assets/images/dummy_images/6_x.png', 'Box', 6, 'kg'),
(13, 'Pineapple', 'Hans', 'Queen', 8, '0000-00-00 00:00:00', 'Agriculture', 160, 12, 98, 'assets/images/dummy_images/1_x.png', 'Box', 4, 'kg'),
(14, 'Pineapple', 'Hans', 'Hawaiian', 60, '0000-00-00 00:00:00', 'Agriculture', 240, 93, 98, 'assets/images/dummy_images/2_x.png', 'Box', 9, 'kg'),
(15, 'Coconut', 'Hans', 'Malayan Yellow Dwarf', 35, '0000-00-00 00:00:00', 'Agriculture', 600, 35, 51, 'assets/images/dummy_images/3_x.png', 'Sack', 7, 'kg'),
(16, 'Crankset', 'Hans', 'FC-MT511-1', 889, '0000-00-00 00:00:00', 'Hardware', 250, 61, 7, 'assets/images/dummy_images/4_x.png', 'Box', 2, 'pcs'),
(17, 'Bottom Racket', 'Hans', 'SM-BB52', 705, '0000-00-00 00:00:00', 'Hardware', 450, 95, 62, 'assets/images/dummy_images/5_x.png', 'Box', 4, 'pcs'),
(18, 'Rear Derailleur', 'Hans', 'RD-M6100-SGS', 468, '0000-00-00 00:00:00', 'Hardware', 350, 70, 75, 'assets/images/dummy_images/6_x.png', 'Box', 3, 'pcs'),
(19, 'Cassette Sprocket', 'Hans', 'CS-M6100-12', 514, '0000-00-00 00:00:00', 'Hardware', 230, 22, 72, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs'),
(20, 'Disc Brake Rotor', 'Hans', 'SM-RT64', 902, '0000-00-00 00:00:00', 'Hardware', 130, 24, 81, 'assets/images/dummy_images/2_x.png', 'Box', 1, 'pcs'),
(21, 'Brake', 'Hans', 'BR-M6120', 760, '0000-00-00 00:00:00', 'Hardware', 120, 87, 18, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs'),
(22, 'Brake Lever', 'Hans', 'BL-M6100', 348, '0000-00-00 00:00:00', 'Hardware', 60, 86, 15, 'assets/images/dummy_images/4_x.png', 'Box', 4, 'pcs'),
(23, 'Quick Link', 'Hans', 'SM-CN910-12', 124, '0000-00-00 00:00:00', 'Hardware', 270, 45, 58, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs'),
(24, 'Chain', 'Hans', 'CN-M6100', 116, '0000-00-00 00:00:00', 'Hardware', 170, 65, 33, 'assets/images/dummy_images/6_x.png', 'Box', 3, 'pcs'),
(25, 'Disc Brake Hose', 'Hans', 'SM-BH90-SS', 241, '0000-00-00 00:00:00', 'Hardware', 140, 50, 94, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs'),
(26, 'Front Hub', 'Hans', 'HB-MT410-B', 202, '0000-00-00 00:00:00', 'Hardware', 70, 31, 10, 'assets/images/dummy_images/2_x.png', 'Box', 2, 'pcs'),
(27, 'Freehub', 'Hans', 'FH-MT410-B', 121, '0000-00-00 00:00:00', 'Hardware', 190, 38, 54, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs'),
(28, 'Wheel', 'Hans', 'WH-MT601-TL-R12-B-29', 698, '0000-00-00 00:00:00', 'Hardware', 60, 94, 90, 'assets/images/dummy_images/4_x.png', 'Box', 1, 'pcs'),
(29, 'Outer Casing', 'Hans', 'OT-SP41', 983, '0000-00-00 00:00:00', 'Hardware', 80, 11, 80, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs'),
(30, 'Pedal (SPD)', 'Hans', 'PD-ME700', 101, '0000-00-00 00:00:00', 'Hardware', 40, 100, 39, 'assets/images/dummy_images/6_x.png', 'Box', 2, 'pcs'),
(31, 'Pedal (Flat)', 'Hans', 'PD-GR500', 185, '0000-00-00 00:00:00', 'Hardware', 160, 40, 68, 'assets/images/dummy_images/1_x.png', 'Box', 2, 'pcs'),
(32, 'Shifting Lever', 'Hans', 'SL-M6100-R', 678, '0000-00-00 00:00:00', 'Hardware', 200, 34, 87, 'assets/images/dummy_images/2_x.png', 'Box', 1, 'pcs'),
(33, 'Seat Post Lever', 'Hans', 'SL-MT500-L', 597, '0000-00-00 00:00:00', 'Hardware', 50, 9, 65, 'assets/images/dummy_images/3_x.png', 'Box', 1, 'pcs'),
(34, 'Front Derailleur', 'Hans', 'FD-TY710-TS6', 294, '0000-00-00 00:00:00', 'Hardware', 30, 24, 34, 'assets/images/dummy_images/4_x.png', 'Box', 1, 'pcs'),
(35, 'Multiple Freewheel', 'Hans', 'MF-TZ510-7', 792, '0000-00-00 00:00:00', 'Hardware', 80, 37, 18, 'assets/images/dummy_images/5_x.png', 'Box', 1, 'pcs'),
(36, 'Roller Brake', 'Hans', 'RH-IM10', 379, '0000-00-00 00:00:00', 'Hardware', 40, 41, 12, 'assets/images/dummy_images/6_x.png', 'Box', 2, 'pcs'),
(37, 'CI Deck', 'Hans', 'SM-TX36', 771, '0000-00-00 00:00:00', 'Hardware', 240, 60, 56, 'assets/images/dummy_images/1_x.png', 'Box', 1, 'pcs'),
(38, 'E-THRU Axle', 'Hans', 'AX-MT700-142x12', 398, '0000-00-00 00:00:00', 'Hardware', 150, 28, 10, 'assets/images/dummy_images/2_x.png', 'Box', 2, 'pcs'),
(39, 'Integration Unit for Shifting Lever', 'Hans', 'SM-SL82-B', 567, '0000-00-00 00:00:00', 'Hardware', 140, 88, 10, 'assets/images/dummy_images/3_x.png', 'Box', 2, 'pcs'),
(40, 'Chainring', 'Hans', 'SM-CR82', 354, '0000-00-00 00:00:00', 'Hardware', 170, 90, 47, 'assets/images/dummy_images/4_x.png', 'Box', 3, 'pcs'),
(41, 'Chain Device', 'Hans', 'SM-CD50', 301, '0000-00-00 00:00:00', 'Hardware', 160, 61, 50, 'assets/images/dummy_images/5_x.png', 'Box', 3, 'pcs');

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
  `field13` varchar(512) NOT NULL,
  `field14` varchar(512) NOT NULL,
  `field15` varchar(512) NOT NULL,
  `field16` varchar(512) NOT NULL,
  `field17` varchar(512) NOT NULL,
  `field18` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_template`
--

INSERT INTO `table_template` (`table_id`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `field10`, `field11`, `field12`, `field13`, `field14`, `field15`, `field16`, `field17`, `field18`) VALUES
(2, 'first_name', 'middle_name', 'last_name', 'email', 'phone_number', 'sex', 'birthday', 'line1', 'line2', 'province', 'city', 'country', 'field_of_interest', 'paymaya_account_number', 'TIN_number', 'username', 'country_code', 'zip_code');

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `transaction_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `trucker_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_volume` int(11) NOT NULL,
  `location` longtext NOT NULL,
  `pickup_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `money` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `pending` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trades`
--

INSERT INTO `trades` (`transaction_id`, `seller_id`, `buyer_id`, `trucker_id`, `product_id`, `product_volume`, `location`, `pickup_time`, `money`, `notes`, `pending`) VALUES
(4207, 0, 535833, 90, 0, 1651551, '24491 Lempi Ways Suite 787\nPredovicton, LA 69207', '2002-05-23 19:12:45', 91953, 'Doloremque saepe sint ut dolores impedit laborum excepturi nam. Et iste sunt dolore et. Ipsa ut est rem sit rerum.', 1),
(99853, 466, 3967480, 91215, 63183, 3727550, '7291 Jones Unions Suite 816\nPort Gerry, MN 70487', '1980-01-17 10:30:23', 70462227, 'Quam illo aut dignissimos iusto eius omnis non. Rerum et molestiae incidunt similique ab. Nam excepturi corrupti aut qui illo consectetur delectus.', 1),
(183587, 58, 686852375, 0, 1536589, 94, '540 O\'Connell Junctions Suite 919\nLarsonville, PA 35025-1051', '1999-05-01 00:17:59', 0, 'Rem deleniti ad voluptatem praesentium. Molestiae iusto molestiae sequi asperiores necessitatibus quae quae. Quam aut reprehenderit quia autem distinctio.', 0),
(89368, 131067376, 6915, 0, 4824445, 971921, '62138 Monique Squares Suite 489\nTedton, NM 86594', '1972-06-09 11:10:29', 217, 'Praesentium voluptas rerum sit quasi vitae odit. Quis praesentium iusto laboriosam nam ea blanditiis sapiente esse. Consequuntur et eligendi ut at sunt officia.', 0),
(0, 85, 188902, 44888, 19813023, 614387, '444 Connor Islands\nJohathanshire, FL 16712', '2010-02-12 05:26:26', 339722, 'Aut eos velit nobis modi accusantium earum est. Eos voluptates quia non aut suscipit sit consequatur. Aut aperiam et voluptatem commodi quidem ut.', 0),
(38820716, 1, 9280, 28, 367, 1, '96723 Kaitlin Cliff\nEast Camilamouth, FL 67278-7154', '2010-12-29 15:48:27', 52779030, 'Rem ab voluptatem eaque omnis qui totam. Repellat qui consequatur voluptatem fugit. Nihil commodi est delectus magni. Et eos laboriosam eligendi dolor laborum perferendis eaque voluptas.', 0),
(130177, 34911, 0, 61214, 8, 4607228, '557 Senger Viaduct\nPort Fritzstad, MT 23770-0108', '2016-04-02 07:04:18', 3230361, 'Deleniti omnis qui delectus culpa. Quisquam distinctio magnam et possimus atque dolorum. Dicta exercitationem error sequi.', 0),
(61795, 329, 29, 33517420, 0, 52681686, '974 Brad Gardens Suite 719\nHahnmouth, IN 87438-9458', '1989-04-25 20:26:54', 27, 'Accusamus molestiae fugit commodi ut aspernatur aut maiores. Ut quis quo rem sed eveniet qui dolor. Omnis ut voluptate eos maxime maxime similique.', 1),
(223785, 3038, 697746, 470239106, 4993, 451418, '85630 Elissa Inlet Apt. 539\nJermeyfurt, KY 79049-0725', '1987-10-26 15:42:27', 0, 'Non et a quia vel et totam quae. Similique est ad occaecati eum ut et.', 0),
(992652, 9872523, 0, 4, 91, 27, '94053 Jerde Row\nOrrinside, IL 66542', '1973-08-05 15:40:20', 8, 'Dolorum culpa aut excepturi fuga nostrum. Perferendis est impedit aut est dolor vel. Suscipit ab quos sed labore quibusdam officia ipsum.', 0),
(145040, 6493, 179016185, 679215, 37136147, 97220344, '250 Jordy Divide Suite 416\nStantonmouth, IL 09071', '1980-08-14 02:06:36', 0, 'Voluptatem incidunt voluptatem vel error dolore. Vitae enim eius pariatur occaecati vero ipsa. Sequi inventore aut rerum tenetur.', 1),
(616517, 66, 2084, 2, 75898, 4354, '99988 Melisa Circle Apt. 069\nBernardoberg, MS 56745', '1971-12-08 20:34:23', 0, 'Qui placeat ea corporis mollitia doloremque ipsum. At quo quidem quis et ullam numquam harum in.', 0),
(331, 952, 7343, 96291, 46224356, 39, '402 Jadon Spring\nSouth Stewart, NY 98189', '1978-05-27 11:59:43', 0, 'Eum maxime qui fugit et in sed dignissimos. Aliquam qui ullam quia et velit. Consequatur illo corporis sed cum praesentium molestiae. Omnis quia nam ducimus rerum deserunt molestiae id.', 0),
(49, 5931826, 6, 357, 759, 65793, '7564 Anna Greens Apt. 030\nMannstad, IN 02033-8804', '1993-11-23 03:28:05', 7, 'Quia nihil quo rerum in quo et sed ipsam. Nemo excepturi autem autem aut. Repudiandae qui sit ut molestiae officia voluptas assumenda.', 0),
(17572, 3928198, 403143, 87365285, 20347, 31737, '12458 Sven Station\nLake Babystad, MS 81355', '1983-12-23 21:47:42', 80, 'Deleniti voluptatibus quo molestiae quia porro. Nemo nisi id est rerum consequatur cum. Ut at in vero ipsam ut recusandae.', 0),
(34, 836289, 586899, 138750023, 9818770, 668, '618 Genoveva Motorway\nSatterfieldberg, NM 50821-7747', '1982-03-25 12:21:38', 76, 'Iste voluptatum quidem est fugiat ut alias et. Dolores aut quas amet dolor. Mollitia modi sed laboriosam fugit exercitationem consequatur. Ex consequuntur similique voluptas commodi expedita consequatur.', 1),
(7, 5830169, 4285661, 0, 224299, 306180, '6570 Mina Points Apt. 494\nSchinnerside, NC 74414', '1986-06-01 04:22:33', 135522, 'Et praesentium voluptas delectus excepturi molestias. Inventore esse sunt dolor nulla et neque velit. Consequatur consectetur nulla repellendus ullam.', 1),
(409905, 0, 6, 946122224, 4394052, 89, '81534 Reilly Freeway Suite 758\nWest Tiana, RI 25913', '1999-12-05 07:50:04', 30880, 'Recusandae voluptatibus eaque tenetur. Consequatur sint ut et voluptatum eos sapiente aut.', 0),
(21, 2822084, 20468, 1, 9, 77544032, '69491 Reta Lodge Suite 116\nKohlertown, WA 13559', '1972-06-15 22:04:56', 0, 'In aut et dolorem. Incidunt labore doloremque totam eos quis et omnis id. Iure neque rem est quibusdam a esse. Quia a eligendi enim quia aspernatur.', 1),
(627204367, 8945137, 4731, 934511756, 885689, 206267035, '66941 Hettinger Fall\nEast Keon, NM 66835-9218', '1987-08-10 07:21:13', 0, 'Reprehenderit sit repudiandae maxime explicabo. Est maxime officia consequatur et quia consequatur. Consequuntur eaque illum maxime.', 0),
(8, 227534, 940, 0, 13, 18, '02976 Lehner Roads\nHackettshire, AK 70303', '2001-12-06 08:22:17', 506, 'Tenetur veritatis qui et ad numquam eum amet. Aspernatur exercitationem ex architecto soluta.', 1),
(384602704, 0, 69, 0, 62, 0, '8338 Quigley Trail\nKshlerinberg, LA 76722', '1988-10-15 12:26:15', 78, 'Pariatur ea voluptate autem velit ipsum. Rem pariatur minus qui consequatur provident. Nobis necessitatibus ducimus nemo porro esse suscipit minus et. Ab adipisci quaerat deserunt numquam adipisci.', 1),
(894006576, 240452080, 6055, 912188, 528940, 0, '0271 Armando Fall\nHerzogville, OR 23822', '2009-09-05 09:12:26', 862, 'Facilis libero rerum veniam omnis non assumenda id corporis. Omnis eos reprehenderit sapiente voluptatem id eos error qui. Et alias enim deleniti unde perspiciatis. Corrupti sunt voluptas et repudiandae modi. Illo vero est qui nihil ducimus necessitatibus.', 1),
(2678, 4442, 0, 495894335, 0, 7189503, '2230 Dannie Island\nGulgowskiport, AK 36717', '1996-07-25 19:37:28', 11736382, 'Omnis aliquam totam quibusdam sed. Natus quibusdam in tempora aut quae.', 0),
(2, 68887, 53223586, 66829380, 9557064, 96413, '46479 Rosario Square Suite 148\nNew Khalid, RI 52708-6078', '1998-03-19 07:19:57', 87130917, 'Laudantium consectetur asperiores tenetur accusamus. Iure doloribus quod magnam perferendis accusantium rerum. Iste iste nulla adipisci sequi aspernatur ullam. Qui omnis dolor et delectus quaerat voluptatibus eligendi. Ut delectus architecto neque consequatur placeat non qui.', 1),
(915655765, 81, 9561457, 6228213, 578961, 632906, '947 Dayana Oval Apt. 509\nBrekkebury, SC 82292-3332', '2006-08-20 06:59:49', 6, 'Ab corporis pariatur mollitia repellendus. Ducimus in aut error ea molestiae. Accusamus qui sunt beatae illo et modi et officia.', 1),
(803, 56104, 806, 150, 16, 973197, '71110 Sanford Rest Apt. 281\nBartolettihaven, AK 77078-5649', '1972-09-01 18:21:17', 44671230, 'Quis quasi perspiciatis et aspernatur. Iusto molestiae suscipit sit. Quod doloremque ratione voluptas aut fuga libero ut. Et voluptas tempora aliquam soluta qui officiis.', 1),
(338, 3849, 1, 0, 3225, 7232284, '8816 Kaylah Creek\nWest Addisonshire, CO 99215', '1981-06-17 05:09:53', 86705314, 'Quasi aut et quibusdam. Nemo et velit quam a aliquid. Est aut beatae quis non fugiat in.', 1),
(595, 64046918, 8215295, 394, 5114497, 2, '64880 Bauch Circle\nMannville, NE 42568-1402', '1989-02-18 11:36:16', 3167, 'Ea perferendis est voluptatem unde. Recusandae dolor omnis cumque qui omnis voluptas. Aliquam qui ipsum ea error illo deserunt ea voluptatem.', 1),
(758994, 728906253, 92, 476, 349, 46, '766 Veum Loaf\nLake Jessyca, VT 90254-6742', '1996-10-03 05:15:19', 3980, 'Assumenda corporis accusamus qui ut. Vel ut blanditiis eos minima. Optio incidunt distinctio cupiditate.', 0),
(332634, 920519, 21509, 33, 3848, 547752, '83784 Schmidt Tunnel Suite 860\nLake Leo, OK 48440-3514', '1983-12-27 19:49:55', 226232544, 'Nobis voluptatem autem animi laborum consequuntur dicta voluptatum eos. Nam et eum porro amet dolor delectus maxime eius. Animi consequatur sed dolorem eius.', 1),
(36, 635, 74, 474770, 0, 59773296, '91576 Schoen Inlet\nWest Leola, FL 41910', '1986-04-08 23:55:33', 7553, 'Voluptas voluptatem hic ea voluptate quo distinctio nihil. Ad molestiae rerum est voluptatem tenetur iure minus. Ratione est quidem temporibus libero sunt mollitia. Perspiciatis quis maxime consequatur necessitatibus accusamus ut.', 0),
(6612, 41626204, 0, 7, 2204690, 457245210, '9703 Ada Manors\nEast Arno, NC 59589', '2003-03-09 21:16:13', 6, 'Sit rem nobis quo. Eos corrupti autem temporibus ullam. Non omnis et officiis a nesciunt adipisci et.', 0),
(7525784, 3704590, 647937306, 3, 390586, 83, '41239 Green Parks\nLeilafurt, HI 85897', '1999-04-18 03:20:39', 59282654, 'Aliquam esse odio sunt eos. Tempora possimus et libero dolorem voluptas in quos. Rem minima accusamus dolorem vero ad accusamus enim.', 1),
(26, 21292, 5300, 12931, 4599794, 18477, '297 Hintz Circle Suite 660\nLake Lilliana, KS 01540', '1996-07-06 20:52:47', 839, 'Iusto autem est quis cupiditate voluptatibus nobis earum odit. Ab rerum placeat neque ut asperiores deserunt dolorem maiores. Sed ut minus explicabo totam quisquam et. Eos consequuntur voluptatum porro molestiae.', 1),
(2860, 87795, 31773, 0, 0, 8, '04829 Morar Valley\nEast Maximilliachester, KY 92527', '1979-05-02 16:52:01', 0, 'Velit et facilis alias perspiciatis dolorum neque delectus. Rerum eos recusandae vitae ab impedit itaque. Eum porro voluptatem voluptatem suscipit excepturi perferendis. Eveniet et dolore ullam nostrum ex commodi in impedit.', 1),
(3738377, 332, 3534, 70155, 4638, 4, '18683 Kylee Via Apt. 612\nNew Sallyberg, SD 68970', '1971-08-07 03:13:40', 112, 'Odio adipisci animi fugit. Et sint consequatur enim enim odit. Adipisci quod ipsa quod dolorem voluptas et blanditiis expedita.', 0),
(752731329, 67, 373267664, 21529, 2586, 526778179, '9599 Fredy Fords Suite 047\nGislasonstad, NM 58187-0228', '1978-06-06 03:28:59', 978285550, 'Quia ut beatae aut odit. Dignissimos veritatis ipsa excepturi odio. Quidem sequi dolorem placeat aut quo ut dolor. Error repellat dolor repellat libero.', 1),
(4591314, 9548, 5259899, 7796, 18366361, 997, '97801 Miller Shoal Suite 210\nNorth Mattieberg, WI 58579', '1987-01-23 09:39:10', 742, 'Cumque maiores libero modi. A molestias dolore tempore aliquid occaecati harum nulla. Corporis quidem necessitatibus sint et dolorem.', 1),
(6191148, 6933821, 159, 0, 3, 3, '700 Fadel Tunnel Apt. 935\nWest Zoiemouth, NJ 49110', '1993-11-06 11:30:16', 113, 'Eius aspernatur laborum quasi repellat laudantium qui. Quisquam sed aut ullam sit. Magnam temporibus vel eligendi illum repellendus doloremque. Ipsa fugiat laborum corporis ea.', 0),
(23607633, 66, 30, 212625, 3447688, 3, '66211 Guadalupe Wells\nWest Timmothy, TX 57424-2447', '2010-07-05 10:12:56', 6, 'Eos ex dolorem assumenda. Dolorum ut repellat doloribus veritatis temporibus tempora cupiditate esse. Delectus laborum natus voluptatem. Eos dolorum omnis ut provident molestiae reiciendis voluptas.', 1),
(42, 0, 26, 3776245, 36845, 8599881, '233 Wilkinson Stream Suite 884\nCalistabury, NV 11994', '2002-11-18 18:10:11', 61310141, 'Molestias quis voluptas eveniet eos. Molestias non assumenda dolor occaecati eos dolor et. Autem commodi non inventore dolorem qui vel. Voluptatem est ea necessitatibus quae iste.', 0),
(7853557, 0, 3, 84, 0, 58, '6607 Harris Vista\nWest Rebekahton, OH 11602-5972', '1990-07-14 12:38:52', 402, 'Explicabo ut corrupti deserunt sit sapiente molestiae. Soluta odit fugit blanditiis laboriosam repellendus non. Est assumenda earum quia doloremque quos qui ex.', 0),
(9023, 165326, 6, 0, 0, 5, '65646 Fisher Grove\nSouth Oliver, NE 36555-5357', '1972-02-19 20:14:23', 5, 'Adipisci aut voluptatem laborum et recusandae. Aliquam atque et consequatur odio neque excepturi et. Nihil sint quam quos veniam assumenda eligendi. Corrupti quibusdam veritatis est vel non. Nostrum nemo ratione et facere itaque enim nostrum.', 0),
(704, 0, 305191177, 152898845, 3, 76164, '16072 Berge Club\nPort Ora, NE 96473-6698', '1993-01-05 09:41:27', 4, 'Eaque sint qui quidem voluptatum et vitae. Voluptatem odio distinctio quasi ea. Laborum et qui asperiores iusto ullam suscipit minima a. Autem est dolore voluptate corporis at.', 1),
(903555565, 198759999, 226193821, 820, 3485, 4334, '026 Kari Circle\nLake Eliane, DE 61597', '2000-09-02 20:01:02', 34, 'At nesciunt consequatur dicta nemo architecto nihil. Corporis molestiae perferendis officiis et. Qui fugit aperiam facere odit tenetur amet.', 1),
(57619706, 57, 886904, 387, 78, 207391, '1631 Jaden Lights Suite 643\nEast Lornamouth, NH 90147-3734', '2008-11-17 18:56:01', 91522285, 'Ut praesentium cum et quia deserunt. Et doloremque quasi ex vel. Expedita animi officia nam.', 0),
(945222, 51638997, 465354, 306290157, 58720728, 37524, '071 Robel Shoal\nMarksborough, NH 75742', '2005-09-02 00:40:38', 439, 'Suscipit voluptatem neque quibusdam quia minus voluptas rerum. Nihil et quo est quod ratione nihil. Ut quia molestiae nobis. Aut sed consequatur alias cupiditate aut ab dolores fugiat. Culpa non iusto earum facilis.', 0),
(762, 16189272, 8291660, 86756, 725368, 20, '65904 Auer Isle\nReecebury, RI 06545', '2001-04-26 10:55:15', 65860, 'Facere qui dolor rerum quaerat reprehenderit magnam. Dolor cupiditate odio quam aliquam accusamus qui quam. Nisi quae omnis omnis quam.', 0),
(60972482, 0, 66469172, 0, 0, 8915, '8058 Stark Fork\nArmstrongshire, MD 89025-8605', '1971-05-04 15:25:45', 2, 'Et recusandae rerum qui omnis voluptatem. Qui ex beatae mollitia tempore repudiandae placeat neque. Voluptatum voluptas adipisci laboriosam quas est.', 1),
(299, 4408369, 1, 78160929, 34, 40, '6203 Gibson Path\nKrismouth, RI 33849', '1995-05-13 21:45:04', 697039876, 'Dolor consequuntur in quas illum corporis inventore. Occaecati molestiae odit nesciunt aut. Eveniet et aut amet.', 1),
(9, 7615299, 60063150, 6068659, 251, 31196303, '5834 Marta Street Apt. 795\nWest Koby, SC 83597-9668', '1984-10-22 21:23:32', 98, 'A sint fugit ut saepe repellat non reprehenderit ipsum. Nobis vel dignissimos facilis. Soluta ipsa non non iusto sunt nulla. Nulla magnam ratione debitis dolores dignissimos dolor sunt.', 0),
(601330136, 0, 525, 0, 4742266, 30924715, '459 Smith Lakes Apt. 366\nChristinemouth, CO 37090', '1991-01-07 10:13:03', 7, 'Eveniet temporibus quae nemo dicta. Itaque est nulla tempore quia.', 0),
(22, 84555, 8712798, 828829905, 60, 1, '648 Zelma Village Apt. 805\nLake Ephraimland, KY 32825', '1989-07-05 03:37:22', 6, 'Sunt eligendi officiis laborum similique. Architecto natus et maiores ut. Iure magni pariatur est. Nostrum alias quia commodi.', 0),
(444054, 85908636, 335125, 625061, 20087, 0, '46212 Howe Isle Apt. 946\nDuBuquefurt, MN 46053-8195', '1994-03-01 13:00:33', 82, 'Et aperiam quisquam amet. Enim molestias ad quo. Voluptas et quia consequuntur at. Voluptas vel mollitia excepturi et ducimus at.', 0),
(789018168, 70, 87427417, 143, 98, 40443, '3769 Gilbert Creek Apt. 321\nEast Jordan, DE 94960', '1995-09-27 00:15:52', 7286, 'Et autem dolor molestiae sit ad. Architecto minima distinctio ab inventore qui labore odio. Sit nulla ut harum a expedita unde.', 0),
(72, 188453, 19333, 3, 43, 984111704, '17736 Orn Mews Apt. 741\nNorth Alfredberg, WY 23213', '1987-11-02 14:33:36', 960009, 'Impedit quisquam ad ipsum accusantium. Sint illo tenetur voluptate saepe. Itaque enim modi fugit ut dolores explicabo. Deserunt tenetur et laudantium veritatis similique a.', 0),
(326719847, 786212701, 9, 65420978, 944, 50818, '963 Hobart Lane\nPort Omerbury, MS 26654', '1977-06-13 17:41:34', 9536237, 'Nemo iste animi porro consequuntur velit. Corporis recusandae voluptatem eos facere. Aperiam non tenetur quis perspiciatis sunt voluptas incidunt. Et aut et repellat assumenda non quod aut autem. Eos explicabo repudiandae saepe facere animi.', 1),
(61, 28208, 34290, 7907, 86203565, 427487479, '45738 Lindgren Throughway Apt. 286\nTrevahaven, ID 48945', '2013-05-11 13:08:15', 185544, 'Et esse et et totam iste quia iusto rerum. Ut culpa est aut maxime molestiae eos ut sit. Tenetur illum non consequatur. Quia ipsa vel neque iure.', 0),
(67736, 579173548, 395352309, 4942906, 66924, 481178737, '02130 Fahey Pine Suite 693\nPort Kurt, CA 53699', '2015-08-18 18:11:46', 0, 'Voluptas doloribus omnis nostrum architecto vel et consequatur. Voluptas eveniet officia earum alias. Nulla molestiae eos dolor sint pariatur repudiandae. Sed pariatur eum libero aut dolore sit. Provident et officiis et asperiores necessitatibus tempora vero.', 1),
(22375141, 47196540, 7712521, 8, 9377423, 0, '78082 Jaylen Springs Apt. 383\nConsidineburgh, MI 45490-9904', '1980-02-29 13:56:35', 2, 'Quia impedit modi doloribus sequi consequuntur sequi aut. Temporibus sed nesciunt quia et. Illum est et aut commodi.', 0),
(4087, 6107, 40, 7, 0, 28251630, '532 Dillon Overpass Suite 327\nEast Sashafurt, NM 57277-7219', '2001-05-30 00:17:02', 14930, 'Est repellendus ipsum necessitatibus ut dolores. Exercitationem qui provident veritatis et porro. Est sed ut animi consequuntur.', 1),
(3987, 40, 6018, 371, 8, 336326268, '58452 Madalyn Course\nEast Hiltonfort, OK 27274-7118', '1973-12-07 12:05:09', 0, 'Officiis laboriosam earum nulla saepe occaecati repudiandae numquam. Libero quibusdam ut molestiae numquam. Voluptas minus non totam vel eum illo.', 0),
(142886, 0, 7341, 367, 812, 0, '20504 Agustina Freeway\nRutherfordburgh, UT 10640', '2015-12-24 10:25:59', 3544523, 'Quidem distinctio laudantium sunt et. Delectus aut consequatur ut aspernatur ut. Odio ipsa illo aperiam sit. Porro consequatur vel enim.', 1),
(423, 153577, 4508628, 5642634, 547718651, 8, '821 Gennaro Tunnel Apt. 991\nPort Annabelle, WA 23822', '2018-08-07 15:33:54', 442749169, 'Rerum soluta nihil nemo voluptatum officiis. Perspiciatis facere et similique aut voluptatem asperiores eum. Maiores labore ut deserunt excepturi neque.', 0),
(19731871, 64026, 2, 63, 7240, 646859120, '54394 Hintz Manor Suite 252\nSouth Jerad, WI 03743', '1979-06-19 08:36:57', 0, 'Ex eos fugiat voluptas autem. Rerum ducimus repellat tempore est soluta autem. Nihil pariatur sed cupiditate quia. Quasi sit animi et nemo ut necessitatibus.', 0),
(902911, 0, 6428379, 45, 2, 25954338, '3436 Kertzmann Drive Apt. 053\nMillermouth, DE 37417', '1972-10-23 17:35:05', 4, 'At molestiae delectus optio maiores sequi suscipit. Et debitis commodi rem. Tenetur quasi ut sint nihil. Numquam sunt molestias reiciendis et eius et quisquam.', 1),
(37, 0, 66026, 689, 55682, 9, '8846 Howe Vista Apt. 370\nEast Cletatown, NH 47656-2163', '1988-04-06 23:05:03', 520290, 'Ex cumque sit eum ipsa neque aliquam quis. Ab est unde non sed nihil dolorum ut. Fuga a et velit harum nobis qui iusto. Voluptatibus et esse facere est iusto qui optio.', 0),
(816592136, 66053, 98759880, 367, 24274, 4, '92584 Fadel Haven Suite 722\nOttisborough, NE 90866-0071', '2016-01-24 19:05:49', 7, 'Vel velit quibusdam in beatae. Dolore dicta dicta laborum. Consequuntur quis totam enim sit enim soluta.', 1),
(16, 544607, 2115688, 39750464, 17, 1707, '517 Kozey Pine\nStarktown, NE 16117-0194', '2014-10-20 16:39:48', 72929, 'Aperiam molestiae vero est sed eum. Harum quasi ut nihil quae. Iure eaque esse aliquid aliquam eligendi qui repellat.', 0),
(576502377, 246482530, 376483982, 91401032, 0, 84046, '364 Tillman Plaza\nDaughertyhaven, ID 63596', '2014-11-22 01:51:10', 0, 'Qui ab maiores similique facilis iure quo accusantium. Repellendus quasi et delectus non ab totam. Tenetur assumenda quae ipsum iure dolore repudiandae magnam.', 0),
(47227, 0, 820, 765337751, 1541472, 30, '9618 Lisette Pass\nStehrborough, NY 13395', '1972-03-11 17:53:02', 15, 'Et et dolores voluptatem aut laboriosam in. Id quas laudantium corrupti aut temporibus ut omnis. Earum dolores quasi quisquam.', 0),
(158515370, 35506, 0, 164, 0, 0, '22929 Terry Cliff\nMarystad, KS 14878', '1971-05-28 19:49:04', 49218382, 'Aspernatur quaerat ea voluptate. Consequatur sed eligendi praesentium ut iste corporis eum. Enim tempora reprehenderit ut aliquam illo distinctio.', 0),
(8082301, 84742976, 4815694, 727, 406187815, 45222, '9388 Rosario Points Apt. 666\nAntoniofort, MD 01917', '1999-01-06 00:47:19', 56, 'Ut earum sed rerum similique et est sequi. Laboriosam velit nemo eum aspernatur ad iusto. Vel necessitatibus eum iste iusto consequatur quia.', 1),
(6, 6841826, 97, 5158876, 982287249, 68, '654 Jarvis Dale\nKerlukehaven, OR 10243', '2004-12-02 03:10:17', 646995230, 'Sint iure aut eum id et sint quo. Non minus laudantium quia aut pariatur quod cum delectus. Maxime enim consequatur quisquam molestiae ab optio doloremque.', 0),
(8100, 7851140, 5178245, 406004, 23, 84564880, '32219 Quitzon Mountains\nSchultzborough, IL 87161-5585', '1989-09-08 04:33:22', 5730818, 'Veritatis ut eaque est aut voluptas a. Alias deleniti maiores vitae consequatur fuga magni inventore blanditiis. Dolores eos repellat libero nulla nulla incidunt id. Quia ad debitis animi beatae aut dolorum molestiae.', 0),
(26655, 19, 48241, 188291892, 35633, 382121650, '195 Annamae Shoal\nLeuschkechester, AZ 67748', '1996-12-03 20:55:10', 8343577, 'Neque molestiae quia suscipit nihil illo ullam. Voluptas omnis iure ullam et odio harum labore. Ipsam deleniti sunt non molestias exercitationem.', 0),
(67632899, 9, 0, 111096980, 331834948, 8963377, '5029 Zieme Way\nKertzmannmouth, HI 18007-7342', '2016-12-11 01:07:26', 96406, 'Accusamus facere itaque minima et in qui. Veritatis eligendi animi odio dolorum sed ut. Quis necessitatibus et dolorum illo nostrum consequuntur maxime. Ipsa id qui fugit tempore commodi.', 1),
(3400, 152424041, 26, 9, 7706, 95221660, '7542 Howell Ranch Apt. 201\nEarlenetown, NM 11345-8782', '1987-05-03 00:32:47', 0, 'Hic voluptas doloremque qui occaecati et. Ut adipisci est dolor voluptatibus corporis possimus eveniet. Ipsa aut aut atque consequatur vel modi tempore. Aspernatur qui ut totam perspiciatis qui natus quas.', 1),
(55, 78, 705, 0, 0, 68681336, '894 Beth Branch\nKulasfort, GA 98232-6064', '1976-07-02 13:26:12', 287942, 'Nemo ut et in debitis quae et sequi est. Quam tenetur nesciunt reprehenderit magni eum. Ut nisi voluptatem rerum qui maxime. Omnis ratione aut dignissimos eum distinctio totam. Provident tenetur ullam ipsum molestias aliquid omnis molestias.', 0),
(831, 790594306, 6881, 5, 66, 2939, '3329 Elaina Trafficway Suite 971\nAdelinemouth, ID 77290-5139', '2007-01-06 00:52:01', 7, 'Magni aliquid nulla eligendi omnis rem. Eaque qui ratione cumque culpa qui. Cum ea excepturi eos repellat libero cupiditate. Eum delectus id fugiat at et eos.', 1),
(8828, 582, 60658, 26596408, 0, 204, '52198 Kemmer Locks Apt. 923\nSwifttown, AZ 44653-6757', '1987-06-05 15:36:23', 6498713, 'Natus fugit tempore laudantium repellendus ut inventore labore. Qui aut consequuntur aut earum explicabo. Nulla rerum in vitae et.', 1),
(718, 5920, 8926966, 30764, 395493, 0, '1569 Brekke Brooks Apt. 812\nHudsonside, TN 41538', '2001-01-05 18:29:49', 5834643, 'Deserunt sit quae ducimus sed libero. Alias dolores nemo porro recusandae culpa neque. Repellendus at aut saepe distinctio ab. Magni et velit veniam accusamus quis doloribus.', 1),
(30, 744155, 1607082, 89641875, 58535, 8000, '2792 Rosendo Center Apt. 556\nNorth Thurmanstad, WY 63355', '2009-07-23 21:11:44', 5688153, 'Dicta qui voluptas unde voluptatum labore quod. Non non dolore voluptate. Amet sit ut sed cupiditate. Nobis vel alias omnis corporis ratione accusamus ipsa.', 0),
(8454579, 0, 772999654, 4, 30890436, 85027196, '5105 Walker Cliff\nWest Ivoryfort, SD 91658', '2011-10-13 13:15:06', 34, 'Ut magni minus velit blanditiis non. Dolore voluptatibus quas ut quas soluta corrupti harum qui. Atque iste vero porro enim.', 0),
(67238382, 2270658, 33521, 3, 7314300, 8051913, '2201 Paul Roads\nWest Jayde, NY 00952-9385', '1991-11-24 02:50:13', 996443734, 'Placeat sed et ea praesentium est. Consequatur facilis similique molestiae. Necessitatibus sed eius fuga esse quam et facilis est. Aut deleniti fugiat reiciendis sed nesciunt corporis. Natus voluptas maxime quos ut.', 1),
(623, 5, 1119221, 407, 7183323, 3633, '77253 Pouros Lane Apt. 201\nAnafort, MN 56481-9776', '1997-07-07 12:46:51', 3894769, 'Ullam dignissimos dolores optio molestiae eius vel. Quia architecto quia enim sed aut. Ullam possimus quia rerum. Sit recusandae eum et et adipisci eaque.', 1),
(2721728, 4, 68418525, 531, 7, 711, '33501 Rodolfo View Suite 814\nCandidamouth, IA 52956-2987', '1977-08-30 10:45:25', 655234, 'Cumque id veniam et sit. Amet vitae amet perferendis est repellendus consequatur sapiente. Dolores in et neque iure iusto quo dolor. Aliquid autem dolorem nam libero commodi quaerat.', 1),
(680, 867, 585565, 9860, 8, 835, '27696 Ritchie Viaduct\nLavernton, NE 00704', '2017-02-22 01:49:09', 0, 'Deserunt quisquam ut velit molestias dolorem. Omnis dignissimos qui id aut beatae id. Et veritatis officiis consequatur neque et. Consequatur est vel aut eius architecto eos.', 0),
(238, 0, 6420, 994947, 3, 60775402, '23224 Anais Stravenue Suite 235\nTarastad, RI 62928', '2000-10-09 04:10:45', 2791, 'Libero dignissimos ullam voluptatem culpa voluptas magnam. Inventore dolore dolore non non ut. Dolorem commodi id rerum earum aperiam.', 1),
(820312992, 646, 929985057, 69, 8, 297, '261 Jeffery Fork Suite 922\nNew Landen, MO 24088-4020', '1983-04-06 18:25:57', 5766, 'Mollitia placeat quibusdam qui. Deserunt reiciendis dignissimos nulla. Nulla laborum et sed id unde consequuntur. Qui commodi iure sed sed et maiores qui.', 1),
(1363, 631, 8286, 136529, 0, 634958, '43085 Laury Fort Apt. 545\nPort Isai, CO 00889-5459', '1970-01-23 21:05:12', 0, 'Sapiente voluptatem omnis harum consequuntur. Nulla maxime est voluptas et et nisi alias. Totam aut est itaque neque. Ipsum aperiam beatae itaque neque voluptas voluptates et placeat.', 0),
(70, 33760, 229696936, 83, 593, 72, '9618 Romaine Well\nKemmerport, AZ 53318-7163', '2013-07-16 07:00:35', 51574, 'Vitae ut doloribus libero nobis et et. Quis maiores commodi minus aliquid est. Officia ratione ducimus maiores maiores eos repellendus.', 1),
(3, 13314, 2586426, 7, 2, 697276, '69156 Schinner Island\nBryceton, MS 29059-4807', '1977-11-25 09:32:14', 0, 'Ex in dignissimos amet sint voluptatibus perspiciatis. Quis fugiat quod et odio. Nihil alias veniam minima rerum et.', 1),
(965468989, 62894, 60315653, 164759357, 827637756, 18054225, '8207 Hane Port\nPort Connieview, RI 66415-3468', '2009-12-26 10:40:26', 439, 'Error itaque enim vel consectetur accusamus sit. Et id rerum nihil tenetur cum explicabo qui. Vel vel omnis et eaque vel eum. In numquam cumque est repellat veritatis. Distinctio at consectetur aut.', 0),
(4, 798, 7, 50, 23, 63542165, '4320 Jenkins Ports\nGenesisside, NJ 77383', '2014-01-29 16:04:53', 41965, 'Est necessitatibus ut cum delectus veritatis. Qui ex quia excepturi eligendi. Et nobis sunt fugiat itaque et. Excepturi doloribus ea quibusdam vel.', 0),
(51777, 35361, 93743, 2, 96535, 5, '007 Augustine Valley Apt. 966\nAurelioville, ID 87149', '2007-03-11 08:54:17', 25705, 'Quasi quam voluptatum maxime doloribus consequuntur expedita. Impedit quia hic accusamus rerum.', 0),
(835, 870768, 31408540, 69413437, 568605949, 292650827, '745 Streich Roads Apt. 659\nPort Kiannaburgh, DC 96502', '1992-02-16 20:50:06', 0, 'Asperiores perspiciatis sunt voluptatem consequuntur accusamus commodi. Repellat ut et voluptatem nihil. Beatae molestiae quia voluptas amet at dignissimos.', 1),
(14, 4360907, 0, 0, 8, 7034443, '7765 Frami Heights Suite 171\nSouth Ricardo, NM 82826', '2002-02-01 05:29:39', 25, 'Recusandae illo voluptatem sed impedit inventore. Et ipsum voluptatem perspiciatis beatae ut ipsam. Commodi similique molestiae sunt laudantium eligendi non doloremque. Numquam error neque molestiae. Quos sint impedit ut omnis consequatur in beatae in.', 1),
(308586, 98198, 7, 19224198, 26, 83, '903 Ferry Manor\nEast Keshaun, KS 75769', '2018-03-01 23:04:38', 5, 'Quibusdam qui non iste ratione debitis necessitatibus. Harum asperiores eos eum aut. Eos neque provident quibusdam officia beatae.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `truckers`
--

CREATE TABLE `truckers` (
  `truck_id` int(11) NOT NULL,
  `truck_operator` varchar(512) NOT NULL,
  `truck_origin` varchar(512) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `account_id` (`account_id`),
  ADD KEY `account_id_2` (`account_id`);

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD UNIQUE KEY `info_id` (`info_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `product_name` (`product_name`);

--
-- Indexes for table `table_template`
--
ALTER TABLE `table_template`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_template`
--
ALTER TABLE `table_template`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
