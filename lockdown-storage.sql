-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 03:05 AM
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
  `product_volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_owner`, `product_description`, `product_price`, `product_date`, `product_tag`, `product_volume`) VALUES
(8208860, 'voluptatem', 'et', 'Quaerat hic velit et esse. Perspiciatis et dolore nostrum beatae temporibus eaque ipsa.', 506875375.00333, '2007-02-17 23:45:03', '', 7419886),
(7347140, 'earum', 'praesentium', 'Dignissimos optio ipsam nemo sit amet. Dolorem aperiam et aut atque sit minus. Ut quis enim magni delectus ut rerum. Laborum repudiandae praesentium quo repellat.', 226858.293481, '2008-10-01 08:22:41', '', 1),
(0, 'at', 'nostrum', 'In dolorem in tenetur ratione provident. Labore mollitia sit molestiae qui earum autem saepe quas. Non qui nihil nulla architecto earum et accusantium.', 1112952.655732, '1972-01-15 16:21:35', '', 0),
(811, 'id', 'qui', 'Iusto sed qui ut nulla. Vitae sed tenetur voluptatem porro nobis. Ipsam dolores in aut sunt aliquam iure non. Enim facilis rerum aut molestias natus eos.', 2339318.72, '2016-01-01 17:07:37', '', 809915),
(2, 'sed', 'eaque', 'Voluptas aut aperiam explicabo ut eos rem architecto aperiam. Quae atque fugit ea quis provident commodi. Quisquam praesentium et temporibus blanditiis.', 1790, '1994-02-04 04:12:46', '', 614324124),
(69124, 'in', 'accusantium', 'Eligendi aut similique voluptatem quis harum. Ea officiis et expedita vero atque modi.', 1411.4235, '2005-08-07 06:38:23', '', 28954),
(912237883, 'aliquid', 'similique', 'Impedit quasi aut consequuntur repellat nemo eum. Modi unde non et facilis. Reprehenderit in dignissimos error aut aliquid sint nisi esse. Impedit delectus deserunt consectetur quae.', 0, '2015-07-15 18:07:16', '', 162585),
(57671, 'ipsum', 'voluptatem', 'Veritatis iure vel minima suscipit iusto rerum beatae. Ipsa voluptates aut dolorum non minima. Quia sint voluptatum dignissimos vero iste sapiente sint.', 4785.6, '1985-07-13 12:24:40', '', 5),
(775231420, 'quaerat', 'laborum', 'Itaque non est et incidunt. Eos aspernatur nam et omnis quasi. Qui numquam ut quia eveniet voluptatum. Molestiae illo laboriosam est non autem sunt magnam.', 389026095.8273, '2003-12-30 10:45:20', '', 9416118),
(245774818, 'accusantium', 'sit', 'Quibusdam assumenda et sit sed. Consectetur et molestiae eius et beatae et error. Odio dolores optio omnis et.', 0, '1975-03-24 12:25:31', '', 33304),
(5696, 'aliquam', 'eius', 'Ipsum eligendi dolorem iste et. Quos quaerat quis itaque ullam officiis hic tempora. Omnis beatae est similique rerum.', 0.85798769, '2005-09-04 09:24:04', '', 57183),
(59313, 'ea', 'magni', 'Laborum in quisquam est voluptates modi sint. Nobis fuga sed nostrum magnam expedita. Ut voluptatum aut possimus quis.', 5998, '1971-05-07 22:59:53', '', 26642),
(58, 'non', 'repellendus', 'Perspiciatis iusto placeat impedit voluptatem autem. Hic expedita quam velit. Quibusdam voluptatem qui eum molestiae quis voluptate nostrum quas.', 15.44, '2012-09-22 09:45:52', '', 18322479),
(42030267, 'aut', 'omnis', 'Nihil id vel ut occaecati. Minus voluptas aut molestiae ipsum ipsa labore. Consequatur voluptas voluptatum omnis aspernatur doloribus saepe suscipit aut. Rerum laboriosam quo ducimus aliquid aliquam.', 509551.118336, '1975-10-14 08:12:46', '', 3),
(38, 'ullam', 'mollitia', 'Vel est iure et impedit inventore vel ut. Perferendis id enim porro sit unde quos beatae. Minus doloremque qui error quia vel suscipit minima.', 230045.58, '1993-05-01 04:24:13', '', 0),
(2210302, 'et', 'rerum', 'Quas eius molestiae temporibus quo doloremque tenetur ducimus. Nisi ullam inventore vero provident harum aliquid expedita. Laborum quisquam et nihil tempore ut.', 47.233928828, '1981-11-28 21:20:25', '', 459241),
(567592, 'nemo', 'et', 'Ipsam qui est rerum illo nam totam reprehenderit. Natus sint qui labore unde. Rerum numquam magni veniam qui atque explicabo fugiat. In ipsum assumenda deserunt tempora facilis assumenda omnis et.', 1086838.042847, '1994-12-01 03:33:50', '', 0),
(875799, 'dolore', 'maiores', 'Blanditiis minima optio quis temporibus corporis incidunt blanditiis temporibus. Quod quaerat aspernatur recusandae ex. Omnis in tenetur ut et. Odit quo neque qui.', 78.9078, '2017-10-22 15:56:50', '', 68),
(507, 'numquam', 'ullam', 'Est repellendus ut nihil qui ipsum provident. Est est rerum eos magni minima blanditiis quaerat. Recusandae est aut voluptate et aut incidunt harum iusto.', 0, '1976-08-22 08:13:45', '', 822),
(742912343, 'expedita', 'cupiditate', 'Ratione ut aut rerum fuga qui libero nihil nulla. Ipsa eum soluta eius vel quos aut. Dolorem omnis qui soluta vero sunt. Non blanditiis consequatur voluptatem temporibus.', 2567106.7, '1983-10-16 12:10:49', '', 61100933),
(9674, 'rerum', 'voluptas', 'Reiciendis animi repellat dolorem beatae voluptas. Odit possimus aliquam officiis aut in et. Illo voluptas molestiae enim et exercitationem in quia. Delectus distinctio ipsum voluptas iste fugit error eum occaecati.', 58531056, '2017-12-17 02:07:44', '', 87843261),
(1424, 'dicta', 'voluptas', 'Facere amet laboriosam dolorem aspernatur unde aut. Soluta alias est rerum illo vitae molestiae voluptatem quis. Aspernatur sit sit quis odio et neque aut.', 0, '2001-09-22 19:22:04', '', 7),
(3213541, 'ipsam', 'aliquam', 'Nobis tempore quisquam omnis voluptatem neque dolores. Amet est consequuntur vel ex aut molestiae qui. Et blanditiis omnis nesciunt laudantium voluptas praesentium officiis.', 1985829.0356443, '1995-09-15 03:36:22', '', 62),
(334803905, 'nisi', 'facere', 'Nam eos porro ipsa ea. Et et qui modi dolor illum non. Ut quia dolore dolor.', 420.859298, '1995-05-13 20:44:59', '', 899138145),
(44846674, 'consequuntur', 'sit', 'Necessitatibus quidem culpa voluptas aut. Vel porro qui et dolorem.', 408919.48, '1977-03-07 16:39:32', '', 66295),
(48, 'error', 'et', 'Sed et ex velit iusto aut quas laboriosam fuga. Recusandae odit quaerat qui libero inventore. Animi quia architecto ipsum quisquam. Aliquid eius est laboriosam iusto est.', 234990525.47956, '2003-05-28 06:58:51', '', 3454),
(49, 'cumque', 'et', 'Impedit ullam vel autem totam non et animi. Qui hic optio earum. Quo vel ab rerum eaque nihil. Veritatis nulla fugit neque qui reprehenderit qui.', 7.6407, '1971-04-23 07:03:28', '', 2659332),
(324, 'odio', 'eveniet', 'Aut atque est incidunt porro. Quam rem a autem laborum. Magnam rerum nobis ut nulla repudiandae non. Facilis quaerat hic accusantium et.', 995783.58896152, '2001-09-15 16:47:46', '', 58306),
(728876161, 'est', 'voluptatem', 'Nihil laudantium qui ex. Ab molestias voluptatem consequatur in doloremque tempora aut. Laborum saepe aut ut ea est perspiciatis aperiam. Deleniti quia error sapiente consectetur numquam et. Vitae doloribus sunt et soluta enim sequi.', 2.769, '2011-12-24 07:59:18', '', 2649022),
(3157, 'quibusdam', 'sunt', 'Maxime corporis est iure consequatur non. Vero rem dolorem repellat quibusdam minus illum tempora. Alias ipsa nemo expedita architecto explicabo quisquam. Atque pariatur sit aliquid quia.', 584069.64905466, '1982-05-31 09:54:22', '', 985914734),
(6884574, 'sint', 'enim', 'Qui fugiat ducimus voluptas autem non sunt. Impedit tempore suscipit dignissimos et est sed autem. Temporibus ut architecto eligendi maxime quas. Incidunt nostrum natus dolorem expedita voluptatem.', 12680959.5, '1983-01-09 08:25:18', '', 934),
(26961, 'praesentium', 'vitae', 'Et corporis quis sit velit sunt. Totam enim commodi vero quam. Cupiditate et quam rerum quo beatae blanditiis.', 1.15, '1979-12-24 01:51:03', '', 99428),
(6, 'dolores', 'est', 'Ut quam soluta voluptatum et aut natus neque. Eum nobis provident neque veniam non corrupti recusandae. Autem odio rerum consequuntur voluptas tempora quos animi autem. Consequatur harum autem aut aut accusamus repellendus.', 0, '2009-03-04 07:50:30', '', 88494),
(9862, 'ratione', 'recusandae', 'Rerum itaque tempora similique enim voluptatum deleniti quibusdam. Ipsa totam eaque necessitatibus officia laboriosam. Assumenda minima non provident ut corrupti doloribus omnis. Corrupti reiciendis magni et ipsa eum neque.', 335911997.4, '1990-01-08 05:20:53', '', 1),
(8674523, 'quisquam', 'voluptatem', 'Incidunt nisi itaque tenetur et. Consectetur iusto possimus quibusdam sint molestias quis maxime. Animi omnis rerum quo tenetur fuga quo sed.', 667602.78, '1986-09-25 10:10:45', '', 91747),
(612183272, 'voluptatem', 'dolores', 'Placeat nisi repudiandae ea ex voluptas ut rem illum. Blanditiis aspernatur aliquid similique velit nam et. Inventore quo minima magnam velit et a.', 37, '1974-06-07 12:05:06', '', 8),
(73, 'est', 'eum', 'Eum eum aliquam et reiciendis nostrum ab. Nam non veritatis inventore dolor optio rerum. Quas at ex neque esse voluptatem. Dolores aliquam magni veniam earum inventore officiis.', 709742.0740706, '2015-04-23 13:30:23', '', 50429),
(92152, 'in', 'deserunt', 'Rerum dolor dicta praesentium magni omnis debitis nihil. Aperiam consequatur eum eaque exercitationem ipsa. Numquam sunt dicta iusto vel. Quaerat architecto veniam temporibus et vero.', 130.5, '1992-07-31 11:28:55', '', 3885),
(36869412, 'rerum', 'et', 'Consequatur est asperiores est dolorum optio non. Doloribus itaque temporibus et enim ea ipsam. Fugiat minima nulla necessitatibus similique eum est tempora.', 2783.44648, '2002-05-28 06:35:27', '', 603204783),
(72, 'molestias', 'totam', 'Error numquam nisi tenetur dolore quia et reprehenderit. Perferendis voluptatibus cum quia illum. Assumenda nesciunt sit ut magnam et. Alias aspernatur facilis aut molestias vel et.', 47018.5977325, '2016-03-15 18:41:10', '', 32800162),
(7, 'deserunt', 'non', 'In ullam accusantium eum aut nam. Nesciunt ex et culpa ut quae eligendi. Incidunt reprehenderit architecto dolor sint. Dicta autem est dolor autem iure.', 46758.837, '2000-12-10 14:58:37', '', 3801),
(725916563, 'facilis', 'similique', 'Facere et unde ea facilis repudiandae tenetur. Omnis ea ut excepturi minus consequatur. Et sint enim aut animi aliquam sequi. Sit nemo quia eaque quia omnis ipsum.', 29745.594313, '2000-06-10 01:40:10', '', 535784),
(9434, 'quia', 'qui', 'Distinctio unde sunt perferendis optio porro sed corrupti. Magnam dignissimos repellat ea aut tenetur ut cum sit. Molestiae ad ducimus est aspernatur. Quisquam non magnam dolor.', 2239658.857681, '2013-11-04 18:17:50', '', 7),
(421596123, 'quibusdam', 'nostrum', 'Dolores sit voluptatum consequuntur accusamus voluptatibus aspernatur. Quia sed quod numquam perferendis cumque. Delectus dolore recusandae sit molestias ducimus reprehenderit consequatur. Sed numquam qui perspiciatis ex aut eum sed. Quia possimus est ut.', 174654, '1992-03-29 06:42:08', '', 2187),
(19, 'perferendis', 'magnam', 'Aliquid incidunt id quos facilis voluptas sequi. Voluptas ut quia molestiae laborum voluptatem praesentium. Illo aut nostrum necessitatibus consequatur odio quos. Aliquid aspernatur voluptas nam iure voluptatibus earum veritatis ut.', 47354.29, '1986-02-05 04:43:19', '', 9),
(9, 'dolorem', 'aliquam', 'Dicta mollitia distinctio a iure ut odio. Laudantium quia nostrum ut et non corporis est. Sed commodi fuga dolor dolor. Cumque amet dolores praesentium qui doloremque facilis eum. Quos eum sed rerum suscipit libero soluta accusantium dolor.', 67681.4489895, '1972-07-13 14:27:01', '', 72),
(22, 'exercitationem', 'saepe', 'Magnam dolor dignissimos vero autem. Enim suscipit tenetur unde ea quis voluptas. Qui veniam facilis cupiditate quo quia. Nisi omnis molestias ducimus dicta non.', 988.05493708, '1993-09-04 11:04:25', '', 716),
(70240, 'ea', 'ut', 'Autem at facere rerum in ut iste adipisci libero. Sunt qui cumque autem quam placeat voluptatibus. Veritatis sunt ex vel consequatur.', 706.131, '2002-02-01 14:46:19', '', 75537),
(658881, 'est', 'aut', 'Quia saepe veniam consequatur delectus. Nihil quis repellat ea beatae quos. Ratione nostrum quo quo a quia facere. Ipsam voluptates ipsam aut totam.', 51875692.06629, '1987-02-15 03:44:11', '', 79083603),
(77, 'adipisci', 'iure', 'Nam repudiandae et ea fuga. Maxime perspiciatis dicta eligendi porro. Rerum accusantium et qui quasi iusto soluta exercitationem. Ipsam sed sunt accusamus animi similique eum deleniti.', 11240.427506589, '1981-03-03 04:34:00', '', 987557),
(15815, 'molestias', 'et', 'Eligendi quis veniam omnis error mollitia ipsam non. Ab dicta nulla est autem sunt voluptatem. Numquam accusantium et sed.', 8531.62, '1971-01-06 13:59:40', '', 2076),
(41774, 'nulla', 'at', 'Laboriosam sint quia nostrum cum quidem rerum. Dolorem vel sunt asperiores ut sed. Optio magni aspernatur ducimus quasi et. Repellat sed dolore illum et repellendus dicta et blanditiis.', 1374217.450518, '1989-03-22 09:36:50', '', 9),
(798157, 'sunt', 'et', 'Fugiat minima numquam aut sed. Praesentium quas recusandae illo et error et. Quod non aliquid omnis voluptates alias aut illum est. Repellat qui odio omnis voluptatem eos.', 171167.47737, '1970-07-20 07:24:55', '', 615958455),
(6514, 'fuga', 'tempore', 'Rerum perspiciatis dolor similique quia odio et repellendus. Repellendus deserunt minus ad quae. Sed nesciunt qui cum numquam voluptas sit ipsam.', 702441.335, '1988-02-16 13:05:15', '', 3566),
(473, 'voluptatem', 'facilis', 'Mollitia labore cumque hic et dicta. Quia ipsam quis quo. Nobis consequatur sit voluptates eum incidunt dolore.', 226930618, '1982-04-24 19:39:55', '', 661),
(49961299, 'ut', 'et', 'Temporibus repudiandae voluptatibus possimus aut repellat aliquid voluptatum. Mollitia odit reiciendis omnis doloremque. Quas numquam ipsa nesciunt nesciunt exercitationem dignissimos quo. Nisi temporibus non cumque est.', 3234277.2409638, '2017-07-28 04:09:03', '', 93274),
(92, 'voluptatem', 'quia', 'Repudiandae laborum numquam vero distinctio qui. Et ducimus libero quia eius. Omnis et nostrum similique suscipit quis et incidunt. Nihil consequatur quae dolore odit.', 703619.179698, '2017-06-15 15:13:28', '', 452),
(596353574, 'non', 'voluptatem', 'Et fugiat consequatur accusantium consequatur animi praesentium harum. Et eos voluptatem dolor eveniet et. Enim numquam omnis voluptatem laborum dolor et quae.', 138.5, '2007-05-05 21:20:48', '', 84209),
(493, 'rerum', 'maxime', 'Quae aut quia eum ratione. Quae perspiciatis necessitatibus nesciunt at perferendis. Odio quam sunt rerum omnis quaerat amet itaque. Veritatis suscipit quae iste quae voluptatum.', 395347.45528589, '1994-04-27 04:16:10', '', 359738208),
(1, 'praesentium', 'dolor', 'Unde voluptates distinctio eligendi corrupti nihil nostrum totam. Non dolore porro excepturi et. Officiis eum dignissimos voluptatem est. Aperiam earum voluptatibus maxime aut ducimus repellendus.', 700681.94, '2003-11-19 13:13:00', '', 311373382),
(80656105, 'est', 'rerum', 'Qui delectus beatae quia quae totam amet. Ratione qui et necessitatibus harum laboriosam et mollitia voluptate. Ab et fuga temporibus nam totam.', 0, '1973-11-15 21:05:12', '', 7),
(296, 'maxime', 'sit', 'Et itaque qui saepe ut. Rerum molestias voluptatem sapiente voluptates sed soluta aliquid. Ea ut officiis eaque perspiciatis. In eveniet rem et sit iusto alias earum.', 26330.49, '1996-04-22 18:10:54', '', 7703),
(555756, 'consectetur', 'accusamus', 'Assumenda optio voluptates eligendi sapiente neque. Et ut magnam mollitia quas ex natus. Non saepe labore qui autem et laboriosam. Eos ipsam nulla autem assumenda neque voluptas quae.', 3624065.58, '2004-08-05 23:04:00', '', 0),
(24767, 'autem', 'ullam', 'Nulla quas cum enim impedit adipisci id quis placeat. Dolore ab aliquid voluptas saepe nesciunt consequatur. Ut in quia quia sapiente ut at sit. Delectus sit omnis rerum autem.', 0, '2017-05-25 19:36:16', '', 43801),
(6878579, 'nihil', 'voluptatem', 'Harum aspernatur et maiores reiciendis sunt. Ratione consequuntur eos ipsa odio perferendis quasi impedit doloribus. Quis sunt totam nobis maiores aliquam et vitae.', 630166.32611098, '2020-01-13 13:55:16', '', 86128),
(169847, 'suscipit', 'qui', 'Beatae et consequuntur a voluptatem porro et libero suscipit. Voluptate eum aut quidem est necessitatibus sunt. Ab est incidunt ipsa assumenda hic sit.', 39.35, '2003-09-20 16:17:25', '', 2),
(383, 'facilis', 'et', 'Modi blanditiis quaerat est dolores cum. Similique quam beatae alias repellat. Ut laborum ducimus modi alias reprehenderit exercitationem. Illum iusto voluptatibus qui error amet.', 133009, '2007-11-27 07:03:45', '', 30086654),
(4, 'iure', 'voluptatem', 'Velit culpa assumenda et dolore placeat recusandae sit. Perspiciatis dicta aut corporis fugit est omnis maxime. Minima accusamus laudantium provident vero autem recusandae. Minima voluptas molestiae expedita aliquid quasi dignissimos pariatur deleniti. Qui reprehenderit magni laudantium laborum aut iure.', 22316.85266, '2006-08-26 17:24:47', '', 661),
(39935, 'eveniet', 'in', 'Quaerat nam expedita sequi minima. Dolores earum vero laudantium consequatur recusandae libero. Quam excepturi inventore odit sed nostrum eligendi commodi. Autem in rerum nesciunt beatae.', 69.1017, '1977-05-25 01:55:15', '', 1619836),
(9603, 'ut', 'ad', 'Mollitia reprehenderit voluptas inventore recusandae. Voluptatem sint dignissimos esse non et consequatur. Illo ratione cupiditate eos quis dolor.', 104351.3, '1997-12-14 17:56:39', '', 9),
(5710, 'exercitationem', 'id', 'Cum ut harum eligendi adipisci. Tempora deserunt magni aliquam necessitatibus enim ut. Aspernatur excepturi sint aspernatur adipisci quis.', 0, '1972-03-05 02:22:36', '', 907),
(671586, 'ut', 'quaerat', 'Esse omnis mollitia est et error. Nulla et aperiam doloribus eos error quos. Sed dignissimos ullam dolor reiciendis corporis veritatis. Quibusdam commodi sint est et.', 1.61, '2008-08-05 12:49:58', '', 406),
(487916, 'impedit', 'eum', 'Deleniti accusamus debitis velit quia blanditiis vero. Eos eum doloribus blanditiis eos porro sit qui. Accusamus ipsum aliquid nam distinctio iste eum suscipit. Adipisci mollitia aspernatur ad non autem.', 374, '2000-05-16 17:10:09', '', 71680945),
(66316, 'magni', 'eum', 'Distinctio id est id unde iure ut animi dolores. Vero blanditiis quod beatae expedita corrupti. Aspernatur et magni sint esse dolor qui natus.', 1424.35, '1982-08-22 19:29:12', '', 169),
(762, 'recusandae', 'sint', 'Saepe unde et consequuntur aut qui. A dolorum illo nihil soluta magni possimus. Velit officiis totam mollitia unde magni autem laudantium. Magnam est dolor tempore praesentium.', 0, '1987-11-13 11:32:04', '', 650),
(67170, 'minima', 'ea', 'Omnis blanditiis molestiae voluptatem quasi earum illo eaque. Sint ut illum laboriosam totam nam in. Rerum qui ut autem velit qui consequatur et. Qui commodi excepturi ullam tenetur nisi ea et.', 0, '2002-08-17 18:13:16', '', 891),
(68572, 'voluptatem', 'maiores', 'Debitis reiciendis autem occaecati at distinctio adipisci itaque. Quae enim dolores quod repellat. Recusandae sunt sed quidem non fugiat. Tempore iste ipsam nemo facere.', 27886861.68777, '2018-02-01 21:12:41', '', 637458),
(818453, 'omnis', 'qui', 'Nihil facere qui animi ipsa. Laboriosam amet quos aut vitae laudantium repellat ea. Illum pariatur animi sed rem. Eos rerum exercitationem atque quia earum dolorem.', 178.122002, '1996-08-29 02:35:05', '', 880),
(4510, 'sit', 'et', 'Ipsum sint perspiciatis et dolorem. Ratione velit autem culpa vel. Pariatur voluptate provident hic debitis iusto eveniet labore qui.', 3615916.94411, '1995-01-07 16:15:11', '', 78),
(3017, 'ipsam', 'est', 'Dignissimos a quidem odio id molestiae ducimus. Illum doloremque aut id non. Repellendus excepturi voluptatem quos quia deleniti omnis.', 0, '2007-01-26 01:36:30', '', 8575),
(4392611, 'et', 'ut', 'Id voluptas blanditiis nemo quia ipsa ut voluptatem. Eos fugiat porro dolore laborum molestiae laborum et. Quaerat quasi sunt quis quaerat. Sunt qui vel sapiente dolorem voluptatem occaecati.', 2571707.671649, '2016-10-24 10:18:13', '', 21),
(169, 'facere', 'sunt', 'Dignissimos et voluptatem error in dicta. Eligendi officia iure iusto laudantium nesciunt quidem. Alias corrupti accusamus laudantium necessitatibus.', 57247.779516, '1985-04-13 20:19:17', '', 54783395),
(572591, 'in', 'facere', 'Voluptas iure molestias eos omnis. Molestiae ab alias beatae sint sed. Necessitatibus dolorem rerum in eligendi qui ipsum aspernatur.', 469956026, '1984-10-04 03:01:12', '', 285615),
(18369714, 'at', 'quibusdam', 'Saepe labore quis itaque reiciendis. Commodi fugit sit perspiciatis dicta itaque rerum voluptatem. Nobis qui sit autem voluptatem explicabo pariatur dicta.', 149.291523103, '1984-10-16 09:55:00', '', 32602827),
(473457, 'quidem', 'provident', 'Fugit velit eligendi repellat quia maxime accusantium et magnam. Dolor recusandae ratione at dolorem necessitatibus temporibus commodi. Itaque voluptatem dolores ex sapiente enim. Fugiat modi possimus qui nihil perspiciatis animi.', 0, '2002-09-28 22:40:11', '', 4),
(60365, 'voluptatibus', 'quam', 'Ut earum perspiciatis reiciendis eligendi hic sunt. Sit id expedita molestiae molestiae pariatur sit praesentium sit. Deleniti nisi omnis nemo consequatur.', 22938192.121, '1984-02-22 08:07:08', '', 515516779),
(6430, 'est', 'id', 'Nisi doloribus fuga in aliquid est at. Inventore dicta impedit adipisci quia sed porro. Ullam nesciunt ea nihil aut.', 731491120.7211, '2009-06-29 11:22:06', '', 478),
(70, 'deserunt', 'error', 'Reiciendis ullam laudantium unde est. Optio et libero voluptas sed et eum occaecati voluptatem. Et in vel et dolores magnam.', 298865.062, '1981-09-25 05:04:55', '', 47905375),
(528721, 'dolores', 'unde', 'A nulla tempora voluptatem est non non numquam alias. Ipsa nam temporibus praesentium placeat sint nostrum unde qui. Dolor quia laboriosam dolorem eaque. Doloribus officia eos occaecati rem animi.', 3856.990386, '1977-08-18 19:58:12', '', 7274264),
(7481, 'est', 'earum', 'Velit esse vel reprehenderit aliquid totam eum. Atque quaerat qui ut.', 86.77935, '1992-03-18 16:03:22', '', 241982474),
(805009519, 'ut', 'praesentium', 'Autem impedit dolorem sunt hic ratione ipsum quos. Repudiandae est quam quisquam aut autem illum perferendis. Eligendi earum enim est expedita asperiores. Vel et quia consequatur non soluta veritatis. Aut alias consequatur sit.', 2681.22, '2018-02-12 13:19:16', '', 6),
(5, 'esse', 'maxime', 'Dolorum sequi quia cumque non ut veritatis. Inventore reiciendis sit eveniet eaque. Explicabo nihil aperiam delectus minus voluptatem omnis accusantium hic.', 142852, '1973-09-30 19:07:24', '', 4),
(49055135, 'magnam', 'earum', 'Sit fugit iste ut rerum. Enim eligendi nemo magnam asperiores facilis. Sit officiis quasi facere tenetur consequatur et consequatur. Quis nisi optio corrupti iusto inventore.', 368535.33, '1972-11-29 18:55:53', '', 272456711),
(513784333, 'suscipit', 'et', 'Incidunt dolor ipsum unde rerum. Numquam pariatur praesentium est sint molestiae natus. Quia reprehenderit commodi eveniet voluptatum ut ex. Quo quae maxime ut commodi amet. Adipisci fuga error facilis ut magni ea aut dolor.', 499.5, '1972-06-03 10:40:28', '', 494470),
(767145, 'quidem', 'eveniet', 'Laboriosam et quod nam libero. Asperiores nihil quia asperiores eum aut enim dolor. Praesentium voluptatem consectetur quidem eaque optio architecto. Illo quo error sed est. Ea mollitia aperiam rerum distinctio est.', 309980.3841, '1996-07-05 07:47:21', '', 548),
(81633, 'nisi', 'porro', 'Ut occaecati fugit ut officia vitae vero qui. Porro nisi fugiat ducimus quisquam. Rerum suscipit molestiae sed vel esse omnis. Vero eos maiores earum accusantium aut ut autem.', 58.5, '1995-10-24 18:47:55', '', 421636),
(241563030, 'quae', 'enim', 'Mollitia totam repellat voluptatem quia aut vitae doloremque. Est aut consequatur at neque voluptatem. Voluptas dolores sit temporibus labore.', 546918254.6555, '2000-12-31 09:56:37', '', 217),
(68573446, 'consequatur', 'aliquid', 'Qui quia hic et voluptatem laborum. Odio deleniti eos id nam. Qui quis doloribus sequi reiciendis beatae perspiciatis cumque in. Facere saepe nesciunt necessitatibus quia odit.', 1493077.457362, '1993-03-16 22:14:48', '', 0),
(3319, 'aperiam', 'numquam', 'Et impedit non ut saepe eum. Officiis voluptatem quia odit nihil laudantium sunt harum. Maiores dolores explicabo et.', 265491221.51, '2011-05-03 21:13:20', '', 461626),
(8458646, 'aperiam', 'et', 'Pariatur pariatur sed ut eius repellat in tempore. Ea consequatur mollitia hic quae. Aut deserunt blanditiis maiores ducimus fugiat quia asperiores. Eveniet ipsam impedit est quis necessitatibus mollitia quae.', 300599.5, '2020-06-18 20:11:40', '', 1074);

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
