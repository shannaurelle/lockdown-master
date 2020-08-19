-- Generation time: Wed, 19 Aug 2020 15:26:31 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_17
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `truckers`;
CREATE TABLE `truckers` (
  `truck_id` int(11) NOT NULL,
  `truck_operator` varchar(512) NOT NULL,
  `truck_origin` varchar(512) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `truckers` VALUES ('620','Flavie Williamson','3747 River Plains Suite 059\nIciemouth, SC 81774','1991-01-24 06:32:21'),
('945','Americo Dare','26629 Larkin Tunnel\nEast Lydia, TN 18007','1995-06-05 11:59:19'),
('928','Jimmie Bayer','166 Josephine Place Suite 949\nNorth Brionna, CA 07948-1976','1982-04-29 04:19:39'),
('652938','Evan Steuber','730 Flatley Highway Suite 573\nSouth Holliefurt, CO 17879-9646','2000-02-12 19:55:21'),
('89','Lacy Tillman MD','526 Vicente Burg Suite 703\nNew Aleen, TN 26273','2003-02-15 05:19:43'),
('7594','Ward Runolfsson DVM','7330 Sheila Run Apt. 181\nEast Kristina, OR 84307-0836','1984-04-26 10:36:05'),
('9317600','Prof. Braden Reichert V','57159 Percy Camp Apt. 083\nKasandraburgh, SC 89782-3300','1976-04-28 15:41:18'),
('0','Giles DuBuque','866 Abshire Point Apt. 765\nGaylordhaven, AK 45121-7519','2015-08-13 18:07:45'),
('773','Kirk Kris','9201 McLaughlin Forks\nSouth Samir, GA 41701','1992-11-26 09:36:18'),
('45644378','Clark Jacobson','111 Octavia Mountains Suite 953\nSouth Allisonberg, DE 89053','1983-05-27 00:51:14'),
('89','Vincenza Conn','919 Schuppe Shore\nEast Wilber, LA 49795-3661','2008-06-24 13:10:18'),
('13746','Miguel Sporer','7307 Harber Expressway Suite 333\nGeraldinemouth, NC 56144-0819','2018-10-29 14:24:49'),
('0','Moises Runolfsson','5539 Hilbert Mountains Suite 227\nReynoldshaven, RI 37499','1984-09-23 09:51:24'),
('89','Aurelie Gutkowski','60453 Emma Landing\nO\'Konland, FL 03325-0707','1998-12-13 02:07:58'),
('63479819','Rosanna Reilly I','54294 Celine Ports\nWest Victorialand, SC 35093','1974-04-28 00:51:32'),
('6129','Pedro Dicki DDS','694 McDermott Prairie\nWest Ralphshire, NV 56438-8132','2018-03-05 20:15:35'),
('98853467','Erica Stanton','87265 Gleason Meadows\nAuerport, KS 25634','1993-10-02 15:46:47'),
('1263687','Mr. Gino Leuschke DVM','4533 Ebert Drive Suite 629\nPort Gene, WI 75995-1032','1976-03-19 22:55:19'),
('126282','Alena Kovacek V','9293 Reynolds Hills\nBednarland, IL 79168-8917','1985-04-19 20:30:47'),
('7700','Malika Barrows','077 Caterina Plaza Suite 942\nEast Theo, NV 78272-7931','2018-03-20 22:19:07'),
('640474813','Bell Fadel V','22363 Gottlieb Turnpike\nNew Ricoburgh, CT 51319-2287','1973-12-30 22:59:52'),
('129','Austyn Raynor','6184 Zboncak Village Suite 078\nPort Torrancefort, NE 54613','2010-12-12 18:06:25'),
('3478276','Prof. Santos Schmeler','291 Runolfsson Mall Apt. 782\nWhitetown, MA 17651','2000-09-26 02:06:12'),
('228943','Annamarie Reichel','269 Roob Fall\nNorth Damaris, GA 44683-2682','2003-10-12 20:00:25'),
('8','Mr. Maximillian Jones II','685 Johanna Road Suite 742\nLake Shane, FL 74880-8081','2011-02-02 04:54:06'),
('0','Orlando Skiles','53624 Moore Way Suite 171\nBoehmmouth, IA 89143-7894','1974-11-08 00:18:48'),
('5','Prof. Gussie Simonis','3831 Schulist Spur Suite 261\nEast Krystina, FL 89300','1970-04-11 21:34:27'),
('3','Eunice Bruen','142 Eda Harbor\nSchmitthaven, TX 33348-3177','2014-10-28 23:33:06'),
('21','Mr. Hugh Raynor I','5093 Leffler Islands Apt. 640\nLaverneburgh, TN 96081','2016-01-29 22:54:55'),
('157278137','Dr. Wilfrid Botsford IV','1556 Koepp Corners Apt. 893\nPadbergville, VT 72123-0881','2005-08-24 05:14:33'),
('795202597','Prof. Lennie Wunsch V','5566 Lavada Mission\nArdithmouth, VA 56843-5268','2001-12-19 13:57:49'),
('899052149','Jadyn Johnson DVM','6422 Joey Trail Apt. 252\nCasperland, FL 89154','1987-08-08 06:47:10'),
('11','Caesar Hane','46064 Brown Rest\nCartwrightview, IL 09110','1980-01-13 08:02:39'),
('877','Maye Jacobs','28335 Nathanael Groves Suite 505\nLake Abdulstad, MT 56858','1982-01-24 20:49:15'),
('7','Chauncey Eichmann MD','258 Belle Wells Apt. 418\nNew Janetton, AR 22477','1986-08-06 03:39:37'),
('49','Modesta Schinner DVM','13662 Tom Parkways Apt. 506\nLake Jordane, AK 83458','2002-08-19 17:36:25'),
('5','Mr. Rodolfo Barton Jr.','89976 Gavin Corner\nLake Elena, IA 75671','1980-09-15 08:49:49'),
('0','Palma Purdy','7814 Lenora Square Suite 287\nLake Orville, KY 79731-6657','1998-06-11 04:30:54'),
('43','Marcel McClure','248 Kiehn Street Suite 661\nRempelhaven, NH 93893-1167','1982-11-13 00:06:00'),
('39376','Prof. Isai Abshire V','487 Bartoletti Cape Suite 626\nEast Tyreek, VA 30978-9496','1971-09-29 18:59:50'),
('321','Dr. Marquis Cole','9408 Cormier Plaza Suite 760\nGlendaborough, MS 85153-8472','2007-12-01 01:14:22'),
('79','Prof. Arden Ondricka','2341 Considine Fields\nTorphyland, IN 47432-9690','2006-08-27 22:10:37'),
('0','Prof. Akeem Champlin','5770 Lelah Fords\nCarolynfort, WA 00385-2140','1971-10-02 08:33:11'),
('6','Juliet Abernathy DVM','3468 McKenzie Run Apt. 144\nNew Cyril, AL 20388','2012-04-30 18:55:10'),
('7248','Dr. Felton Turner MD','81236 Waelchi Mission Suite 512\nCreminfort, NV 55769','1983-08-31 05:03:06'),
('78','Ms. Mazie Schmeler','8642 Jackie Land\nNew Emma, OK 83802-1449','1977-01-08 05:30:40'),
('96','Prof. Elyse Carroll V','317 West Drive Apt. 586\nMonahanport, IA 48592-9864','2016-11-04 00:07:44'),
('37310','Ms. Tatyana Gorczany','099 Heathcote Track\nFrancesville, KY 17636-1084','1973-06-23 22:24:31'),
('185429014','Prof. Golda Hauck','670 Bashirian Crescent\nMillsmouth, VA 54568','2003-02-11 10:04:00'),
('5529','Mr. Raven Schulist IV','3239 Witting Fields Apt. 335\nDoylefurt, GA 15407','1975-06-29 07:13:34'),
('105456','Delphine Dicki','760 Quitzon Pass Suite 616\nVivianechester, VT 89639-6805','1972-06-27 00:24:17'),
('16017655','Mr. Barton Reichel','7305 Bartell Isle\nEast Bernieceview, CO 99180-1381','1984-12-27 17:56:14'),
('594494529','Madaline Ledner PhD','906 Pete Knoll Apt. 318\nPort Grover, MA 22617-2060','1990-05-27 00:26:37'),
('60966866','Jaime Brekke','66128 Rodolfo Pass Apt. 355\nFritschberg, MT 92467-1360','2010-08-07 17:33:10'),
('13114','Diamond Tromp','8079 Wunsch Centers Suite 721\nSouth Casimer, DC 79033','1975-12-11 00:56:37'),
('292','Miss Elva Kutch DVM','2083 Thea Turnpike Apt. 813\nSouth Lindseybury, WI 64663','1977-05-04 13:45:04'),
('8481','Joanie Bernhard','0326 VonRueden Turnpike Apt. 119\nNorth Brooksberg, CT 96967','1970-06-10 15:01:01'),
('8627','Carmella Jacobs Jr.','02183 Demetrius Path Suite 529\nBergnaumhaven, WI 47789','1971-05-08 03:45:43'),
('26607','Alberto Gorczany','3172 Leffler Courts\nWest Johnpaul, MD 95612','2003-01-04 22:24:11'),
('0','Constance Bailey','1251 Gerlach Ranch\nNorth Kristina, NC 35697','1981-08-25 02:42:47'),
('905','Ms. Mafalda Becker V','69832 Turcotte Port Suite 091\nWolffport, MN 97369-5542','2006-09-02 15:14:20'),
('524','Isaac Lemke','7321 Wava Well Apt. 394\nLake Kyleeland, SD 63655-9222','1977-11-07 05:05:57'),
('83723','Prof. Terrill Welch','86403 Schiller Stream Suite 660\nWest Tommieborough, KS 10942-0961','1984-08-18 08:47:08'),
('2','Prof. Braxton Kovacek DDS','23290 Wolf Locks Apt. 664\nNew Loisfort, HI 50086-7250','2007-09-18 01:02:39'),
('787','Emerson Lubowitz PhD','3080 Nichole Parkways\nHeathtown, AR 58182','1989-07-07 18:55:28'),
('88985063','Andre Schumm','70800 Schowalter Mall\nSouth Trevahaven, ME 68412-0042','2018-02-28 23:39:07'),
('43157812','Shayne Block','5067 Friesen Light Apt. 548\nUptonside, OR 77336','2009-03-09 10:29:58'),
('42','Carrie Sauer','568 Carroll Ville Apt. 792\nSouth Marcel, SC 82003-4537','2001-02-14 09:07:57'),
('0','Barney Lemke','126 Fahey Mall Apt. 269\nArnochester, SD 24519','1985-08-28 12:18:51'),
('347','Eldora Lueilwitz','34759 Borer Via Suite 520\nProhaskaborough, MA 82542','1976-11-13 12:12:38'),
('12114214','Nichole Daniel MD','6099 Crist Village\nHowardchester, TX 00303','1973-04-20 00:01:44'),
('796','Dr. Dean Jakubowski PhD','436 Haley Ways\nVandervortburgh, AK 63657','1975-04-25 23:45:36'),
('66816','Armand Douglas','62196 Breitenberg Glens\nLake Mableburgh, TX 23532','2018-07-01 12:51:44'),
('386092','Miss Madelyn O\'Hara MD','534 Hermina Bridge Apt. 930\nNoemimouth, NE 21482','2016-10-30 10:22:35'),
('532','Mr. Sven Gislason I','226 Lisa Wells\nDejonfurt, WV 38426','1998-03-18 07:47:17'),
('124','Orpha Runolfsson','6626 Kirlin Lodge\nFaheyside, ID 24538','1988-04-06 22:50:08'),
('41628612','Deja Swaniawski','842 Glover Mission Suite 384\nNorth Hayley, TN 59474-6624','1972-07-18 14:17:15'),
('6376046','Dr. Pedro Mertz','83565 Garry Camp\nAmariport, AR 23682','1996-10-02 00:33:33'),
('262','Tressie Veum','959 Fahey Corner\nNew Tyshawnport, ND 55198-7140','1993-08-21 09:43:44'),
('475374','Ms. Savanah Ledner III','41901 George Inlet Suite 590\nEmeliemouth, NV 87465-1293','1999-11-13 06:54:08'),
('32118513','Vesta Nolan Jr.','03496 Kris Burg\nSouth Adalberto, ND 18949-1681','1995-12-16 21:47:14'),
('8751297','Leonel Zieme','4771 Rosendo Route\nArnefurt, HI 55639','2001-05-22 20:00:45'),
('581191387','Dr. Arlo Rohan DDS','171 Alana Crest Apt. 515\nEast Kelleybury, WY 04933','1979-01-29 19:39:35'),
('957404546','Susie Kuhn','909 Wilmer Bridge\nKeanuton, MO 83147','1975-09-17 21:27:54'),
('4705','Korey Lind','654 Jaskolski Isle\nPort Leonora, NE 94438','1995-03-12 19:16:04'),
('16480585','Prof. Luis Effertz','34713 Rempel Greens\nSchmittville, NM 74643','2003-11-12 15:31:17'),
('10820379','Ms. Leta Nicolas','797 Sasha Locks\nPort Daxview, NE 16591-1507','2001-12-15 07:00:18'),
('3829992','Dr. Trey Sauer','92642 Fadel Ports\nDanykaland, TX 32839-6726','2001-03-17 23:26:10'),
('5547813','Ahmed Mohr III','76106 Anissa Park\nArlieburgh, SC 57911','2015-07-24 02:40:50'),
('453768','Prof. Erwin Walsh MD','810 Buckridge Spring\nMillsbury, ME 48305','1983-03-16 18:10:40'),
('99','Mr. Roman Nader I','5848 O\'Kon Pines Suite 524\nOrtizview, KS 24399-4937','1986-03-24 08:55:17'),
('759072','Ms. Kaitlin Blanda III','133 Johnson Loop\nNorth Edna, AL 20065','1973-03-09 22:55:22'),
('174749935','Tiana Morissette Sr.','8088 Kaia Lane\nWest Fredrick, SC 90376','2010-09-21 08:33:31'),
('1604','Foster Johnson','364 Rolfson Lodge Suite 778\nLake Mariafurt, MO 79180-4953','1979-03-05 22:48:16'),
('4004977','Ms. Pinkie O\'Hara II','8245 Donnelly Plain Apt. 548\nEast Gregland, OH 66810-5890','2010-03-01 11:24:59'),
('762938','Melody Cruickshank','3634 Howe Radial Apt. 711\nRhiannonside, KY 35959-4335','1981-04-25 22:38:10'),
('1275','Edwardo Douglas','801 Loren Drives Suite 256\nCeasarland, WI 54957-1626','1972-01-11 11:19:14'),
('44','Madisyn Goyette','51614 Ledner Valley\nWardside, WI 58520','1984-11-05 03:08:00'),
('4061','Mr. Rocky West Jr.','9637 Heather Parks\nPort Alessandra, MD 17749','1986-09-05 18:01:39'),
('861','Mrs. Abigayle Littel Jr.','1350 Miles Stream Suite 858\nNienowburgh, MA 92505-9236','1975-10-10 02:53:55'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

