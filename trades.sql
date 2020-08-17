-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2020 at 04:22 AM
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
(20384362, 470985662, 1136, 0, 0, 41493753, '765 Abernathy Track Suite 436\nGeorgianashire, FL 00317', '1982-12-25 11:42:14', 84, 'Et perspiciatis accusamus non aliquam est sint. Ipsam aut qui dolores quia repellendus ipsam ut quod. Eum quia tenetur illo nam quaerat recusandae.', 1),
(8512830, 8914, 9012901, 0, 0, 27, '8845 Treutel Alley\nSouth Grayce, IA 56295-2146', '1987-05-21 21:46:16', 0, 'Corrupti consequatur autem sed voluptas quo. Repellat qui sunt vero dolor. Voluptas repudiandae ut vero sed. Quibusdam itaque reiciendis ut sed.', 0),
(27897542, 2, 8, 0, 0, 791915123, '830 Stroman Drives\nLake Shanaborough, NY 25608-1128', '1986-09-18 18:25:48', 40, 'Est cumque voluptatem deserunt officiis magni consequatur non quo. Et suscipit blanditiis non. Omnis molestiae cupiditate commodi commodi fuga. Eos ea reprehenderit consequatur ut sed.', 0),
(49, 176, 449, 0, 0, 524001, '01205 Murphy Common\nNew Dollyberg, LA 45864-3707', '2007-04-16 09:28:00', 3860, 'Consequatur laboriosam aut est eius. Porro voluptates corporis sint aut.', 0),
(84, 993632, 763, 0, 0, 216097916, '1003 Weissnat Ford\nKenyonhaven, TX 19781-9408', '1980-08-12 06:00:06', 0, 'Tenetur eos beatae consequatur error ut aliquid. Et voluptas consequatur culpa ut ipsa corrupti laborum.', 0),
(1, 44, 79279, 0, 0, 76338812, '15515 Liana Valley\nChadrickbury, WA 60389-8582', '2012-02-21 20:42:08', 90056757, 'Harum qui est maxime laboriosam pariatur suscipit. Quia eum voluptatem ut est tempora architecto ipsum doloribus. Officiis non exercitationem fugit sint voluptas. Quibusdam odit eos in aut rerum.', 0),
(446718, 0, 422386, 0, 0, 5923759, '369 Yvonne Islands Suite 203\nEast Isaiahfurt, AR 75622', '1971-11-17 10:29:54', 99587295, 'Voluptas quasi non magnam excepturi. Sunt voluptas vitae adipisci magni ullam odio rerum. Enim quaerat omnis assumenda. Autem et veniam perspiciatis cum est totam.', 0),
(0, 9007, 943808450, 0, 0, 70, '2573 Rolfson Rapid\nEast Porter, VA 17219-5480', '2010-05-05 02:11:50', 876204308, 'Rerum sed distinctio sunt expedita. Nesciunt quis autem ipsum nobis qui. Id ipsa et velit aut. Saepe doloremque aut hic qui assumenda inventore ab.', 0),
(17, 815, 71813, 0, 0, 170698, '583 Littel Harbor\nMarquardtton, MT 51452', '1978-07-04 03:35:41', 0, 'Omnis ut qui reprehenderit totam dolorem. Saepe vitae aperiam nobis autem.', 0),
(691261426, 71, 300006574, 0, 0, 14706786, '0582 Jacobs Forest Apt. 176\nMargarettland, AL 56634', '1972-12-22 08:24:47', 900, 'Voluptas aut et consequatur consequuntur numquam voluptatem exercitationem. Ab excepturi quo laudantium nemo.', 1),
(46715, 235, 0, 0, 0, 0, '16845 Marley Coves\nSouth Alfredo, MI 21618', '1977-07-06 03:19:36', 502472309, 'Sint quod accusamus quidem iste libero. Voluptas explicabo ipsam sed et. Consequuntur id id molestiae ex. Occaecati voluptatem recusandae ea dolores.', 1),
(536629, 0, 47, 0, 0, 10, '18672 Augustus Greens\nSalvadortown, NC 38777', '1987-05-19 06:00:41', 50311052, 'Delectus est ut ea ratione. Dolor voluptates ipsum rerum ea deserunt quidem vel autem. Eum omnis eum voluptas sed quisquam veritatis ad.', 0),
(693, 1207, 72, 0, 0, 0, '349 Ashton Orchard\nDerekview, OH 27959-4987', '1972-07-30 23:29:37', 710, 'Exercitationem nemo et non quia. Error quis debitis ullam enim aut aliquam. Nisi nemo perferendis non ut rem quasi quis. Et fugit maiores ipsum eligendi impedit sit sit.', 0),
(2430, 32, 151595, 0, 0, 0, '640 Cleveland Squares\nPort Isabellfurt, AK 63090', '2018-11-13 14:43:35', 8344517, 'Quibusdam eos iure quisquam qui. Eligendi quam velit commodi ullam distinctio et. Aperiam suscipit exercitationem dolorem. Consequuntur et maxime repellendus velit quis est aut.', 1),
(39761, 7292703, 4090, 0, 0, 233423282, '3866 Dimitri Isle Suite 000\nLake Maudefort, NV 55124', '2003-06-24 02:02:04', 95392381, 'Dolor et quas maiores atque qui. Vitae itaque quibusdam porro. Minima et similique quam dolorem consequatur provident voluptas. Accusamus perferendis ab illo aliquam aut commodi reprehenderit qui.', 1),
(928500691, 598012, 2, 0, 0, 17497155, '97643 Lavada Pike Apt. 434\nRaoulside, NE 27864-6412', '1988-06-11 13:26:00', 0, 'Consequuntur eius cupiditate voluptas nam consequatur distinctio veniam. Est nam reiciendis aperiam id aut nam quod. Mollitia commodi ut debitis rem dolore unde inventore.', 1),
(273899, 6155, 0, 0, 0, 724174871, '8412 Mateo Haven\nEast Zanestad, NV 94400', '2001-08-06 08:07:51', 6659, 'Quaerat quia ipsam odio facere rerum delectus. Saepe velit ipsam repudiandae cumque omnis. Rerum dolor dolores voluptatem ipsa sequi nihil.', 1),
(5098, 209100, 7, 0, 0, 82749270, '579 Jordan Throughway Apt. 549\nPort Esther, CA 53314-0201', '1984-07-10 07:03:04', 852, 'Facilis aspernatur quo deleniti minima molestiae vel temporibus. Totam et molestias quae et repellendus sed veritatis. Inventore amet earum architecto a cumque. Minus sit quia cum aliquam odio qui et.', 0),
(7, 6, 52407, 0, 0, 812, '43119 Jorge Mews Apt. 356\nPort Marianne, MA 95232', '2018-09-23 09:36:03', 7, 'Repudiandae consequatur quos modi et quis. Suscipit nulla quidem tempore in dolore incidunt provident. Modi explicabo quibusdam molestias asperiores sapiente dolor. Quisquam nesciunt vel ea numquam.', 0),
(27126, 2, 3, 0, 0, 93, '8329 Christiansen Island\nFedericotown, AL 91077', '2008-03-05 23:40:41', 269, 'Voluptas odio qui sint doloremque. Corporis porro autem aspernatur corrupti odio molestiae placeat.', 1),
(5681125, 44667037, 854866, 0, 0, 5930, '68911 Keegan Square Apt. 346\nPort Rosemarie, AK 48258-8403', '1991-07-04 12:27:46', 70266, 'Sed molestias molestiae quo. Fuga inventore ipsa maxime sunt expedita. Corrupti dolores aut beatae officia suscipit dicta in. Corrupti praesentium vel totam dolorem corporis necessitatibus consequatur.', 0),
(4506, 0, 0, 0, 0, 341, '000 Hattie View Suite 710\nNew Joany, UT 96411', '2017-06-23 00:15:53', 99, 'Autem voluptatum dicta consequuntur iure. Eveniet sequi mollitia dignissimos earum doloremque ea eaque. Aut ab numquam eligendi ut.', 1),
(7416076, 1734, 52, 0, 0, 3503993, '8371 Schaden Springs\nMeganeview, TN 12075', '1991-11-25 12:45:46', 3, 'Aut odio rerum et explicabo laborum porro. Odit quia voluptate beatae accusantium beatae et quasi. Nemo beatae minima aut quasi.', 1),
(6, 965428, 0, 0, 0, 7958070, '568 Koch Square Suite 323\nNolanmouth, KS 16793-1958', '1983-04-15 10:12:58', 0, 'Vitae et minus similique molestias. Rerum vel libero est optio. Sit recusandae ipsam voluptatem similique placeat possimus quasi.', 0),
(15587974, 88964, 1247927, 0, 0, 0, '471 Richard Mountains Suite 096\nKirlinhaven, AZ 18046', '1996-05-31 22:53:18', 35064, 'Neque possimus nam et possimus sapiente. Nostrum qui rerum nam voluptatem accusamus eveniet deserunt. Rerum nisi adipisci eveniet eum.', 0),
(909, 0, 1748, 0, 0, 857, '5287 Schaefer Valley\nSchmittberg, IA 51588-7647', '2010-08-18 08:55:14', 94729164, 'Velit quos et et placeat ut. Esse iste et ad ut odio a quae vitae. Sunt ullam aut enim dolor nisi ut fuga nobis. Odio minima delectus non natus et dignissimos delectus.', 1),
(87634, 561, 644785518, 0, 0, 420, '2172 Lehner Loop Suite 405\nMoisestown, AR 14640-9591', '2014-01-19 12:38:43', 89, 'Labore voluptates debitis molestiae animi assumenda aperiam ad. Sint qui dolores amet nesciunt beatae. Quasi aut omnis qui voluptas et.', 0),
(5, 38648397, 3572525, 0, 0, 213364, '03071 Keebler Alley\nNew Hayliefort, ME 11256-1502', '2019-08-03 03:39:54', 0, 'Vel iure possimus nesciunt est non ducimus. Non fugiat enim incidunt expedita. Quos animi labore in et minima itaque. Iusto qui a ut. Eum aliquid dignissimos eum et.', 0),
(9553, 0, 165, 0, 0, 152549, '6992 Bianka Prairie Apt. 120\nSouth Florenceport, NV 80668', '1975-04-11 07:52:23', 0, 'Aliquam et impedit impedit aut. Deserunt fugit quo aut delectus. Ad repudiandae minus alias consequatur. Voluptas voluptatem est tempora possimus dolores.', 0),
(16, 621365070, 1, 0, 0, 1198, '5633 Sporer Way\nAnnabelletown, NY 06785-8121', '2013-09-10 17:57:16', 269496258, 'Velit voluptas dolores enim nesciunt minus labore magnam. Hic possimus perspiciatis modi blanditiis. Non veniam aspernatur illo expedita voluptas.', 1),
(50933, 5, 66665864, 0, 0, 9, '812 Mueller Track Suite 934\nKeshaunstad, MA 96190-7529', '2000-08-15 08:10:59', 82581, 'Ut vel ut totam voluptatum. Et id beatae eum officia ipsum quia. Et est saepe ducimus. Blanditiis itaque quis ex quia et modi sapiente. Quia modi pariatur expedita labore veritatis eaque illum.', 1),
(895896, 5982209, 7261181, 0, 0, 6020996, '0230 Wunsch Overpass Apt. 341\nHilpertview, AR 43409', '1985-03-02 02:37:37', 4664166, 'Laboriosam similique placeat ipsum laudantium. Incidunt consequatur et corrupti velit distinctio ullam itaque. Amet hic velit aut. Totam unde aspernatur laborum molestias et qui sit illo.', 0),
(1718, 6, 0, 0, 0, 0, '728 Hyatt Dale\nTitohaven, NM 95007-6838', '1995-04-12 16:38:42', 825938384, 'Vitae et ipsa aliquam quas. At quisquam laudantium officia ut sit dolores adipisci. Laborum enim quisquam quia sed rerum accusamus voluptas consectetur. Voluptatibus doloremque provident necessitatibus ipsam sapiente non. Sapiente voluptatem nihil et commodi.', 0),
(76084, 16292375, 9338589, 0, 0, 69769004, '044 Friesen Fords\nMurrayside, OH 04465-2922', '1988-04-29 20:10:51', 177109, 'Reiciendis voluptate pariatur sit maxime voluptas. Quia nulla quod et magni tempora commodi. Consequatur nihil et quaerat dolor ut maxime et. Commodi nam laboriosam quo.', 1),
(556, 117200019, 3, 0, 0, 508, '9507 Antonio Burg\nMuhammadtown, MD 75641-1394', '1999-06-08 05:05:04', 31183, 'Aut et ea officia vero totam necessitatibus. Minus dolore rerum et eos dolorem laudantium sunt. Nisi praesentium deserunt voluptas eligendi voluptatum et. Quo ut soluta qui saepe nisi aliquid sit.', 0),
(97, 6668695, 69876013, 0, 0, 58, '125 Senger Flats Suite 357\nRolfsonside, ID 20679', '2000-03-12 23:32:29', 407696, 'Blanditiis aliquam eaque est eos adipisci. Neque voluptatem rerum dolorum est. Sunt explicabo beatae qui atque et sint.', 0),
(90889, 21, 10433993, 0, 0, 8932300, '143 Esperanza Estate\nAltenwerthmouth, MO 02408-5151', '2003-05-16 02:21:12', 63, 'Fuga enim dolore impedit tempora. Voluptatibus qui quos deleniti qui aut architecto. Nulla velit beatae rerum delectus sit aut in.', 1),
(362, 614476452, 49772, 0, 0, 55619389, '03350 Hugh Highway Suite 575\nMollieport, HI 62342-1953', '1998-12-12 21:09:51', 2216054, 'Pariatur modi voluptatum saepe quas similique architecto rem. Animi et aliquid rerum nihil laboriosam eveniet nihil. Aspernatur dicta aut iste possimus.', 1),
(60856, 4968345, 19950560, 0, 0, 19, '836 Tabitha Islands Suite 294\nDeannahaven, OH 09257', '2020-04-08 06:40:58', 5, 'Consequatur est fugiat minima. Velit error totam ullam quia eum qui quia.', 1),
(588, 796365, 5, 0, 0, 2, '7371 Victoria Green\nNorth Janaemouth, NH 67192-4515', '2020-02-06 01:26:20', 23374, 'Facere nihil dolor quam excepturi reprehenderit voluptates. Omnis laborum est in illo rerum quo ut. Accusamus ipsa sint quibusdam et ab a rerum.', 1),
(9, 32043, 24888, 0, 0, 7769, '79387 Theresa Overpass Suite 349\nNew Maudeton, ND 74168', '2009-03-28 18:57:49', 19681, 'Laudantium commodi hic ipsam ut. Maxime et quia et autem laborum sit cumque veritatis. Voluptatem sapiente sunt qui ut qui velit sit. Necessitatibus corporis accusantium pariatur neque accusamus id accusamus.', 1),
(35584633, 89580333, 945149757, 0, 0, 22, '68589 Zane Row Apt. 388\nNew Shayna, MD 41220-8774', '2002-02-28 05:33:54', 0, 'Soluta aperiam odit ullam quaerat est. Et sit cupiditate voluptatem tempore sed vel. Tempora non dolor molestiae in. Sint dolorem vitae dolorem nisi quo necessitatibus consequatur.', 1),
(84322, 505, 98728, 0, 0, 634477, '14272 Fisher Plains\nEast Dagmartown, ID 78272', '1974-12-26 10:39:45', 3029, 'Fugit natus ut nulla quae sit. Optio sunt distinctio eum totam id voluptas ducimus autem. Harum esse eveniet qui qui debitis itaque. Dolorum consectetur officiis autem deleniti.', 1),
(555620, 16, 7665704, 0, 0, 75537996, '0984 Janice Shoal\nSouth Karenfurt, WY 51388', '2013-07-17 14:04:06', 73605, 'Vel adipisci et voluptatem est laboriosam eos. In ad unde aut dicta. Minima et ut quod repellat. Commodi error fuga eum adipisci rerum aut. Ut officia nam quia reiciendis error.', 0),
(7312093, 709805280, 0, 0, 0, 2915145, '3410 Diamond Mountain\nSouth Pearline, NH 39489', '1985-07-31 03:36:20', 68128, 'Ea molestias aperiam qui consectetur. Neque nesciunt in quam accusamus ipsum sed amet et. Id repellendus quos sed totam rerum dolor voluptatibus.', 0),
(8342374, 969256, 0, 0, 0, 69797035, '4176 Lottie Square Apt. 654\nEast Kelsie, ND 89428', '1986-02-19 17:35:24', 48773501, 'Animi ipsam fugiat et non aut quos sint. Et eos eius tenetur aut architecto earum. Omnis voluptatem qui ut qui.', 0),
(837518, 18820767, 66202020, 0, 0, 7, '16836 Bartoletti Square\nMullermouth, NY 50489-1015', '1972-05-01 20:15:46', 9, 'Magni sed sapiente autem a dolorem voluptas. Incidunt voluptate enim ut sapiente nemo repellat ipsam. Tempora laborum suscipit mollitia. Ut consequatur earum autem corrupti ipsam fuga quia saepe.', 1),
(46, 556416027, 403839, 0, 0, 26625443, '5328 Jennyfer Creek\nPeterland, NJ 55471', '1993-11-06 16:45:15', 8, 'Deleniti accusamus non aut quis voluptatum. Suscipit optio ipsam earum nam cum sed veniam dolorum. Illo illum sint consequatur animi impedit qui molestias ex.', 0),
(3, 8, 60, 0, 0, 422, '3055 Marques Spur Suite 415\nNew Mortimer, LA 26458', '1980-04-18 05:19:33', 87160, 'Voluptatibus quo ut magnam minus. Aut vitae dolores veniam atque cum. Rerum voluptas et commodi. Voluptatem voluptas illo quia natus ab voluptatem qui. Fugiat dolor unde quos tempora.', 0),
(447653566, 90, 477886506, 0, 0, 421369934, '048 Margarita Mission Suite 841\nSwaniawskibury, AK 36506', '1984-09-14 10:42:52', 100086, 'Explicabo autem officia voluptatibus itaque iusto. Dolorem porro officiis sapiente eaque et qui et. Et omnis enim qui beatae vitae autem. Ab nemo animi odio voluptatibus et officiis est.', 1),
(83600833, 76742542, 21480, 0, 0, 6360848, '371 Elizabeth Court Apt. 181\nPurdyville, OK 11813', '2012-01-03 00:57:37', 87, 'Illum ut vel vel ut dolore dolorum. Dolore minima veritatis mollitia quia. Molestiae quia laboriosam consequatur enim iusto voluptas. Laborum velit laborum nam dolores a blanditiis.', 0),
(845893065, 0, 5, 0, 0, 0, '739 Schamberger Common\nSouth Stephon, NH 24271', '1987-02-16 07:42:58', 5805101, 'Officiis quibusdam praesentium aut sit magnam ut qui delectus. Et odit explicabo doloremque sequi est corrupti. Et sapiente eos eos aspernatur rerum quia ea.', 1),
(201704, 76143859, 967393, 0, 0, 9, '22233 Hintz Crossroad Apt. 774\nShaynaport, LA 70007', '2019-04-06 01:57:07', 0, 'Sint quae recusandae esse ut consectetur. Asperiores tempora placeat nulla minus nam. Ut id illo vel quos. Id odio et blanditiis alias vitae delectus.', 0),
(4, 8, 66447, 0, 0, 7, '19881 Swaniawski Square\nEast Delaneyberg, DC 62112-5028', '1986-01-24 11:51:20', 763059, 'Eaque dolorem ex quos. Deleniti beatae blanditiis ratione nihil quo iure. Voluptatem quia distinctio voluptas. Itaque nostrum culpa odit impedit sint. Et odit aspernatur quo illum.', 1),
(9049, 2031418, 10, 0, 0, 5587458, '45562 Opal Ranch\nCruickshankmouth, VT 01601', '1970-03-07 12:31:44', 8065, 'Quis quae officia et qui dolores est facilis. Amet vel perferendis itaque dolores. Totam eum in et voluptatum dolores mollitia eum. Ut atque odit aliquid et provident eaque.', 1),
(914, 31, 69050, 0, 0, 96328, '1981 Darion Islands\nNew Webster, WY 00179', '1993-08-14 06:37:07', 3, 'Voluptas alias sed est ad. Voluptas quos et nobis architecto ut ducimus. Eligendi odit eligendi dolore fuga aut dolores.', 0),
(8, 30, 0, 0, 0, 973716, '024 Cormier Plaza Apt. 258\nMitchellburgh, DC 86335-4693', '1977-01-23 18:46:37', 0, 'Qui doloremque hic autem quod ut in dolore. Iusto veniam temporibus quasi aut facere sit mollitia soluta. Nemo doloribus nemo quia quibusdam id blanditiis ducimus et.', 0),
(8532599, 11479, 523772, 0, 0, 2412, '367 Cronin Passage\nLake Karlside, VT 90249', '2020-02-09 18:04:22', 260521798, 'Sapiente autem nemo vel odit dolor. Natus corrupti assumenda optio quos est asperiores non. Quia expedita est asperiores repellat iste voluptatem ea. Ullam vel consequatur ad sapiente.', 1),
(905, 580041178, 884773, 0, 0, 3523426, '92464 Bartoletti Green\nHudsonbury, MS 86653-7797', '1971-07-04 05:11:22', 0, 'Ducimus qui et voluptatum. Aut occaecati magnam esse. Nisi eligendi sed voluptatem delectus corrupti. Magnam sunt harum et tempora non aliquam sed aut.', 0),
(82500, 0, 72439705, 0, 0, 94243, '056 Leffler Plaza\nInesshire, MN 67023', '1988-12-02 06:22:37', 245, 'Distinctio asperiores non enim accusamus. Illo et officiis qui est eos in.', 1),
(90457, 9, 97091350, 0, 0, 9223, '5686 Huels Harbors\nWest Rethachester, ND 99693-9493', '2013-03-23 18:36:44', 37005752, 'Accusamus dolor dolor provident sit accusamus necessitatibus odit. Doloribus quis nulla minima est. Eveniet et repellat sed quisquam id.', 1),
(493, 96, 669, 0, 0, 372, '58735 Aubree Isle\nSouth Bridgette, NM 76763-5713', '2000-12-19 02:58:17', 857, 'Vitae minima voluptates voluptatum. Eos ea odio accusantium et natus voluptate.', 1),
(66, 94573867, 80695732, 0, 0, 342921, '828 Manley Mills\nWest Nettie, WV 36773', '1991-12-16 17:21:03', 245423, 'Qui commodi voluptatum earum cum. Soluta tempora sit tempora mollitia perferendis ipsam. Ut id est dolorem impedit rerum commodi.', 1),
(353168250, 98395148, 19088319, 0, 0, 70322321, '5313 Ruecker Path\nLangoshstad, WV 96874-2433', '2018-08-03 23:13:11', 2, 'Animi totam est animi praesentium officiis consectetur quia. Reiciendis maxime eum eum occaecati deleniti quia. Quis est esse voluptatibus velit excepturi. Velit vero optio reiciendis reiciendis non tenetur.', 0),
(760, 57277, 8696, 0, 0, 843470179, '08123 Nienow Plaza\nHirtheborough, VA 91128', '2003-08-26 03:56:03', 486412, 'Minus est illo est in vitae. Quo reprehenderit corporis officia vel. Ut cumque consequatur autem officia ut pariatur.', 0),
(7880, 0, 8177, 0, 0, 7, '80857 Mitchell Brook Suite 026\nBradtketown, ND 95446-7024', '2011-11-28 01:54:22', 905316088, 'Accusantium nobis voluptas ut. Id hic ut blanditiis tempore perferendis perferendis. Molestias inventore amet ullam ut ipsam.', 0),
(5408473, 62561156, 0, 0, 0, 964948222, '7643 Afton Dale Apt. 520\nLake Bertamouth, WI 28600', '1989-01-08 01:17:54', 68, 'Quaerat est quod nulla ea sit. Perspiciatis voluptatem sunt fuga nihil.', 0),
(871384718, 40040, 331, 0, 0, 26, '18167 Jamie Isle Suite 513\nNorth Emie, UT 87229', '1986-10-30 03:49:56', 303, 'Voluptatibus nisi cupiditate et id voluptatibus. Tempore esse autem vel vitae soluta nulla commodi. Non ut ullam perferendis sunt expedita reprehenderit nisi. Doloribus voluptatem doloribus dicta explicabo provident.', 0),
(900652086, 8924, 267, 0, 0, 55021287, '473 Shanahan Mall\nLake Elliottland, MI 60789-3598', '1972-06-12 03:24:37', 0, 'Adipisci nesciunt occaecati sit veritatis ipsam laborum. Maiores dolore expedita id hic aspernatur. Pariatur eos ea et molestiae. Recusandae molestiae itaque sed totam.', 1),
(751, 535, 1540, 0, 0, 29721, '596 Luettgen Via\nEast Andy, IN 44971', '2016-12-23 23:39:36', 86, 'Qui et beatae quod voluptas dolorem. Quos enim et natus cumque ut sit. Reprehenderit cum voluptas ut animi aut a.', 1),
(41911496, 450, 188, 0, 0, 96451, '4493 Orn Island\nSawaynview, WY 62083', '2001-08-25 18:29:19', 700474158, 'Debitis sapiente omnis et dolorem. Omnis veniam sint quis itaque. Mollitia aperiam eum voluptatem consequuntur.', 1),
(981054828, 8, 4079559, 0, 0, 456611, '25370 Nolan Port Suite 323\nSedrickville, IN 60856-6874', '1974-07-13 07:37:30', 0, 'Saepe neque illum itaque vel et. Quidem a numquam odio. Et voluptates officiis in et dolorum.', 0),
(48596, 8613, 54373, 0, 0, 19, '080 Lucile Crest Suite 595\nErdmanland, AR 49155', '1970-04-21 07:37:39', 3610563, 'Eum explicabo sed cumque atque eaque molestias sequi. Consequatur quo est aut quaerat tempore est quod. Animi velit a earum id repudiandae architecto. Mollitia quae ducimus quas laborum optio veniam. Repudiandae eum ut pariatur tempore.', 1),
(797389, 876918682, 48627398, 0, 0, 0, '3142 Carter Harbors\nNew Bette, UT 57466-0204', '1981-11-11 23:41:00', 465902, 'Quo sed est provident et. Sunt expedita fuga et corrupti qui. Ipsa laudantium eos fuga qui fugit quis rerum. Consequatur possimus nulla impedit cum.', 0),
(4257, 15934, 226, 0, 0, 3193, '1910 Coralie Village Suite 562\nRosinaview, OK 98735', '2008-06-28 02:10:57', 719992, 'Consequuntur dicta repudiandae nulla voluptas at. Dolor impedit ipsum maxime illo quas. Ea consequatur aut sed reprehenderit accusamus illo. Molestias voluptate dolorem explicabo blanditiis alias sequi dolor.', 0),
(3648255, 3, 24553, 0, 0, 6411, '64158 Leuschke Mountain\nKenyabury, NY 25135-1338', '1999-04-20 16:06:36', 2, 'Rerum non sed suscipit blanditiis corrupti dignissimos facere est. Excepturi voluptas dolorem facilis non. Sint sed doloremque assumenda facere est alias. Nesciunt ipsam praesentium enim consectetur quia amet et.', 0),
(8078, 60867, 76, 0, 0, 318, '536 Dessie Extension\nEast Grantchester, FL 61753-6404', '1983-04-26 06:28:03', 286620, 'Quae rem porro quae omnis aut autem voluptas. Impedit veritatis repellendus unde reprehenderit molestiae laborum est. Consequatur aspernatur autem ipsam. Provident impedit laboriosam provident et dolore est perferendis.', 1),
(2, 2, 15, 0, 0, 305, '61103 Zieme Plain Apt. 839\nHahnmouth, AR 62001', '1999-04-10 20:53:25', 141179, 'Nulla explicabo delectus debitis minima aliquam. Voluptatem iste qui magnam et officiis. Ut sint nesciunt ipsa ullam non itaque.', 0),
(2521377, 39860928, 465829477, 0, 0, 0, '1985 Jermey Trafficway\nWest Chanel, WI 43031-3562', '1974-01-28 13:12:42', 238711, 'Cum autem omnis animi labore neque minus. Laboriosam nulla quidem fuga illo libero officia sint. Mollitia id voluptatem laborum a assumenda. Est deserunt necessitatibus voluptate eius est.', 0),
(64411108, 2637000, 37532320, 0, 0, 2184, '21052 Willard Pike\nNorth Taurean, GA 35251', '1997-02-06 01:56:20', 7855, 'Consequatur sunt dolore cum consequuntur adipisci voluptatem. Facere molestias illum praesentium voluptatem ut facilis. Autem suscipit quis aperiam voluptates est. Itaque vel rerum sit non tenetur et dolor.', 1),
(268683, 3769985, 6809, 0, 0, 790806, '3503 Farrell Common Suite 942\nEast Kip, KY 19430', '2006-04-02 06:51:33', 7797, 'Et et ipsum eius quasi. Veniam harum explicabo dolor fugit. Earum quis earum placeat sunt quis. In placeat et numquam harum.', 1),
(2145928, 0, 7, 0, 0, 0, '00799 Kutch Station Suite 787\nGerholdberg, NE 64194-7273', '2019-11-05 00:37:27', 5563, 'Est dicta dolor aut magnam ipsam sed sit. Voluptas aliquam dolor magni sunt suscipit. Beatae deleniti ea voluptatibus et. Commodi ut facere eos consequatur voluptatum soluta.', 0),
(4938, 61, 214, 0, 0, 4519198, '66114 Daphnee Unions Suite 436\nHailieland, MN 03846-4940', '1999-07-28 19:01:37', 17857, 'Molestias occaecati et quo fuga ut. Est ipsum maiores eum ipsa. Ullam ut labore iure commodi.', 1),
(6718, 78245602, 38428, 0, 0, 71421842, '548 Chadd Wells Suite 655\nNorth Lelah, ND 24851', '2019-01-22 20:41:09', 1, 'Nostrum facilis neque inventore architecto velit. Exercitationem laborum reiciendis et id modi alias qui. Cupiditate qui recusandae voluptatem omnis debitis. Aut provident laborum mollitia praesentium rerum atque voluptatibus corrupti.', 0),
(59688106, 0, 430550, 0, 0, 3699, '4689 Effertz Extension\nCasperton, MS 30665', '1997-08-22 06:16:34', 550871, 'Iure ut quia et sint explicabo praesentium. Fugit sunt dicta possimus cupiditate pariatur ullam. Deleniti omnis beatae optio molestiae error ipsum eaque.', 1),
(1017930, 0, 45516, 0, 0, 64, '4158 Hackett Stravenue Apt. 186\nChanceport, CA 80002', '1983-10-01 03:32:54', 921706443, 'Corrupti exercitationem suscipit culpa et quas quos nihil. Quae quidem facilis exercitationem quam hic recusandae vel. Cupiditate consequatur voluptatem dolores. Minus atque quia molestiae accusamus at aut tempore.', 0),
(902397108, 246383, 47299, 0, 0, 452976757, '74974 Haley Isle Suite 950\nWest Sabrynamouth, MI 83779', '1975-07-02 19:22:17', 3, 'Et non quia et explicabo. Est aut in earum labore. Quod consequatur sit numquam cum qui. Beatae amet velit necessitatibus omnis quidem.', 1),
(8796, 7388, 14964, 0, 0, 0, '611 Jast Key Suite 597\nWest Ottis, WI 89513-4229', '1997-12-18 11:07:24', 633622350, 'Nisi dolor in nemo dolorem reiciendis in officiis et. Suscipit tenetur rerum tempore ut tempora est optio consequatur. Nesciunt doloribus aperiam natus libero blanditiis.', 0),
(7060, 599719680, 81564197, 0, 0, 82, '77109 Bashirian Station Suite 106\nSouth Marcelleland, KS 63597', '1997-06-06 18:16:48', 73, 'Numquam perferendis voluptas consequatur qui. Ipsam fugit quos quae dolor distinctio ut. Tempora saepe ea vitae et vel.', 0),
(8162343, 491342, 9, 0, 0, 29862045, '951 Joany Locks Apt. 563\nWest Newton, IA 91413', '1998-07-19 23:46:18', 31, 'Architecto officia in nam illum. Beatae dolorem eius hic nesciunt voluptatem in. Veniam quia laboriosam doloremque culpa illo omnis. Eius commodi beatae corrupti consectetur perferendis.', 1),
(61376, 5132084, 0, 0, 0, 14569975, '643 Kristofer Vista\nWizashire, SC 28069-3262', '1978-05-28 16:26:02', 5656, 'Accusantium in officia accusantium dicta. Alias quisquam aperiam debitis. Debitis cum nobis atque et dolores provident. Molestiae unde itaque laudantium.', 1),
(9306741, 896013055, 1, 0, 0, 227, '37769 Marisa Estates Suite 235\nDevanteton, AL 64184', '2019-05-23 20:26:03', 36939, 'Qui sed ut magni ipsum consequuntur. Quos adipisci neque minima. Temporibus vitae deleniti voluptate quis unde inventore. Numquam perspiciatis ad aut.', 1),
(4800320, 4909521, 0, 0, 0, 59136824, '9359 Gislason Spring Apt. 293\nMetafort, IN 53317', '2015-06-24 08:38:15', 9, 'Eligendi qui sint soluta explicabo voluptate. Consequatur quaerat doloribus non facere eius atque. Recusandae eum qui necessitatibus nihil soluta aliquam.', 1),
(446704, 76682, 98, 0, 0, 26, '45736 Hettinger Square\nWest Clementinefurt, MI 33818-4326', '1973-03-20 01:51:57', 0, 'Laboriosam consequatur odit expedita non odio voluptate quisquam non. Vitae natus adipisci eos esse et id inventore. Magnam perspiciatis distinctio assumenda aut blanditiis possimus qui. Veniam natus esse molestias quisquam dolor.', 1),
(805, 0, 187539, 0, 0, 6, '560 Sonya Roads Apt. 305\nSouth Antonetta, TX 85699', '2019-12-30 19:47:03', 5599337, 'Natus deserunt autem facilis nam sunt quaerat. Minima error error unde aliquam adipisci qui quibusdam. Illum et dignissimos voluptatem magnam.', 0),
(608859, 294591, 87572, 0, 0, 6, '23887 Macejkovic Locks Apt. 369\nPort Torreychester, RI 97565-0945', '2004-03-07 07:16:32', 0, 'Eum error beatae est mollitia. Quaerat minus dolor natus ut. Aut veritatis hic ut totam sed delectus est itaque. Est earum aperiam eligendi ad dolor repudiandae perferendis. Maxime odit aspernatur repellat sit saepe velit architecto.', 0),
(6705, 0, 200526039, 0, 0, 78376, '4036 Sandrine Course Suite 044\nLake Brendanview, MO 94528-6497', '2019-02-12 00:40:18', 3329, 'Aut illo mollitia non et velit quia. Dolore ut dolores quibusdam incidunt ut officiis velit. Qui quam sunt porro maxime.', 1),
(607, 2, 352500, 0, 0, 1871, '649 Nader Trace\nEast Melbaborough, NC 55349-5611', '1997-10-02 11:33:25', 0, 'Velit natus odit repudiandae nesciunt est expedita voluptatem aut. Maiores temporibus velit tempora sit quia. Repellendus in quod et beatae.', 1),
(23159, 41578059, 4, 0, 0, 8397, '2439 Douglas Islands\nManuelside, MA 82951-0964', '2000-02-25 22:54:22', 44314, 'Aut est reiciendis amet. Molestiae excepturi perspiciatis voluptatem doloremque dolores. Qui quia doloremque iste nam nobis.', 1),
(61162777, 564650, 94, 0, 0, 787, '72623 Gisselle Mount Suite 583\nKerlukefurt, PA 03039-0962', '2000-03-27 05:28:03', 641347811, 'Ut culpa illum eos delectus dolorem eveniet est. Eum est alias est possimus repudiandae illo quia. Minus aperiam maiores placeat autem omnis eveniet fuga. Tenetur illo eum et nesciunt magnam enim id porro.', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
