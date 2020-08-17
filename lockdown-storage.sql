-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2020 at 04:16 AM
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
(2222, 'Trucker', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Trucker', '2020-08-01 00:00:00'),
(44141, 'Fucker', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Buyer', '2020-08-01 00:00:00'),
(111111, 'Vaccaria', '$2b$10$oBJixBKMUbrFmy16PEHzF.9/BAEttwjyD8fcMJSkvvTp.gOCPyzuO', 'Seller', '2020-08-01 00:00:00'),
(22223232, 'Raven', '$2b$10$efncogp/VUkFVuvwd2HQPuWnrzDL4baJDUL1M73l4Y2st353TECh2', 'Seller', '2020-08-01 00:00:00');

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
  `product_img_path` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_owner`, `product_description`, `product_price`, `product_date`, `product_tag`, `product_volume`, `product_popularity`, `product_rating`, `product_img_path`) VALUES
(8208860, 'voluptatem', 'Vaccaria', 'Quaerat hic velit et esse. Perspiciatis et dolore nostrum beatae temporibus eaque ipsa.', 506875375.00333, '2020-08-16 07:39:28', '', 7419886, 0, 0, ''),
(7347140, 'earum', 'Vaccaria', 'Dignissimos optio ipsam nemo sit amet. Dolorem aperiam et aut atque sit minus. Ut quis enim magni delectus ut rerum. Laborum repudiandae praesentium quo repellat.', 226858.293481, '2020-08-16 07:39:28', '', 1, 0, 0, ''),
(0, 'at', 'Vaccaria', 'In dolorem in tenetur ratione provident. Labore mollitia sit molestiae qui earum autem saepe quas. Non qui nihil nulla architecto earum et accusantium.', 1112952.655732, '2020-08-16 07:39:28', '', 0, 0, 0, ''),
(811, 'id', 'Vaccaria', 'Iusto sed qui ut nulla. Vitae sed tenetur voluptatem porro nobis. Ipsam dolores in aut sunt aliquam iure non. Enim facilis rerum aut molestias natus eos.', 2339318.72, '2020-08-16 07:39:28', '', 809915, 0, 0, ''),
(2, 'sed', 'Vaccaria', 'Voluptas aut aperiam explicabo ut eos rem architecto aperiam. Quae atque fugit ea quis provident commodi. Quisquam praesentium et temporibus blanditiis.', 1790, '2020-08-16 07:39:28', '', 614324124, 0, 0, ''),
(69124, 'in', 'Vaccaria', 'Eligendi aut similique voluptatem quis harum. Ea officiis et expedita vero atque modi.', 1411.4235, '2020-08-16 07:39:28', '', 28954, 0, 0, ''),
(912237883, 'aliquid', 'Vaccaria', 'Impedit quasi aut consequuntur repellat nemo eum. Modi unde non et facilis. Reprehenderit in dignissimos error aut aliquid sint nisi esse. Impedit delectus deserunt consectetur quae.', 0, '2020-08-16 07:39:28', '', 162585, 0, 0, ''),
(57671, 'ipsum', 'Vaccaria', 'Veritatis iure vel minima suscipit iusto rerum beatae. Ipsa voluptates aut dolorum non minima. Quia sint voluptatum dignissimos vero iste sapiente sint.', 4785.6, '2020-08-16 07:39:28', '', 5, 0, 0, ''),
(775231420, 'quaerat', 'Vaccaria', 'Itaque non est et incidunt. Eos aspernatur nam et omnis quasi. Qui numquam ut quia eveniet voluptatum. Molestiae illo laboriosam est non autem sunt magnam.', 389026095.8273, '2020-08-16 07:39:28', '', 9416118, 0, 0, ''),
(245774818, 'accusantium', 'Vaccaria', 'Quibusdam assumenda et sit sed. Consectetur et molestiae eius et beatae et error. Odio dolores optio omnis et.', 0, '2020-08-16 07:39:28', '', 33304, 0, 0, ''),
(5696, 'aliquam', 'Vaccaria', 'Ipsum eligendi dolorem iste et. Quos quaerat quis itaque ullam officiis hic tempora. Omnis beatae est similique rerum.', 0.85798769, '2020-08-16 07:39:28', '', 57183, 0, 0, ''),
(59313, 'ea', 'Vaccaria', 'Laborum in quisquam est voluptates modi sint. Nobis fuga sed nostrum magnam expedita. Ut voluptatum aut possimus quis.', 5998, '2020-08-16 07:39:28', '', 26642, 0, 0, ''),
(58, 'non', 'Vaccaria', 'Perspiciatis iusto placeat impedit voluptatem autem. Hic expedita quam velit. Quibusdam voluptatem qui eum molestiae quis voluptate nostrum quas.', 15.44, '2020-08-16 07:39:28', '', 18322479, 0, 0, ''),
(42030267, 'aut', 'Vaccaria', 'Nihil id vel ut occaecati. Minus voluptas aut molestiae ipsum ipsa labore. Consequatur voluptas voluptatum omnis aspernatur doloribus saepe suscipit aut. Rerum laboriosam quo ducimus aliquid aliquam.', 509551.118336, '2020-08-16 07:39:28', '', 3, 0, 0, ''),
(38, 'ullam', 'Vaccaria', 'Vel est iure et impedit inventore vel ut. Perferendis id enim porro sit unde quos beatae. Minus doloremque qui error quia vel suscipit minima.', 230045.58, '2020-08-16 07:39:28', '', 0, 0, 0, ''),
(2210302, 'et', 'Vaccaria', 'Quas eius molestiae temporibus quo doloremque tenetur ducimus. Nisi ullam inventore vero provident harum aliquid expedita. Laborum quisquam et nihil tempore ut.', 47.233928828, '2020-08-16 07:39:28', '', 459241, 0, 0, ''),
(567592, 'nemo', 'Vaccaria', 'Ipsam qui est rerum illo nam totam reprehenderit. Natus sint qui labore unde. Rerum numquam magni veniam qui atque explicabo fugiat. In ipsum assumenda deserunt tempora facilis assumenda omnis et.', 1086838.042847, '2020-08-16 07:39:28', '', 0, 0, 0, ''),
(875799, 'dolore', 'Vaccaria', 'Blanditiis minima optio quis temporibus corporis incidunt blanditiis temporibus. Quod quaerat aspernatur recusandae ex. Omnis in tenetur ut et. Odit quo neque qui.', 78.9078, '2020-08-16 07:39:28', '', 68, 0, 0, ''),
(507, 'numquam', 'Vaccaria', 'Est repellendus ut nihil qui ipsum provident. Est est rerum eos magni minima blanditiis quaerat. Recusandae est aut voluptate et aut incidunt harum iusto.', 0, '2020-08-16 07:39:28', '', 822, 0, 0, ''),
(742912343, 'expedita', 'Vaccaria', 'Ratione ut aut rerum fuga qui libero nihil nulla. Ipsa eum soluta eius vel quos aut. Dolorem omnis qui soluta vero sunt. Non blanditiis consequatur voluptatem temporibus.', 2567106.7, '2020-08-16 07:39:28', '', 61100933, 0, 0, ''),
(9674, 'rerum', 'Vaccaria', 'Reiciendis animi repellat dolorem beatae voluptas. Odit possimus aliquam officiis aut in et. Illo voluptas molestiae enim et exercitationem in quia. Delectus distinctio ipsum voluptas iste fugit error eum occaecati.', 58531056, '2020-08-16 07:39:28', '', 87843261, 0, 0, ''),
(1424, 'dicta', 'Vaccaria', 'Facere amet laboriosam dolorem aspernatur unde aut. Soluta alias est rerum illo vitae molestiae voluptatem quis. Aspernatur sit sit quis odio et neque aut.', 0, '2020-08-16 07:39:28', '', 7, 0, 0, ''),
(3213541, 'ipsam', 'Vaccaria', 'Nobis tempore quisquam omnis voluptatem neque dolores. Amet est consequuntur vel ex aut molestiae qui. Et blanditiis omnis nesciunt laudantium voluptas praesentium officiis.', 1985829.0356443, '2020-08-16 07:39:28', '', 62, 0, 0, ''),
(334803905, 'nisi', 'Vaccaria', 'Nam eos porro ipsa ea. Et et qui modi dolor illum non. Ut quia dolore dolor.', 420.859298, '2020-08-16 07:39:28', '', 899138145, 0, 0, ''),
(44846674, 'consequuntur', 'Vaccaria', 'Necessitatibus quidem culpa voluptas aut. Vel porro qui et dolorem.', 408919.48, '2020-08-16 07:39:28', '', 66295, 0, 0, ''),
(48, 'error', 'Vaccaria', 'Sed et ex velit iusto aut quas laboriosam fuga. Recusandae odit quaerat qui libero inventore. Animi quia architecto ipsum quisquam. Aliquid eius est laboriosam iusto est.', 234990525.47956, '2020-08-16 07:39:28', '', 3454, 0, 0, ''),
(49, 'cumque', 'Vaccaria', 'Impedit ullam vel autem totam non et animi. Qui hic optio earum. Quo vel ab rerum eaque nihil. Veritatis nulla fugit neque qui reprehenderit qui.', 7.6407, '2020-08-16 07:39:28', '', 2659332, 0, 0, ''),
(324, 'odio', 'Vaccaria', 'Aut atque est incidunt porro. Quam rem a autem laborum. Magnam rerum nobis ut nulla repudiandae non. Facilis quaerat hic accusantium et.', 995783.58896152, '2020-08-16 07:39:28', '', 58306, 0, 0, ''),
(728876161, 'est', 'Vaccaria', 'Nihil laudantium qui ex. Ab molestias voluptatem consequatur in doloremque tempora aut. Laborum saepe aut ut ea est perspiciatis aperiam. Deleniti quia error sapiente consectetur numquam et. Vitae doloribus sunt et soluta enim sequi.', 2.769, '2020-08-16 07:39:28', '', 2649022, 0, 0, ''),
(3157, 'quibusdam', 'Vaccaria', 'Maxime corporis est iure consequatur non. Vero rem dolorem repellat quibusdam minus illum tempora. Alias ipsa nemo expedita architecto explicabo quisquam. Atque pariatur sit aliquid quia.', 584069.64905466, '2020-08-16 07:39:28', '', 985914734, 0, 0, ''),
(6884574, 'sint', 'Vaccaria', 'Qui fugiat ducimus voluptas autem non sunt. Impedit tempore suscipit dignissimos et est sed autem. Temporibus ut architecto eligendi maxime quas. Incidunt nostrum natus dolorem expedita voluptatem.', 12680959.5, '2020-08-16 07:39:28', '', 934, 0, 0, ''),
(26961, 'praesentium', 'Vaccaria', 'Et corporis quis sit velit sunt. Totam enim commodi vero quam. Cupiditate et quam rerum quo beatae blanditiis.', 1.15, '2020-08-16 07:39:28', '', 99428, 0, 0, ''),
(6, 'dolores', 'Vaccaria', 'Ut quam soluta voluptatum et aut natus neque. Eum nobis provident neque veniam non corrupti recusandae. Autem odio rerum consequuntur voluptas tempora quos animi autem. Consequatur harum autem aut aut accusamus repellendus.', 0, '2020-08-16 07:39:28', '', 88494, 0, 0, ''),
(9862, 'ratione', 'Vaccaria', 'Rerum itaque tempora similique enim voluptatum deleniti quibusdam. Ipsa totam eaque necessitatibus officia laboriosam. Assumenda minima non provident ut corrupti doloribus omnis. Corrupti reiciendis magni et ipsa eum neque.', 335911997.4, '2020-08-16 07:39:28', '', 1, 0, 0, ''),
(8674523, 'quisquam', 'Vaccaria', 'Incidunt nisi itaque tenetur et. Consectetur iusto possimus quibusdam sint molestias quis maxime. Animi omnis rerum quo tenetur fuga quo sed.', 667602.78, '2020-08-16 07:39:28', '', 91747, 0, 0, ''),
(612183272, 'voluptatem', 'Vaccaria', 'Placeat nisi repudiandae ea ex voluptas ut rem illum. Blanditiis aspernatur aliquid similique velit nam et. Inventore quo minima magnam velit et a.', 37, '2020-08-16 07:39:28', '', 8, 0, 0, ''),
(73, 'est', 'Vaccaria', 'Eum eum aliquam et reiciendis nostrum ab. Nam non veritatis inventore dolor optio rerum. Quas at ex neque esse voluptatem. Dolores aliquam magni veniam earum inventore officiis.', 709742.0740706, '2020-08-16 07:39:28', '', 50429, 0, 0, ''),
(92152, 'in', 'Vaccaria', 'Rerum dolor dicta praesentium magni omnis debitis nihil. Aperiam consequatur eum eaque exercitationem ipsa. Numquam sunt dicta iusto vel. Quaerat architecto veniam temporibus et vero.', 130.5, '2020-08-16 07:39:28', '', 3885, 0, 0, ''),
(36869412, 'rerum', 'Vaccaria', 'Consequatur est asperiores est dolorum optio non. Doloribus itaque temporibus et enim ea ipsam. Fugiat minima nulla necessitatibus similique eum est tempora.', 2783.44648, '2020-08-16 07:39:28', '', 603204783, 0, 0, ''),
(72, 'molestias', 'Vaccaria', 'Error numquam nisi tenetur dolore quia et reprehenderit. Perferendis voluptatibus cum quia illum. Assumenda nesciunt sit ut magnam et. Alias aspernatur facilis aut molestias vel et.', 47018.5977325, '2020-08-16 07:39:28', '', 32800162, 0, 0, ''),
(7, 'deserunt', 'Vaccaria', 'In ullam accusantium eum aut nam. Nesciunt ex et culpa ut quae eligendi. Incidunt reprehenderit architecto dolor sint. Dicta autem est dolor autem iure.', 46758.837, '2020-08-16 07:39:28', '', 3801, 0, 0, ''),
(725916563, 'facilis', 'Vaccaria', 'Facere et unde ea facilis repudiandae tenetur. Omnis ea ut excepturi minus consequatur. Et sint enim aut animi aliquam sequi. Sit nemo quia eaque quia omnis ipsum.', 29745.594313, '2020-08-16 07:39:28', '', 535784, 0, 0, ''),
(9434, 'quia', 'Vaccaria', 'Distinctio unde sunt perferendis optio porro sed corrupti. Magnam dignissimos repellat ea aut tenetur ut cum sit. Molestiae ad ducimus est aspernatur. Quisquam non magnam dolor.', 2239658.857681, '2020-08-16 07:39:28', '', 7, 0, 0, ''),
(421596123, 'quibusdam', 'Vaccaria', 'Dolores sit voluptatum consequuntur accusamus voluptatibus aspernatur. Quia sed quod numquam perferendis cumque. Delectus dolore recusandae sit molestias ducimus reprehenderit consequatur. Sed numquam qui perspiciatis ex aut eum sed. Quia possimus est ut.', 174654, '2020-08-16 07:39:28', '', 2187, 0, 0, ''),
(19, 'perferendis', 'Vaccaria', 'Aliquid incidunt id quos facilis voluptas sequi. Voluptas ut quia molestiae laborum voluptatem praesentium. Illo aut nostrum necessitatibus consequatur odio quos. Aliquid aspernatur voluptas nam iure voluptatibus earum veritatis ut.', 47354.29, '2020-08-16 07:39:28', '', 9, 0, 0, ''),
(9, 'dolorem', 'Vaccaria', 'Dicta mollitia distinctio a iure ut odio. Laudantium quia nostrum ut et non corporis est. Sed commodi fuga dolor dolor. Cumque amet dolores praesentium qui doloremque facilis eum. Quos eum sed rerum suscipit libero soluta accusantium dolor.', 67681.4489895, '2020-08-16 07:39:28', '', 72, 0, 0, ''),
(22, 'exercitationem', 'Vaccaria', 'Magnam dolor dignissimos vero autem. Enim suscipit tenetur unde ea quis voluptas. Qui veniam facilis cupiditate quo quia. Nisi omnis molestias ducimus dicta non.', 988.05493708, '2020-08-16 07:39:28', '', 716, 0, 0, ''),
(70240, 'ea', 'Vaccaria', 'Autem at facere rerum in ut iste adipisci libero. Sunt qui cumque autem quam placeat voluptatibus. Veritatis sunt ex vel consequatur.', 706.131, '2020-08-16 07:39:28', '', 75537, 0, 0, ''),
(658881, 'est', 'Vaccaria', 'Quia saepe veniam consequatur delectus. Nihil quis repellat ea beatae quos. Ratione nostrum quo quo a quia facere. Ipsam voluptates ipsam aut totam.', 51875692.06629, '2020-08-16 07:39:28', '', 79083603, 0, 0, ''),
(77, 'adipisci', 'Vaccaria', 'Nam repudiandae et ea fuga. Maxime perspiciatis dicta eligendi porro. Rerum accusantium et qui quasi iusto soluta exercitationem. Ipsam sed sunt accusamus animi similique eum deleniti.', 11240.427506589, '2020-08-16 07:39:28', '', 987557, 0, 0, ''),
(15815, 'molestias', 'Vaccaria', 'Eligendi quis veniam omnis error mollitia ipsam non. Ab dicta nulla est autem sunt voluptatem. Numquam accusantium et sed.', 8531.62, '2020-08-16 07:39:28', '', 2076, 0, 0, ''),
(41774, 'nulla', 'Vaccaria', 'Laboriosam sint quia nostrum cum quidem rerum. Dolorem vel sunt asperiores ut sed. Optio magni aspernatur ducimus quasi et. Repellat sed dolore illum et repellendus dicta et blanditiis.', 1374217.450518, '2020-08-16 07:39:28', '', 9, 0, 0, ''),
(798157, 'sunt', 'Vaccaria', 'Fugiat minima numquam aut sed. Praesentium quas recusandae illo et error et. Quod non aliquid omnis voluptates alias aut illum est. Repellat qui odio omnis voluptatem eos.', 171167.47737, '2020-08-16 07:39:28', '', 615958455, 0, 0, ''),
(6514, 'fuga', 'Vaccaria', 'Rerum perspiciatis dolor similique quia odio et repellendus. Repellendus deserunt minus ad quae. Sed nesciunt qui cum numquam voluptas sit ipsam.', 702441.335, '2020-08-16 07:39:28', '', 3566, 0, 0, ''),
(473, 'voluptatem', 'Vaccaria', 'Mollitia labore cumque hic et dicta. Quia ipsam quis quo. Nobis consequatur sit voluptates eum incidunt dolore.', 226930618, '2020-08-16 07:39:28', '', 661, 0, 0, ''),
(49961299, 'ut', 'Vaccaria', 'Temporibus repudiandae voluptatibus possimus aut repellat aliquid voluptatum. Mollitia odit reiciendis omnis doloremque. Quas numquam ipsa nesciunt nesciunt exercitationem dignissimos quo. Nisi temporibus non cumque est.', 3234277.2409638, '2020-08-16 07:39:28', '', 93274, 0, 0, ''),
(92, 'voluptatem', 'Vaccaria', 'Repudiandae laborum numquam vero distinctio qui. Et ducimus libero quia eius. Omnis et nostrum similique suscipit quis et incidunt. Nihil consequatur quae dolore odit.', 703619.179698, '2020-08-16 07:39:28', '', 452, 0, 0, ''),
(596353574, 'non', 'Vaccaria', 'Et fugiat consequatur accusantium consequatur animi praesentium harum. Et eos voluptatem dolor eveniet et. Enim numquam omnis voluptatem laborum dolor et quae.', 138.5, '2020-08-16 07:39:28', '', 84209, 0, 0, ''),
(493, 'rerum', 'Vaccaria', 'Quae aut quia eum ratione. Quae perspiciatis necessitatibus nesciunt at perferendis. Odio quam sunt rerum omnis quaerat amet itaque. Veritatis suscipit quae iste quae voluptatum.', 395347.45528589, '2020-08-16 07:39:28', '', 359738208, 0, 0, ''),
(1, 'praesentium', 'Vaccaria', 'Unde voluptates distinctio eligendi corrupti nihil nostrum totam. Non dolore porro excepturi et. Officiis eum dignissimos voluptatem est. Aperiam earum voluptatibus maxime aut ducimus repellendus.', 700681.94, '2020-08-16 07:39:28', '', 311373382, 0, 0, ''),
(80656105, 'est', 'Vaccaria', 'Qui delectus beatae quia quae totam amet. Ratione qui et necessitatibus harum laboriosam et mollitia voluptate. Ab et fuga temporibus nam totam.', 0, '2020-08-16 07:39:28', '', 7, 0, 0, ''),
(296, 'maxime', 'Vaccaria', 'Et itaque qui saepe ut. Rerum molestias voluptatem sapiente voluptates sed soluta aliquid. Ea ut officiis eaque perspiciatis. In eveniet rem et sit iusto alias earum.', 26330.49, '2020-08-16 07:39:28', '', 7703, 0, 0, ''),
(555756, 'consectetur', 'Vaccaria', 'Assumenda optio voluptates eligendi sapiente neque. Et ut magnam mollitia quas ex natus. Non saepe labore qui autem et laboriosam. Eos ipsam nulla autem assumenda neque voluptas quae.', 3624065.58, '2020-08-16 07:39:28', '', 0, 0, 0, ''),
(24767, 'autem', 'Vaccaria', 'Nulla quas cum enim impedit adipisci id quis placeat. Dolore ab aliquid voluptas saepe nesciunt consequatur. Ut in quia quia sapiente ut at sit. Delectus sit omnis rerum autem.', 0, '2020-08-16 07:39:28', '', 43801, 0, 0, ''),
(6878579, 'nihil', 'Vaccaria', 'Harum aspernatur et maiores reiciendis sunt. Ratione consequuntur eos ipsa odio perferendis quasi impedit doloribus. Quis sunt totam nobis maiores aliquam et vitae.', 630166.32611098, '2020-08-16 07:39:28', '', 86128, 0, 0, ''),
(169847, 'suscipit', 'Vaccaria', 'Beatae et consequuntur a voluptatem porro et libero suscipit. Voluptate eum aut quidem est necessitatibus sunt. Ab est incidunt ipsa assumenda hic sit.', 39.35, '2020-08-16 07:39:28', '', 2, 0, 0, ''),
(383, 'facilis', 'Vaccaria', 'Modi blanditiis quaerat est dolores cum. Similique quam beatae alias repellat. Ut laborum ducimus modi alias reprehenderit exercitationem. Illum iusto voluptatibus qui error amet.', 133009, '2020-08-16 07:39:28', '', 30086654, 0, 0, ''),
(4, 'iure', 'Vaccaria', 'Velit culpa assumenda et dolore placeat recusandae sit. Perspiciatis dicta aut corporis fugit est omnis maxime. Minima accusamus laudantium provident vero autem recusandae. Minima voluptas molestiae expedita aliquid quasi dignissimos pariatur deleniti. Qui reprehenderit magni laudantium laborum aut iure.', 22316.85266, '2020-08-16 07:39:28', '', 661, 0, 0, ''),
(39935, 'eveniet', 'Vaccaria', 'Quaerat nam expedita sequi minima. Dolores earum vero laudantium consequatur recusandae libero. Quam excepturi inventore odit sed nostrum eligendi commodi. Autem in rerum nesciunt beatae.', 69.1017, '2020-08-16 07:39:28', '', 1619836, 0, 0, ''),
(9603, 'ut', 'Vaccaria', 'Mollitia reprehenderit voluptas inventore recusandae. Voluptatem sint dignissimos esse non et consequatur. Illo ratione cupiditate eos quis dolor.', 104351.3, '2020-08-16 07:39:28', '', 9, 0, 0, ''),
(5710, 'exercitationem', 'Vaccaria', 'Cum ut harum eligendi adipisci. Tempora deserunt magni aliquam necessitatibus enim ut. Aspernatur excepturi sint aspernatur adipisci quis.', 0, '2020-08-16 07:39:28', '', 907, 0, 0, ''),
(671586, 'ut', 'Vaccaria', 'Esse omnis mollitia est et error. Nulla et aperiam doloribus eos error quos. Sed dignissimos ullam dolor reiciendis corporis veritatis. Quibusdam commodi sint est et.', 1.61, '2020-08-16 07:39:28', '', 406, 0, 0, ''),
(487916, 'impedit', 'Vaccaria', 'Deleniti accusamus debitis velit quia blanditiis vero. Eos eum doloribus blanditiis eos porro sit qui. Accusamus ipsum aliquid nam distinctio iste eum suscipit. Adipisci mollitia aspernatur ad non autem.', 374, '2020-08-16 07:39:28', '', 71680945, 0, 0, ''),
(66316, 'magni', 'Vaccaria', 'Distinctio id est id unde iure ut animi dolores. Vero blanditiis quod beatae expedita corrupti. Aspernatur et magni sint esse dolor qui natus.', 1424.35, '2020-08-16 07:39:28', '', 169, 0, 0, ''),
(762, 'recusandae', 'Vaccaria', 'Saepe unde et consequuntur aut qui. A dolorum illo nihil soluta magni possimus. Velit officiis totam mollitia unde magni autem laudantium. Magnam est dolor tempore praesentium.', 0, '2020-08-16 07:39:28', '', 650, 0, 0, ''),
(67170, 'minima', 'Vaccaria', 'Omnis blanditiis molestiae voluptatem quasi earum illo eaque. Sint ut illum laboriosam totam nam in. Rerum qui ut autem velit qui consequatur et. Qui commodi excepturi ullam tenetur nisi ea et.', 0, '2020-08-16 07:39:28', '', 891, 0, 0, ''),
(68572, 'voluptatem', 'Vaccaria', 'Debitis reiciendis autem occaecati at distinctio adipisci itaque. Quae enim dolores quod repellat. Recusandae sunt sed quidem non fugiat. Tempore iste ipsam nemo facere.', 27886861.68777, '2020-08-16 07:39:28', '', 637458, 0, 0, ''),
(818453, 'omnis', 'Vaccaria', 'Nihil facere qui animi ipsa. Laboriosam amet quos aut vitae laudantium repellat ea. Illum pariatur animi sed rem. Eos rerum exercitationem atque quia earum dolorem.', 178.122002, '2020-08-16 07:39:28', '', 880, 0, 0, ''),
(4510, 'sit', 'Vaccaria', 'Ipsum sint perspiciatis et dolorem. Ratione velit autem culpa vel. Pariatur voluptate provident hic debitis iusto eveniet labore qui.', 3615916.94411, '2020-08-16 07:39:28', '', 78, 0, 0, ''),
(3017, 'ipsam', 'Vaccaria', 'Dignissimos a quidem odio id molestiae ducimus. Illum doloremque aut id non. Repellendus excepturi voluptatem quos quia deleniti omnis.', 0, '2020-08-16 07:39:28', '', 8575, 0, 0, ''),
(4392611, 'et', 'Vaccaria', 'Id voluptas blanditiis nemo quia ipsa ut voluptatem. Eos fugiat porro dolore laborum molestiae laborum et. Quaerat quasi sunt quis quaerat. Sunt qui vel sapiente dolorem voluptatem occaecati.', 2571707.671649, '2020-08-16 07:39:28', '', 21, 0, 0, ''),
(169, 'facere', 'Vaccaria', 'Dignissimos et voluptatem error in dicta. Eligendi officia iure iusto laudantium nesciunt quidem. Alias corrupti accusamus laudantium necessitatibus.', 57247.779516, '2020-08-16 07:39:28', '', 54783395, 0, 0, ''),
(572591, 'in', 'Vaccaria', 'Voluptas iure molestias eos omnis. Molestiae ab alias beatae sint sed. Necessitatibus dolorem rerum in eligendi qui ipsum aspernatur.', 469956026, '2020-08-16 07:39:28', '', 285615, 0, 0, ''),
(18369714, 'at', 'Vaccaria', 'Saepe labore quis itaque reiciendis. Commodi fugit sit perspiciatis dicta itaque rerum voluptatem. Nobis qui sit autem voluptatem explicabo pariatur dicta.', 149.291523103, '2020-08-16 07:39:28', '', 32602827, 0, 0, ''),
(473457, 'quidem', 'Vaccaria', 'Fugit velit eligendi repellat quia maxime accusantium et magnam. Dolor recusandae ratione at dolorem necessitatibus temporibus commodi. Itaque voluptatem dolores ex sapiente enim. Fugiat modi possimus qui nihil perspiciatis animi.', 0, '2020-08-16 07:39:28', '', 4, 0, 0, ''),
(60365, 'voluptatibus', 'Vaccaria', 'Ut earum perspiciatis reiciendis eligendi hic sunt. Sit id expedita molestiae molestiae pariatur sit praesentium sit. Deleniti nisi omnis nemo consequatur.', 22938192.121, '2020-08-16 07:39:28', '', 515516779, 0, 0, ''),
(6430, 'est', 'Vaccaria', 'Nisi doloribus fuga in aliquid est at. Inventore dicta impedit adipisci quia sed porro. Ullam nesciunt ea nihil aut.', 731491120.7211, '2020-08-16 07:39:28', '', 478, 0, 0, ''),
(70, 'deserunt', 'Vaccaria', 'Reiciendis ullam laudantium unde est. Optio et libero voluptas sed et eum occaecati voluptatem. Et in vel et dolores magnam.', 298865.062, '2020-08-16 07:39:28', '', 47905375, 0, 0, ''),
(528721, 'dolores', 'Vaccaria', 'A nulla tempora voluptatem est non non numquam alias. Ipsa nam temporibus praesentium placeat sint nostrum unde qui. Dolor quia laboriosam dolorem eaque. Doloribus officia eos occaecati rem animi.', 3856.990386, '2020-08-16 07:39:28', '', 7274264, 0, 0, ''),
(7481, 'est', 'Vaccaria', 'Velit esse vel reprehenderit aliquid totam eum. Atque quaerat qui ut.', 86.77935, '2020-08-16 07:39:28', '', 241982474, 0, 0, ''),
(805009519, 'ut', 'Vaccaria', 'Autem impedit dolorem sunt hic ratione ipsum quos. Repudiandae est quam quisquam aut autem illum perferendis. Eligendi earum enim est expedita asperiores. Vel et quia consequatur non soluta veritatis. Aut alias consequatur sit.', 2681.22, '2020-08-16 07:39:28', '', 6, 0, 0, ''),
(5, 'esse', 'Vaccaria', 'Dolorum sequi quia cumque non ut veritatis. Inventore reiciendis sit eveniet eaque. Explicabo nihil aperiam delectus minus voluptatem omnis accusantium hic.', 142852, '2020-08-16 07:39:28', '', 4, 0, 0, ''),
(49055135, 'magnam', 'Vaccaria', 'Sit fugit iste ut rerum. Enim eligendi nemo magnam asperiores facilis. Sit officiis quasi facere tenetur consequatur et consequatur. Quis nisi optio corrupti iusto inventore.', 368535.33, '2020-08-16 07:39:28', '', 272456711, 0, 0, ''),
(513784333, 'suscipit', 'Vaccaria', 'Incidunt dolor ipsum unde rerum. Numquam pariatur praesentium est sint molestiae natus. Quia reprehenderit commodi eveniet voluptatum ut ex. Quo quae maxime ut commodi amet. Adipisci fuga error facilis ut magni ea aut dolor.', 499.5, '2020-08-16 07:39:28', '', 494470, 0, 0, ''),
(767145, 'quidem', 'Vaccaria', 'Laboriosam et quod nam libero. Asperiores nihil quia asperiores eum aut enim dolor. Praesentium voluptatem consectetur quidem eaque optio architecto. Illo quo error sed est. Ea mollitia aperiam rerum distinctio est.', 309980.3841, '2020-08-16 07:39:28', '', 548, 0, 0, ''),
(81633, 'nisi', 'Vaccaria', 'Ut occaecati fugit ut officia vitae vero qui. Porro nisi fugiat ducimus quisquam. Rerum suscipit molestiae sed vel esse omnis. Vero eos maiores earum accusantium aut ut autem.', 58.5, '2020-08-16 07:39:28', '', 421636, 0, 0, ''),
(241563030, 'quae', 'Vaccaria', 'Mollitia totam repellat voluptatem quia aut vitae doloremque. Est aut consequatur at neque voluptatem. Voluptas dolores sit temporibus labore.', 546918254.6555, '2020-08-16 07:39:28', '', 217, 0, 0, ''),
(68573446, 'consequatur', 'Vaccaria', 'Qui quia hic et voluptatem laborum. Odio deleniti eos id nam. Qui quis doloribus sequi reiciendis beatae perspiciatis cumque in. Facere saepe nesciunt necessitatibus quia odit.', 1493077.457362, '2020-08-16 07:39:28', '', 0, 0, 0, ''),
(3319, 'aperiam', 'Vaccaria', 'Et impedit non ut saepe eum. Officiis voluptatem quia odit nihil laudantium sunt harum. Maiores dolores explicabo et.', 265491221.51, '2020-08-16 07:39:28', '', 461626, 0, 0, ''),
(8458646, 'aperiam', 'Vaccaria', 'Pariatur pariatur sed ut eius repellat in tempore. Ea consequatur mollitia hic quae. Aut deserunt blanditiis maiores ducimus fugiat quia asperiores. Eveniet ipsam impedit est quis necessitatibus mollitia quae.', 300599.5, '2020-08-16 07:39:28', '', 1074, 0, 0, '');

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
  ADD UNIQUE KEY `id` (`id`);

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
-- AUTO_INCREMENT for table `table_template`
--
ALTER TABLE `table_template`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
