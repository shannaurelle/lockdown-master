-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 07:02 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cart_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `product_volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_owner`, `product_description`, `product_price`, `product_date`, `product_tag`, `product_volume`) VALUES
(5, 'voluptates', '0', 'Blanditiis ratione est quia dolore ea magnam. Quia odio voluptas culpa neque voluptatem accusantium ab. Debitis harum incidunt saepe provident earum. Cumque esse nisi modi possimus vel nobis et.', 7149.37285939, '2018-04-05 13:38:26', '', 9),
(7, 'eum', '0', 'Placeat quasi sint quo aut non officia a eum. Beatae doloremque atque sequi voluptatem ipsa atque sunt. Enim aliquam eaque quam magni culpa quas. Molestiae at ipsam architecto sit voluptatem.', 31.7089, '1981-11-27 13:12:28', '', 7),
(9, 'facere', '0', 'Fugiat voluptatem cumque architecto iure et odit minima. Ea cupiditate beatae ratione nostrum voluptas ea. Fugit praesentium odio incidunt culpa ut.', 137887.207, '2000-11-28 14:20:59', '', 0),
(2, 'pariatur', '0', 'Id saepe repellendus sequi aut exercitationem. Qui voluptatem nam dolores a cum. Voluptas illo fugiat consectetur tempore accusamus. Accusantium in quis nobis nam.', 144811.461, '2019-06-26 04:28:10', '', 3),
(9, 'eaque', '0', 'Ad voluptas et enim qui cupiditate consectetur nihil esse. Nam sequi accusantium unde dolor quia. Nobis voluptas recusandae nobis voluptatem in voluptates qui. Ullam ut est ullam qui aut.', 266877.17716, '1984-06-23 19:39:13', '', 9),
(7, 'eos', '0', 'Optio qui ad voluptas voluptatem delectus molestias. Excepturi sed aut eveniet laboriosam esse numquam alias. Sed rem eveniet iusto nobis ad.', 17, '1979-05-26 13:03:56', '', 5),
(9, 'illum', '0', 'Rerum quis sit et tempore quae. Qui voluptas molestiae tenetur quis sequi. Nam in excepturi blanditiis et. Nulla et eos ratione consequatur enim vel perspiciatis minima.', 290, '1976-09-20 23:10:42', '', 4),
(7, 'provident', '0', 'Iure sit vero voluptas dolorem qui maxime tempore hic. Temporibus adipisci incidunt quaerat omnis pariatur sunt et. Sequi accusantium voluptatem et qui libero iste. Ex illum ipsa et quam repudiandae.', 18699627.198831, '1975-12-11 05:42:24', '', 5),
(6, 'rerum', '0', 'Pariatur aut odio soluta voluptatem. Sed dolore necessitatibus animi odio repudiandae totam sequi. Quia in at vel omnis. Vitae modi possimus qui fuga minima.', 10981656.52, '2007-12-16 03:21:43', '', 2),
(5, 'voluptatibus', '0', 'Distinctio vel ut voluptatem id tenetur voluptas. Quo temporibus consequatur fuga harum et sint. Est maxime molestiae consequatur. Nihil eos laborum esse rem possimus nisi.', 6046.8311159, '1985-01-31 09:47:46', '', 3),
(8, 'sint', '0', 'Molestiae ut necessitatibus suscipit cum. Tenetur tempore nihil id dicta quaerat placeat. Minus repellat quis quibusdam maxime praesentium expedita vitae. Et nihil voluptatem veritatis mollitia voluptatem molestiae dolores quasi.', 213.8537, '1991-04-26 11:21:44', '', 1),
(6, 'ea', '0', 'Omnis dignissimos voluptatem quidem qui quidem. Laboriosam hic provident voluptate. Assumenda deserunt ad quo aliquam in aut.', 1039313.4, '2006-06-03 09:42:12', '', 9),
(4, 'velit', '0', 'Iusto impedit adipisci labore magni fugiat natus. Eos quod nam harum odit voluptatem et pariatur. Aut omnis sed sit rerum quia minima voluptatem ipsa. Natus vel quia molestiae iure animi vel.', 7212, '1983-11-17 09:35:07', '', 6),
(3, 'quae', '0', 'Sed voluptatem molestiae pariatur unde ab fugiat. Voluptatum est totam et enim sit dolor doloribus. Dolores unde rerum sunt qui voluptates provident esse quod.', 734825, '1985-07-06 21:51:13', '', 6),
(7, 'facilis', '0', 'Aut labore ut velit nisi nam. Repellendus eveniet aliquam omnis impedit nisi rerum exercitationem. Architecto sunt qui et adipisci maiores eligendi quisquam eligendi. Repellendus blanditiis quia et.', 0, '2014-12-01 20:55:16', '', 4),
(3, 'ut', '0', 'Iure iste harum eos temporibus ea iste. Aut atque deleniti in quia.', 0, '2000-04-07 09:50:38', '', 9),
(1, 'officiis', '0', 'Adipisci sit laborum et voluptates velit velit sed. Error ut non minus sit aut voluptatibus et. Soluta minima qui itaque minima. Labore rerum fuga praesentium voluptatem doloribus.', 484927.013, '1980-08-02 22:21:49', '', 4),
(5, 'assumenda', '0', 'Laudantium animi numquam necessitatibus voluptas inventore. Porro enim sunt optio. Debitis repellendus culpa pariatur delectus voluptatem porro ut. Autem voluptates quis maxime accusamus. Eum a laborum eum non et sed numquam.', 13675.760338, '1994-08-27 07:40:18', '', 5),
(7, 'in', '0', 'Velit corrupti voluptates non optio enim qui. Tempora sed dolorum consequatur nobis. Culpa ratione quis quis dolores reprehenderit cumque. Cumque laudantium ut fugit culpa voluptatibus aut quo.', 7.8277, '2007-07-07 05:58:43', '', 9),
(3, 'incidunt', '0', 'Eveniet autem qui aut modi maiores pariatur odit. Et debitis itaque quam. Quis consectetur ut sequi sunt. Nulla hic et quia quis voluptatem dolorum.', 18076.49095, '1992-10-18 05:41:44', '', 7);

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
-- Indexes for table `products`
--
ALTER TABLE `products` ADD FULLTEXT KEY `product_name` (`product_name`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `account_id` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
