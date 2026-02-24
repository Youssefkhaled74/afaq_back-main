-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ps-database
DROP DATABASE IF EXISTS `ps-database`;
CREATE DATABASE IF NOT EXISTS `ps-database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ps-database`;

-- Dumping structure for table ps-database.addresses
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Saudi Arabia',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_index` (`user_id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.addresses: ~114 rows (approximately)
INSERT INTO `addresses` (`id`, `user_id`, `label`, `country`, `city`, `district`, `street`, `building_no`, `apartment_no`, `floor`, `postal_code`, `phone`, `notes`, `lat`, `lng`, `is_default`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Home', 'Saudi Arabia', 'Letitiabury', 'corrupti', 'Lila Tunnel', '169', '49', '9', '56779', '546416852', 'Officia omnis vel non consequatur cumque ratione.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(2, 2, 'Home', 'Saudi Arabia', 'Alleneborough', 'officiis', 'Jess Points', '77', '12', '16', '38364', '522261060', 'Natus praesentium error repudiandae eligendi.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(3, 1, 'Home', 'Saudi Arabia', 'New Caraberg', 'est', 'Claud Plain', '111', '38', '4', '13698', '572953873', 'Nisi architecto sit aspernatur autem porro provident.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(4, 2, 'Home', 'Saudi Arabia', 'Caryton', 'quo', 'Roberts Extension', '85', '6', '19', '92626', '500421971', 'At quia commodi cupiditate ut.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(5, 3, 'Home', 'Saudi Arabia', 'Modestomouth', 'et', 'Harber Green', '26', '19', '8', '65943', '597416190', 'Sit nisi eum exercitationem sunt aliquam ea.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(6, 4, 'Home', 'Saudi Arabia', 'Jettview', 'eos', 'Rhiannon Lakes', '100', '21', '20', '92090', '590291443', 'Qui ab fuga est occaecati magni in.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(7, 5, 'Home', 'Saudi Arabia', 'Vandervortville', 'vel', 'Connelly Lodge', '10', '2', '17', '69679', '508172321', 'Animi sequi ab vero cumque incidunt dolores ullam.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(8, 6, 'Home', 'Saudi Arabia', 'Port Javier', 'natus', 'Kelsi Lakes', '172', '30', '13', '14827', '595810225', 'Quasi autem iusto aperiam nisi architecto.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(9, 6, 'Work', 'Saudi Arabia', 'Salvadormouth', 'libero', 'Sean Bridge', '46', '5', '10', '56825', '513332122', 'Aut id numquam officia iste.', NULL, NULL, 0, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(10, 7, 'Home', 'Saudi Arabia', 'Farrellmouth', 'occaecati', 'Paucek Bridge', '64', '43', '13', '54043', '503418332', 'Quo quis sed recusandae amet.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(11, 8, 'Work', 'Saudi Arabia', 'O\'Connermouth', 'rerum', 'Myah Trafficway', '14', '34', '2', '41820', '535248062', 'Eveniet quasi perferendis expedita dolorem illum consectetur.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(12, 9, 'Other', 'Saudi Arabia', 'Blockhaven', 'veritatis', 'Chance Ville', '188', '38', '7', '20455', '583228677', 'Inventore in autem quia eum.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(13, 9, 'Home', 'Saudi Arabia', 'Saulberg', 'illum', 'O\'Conner Plaza', '66', '11', '2', '91058', '514699333', 'Quibusdam quidem delectus sequi explicabo.', NULL, NULL, 0, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(14, 9, 'Home', 'Saudi Arabia', 'Lake Nigel', 'nesciunt', 'Kian Extension', '12', '33', '8', '79930', '517412909', 'Vero pariatur non non quod.', NULL, NULL, 0, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(15, 10, 'Other', 'Saudi Arabia', 'Port Gerrybury', 'vel', 'Volkman Flat', '145', '32', '4', '86084', '567247631', 'Illum molestiae et voluptatem id sed cupiditate voluptatem.', NULL, NULL, 1, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(16, 10, 'Other', 'Saudi Arabia', 'North Vernieville', 'enim', 'Yasmin Summit', '102', '29', '18', '69858', '513054261', 'A ea quae magni quo.', NULL, NULL, 0, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(17, 10, 'Work', 'Saudi Arabia', 'Smithchester', 'in', 'Schoen Isle', '105', '11', '10', '54303', '520899157', 'Deserunt est et doloribus culpa suscipit.', NULL, NULL, 0, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(18, 11, 'Other', 'Saudi Arabia', 'South Hope', 'aliquid', 'Lynch Rue', '180', '33', '9', '93014', '539309843', 'Consequatur ut perspiciatis commodi excepturi voluptas qui.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(19, 12, 'Other', 'Saudi Arabia', 'East Lelia', 'quisquam', 'Moses Well', '199', '24', '13', '61349', '533579410', 'Officiis maiores eum quas quia dolor.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(20, 13, 'Work', 'Saudi Arabia', 'Delphaton', 'quis', 'Mya Mill', '30', '7', '20', '63054', '531097040', 'Illum rerum veritatis velit omnis molestias.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(21, 13, 'Other', 'Saudi Arabia', 'New Sofia', 'sunt', 'Meagan Stravenue', '171', '3', '14', '30379', '545670055', 'At consectetur ut qui nihil quis eaque quisquam.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(22, 14, 'Other', 'Saudi Arabia', 'Hackettview', 'dolorem', 'George Squares', '46', '15', '8', '70089', '582908415', 'Exercitationem iusto laudantium maiores tempore.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(23, 15, 'Home', 'Saudi Arabia', 'Friedafort', 'ut', 'Krystina Plaza', '114', '44', '10', '22888', '513891321', 'Sapiente aut iste consequatur quia.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(24, 16, 'Other', 'Saudi Arabia', 'D\'Amorechester', 'ut', 'Schaden Mountain', '127', '5', '11', '13410', '536072616', 'Voluptatem ducimus quibusdam eum similique.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(25, 16, 'Other', 'Saudi Arabia', 'Lake Leonora', 'ipsum', 'Naomie Stravenue', '146', '16', '16', '91363', '550626175', 'Ut non tempore hic voluptatibus vero dolorem commodi.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(26, 16, 'Other', 'Saudi Arabia', 'South Felipaburgh', 'et', 'Julianne Ports', '127', '27', '11', '17259', '570249466', 'Maiores cupiditate nihil a eligendi maxime.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(27, 17, 'Work', 'Saudi Arabia', 'Carterstad', 'facere', 'Precious Brook', '151', '24', '12', '17183', '501459901', 'Nulla autem et sit.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(28, 17, 'Work', 'Saudi Arabia', 'Hammeshaven', 'exercitationem', 'Johnpaul Bypass', '88', '49', '12', '63568', '549257232', 'Quos aspernatur est voluptas assumenda blanditiis.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(29, 17, 'Home', 'Saudi Arabia', 'South Dolores', 'placeat', 'Patience Lane', '44', '25', '2', '20459', '587607212', 'Delectus ea omnis ut odit quae.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(30, 18, 'Work', 'Saudi Arabia', 'Alphonsostad', 'sint', 'Aric Route', '70', '25', '19', '26974', '570182665', 'Tempore voluptas repudiandae sunt dolorem aut accusantium.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(31, 18, 'Home', 'Saudi Arabia', 'Colliertown', 'et', 'Frederic Fields', '106', '2', '18', '23102', '553735097', 'Laboriosam quisquam consequatur voluptatem qui quaerat ea unde.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(32, 19, 'Work', 'Saudi Arabia', 'Lake Nyahfort', 'in', 'Mariela Ferry', '78', '23', '4', '60538', '512500163', 'Odio fugiat fugit commodi eum dolores commodi maiores.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(33, 19, 'Work', 'Saudi Arabia', 'Joaniemouth', 'incidunt', 'Amya Ways', '105', '42', '11', '72104', '566602303', 'Saepe earum sequi id esse eos.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(34, 20, 'Work', 'Saudi Arabia', 'Pacochabury', 'et', 'Maggio Park', '9', '29', '2', '42376', '559455744', 'Assumenda amet cum qui et.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(35, 20, 'Home', 'Saudi Arabia', 'Gladysberg', 'et', 'Lehner Fall', '136', '8', '13', '62209', '501667103', 'Dignissimos in quia enim nostrum saepe.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(36, 20, 'Other', 'Saudi Arabia', 'Nedrahaven', 'recusandae', 'Keenan Wells', '6', '42', '18', '69177', '500384665', 'Molestias tempora qui ducimus praesentium.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(37, 21, 'Home', 'Saudi Arabia', 'Boganmouth', 'aut', 'Ashleigh Throughway', '13', '18', '13', '72473', '516327400', 'Delectus nemo aut et cum nobis illo saepe corrupti.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(38, 21, 'Other', 'Saudi Arabia', 'North Lynnview', 'est', 'Bailey Cliffs', '108', '1', '3', '13922', '522183169', 'Pariatur cupiditate ex deserunt vitae adipisci.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(39, 21, 'Home', 'Saudi Arabia', 'South Orentown', 'iste', 'Xzavier Dale', '109', '5', '6', '37884', '594037695', 'Distinctio modi explicabo illum enim repudiandae non nisi ut.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(40, 22, 'Other', 'Saudi Arabia', 'Mavisfurt', 'alias', 'Walton Avenue', '14', '10', '3', '54795', '596377559', 'Aut ex dolores itaque omnis adipisci.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(41, 22, 'Home', 'Saudi Arabia', 'West Beatrice', 'temporibus', 'Jensen Glen', '170', '4', '5', '86001', '543132084', 'Dolor et tempora sit quia.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(42, 22, 'Home', 'Saudi Arabia', 'New Arifort', 'praesentium', 'Colin Springs', '120', '50', '19', '17549', '506965160', 'Sapiente omnis dignissimos perferendis deleniti.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(43, 23, 'Home', 'Saudi Arabia', 'Jenahaven', 'repudiandae', 'McCullough Groves', '74', '5', '13', '22800', '576013306', 'Ducimus et laudantium et soluta.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(44, 23, 'Home', 'Saudi Arabia', 'Jamarmouth', 'rem', 'Kessler Grove', '174', '16', '19', '14362', '559240760', 'Suscipit voluptatem optio quas aliquam aut enim.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(45, 24, 'Home', 'Saudi Arabia', 'Calistahaven', 'sit', 'Bruen Villages', '122', '19', '11', '58010', '577144934', 'Molestias ea in est aliquid quis rerum.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(46, 24, 'Other', 'Saudi Arabia', 'Lake Caleigh', 'rerum', 'Anderson Locks', '194', '10', '15', '44192', '514018111', 'Debitis maiores ipsa dolor temporibus.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(47, 25, 'Work', 'Saudi Arabia', 'Sigridstad', 'harum', 'Alisha Radial', '48', '8', '11', '93498', '547778106', 'Modi rerum totam quo eum.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(48, 25, 'Work', 'Saudi Arabia', 'Wizabury', 'ut', 'Brook Harbors', '33', '43', '6', '10451', '592464509', 'Fugit neque quia aliquid occaecati.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(49, 25, 'Work', 'Saudi Arabia', 'Mullerstad', 'quia', 'Kennedy Street', '116', '26', '18', '86479', '511235535', 'Quam dolorem autem rem enim.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(50, 26, 'Home', 'Saudi Arabia', 'Virgiefurt', 'possimus', 'Chelsie Manors', '36', '13', '1', '28985', '565876853', 'Ab cupiditate saepe occaecati consequatur laborum quasi rem alias.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(51, 26, 'Work', 'Saudi Arabia', 'West Fritzbury', 'quisquam', 'Keeling Divide', '30', '16', '6', '89579', '568588906', 'Ut dolores voluptatibus dolorem et quod possimus.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(52, 26, 'Other', 'Saudi Arabia', 'Rozellamouth', 'est', 'Gleichner Turnpike', '113', '43', '10', '42013', '568607864', 'Atque aliquid et totam sed.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(53, 27, 'Other', 'Saudi Arabia', 'East Jacintheland', 'iste', 'Jacques Road', '176', '19', '6', '92014', '541578884', 'Omnis et doloremque velit natus velit rerum.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(54, 27, 'Home', 'Saudi Arabia', 'Port Silasfort', 'eius', 'Moen Camp', '40', '39', '14', '58641', '566768722', 'Qui ex porro aperiam illo et excepturi saepe asperiores.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(55, 27, 'Work', 'Saudi Arabia', 'Carolynshire', 'omnis', 'Durgan Forest', '193', '23', '6', '47759', '592428017', 'Est provident qui ullam totam qui nihil corrupti.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(56, 28, 'Home', 'Saudi Arabia', 'East Auroreborough', 'cum', 'Streich Station', '86', '50', '3', '32857', '500309745', 'Nemo eos aliquam minima nulla molestiae at vel.', NULL, NULL, 1, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(57, 28, 'Home', 'Saudi Arabia', 'Nathanaelmouth', 'et', 'Brian Summit', '112', '41', '18', '21398', '577425020', 'Voluptatem magnam nihil et esse qui.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(58, 28, 'Other', 'Saudi Arabia', 'West Lexusland', 'quam', 'Runolfsson Keys', '185', '10', '6', '57097', '544986827', 'Est ullam et est.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(59, 1, 'Home', 'Saudi Arabia', 'New Simone', 'id', 'Ramona Extension', '127', '47', '12', '95067', '538230670', 'Quidem recusandae atque quia.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(60, 1, 'Home', 'Saudi Arabia', 'Trompchester', 'qui', 'Joany Rest', '45', '47', '18', '67072', '562687718', 'Iusto culpa ex maxime aperiam.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(61, 2, 'Work', 'Saudi Arabia', 'Jakefurt', 'molestiae', 'Tromp Lights', '58', '20', '11', '80573', '545197204', 'Officia exercitationem vel et labore numquam consequatur.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(62, 2, 'Home', 'Saudi Arabia', 'Chaimbury', 'occaecati', 'Daisha Green', '132', '37', '5', '56881', '596873514', 'Et ut non illum vitae autem dolorem consequatur et.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(63, 3, 'Other', 'Saudi Arabia', 'New Gianni', 'quasi', 'Ruecker Harbors', '141', '5', '9', '84536', '500629517', 'Earum ipsum quasi explicabo maxime.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(64, 3, 'Home', 'Saudi Arabia', 'New Baileyburgh', 'ut', 'Kyra Passage', '187', '37', '1', '28716', '516379754', 'Beatae inventore reprehenderit adipisci est dolor.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(65, 4, 'Home', 'Saudi Arabia', 'Dareton', 'error', 'Abernathy Crossing', '86', '40', '8', '19299', '536377210', 'Alias consequatur aliquid perferendis ipsum aspernatur unde sed.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(66, 4, 'Work', 'Saudi Arabia', 'New Griffinchester', 'neque', 'Liana Islands', '126', '13', '9', '18711', '542779636', 'Voluptas praesentium suscipit hic libero sed ea consequatur.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(67, 5, 'Work', 'Saudi Arabia', 'Jacinthemouth', 'est', 'Flossie Lakes', '95', '12', '10', '81355', '558670987', 'Rem repudiandae fuga dolore vel commodi nisi voluptate dicta.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(68, 5, 'Other', 'Saudi Arabia', 'East Derekport', 'distinctio', 'Mitchell Shores', '95', '30', '8', '37583', '542019378', 'Voluptatem esse qui non distinctio veniam optio voluptatem.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(69, 6, 'Work', 'Saudi Arabia', 'South Fay', 'impedit', 'Khalid Overpass', '28', '25', '14', '25458', '505976695', 'Architecto eos exercitationem itaque dolore asperiores.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(70, 6, 'Other', 'Saudi Arabia', 'Harberfort', 'possimus', 'Berge Station', '81', '41', '10', '74046', '551156293', 'Pariatur rerum repellendus et suscipit.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(71, 7, 'Work', 'Saudi Arabia', 'New Justice', 'hic', 'Mandy Grove', '154', '2', '11', '87510', '526129211', 'Odit rem ut praesentium cupiditate modi exercitationem.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(72, 7, 'Work', 'Saudi Arabia', 'Khalidmouth', 'necessitatibus', 'Major Gardens', '68', '18', '5', '28154', '516899372', 'Est sint sed provident inventore.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(73, 8, 'Work', 'Saudi Arabia', 'New Darion', 'rerum', 'Tressa Vista', '124', '30', '10', '17647', '500536847', 'Dicta qui nemo deleniti sit.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(74, 8, 'Work', 'Saudi Arabia', 'Tabithatown', 'debitis', 'Elyse Avenue', '168', '4', '15', '64372', '571254793', 'Id sed omnis voluptatibus quibusdam omnis.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(75, 9, 'Other', 'Saudi Arabia', 'Coleside', 'dolores', 'Oswald Avenue', '174', '15', '11', '55551', '519234835', 'Nesciunt eos veniam optio minima pariatur.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(76, 9, 'Other', 'Saudi Arabia', 'Larissaland', 'molestias', 'Jodie Manors', '186', '40', '7', '83177', '553513256', 'In veritatis distinctio nobis suscipit voluptas.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(77, 10, 'Home', 'Saudi Arabia', 'West Velda', 'nulla', 'Mann Ranch', '125', '14', '10', '95057', '503471686', 'Inventore nesciunt et labore quia atque neque.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(78, 10, 'Other', 'Saudi Arabia', 'Naderville', 'et', 'Juliet Square', '33', '9', '11', '79031', '596192230', 'Aut nisi corporis quo cumque et iure.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(79, 11, 'Other', 'Saudi Arabia', 'Donnellyborough', 'et', 'Tressie Ville', '76', '44', '17', '42950', '559239881', 'Nulla expedita quod delectus in.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(80, 11, 'Work', 'Saudi Arabia', 'O\'Reillyfort', 'ipsum', 'Jenkins Isle', '198', '37', '2', '58115', '597832524', 'Rerum optio accusamus consequatur doloremque reiciendis harum labore maxime.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(81, 12, 'Home', 'Saudi Arabia', 'Skilesfort', 'quia', 'Era Manors', '70', '44', '3', '14151', '512886289', 'Officiis omnis doloribus beatae soluta quod sint sed alias.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(82, 12, 'Work', 'Saudi Arabia', 'Lennyfort', 'facere', 'Weissnat Forks', '40', '4', '13', '38327', '508149980', 'Magnam odit ex sed qui ut aut.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(83, 13, 'Home', 'Saudi Arabia', 'East Jeweltown', 'incidunt', 'Macejkovic Ranch', '132', '19', '13', '68889', '532613852', 'Excepturi optio voluptates laboriosam sed in.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(84, 13, 'Work', 'Saudi Arabia', 'East Bethanymouth', 'consequatur', 'Wilkinson Centers', '96', '24', '2', '74126', '572068004', 'Omnis cumque et sint aliquid aut et enim.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(85, 14, 'Other', 'Saudi Arabia', 'Wainoton', 'est', 'Tressie Estate', '96', '12', '8', '80113', '501689882', 'Et consequuntur rem in sed aliquid et.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(86, 14, 'Other', 'Saudi Arabia', 'Gorczanyville', 'at', 'Johns Shoals', '77', '46', '2', '95083', '501497758', 'Odio voluptatibus inventore dolor in est assumenda.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(87, 15, 'Other', 'Saudi Arabia', 'Rowanmouth', 'non', 'Paucek Isle', '61', '30', '7', '32826', '587502906', 'Quia fugiat qui eligendi doloribus ex.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(88, 15, 'Other', 'Saudi Arabia', 'New Frederick', 'ipsam', 'White Cape', '76', '13', '13', '60382', '566774559', 'Nostrum qui odio odio quia veritatis qui.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(89, 16, 'Home', 'Saudi Arabia', 'West Domenicofurt', 'at', 'Schmidt Summit', '89', '25', '15', '76524', '551140999', 'Velit numquam qui quos iure impedit.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(90, 16, 'Work', 'Saudi Arabia', 'Halvorsonside', 'id', 'Kuvalis Pass', '47', '29', '19', '25264', '549358722', 'Dolores nisi illo quia ut.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(91, 17, 'Other', 'Saudi Arabia', 'North Fay', 'nemo', 'Alexanne Row', '83', '28', '19', '98896', '530508229', 'Harum omnis aut accusamus.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(92, 17, 'Work', 'Saudi Arabia', 'Schoenhaven', 'doloremque', 'Maxwell Avenue', '157', '28', '15', '74760', '569412617', 'Dolore soluta voluptatem sunt eligendi similique.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(93, 18, 'Work', 'Saudi Arabia', 'East Priscillaburgh', 'aut', 'Rubye Pines', '175', '39', '10', '72301', '529915306', 'Quia reiciendis et voluptatem quod consequuntur.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(94, 18, 'Work', 'Saudi Arabia', 'Magdalenmouth', 'nesciunt', 'Susie Inlet', '21', '8', '4', '45058', '529088703', 'Eum est ut nulla sapiente ex omnis.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(95, 19, 'Other', 'Saudi Arabia', 'East Dillanland', 'nemo', 'Dorothy Mount', '148', '12', '9', '75090', '537148284', 'Aliquid odio culpa qui id est.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(96, 19, 'Work', 'Saudi Arabia', 'Newtonmouth', 'eum', 'Burnice Oval', '141', '2', '6', '42769', '552313586', 'Eum nemo ducimus quo et quas.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(97, 20, 'Home', 'Saudi Arabia', 'East Nikolas', 'nulla', 'Eladio Creek', '40', '27', '5', '89278', '502297179', 'Repellat exercitationem debitis nihil omnis molestiae odit placeat.', NULL, NULL, 0, '2026-01-25 01:31:21', '2026-01-25 01:31:21'),
	(98, 20, 'Home', 'Saudi Arabia', 'Wisokyville', 'et', 'Rohan Drive', '15', '7', '15', '64327', '544737787', 'Enim ipsum dolore sint expedita qui.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(99, 21, 'Other', 'Saudi Arabia', 'Justenstad', 'repellendus', 'Considine Passage', '139', '33', '7', '85724', '595408234', 'Suscipit quia qui odio corrupti aut ut voluptate.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(100, 21, 'Home', 'Saudi Arabia', 'East Raquelfurt', 'modi', 'Marlin Manors', '114', '16', '10', '23639', '564369431', 'Autem sint quae nesciunt commodi eius magnam.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(101, 22, 'Home', 'Saudi Arabia', 'Bechtelarville', 'qui', 'Eino Divide', '120', '12', '9', '14525', '543670215', 'Rerum impedit possimus aut nulla quis.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(102, 22, 'Other', 'Saudi Arabia', 'West Monroe', 'hic', 'Wiegand Coves', '116', '42', '7', '41608', '598463646', 'Deserunt molestiae sunt corrupti blanditiis minima qui et.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(103, 23, 'Home', 'Saudi Arabia', 'Jerryton', 'ut', 'Zboncak Ford', '89', '47', '13', '67528', '560328160', 'Ducimus cupiditate ut perferendis est non at hic.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(104, 23, 'Work', 'Saudi Arabia', 'Port Joanieport', 'molestiae', 'Christiansen Prairie', '178', '17', '16', '29895', '548804542', 'Sunt sapiente sapiente sint quod.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(105, 24, 'Work', 'Saudi Arabia', 'West Art', 'voluptatem', 'Verna Forge', '114', '27', '19', '56857', '513437801', 'Explicabo soluta dolorem sint quasi dolores.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(106, 24, 'Work', 'Saudi Arabia', 'South Reagan', 'necessitatibus', 'Kayley Shores', '45', '27', '18', '80652', '546065702', 'Libero occaecati iure eaque voluptas dolorem.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(107, 25, 'Other', 'Saudi Arabia', 'Mannberg', 'qui', 'Bayer Ports', '109', '6', '2', '15148', '550960412', 'Consectetur est illo id aut autem fuga aliquid.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(108, 25, 'Work', 'Saudi Arabia', 'New Vitatown', 'atque', 'Florence Brook', '158', '47', '14', '67264', '510425042', 'Ratione dolorum amet rerum tenetur delectus est tenetur.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(109, 26, 'Home', 'Saudi Arabia', 'Kaileychester', 'delectus', 'Crona Inlet', '115', '17', '20', '33839', '535971938', 'Consectetur alias quia ut nostrum quod in.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(110, 26, 'Home', 'Saudi Arabia', 'Lake Stephen', 'nemo', 'Melody Fords', '184', '38', '4', '52542', '571485455', 'Atque dolorum molestiae ipsum fuga.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(111, 27, 'Other', 'Saudi Arabia', 'Haneville', 'quisquam', 'Smith Corner', '40', '6', '1', '31074', '522485593', 'Pariatur quo architecto qui expedita sint.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(112, 27, 'Work', 'Saudi Arabia', 'Jedhaven', 'aut', 'Alexandria Wells', '43', '4', '6', '43957', '510577146', 'Tenetur suscipit quibusdam tempore ipsam.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(113, 28, 'Other', 'Saudi Arabia', 'Port Herminaport', 'nostrum', 'Hoeger Branch', '192', '48', '20', '78515', '503425439', 'Natus quia cupiditate magnam adipisci quasi ut temporibus et.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(114, 28, 'Home', 'Saudi Arabia', 'East Kaylafurt', 'animi', 'Reinhold Views', '110', '31', '2', '95715', '599967984', 'Magnam quasi ut dolorum in perspiciatis.', NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22');

-- Dumping structure for table ps-database.admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.admins: ~1 rows (approximately)
INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'admin@ps.test', '$2y$12$exD7uK3TuBb5qOy/.s8zoOyBS40YAbc.i7gZx2EAjVnSiNs25tXH6', '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.admin_activity_logs
DROP TABLE IF EXISTS `admin_activity_logs`;
CREATE TABLE IF NOT EXISTS `admin_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_activity_logs_admin_id_foreign` (`admin_id`),
  CONSTRAINT `admin_activity_logs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.admin_activity_logs: ~10 rows (approximately)
INSERT INTO `admin_activity_logs` (`id`, `admin_id`, `action`, `details`, `created_at`, `updated_at`) VALUES
	(1, 1, 'user_created', 'Admin performed user created', '2026-01-08 01:31:38', '2025-12-29 01:31:38'),
	(2, 1, 'user_updated', 'Admin performed user updated', '2026-01-25 01:31:38', '2025-12-30 01:31:38'),
	(3, 1, 'user_deleted', 'Admin performed user deleted', '2026-01-25 01:31:38', '2026-01-13 01:31:38'),
	(4, 1, 'vendor_approved', 'Admin performed vendor approved', '2025-12-27 01:31:38', '2026-01-19 01:31:38'),
	(5, 1, 'vendor_rejected', 'Admin performed vendor rejected', '2026-01-23 01:31:38', '2026-01-22 01:31:38'),
	(6, 1, 'order_processed', 'Admin performed order processed', '2025-12-31 01:31:38', '2026-01-17 01:31:38'),
	(7, 1, 'content_updated', 'Admin performed content updated', '2026-01-13 01:31:38', '2026-01-02 01:31:38'),
	(8, 1, 'settings_changed', 'Admin performed settings changed', '2026-01-02 01:31:38', '2026-01-25 01:31:38'),
	(9, 1, 'payment_verified', 'Admin performed payment verified', '2026-01-22 01:31:38', '2026-01-01 01:31:38'),
	(10, 1, 'report_reviewed', 'Admin performed report reviewed', '2026-01-04 01:31:38', '2026-01-02 01:31:38');

-- Dumping structure for table ps-database.banks
DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.banks: ~10 rows (approximately)
INSERT INTO `banks` (`id`, `name_en`, `name_ar`, `logo`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'Al Rajhi Bank', 'مصرف الراجحي', 'uploads/banks/alrajhi.png', 'active', 1, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'SNB (National Commercial Bank)', 'البنك الأهلي السعودي', 'uploads/banks/snb.png', 'active', 2, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'Riyad Bank', 'بنك الرياض', 'uploads/banks/riyad.png', 'active', 3, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'Banque Saudi Fransi', 'البنك السعودي الفرنسي', 'uploads/banks/sfransi.png', 'active', 4, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'SABB', 'ساب', 'uploads/banks/sabb.png', 'active', 5, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(6, 'Alinma Bank', 'مصرف الإنماء', 'uploads/banks/alinma.png', 'active', 6, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(7, 'Arab National Bank', 'البنك العربي الوطني', 'uploads/banks/arab_national.png', 'active', 7, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(8, 'SAIB', 'البنك السعودي للاستثمار', 'uploads/banks/saib.png', 'active', 8, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(9, 'Bank AlJazira', 'بنك الجزيرة', 'uploads/banks/aljazira.png', 'active', 9, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(10, 'Gulf International Bank', 'بنك الخليج الدولي', 'uploads/banks/gib.png', 'active', 10, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.brands: ~6 rows (approximately)
INSERT INTO `brands` (`id`, `name_en`, `name_ar`, `logo`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'Acme', 'أكمي', 'uploads/brands/brand_1.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'Nova', 'نوفا', 'uploads/brands/brand_2.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'Sahara', 'صحارى', 'uploads/brands/brand_3.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'Atlas', 'أطلس', 'uploads/brands/brand_4.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'Lumen', 'لومين', 'uploads/brands/brand_5.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(6, 'Orion', 'أوريون', 'uploads/brands/brand_6.png', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.brand_vendor
DROP TABLE IF EXISTS `brand_vendor`;
CREATE TABLE IF NOT EXISTS `brand_vendor` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `brand_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_vendor_vendor_id_brand_id_unique` (`vendor_id`,`brand_id`),
  KEY `brand_vendor_vendor_id_index` (`vendor_id`),
  KEY `brand_vendor_brand_id_index` (`brand_id`),
  CONSTRAINT `brand_vendor_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `brand_vendor_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.brand_vendor: ~40 rows (approximately)
INSERT INTO `brand_vendor` (`id`, `vendor_id`, `brand_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 1, 4, NULL, NULL),
	(3, 2, 1, NULL, NULL),
	(4, 2, 5, NULL, NULL),
	(5, 2, 6, NULL, NULL),
	(6, 3, 1, NULL, NULL),
	(7, 3, 2, NULL, NULL),
	(8, 4, 1, NULL, NULL),
	(9, 4, 2, NULL, NULL),
	(10, 4, 3, NULL, NULL),
	(11, 5, 6, NULL, NULL),
	(12, 6, 2, NULL, NULL),
	(13, 6, 5, NULL, NULL),
	(14, 7, 1, NULL, NULL),
	(15, 7, 4, NULL, NULL),
	(16, 7, 5, NULL, NULL),
	(17, 8, 2, NULL, NULL),
	(18, 8, 5, NULL, NULL),
	(19, 8, 6, NULL, NULL),
	(20, 9, 3, NULL, NULL),
	(21, 9, 4, NULL, NULL),
	(22, 10, 2, NULL, NULL),
	(23, 10, 4, NULL, NULL),
	(24, 11, 2, NULL, NULL),
	(25, 11, 3, NULL, NULL),
	(26, 12, 1, NULL, NULL),
	(27, 13, 4, NULL, NULL),
	(28, 13, 6, NULL, NULL),
	(29, 14, 3, NULL, NULL),
	(30, 15, 3, NULL, NULL),
	(31, 15, 5, NULL, NULL),
	(32, 16, 1, NULL, NULL),
	(33, 16, 2, NULL, NULL),
	(34, 16, 4, NULL, NULL),
	(35, 17, 2, NULL, NULL),
	(36, 17, 3, NULL, NULL),
	(37, 17, 4, NULL, NULL),
	(38, 18, 1, NULL, NULL),
	(39, 19, 3, NULL, NULL),
	(40, 20, 6, NULL, NULL);

-- Dumping structure for table ps-database.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.cache: ~0 rows (approximately)

-- Dumping structure for table ps-database.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.cache_locks: ~0 rows (approximately)

-- Dumping structure for table ps-database.carts
DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned DEFAULT NULL,
  `status` enum('active','checked_out') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint unsigned DEFAULT NULL,
  `payment_method_id` bigint unsigned DEFAULT NULL,
  `shipping_fee` bigint NOT NULL DEFAULT '0',
  `vat` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`),
  KEY `carts_vendor_id_foreign` (`vendor_id`),
  KEY `carts_address_id_foreign` (`address_id`),
  KEY `carts_payment_method_id_foreign` (`payment_method_id`),
  CONSTRAINT `carts_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL,
  CONSTRAINT `carts_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carts_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.carts: ~5 rows (approximately)
INSERT INTO `carts` (`id`, `user_id`, `vendor_id`, `status`, `created_at`, `updated_at`, `address_id`, `payment_method_id`, `shipping_fee`, `vat`) VALUES
	(1, 1, 1, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35', NULL, NULL, 0, 0),
	(2, 2, 1, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35', NULL, NULL, 0, 0),
	(3, 3, 1, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35', NULL, NULL, 0, 0),
	(4, 4, 1, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35', NULL, NULL, 0, 0),
	(5, 5, 1, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35', NULL, NULL, 0, 0);

-- Dumping structure for table ps-database.cart_items
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` bigint unsigned NOT NULL,
  `vendor_item_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `unit_price` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_items_cart_id_vendor_item_id_unique` (`cart_id`,`vendor_item_id`),
  KEY `cart_items_vendor_item_id_foreign` (`vendor_item_id`),
  KEY `cart_items_cart_id_index` (`cart_id`),
  KEY `cart_items_vendor_id_index` (`vendor_id`),
  CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_vendor_item_id_foreign` FOREIGN KEY (`vendor_item_id`) REFERENCES `vendor_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.cart_items: ~15 rows (approximately)
INSERT INTO `cart_items` (`id`, `cart_id`, `vendor_item_id`, `vendor_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
	(1, 1, 107, 23, 3, 35560, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(2, 1, 103, 23, 1, 36151, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(3, 2, 28, 6, 2, 19515, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(4, 2, 55, 12, 3, 12105, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(5, 2, 96, 21, 2, 43386, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(6, 3, 32, 7, 1, 29106, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(7, 3, 67, 14, 3, 9989, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(8, 3, 80, 17, 2, 22280, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(9, 4, 85, 18, 1, 19446, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(10, 4, 50, 11, 2, 15962, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(11, 4, 49, 11, 1, 32210, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(12, 4, 14, 4, 2, 23803, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(13, 5, 73, 16, 1, 37594, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(14, 5, 101, 22, 2, 15313, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(15, 5, 96, 21, 1, 43386, '2026-01-25 01:31:35', '2026-01-25 01:31:35');

-- Dumping structure for table ps-database.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.categories: ~3 rows (approximately)
INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `slug`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'رجال', 'Men', 'men', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'نساء', 'Women', 'women', 'active', 1, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'أطفال', 'Kids', 'kids', 'active', 2, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.colors
DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.colors: ~20 rows (approximately)
INSERT INTO `colors` (`id`, `name_en`, `name_ar`, `hex`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'Black', 'Black', '#172921', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'White', 'White', '#3a039c', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'Red', 'Red', '#23db35', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'Blue', 'Blue', '#56520d', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'Green', 'Green', '#2a5853', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(6, 'Yellow', 'Yellow', '#02858f', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(7, 'Purple', 'Purple', '#e53bb8', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(8, 'Orange', 'Orange', '#6e9981', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(9, 'Pink', 'Pink', '#88b8df', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(10, 'Brown', 'Brown', '#e42cca', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(11, 'Gray', 'Gray', '#8b63dd', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(12, 'Beige', 'Beige', '#7d3dfc', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(13, 'Navy', 'Navy', '#a41dc5', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(14, 'Maroon', 'Maroon', '#62a8e0', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(15, 'Gold', 'Gold', '#6112e0', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(16, 'Silver', 'Silver', '#3bc188', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(17, 'Cyan', 'Cyan', '#d355a7', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(18, 'Magenta', 'Magenta', '#4f278a', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(19, 'Lime', 'Lime', '#41f5c5', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(20, 'Indigo', 'Indigo', '#9dad86', 'active', 0, '2026-01-25 01:31:19', '2026-01-25 01:31:19');

-- Dumping structure for table ps-database.conversations
DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `last_message_at` timestamp NULL DEFAULT NULL,
  `user_unread_count` int NOT NULL DEFAULT '0',
  `vendor_unread_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `conversations_user_id_vendor_id_unique` (`user_id`,`vendor_id`),
  KEY `conversations_user_id_index` (`user_id`),
  KEY `conversations_vendor_id_index` (`vendor_id`),
  KEY `conversations_last_message_at_index` (`last_message_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.conversations: ~4 rows (approximately)
INSERT INTO `conversations` (`id`, `user_id`, `vendor_id`, `last_message_at`, `user_unread_count`, `vendor_unread_count`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, '2026-01-25 01:31:37', 0, 0, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(2, 2, 18, '2026-01-25 01:31:37', 0, 0, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(3, 3, 16, '2026-01-25 01:31:37', 0, 0, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(4, 3, 23, '2026-01-25 01:31:37', 0, 0, '2026-01-25 01:31:37', '2026-01-25 01:31:37');

-- Dumping structure for table ps-database.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table ps-database.fcm_tokens
DROP TABLE IF EXISTS `fcm_tokens`;
CREATE TABLE IF NOT EXISTS `fcm_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ios/android/web',
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fcm_tokens_token_unique` (`token`),
  KEY `fcm_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.fcm_tokens: ~0 rows (approximately)

-- Dumping structure for table ps-database.genders
DROP TABLE IF EXISTS `genders`;
CREATE TABLE IF NOT EXISTS `genders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genders_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.genders: ~5 rows (approximately)
INSERT INTO `genders` (`id`, `key`, `name_en`, `name_ar`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'male', 'Male', 'ذكر', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'female', 'Female', 'أنثى', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'unisex', 'Unisex', 'جنسين', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'boys', 'Boys', 'أولاد', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'girls', 'Girls', 'بنات', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.jobs: ~0 rows (approximately)

-- Dumping structure for table ps-database.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.job_batches: ~0 rows (approximately)

-- Dumping structure for table ps-database.legal_pages
DROP TABLE IF EXISTS `legal_pages`;
CREATE TABLE IF NOT EXISTS `legal_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` json DEFAULT NULL,
  `content` json DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `version` int NOT NULL DEFAULT '1',
  `updated_by_admin_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `legal_pages_key_unique` (`key`),
  KEY `legal_pages_updated_by_admin_id_foreign` (`updated_by_admin_id`),
  CONSTRAINT `legal_pages_updated_by_admin_id_foreign` FOREIGN KEY (`updated_by_admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.legal_pages: ~2 rows (approximately)
INSERT INTO `legal_pages` (`id`, `key`, `title`, `content`, `status`, `version`, `updated_by_admin_id`, `created_at`, `updated_at`) VALUES
	(1, 'terms', '{"ar": "الشروط والأحكام", "en": "Terms & Conditions"}', '{"ar": "## الشروط والأحكام\\n\\n- مرحبًا بكم في PS.\\n- استخدم التطبيق وفقًا لهذه القواعد.\\n\\nهذه الشروط تنظم استخدام الخدمة.", "en": "## Terms & Conditions\\n\\n- Welcome to PS.\\n- Use the app according to these rules.\\n\\nThese terms govern use of the service."}', 'published', 1, NULL, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'privacy', '{"ar": "سياسة الخصوصية", "en": "Privacy Policy"}', '{"ar": "## سياسة الخصوصية\\n\\n- نحن نحترم خصوصيتك.\\n- لا نقوم ببيع البيانات الشخصية.\\n\\nاتصل بالدعم لطلبات الخصوصية.", "en": "## Privacy Policy\\n\\n- We respect your privacy.\\n- We do not sell personal data.\\n\\nContact support for privacy requests."}', 'published', 1, NULL, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.legal_page_revisions
DROP TABLE IF EXISTS `legal_page_revisions`;
CREATE TABLE IF NOT EXISTS `legal_page_revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `legal_page_id` bigint unsigned NOT NULL,
  `title` json DEFAULT NULL,
  `content` json DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int NOT NULL DEFAULT '1',
  `updated_by_admin_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `legal_page_revisions_legal_page_id_foreign` (`legal_page_id`),
  KEY `legal_page_revisions_updated_by_admin_id_foreign` (`updated_by_admin_id`),
  CONSTRAINT `legal_page_revisions_legal_page_id_foreign` FOREIGN KEY (`legal_page_id`) REFERENCES `legal_pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `legal_page_revisions_updated_by_admin_id_foreign` FOREIGN KEY (`updated_by_admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.legal_page_revisions: ~6 rows (approximately)
INSERT INTO `legal_page_revisions` (`id`, `legal_page_id`, `title`, `content`, `status`, `version`, `updated_by_admin_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '"{\\"ar\\":\\"\\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\",\\"en\\":\\"Terms & Conditions\\"}"', '"{\\"ar\\":\\"## \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\\\n\\\\n- \\\\u0645\\\\u0631\\\\u062d\\\\u0628\\\\u064b\\\\u0627 \\\\u0628\\\\u0643\\\\u0645 \\\\u0641\\\\u064a PS.\\\\n- \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0645 \\\\u0627\\\\u0644\\\\u062a\\\\u0637\\\\u0628\\\\u064a\\\\u0642 \\\\u0648\\\\u0641\\\\u0642\\\\u064b\\\\u0627 \\\\u0644\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0642\\\\u0648\\\\u0627\\\\u0639\\\\u062f.\\\\n\\\\n\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u062a\\\\u0646\\\\u0638\\\\u0645 \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0627\\\\u0645 \\\\u0627\\\\u0644\\\\u062e\\\\u062f\\\\u0645\\\\u0629.\\",\\"en\\":\\"## Terms & Conditions\\\\n\\\\n- Welcome to PS.\\\\n- Use the app according to these rules.\\\\n\\\\nThese terms govern use of the service.\\"}"', 'draft', 1, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(2, 1, '"{\\"ar\\":\\"\\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\",\\"en\\":\\"Terms & Conditions\\"}"', '"{\\"ar\\":\\"## \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\\\n\\\\n- \\\\u0645\\\\u0631\\\\u062d\\\\u0628\\\\u064b\\\\u0627 \\\\u0628\\\\u0643\\\\u0645 \\\\u0641\\\\u064a PS.\\\\n- \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0645 \\\\u0627\\\\u0644\\\\u062a\\\\u0637\\\\u0628\\\\u064a\\\\u0642 \\\\u0648\\\\u0641\\\\u0642\\\\u064b\\\\u0627 \\\\u0644\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0642\\\\u0648\\\\u0627\\\\u0639\\\\u062f.\\\\n\\\\n\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u062a\\\\u0646\\\\u0638\\\\u0645 \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0627\\\\u0645 \\\\u0627\\\\u0644\\\\u062e\\\\u062f\\\\u0645\\\\u0629.\\",\\"en\\":\\"## Terms & Conditions\\\\n\\\\n- Welcome to PS.\\\\n- Use the app according to these rules.\\\\n\\\\nThese terms govern use of the service.\\"}"', 'draft', 2, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(3, 1, '"{\\"ar\\":\\"\\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\",\\"en\\":\\"Terms & Conditions\\"}"', '"{\\"ar\\":\\"## \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u0648\\\\u0627\\\\u0644\\\\u0623\\\\u062d\\\\u0643\\\\u0627\\\\u0645\\\\n\\\\n- \\\\u0645\\\\u0631\\\\u062d\\\\u0628\\\\u064b\\\\u0627 \\\\u0628\\\\u0643\\\\u0645 \\\\u0641\\\\u064a PS.\\\\n- \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0645 \\\\u0627\\\\u0644\\\\u062a\\\\u0637\\\\u0628\\\\u064a\\\\u0642 \\\\u0648\\\\u0641\\\\u0642\\\\u064b\\\\u0627 \\\\u0644\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0642\\\\u0648\\\\u0627\\\\u0639\\\\u062f.\\\\n\\\\n\\\\u0647\\\\u0630\\\\u0647 \\\\u0627\\\\u0644\\\\u0634\\\\u0631\\\\u0648\\\\u0637 \\\\u062a\\\\u0646\\\\u0638\\\\u0645 \\\\u0627\\\\u0633\\\\u062a\\\\u062e\\\\u062f\\\\u0627\\\\u0645 \\\\u0627\\\\u0644\\\\u062e\\\\u062f\\\\u0645\\\\u0629.\\",\\"en\\":\\"## Terms & Conditions\\\\n\\\\n- Welcome to PS.\\\\n- Use the app according to these rules.\\\\n\\\\nThese terms govern use of the service.\\"}"', 'published', 3, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(4, 2, '"{\\"ar\\":\\"\\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\",\\"en\\":\\"Privacy Policy\\"}"', '"{\\"ar\\":\\"## \\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\\\n\\\\n- \\\\u0646\\\\u062d\\\\u0646 \\\\u0646\\\\u062d\\\\u062a\\\\u0631\\\\u0645 \\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u062a\\\\u0643.\\\\n- \\\\u0644\\\\u0627 \\\\u0646\\\\u0642\\\\u0648\\\\u0645 \\\\u0628\\\\u0628\\\\u064a\\\\u0639 \\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u0627\\\\u0646\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u0634\\\\u062e\\\\u0635\\\\u064a\\\\u0629.\\\\n\\\\n\\\\u0627\\\\u062a\\\\u0635\\\\u0644 \\\\u0628\\\\u0627\\\\u0644\\\\u062f\\\\u0639\\\\u0645 \\\\u0644\\\\u0637\\\\u0644\\\\u0628\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629.\\",\\"en\\":\\"## Privacy Policy\\\\n\\\\n- We respect your privacy.\\\\n- We do not sell personal data.\\\\n\\\\nContact support for privacy requests.\\"}"', 'draft', 1, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(5, 2, '"{\\"ar\\":\\"\\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\",\\"en\\":\\"Privacy Policy\\"}"', '"{\\"ar\\":\\"## \\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\\\n\\\\n- \\\\u0646\\\\u062d\\\\u0646 \\\\u0646\\\\u062d\\\\u062a\\\\u0631\\\\u0645 \\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u062a\\\\u0643.\\\\n- \\\\u0644\\\\u0627 \\\\u0646\\\\u0642\\\\u0648\\\\u0645 \\\\u0628\\\\u0628\\\\u064a\\\\u0639 \\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u0627\\\\u0646\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u0634\\\\u062e\\\\u0635\\\\u064a\\\\u0629.\\\\n\\\\n\\\\u0627\\\\u062a\\\\u0635\\\\u0644 \\\\u0628\\\\u0627\\\\u0644\\\\u062f\\\\u0639\\\\u0645 \\\\u0644\\\\u0637\\\\u0644\\\\u0628\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629.\\",\\"en\\":\\"## Privacy Policy\\\\n\\\\n- We respect your privacy.\\\\n- We do not sell personal data.\\\\n\\\\nContact support for privacy requests.\\"}"', 'draft', 2, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(6, 2, '"{\\"ar\\":\\"\\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\",\\"en\\":\\"Privacy Policy\\"}"', '"{\\"ar\\":\\"## \\\\u0633\\\\u064a\\\\u0627\\\\u0633\\\\u0629 \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629\\\\n\\\\n- \\\\u0646\\\\u062d\\\\u0646 \\\\u0646\\\\u062d\\\\u062a\\\\u0631\\\\u0645 \\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u062a\\\\u0643.\\\\n- \\\\u0644\\\\u0627 \\\\u0646\\\\u0642\\\\u0648\\\\u0645 \\\\u0628\\\\u0628\\\\u064a\\\\u0639 \\\\u0627\\\\u0644\\\\u0628\\\\u064a\\\\u0627\\\\u0646\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u0634\\\\u062e\\\\u0635\\\\u064a\\\\u0629.\\\\n\\\\n\\\\u0627\\\\u062a\\\\u0635\\\\u0644 \\\\u0628\\\\u0627\\\\u0644\\\\u062f\\\\u0639\\\\u0645 \\\\u0644\\\\u0637\\\\u0644\\\\u0628\\\\u0627\\\\u062a \\\\u0627\\\\u0644\\\\u062e\\\\u0635\\\\u0648\\\\u0635\\\\u064a\\\\u0629.\\",\\"en\\":\\"## Privacy Policy\\\\n\\\\n- We respect your privacy.\\\\n- We do not sell personal data.\\\\n\\\\nContact support for privacy requests.\\"}"', 'published', 3, 1, '2026-01-25 01:31:37', '2026-01-25 01:31:37');

-- Dumping structure for table ps-database.messages
DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint unsigned NOT NULL,
  `sender_type` enum('user','vendor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `message_type` enum('text','image','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `attachment_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_conversation_id_index` (`conversation_id`),
  KEY `messages_sender_type_sender_id_index` (`sender_type`,`sender_id`),
  CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.messages: ~15 rows (approximately)
INSERT INTO `messages` (`id`, `conversation_id`, `sender_type`, `sender_id`, `body`, `message_type`, `attachment_path`, `read_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'user', 1, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-24 06:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(2, 1, 'user', 1, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-24 21:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(3, 1, 'vendor', 1, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-22 21:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(4, 1, 'vendor', 7, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-22 11:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(5, 2, 'user', 18, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-24 08:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(6, 2, 'vendor', 18, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-23 10:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(7, 2, 'vendor', 18, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(8, 3, 'vendor', 16, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-22 17:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(9, 3, 'vendor', 16, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(10, 3, 'vendor', 16, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-23 02:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(11, 3, 'user', 16, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(12, 3, 'user', 3, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-23 07:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(13, 4, 'user', 23, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(14, 4, 'vendor', 3, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, '2026-01-24 00:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(15, 4, 'vendor', 23, 'Hello, I am interested in your products. Can you provide more details?', 'text', NULL, NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37');

-- Dumping structure for table ps-database.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.migrations: ~50 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '0001_01_01_000003_create_otps_table', 1),
	(5, '0001_01_01_000004_create_addresses_table', 1),
	(6, '2025_01_24_000000_create_fcm_tokens_table', 1),
	(7, '2026_01_04_000000_create_admins_table', 1),
	(8, '2026_01_04_171047_create_personal_access_tokens_table', 1),
	(9, '2026_01_05_000000_create_categories_table', 1),
	(10, '2026_01_05_000002_create_admins_table', 1),
	(11, '2026_01_06_000000_create_brands_table', 1),
	(12, '2026_01_07_000000_create_admin_activity_logs_table', 1),
	(13, '2026_01_07_000000_create_legal_pages_table', 1),
	(14, '2026_01_07_000001_create_legal_page_revisions_table', 1),
	(15, '2026_01_07_120000_create_banks_table', 1),
	(16, '2026_01_07_123000_create_vendor_packages_table', 1),
	(17, '2026_01_07_123100_create_vendor_package_assignments_table', 1),
	(18, '2026_01_07_124000_create_vendors_table', 1),
	(19, '2026_01_07_124100_create_vendor_business_profiles_table', 1),
	(20, '2026_01_07_124200_create_vendor_documents_table', 1),
	(21, '2026_01_07_124300_create_vendor_payment_selections_table', 1),
	(22, '2026_01_15_120000_create_vendor_stories_table', 1),
	(23, '2026_01_15_120100_create_vendor_story_views_table', 1),
	(24, '2026_01_15_200000_update_vendors_table_for_auth', 1),
	(25, '2026_01_15_210000_add_onboarding_fields_to_vendors_table', 1),
	(26, '2026_01_15_210001_add_commercial_fields_to_vendor_business_profiles_table', 1),
	(27, '2026_01_15_210002_add_features_to_vendor_packages_table', 1),
	(28, '2026_01_15_210003_create_vendor_otps_table', 1),
	(29, '2026_01_15_210004_create_brand_vendor_pivot_table', 1),
	(30, '2026_01_15_210005_create_payment_methods_table', 1),
	(31, '2026_01_15_210006_create_vendor_payment_attempts_table', 1),
	(32, '2026_01_16_000000_add_reset_token_to_vendor_otps_table', 1),
	(33, '2026_01_16_235959_create_piece_types_genders_sizes_colors_tables', 1),
	(34, '2026_01_17_000000_create_vendor_follows_table', 1),
	(35, '2026_01_17_000000_create_vendor_items_table', 1),
	(36, '2026_01_17_000001_create_vendor_item_images_table', 1),
	(37, '2026_01_17_000002_create_piece_types_genders_sizes_colors_tables', 1),
	(38, '2026_01_17_010000_create_carts_and_cart_items_tables', 1),
	(39, '2026_01_17_120000_create_vendor_notifications_table', 1),
	(40, '2026_01_17_121000_add_approval_fields_to_vendor_items', 1),
	(41, '2026_01_17_131500_create_vendor_shipping_details_table', 1),
	(42, '2026_01_17_133000_create_user_notifications_table', 1),
	(43, '2026_01_17_140000_create_special_orders_table', 1),
	(44, '2026_01_17_150000_create_orders_and_order_items_tables', 1),
	(45, '2026_01_17_151000_update_carts_add_checkout_fields', 1),
	(46, '2026_01_17_160000_create_user_favorites_table', 1),
	(47, '2026_01_17_170000_create_conversations_table', 1),
	(48, '2026_01_17_170500_create_messages_table', 1),
	(49, '2026_01_24_000000_create_special_order_vendors_table', 1),
	(50, '2026_01_24_add_photos_to_special_orders', 1);

-- Dumping structure for table ps-database.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `address_id` bigint unsigned DEFAULT NULL,
  `payment_method_id` bigint unsigned DEFAULT NULL,
  `subtotal` bigint NOT NULL DEFAULT '0',
  `shipping_fee` bigint NOT NULL DEFAULT '0',
  `vat` bigint NOT NULL DEFAULT '0',
  `total` bigint NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_vendor_id_foreign` (`vendor_id`),
  KEY `orders_address_id_foreign` (`address_id`),
  KEY `orders_payment_method_id_foreign` (`payment_method_id`),
  CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.orders: ~11 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `vendor_id`, `address_id`, `payment_method_id`, `subtotal`, `shipping_fee`, `vat`, `total`, `status`, `note`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 5, 96630, 3725, 14494, 114849, 'delivered', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(2, 1, 23, 1, 5, 86976, 3492, 13046, 103514, 'delivered', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(3, 2, 3, 2, 4, 27370, 3430, 4105, 34905, 'cancelled', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(4, 2, 4, 2, 4, 71798, 4083, 10769, 86650, 'cancelled', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(5, 3, 3, 5, 4, 125664, 3556, 18849, 148069, 'confirmed', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(6, 3, 12, 5, 4, 51915, 2619, 7787, 62321, 'confirmed', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(7, 3, 22, 5, 4, 81978, 2345, 12296, 96619, 'delivered', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(8, 4, 21, 6, 4, 58545, 3421, 8781, 70747, 'shipped', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(9, 4, 4, 6, 4, 70078, 1904, 10511, 82493, 'cancelled', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(10, 5, 21, 7, 4, 58466, 3398, 8769, 70633, 'confirmed', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(11, 5, 4, 7, 4, 47606, 4384, 7140, 59130, 'pending', 'Customer notes for order', '2026-01-25 01:31:38', '2026-01-25 01:31:38');

-- Dumping structure for table ps-database.order_items
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `vendor_item_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `unit_price` bigint NOT NULL DEFAULT '0',
  `line_total` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_vendor_item_id_foreign` (`vendor_item_id`),
  KEY `order_items_vendor_id_foreign` (`vendor_id`),
  KEY `order_items_order_id_index` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_vendor_item_id_foreign` FOREIGN KEY (`vendor_item_id`) REFERENCES `vendor_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.order_items: ~20 rows (approximately)
INSERT INTO `order_items` (`id`, `order_id`, `vendor_item_id`, `vendor_id`, `quantity`, `unit_price`, `line_total`, `created_at`, `updated_at`) VALUES
	(1, 1, 49, 11, 3, 32210, 96630, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(2, 2, 14, 4, 3, 23803, 71409, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(3, 2, 5, 1, 3, 5189, 15567, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(4, 3, 81, 17, 1, 15265, 15265, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(5, 3, 55, 12, 1, 12105, 12105, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(6, 4, 7, 2, 1, 24378, 24378, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(7, 4, 45, 10, 1, 47420, 47420, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(8, 5, 96, 21, 2, 43386, 86772, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(9, 5, 85, 18, 2, 19446, 38892, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(10, 6, 21, 5, 2, 10383, 20766, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(11, 6, 21, 5, 3, 10383, 31149, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(12, 7, 51, 11, 2, 23209, 46418, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(13, 7, 107, 23, 1, 35560, 35560, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(14, 8, 28, 6, 3, 19515, 58545, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(15, 9, 50, 11, 2, 15962, 31924, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(16, 9, 58, 12, 3, 12718, 38154, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(17, 10, 80, 17, 1, 22280, 22280, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(18, 10, 15, 4, 2, 5101, 10202, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(19, 10, 59, 12, 2, 12992, 25984, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(20, 11, 14, 4, 2, 23803, 47606, '2026-01-25 01:31:38', '2026-01-25 01:31:38');

-- Dumping structure for table ps-database.otps
DROP TABLE IF EXISTS `otps`;
CREATE TABLE IF NOT EXISTS `otps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NOT NULL,
  `resend_available_at` timestamp NULL DEFAULT NULL,
  `attempts_count` int unsigned NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `reset_token_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `otps_country_code_phone_index` (`country_code`,`phone`),
  KEY `otps_purpose_index` (`purpose`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.otps: ~5 rows (approximately)
INSERT INTO `otps` (`id`, `country_code`, `phone`, `purpose`, `code_hash`, `expires_at`, `resend_available_at`, `attempts_count`, `verified_at`, `reset_token_hash`, `created_at`, `updated_at`) VALUES
	(1, '+966', '501234567', 'REGISTER_VERIFY', '$2y$12$BZ1NQNEFE9kozWxqdmSD/.NBpQBYFv8/Haxiw5t2o8AY7A0c5svHa', '2026-01-25 01:41:19', NULL, 0, NULL, NULL, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(2, '+966', '502345678', 'PASSWORD_RESET', '$2y$12$GDWAcxHBcww0lnAehO3LBOsIyfGdUlPyK6IlnBFX0vmFPtfbpfz0O', '2026-01-25 01:41:19', NULL, 0, NULL, NULL, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(3, '+966', '503456789', 'REGISTER_VERIFY', '$2y$12$tYE/kkJ/dJmYzvUHXM2VBed7KuQOW0BjGWijhGaMCnksnEC0YPnyW', '2026-01-25 01:41:19', NULL, 0, NULL, NULL, '2026-01-25 01:31:19', '2026-01-25 01:31:19'),
	(4, '+966', '504567890', 'PASSWORD_RESET', '$2y$12$eamKRdiOFkKWq1fD9NA/x.KOYi4FQ.COn0gH8X2F3r8gSmVH6Ke6C', '2026-01-25 01:41:20', NULL, 0, NULL, NULL, '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(5, '+966', '505678901', 'REGISTER_VERIFY', '$2y$12$qafM3oAbXh/jSpWyLDOt7O3wj383Iu3srIG3lZyBYqG3s99MgYT9S', '2026-01-25 01:41:20', NULL, 0, NULL, NULL, '2026-01-25 01:31:20', '2026-01-25 01:31:20');

-- Dumping structure for table ps-database.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table ps-database.payment_methods
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` json NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_methods_key_unique` (`key`),
  KEY `payment_methods_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.payment_methods: ~5 rows (approximately)
INSERT INTO `payment_methods` (`id`, `key`, `name`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'apple_pay', '{"ar": "آبل باي", "en": "Apple Pay"}', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'mada', '{"ar": "مدى", "en": "Mada"}', 'active', 1, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'tamara', '{"ar": "تمارا", "en": "Tamara"}', 'active', 2, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'tabby', '{"ar": "تابي", "en": "Tabby"}', 'active', 3, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'paymob', '{"ar": "بايموب", "en": "Paymob"}', 'active', 4, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table ps-database.piece_types
DROP TABLE IF EXISTS `piece_types`;
CREATE TABLE IF NOT EXISTS `piece_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.piece_types: ~18 rows (approximately)
INSERT INTO `piece_types` (`id`, `name_en`, `name_ar`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'T-Shirt', 'T-Shirt', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'Shirt', 'Shirt', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'Pants', 'Pants', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'Dress', 'Dress', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'Jacket', 'Jacket', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(6, 'Sweater', 'Sweater', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(7, 'Skirt', 'Skirt', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(8, 'Shorts', 'Shorts', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(9, 'Coat', 'Coat', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(10, 'Blouse', 'Blouse', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(11, 'Jeans', 'Jeans', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(12, 'Hoodie', 'Hoodie', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(13, 'Blazer', 'Blazer', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(14, 'Cardigan', 'Cardigan', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(15, 'Vest', 'Vest', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(16, 'Leggings', 'Leggings', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(17, 'Suit', 'Suit', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(18, 'Polo', 'Polo', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.sessions: ~0 rows (approximately)

-- Dumping structure for table ps-database.sizes
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.sizes: ~15 rows (approximately)
INSERT INTO `sizes` (`id`, `name_en`, `name_ar`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 'XS', 'XS', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'S', 'S', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(3, 'M', 'M', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(4, 'L', 'L', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(5, 'XL', 'XL', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(6, 'XXL', 'XXL', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(7, 'XXXL', 'XXXL', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(8, '28', '28', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(9, '30', '30', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(10, '32', '32', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(11, '34', '34', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(12, '36', '36', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(13, '38', '38', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(14, '40', '40', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(15, '42', '42', 'active', 0, '2026-01-25 01:31:18', '2026-01-25 01:31:18');

-- Dumping structure for table ps-database.special_orders
DROP TABLE IF EXISTS `special_orders`;
CREATE TABLE IF NOT EXISTS `special_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `piece_type_id` bigint unsigned NOT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `gender_id` bigint unsigned DEFAULT NULL,
  `size_id` bigint unsigned DEFAULT NULL,
  `color_id` bigint unsigned DEFAULT NULL,
  `location_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `urgent` tinyint(1) NOT NULL DEFAULT '0',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photos` json DEFAULT NULL,
  `status` enum('pending','accepted','rejected','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `special_orders_category_id_foreign` (`category_id`),
  KEY `special_orders_piece_type_id_foreign` (`piece_type_id`),
  KEY `special_orders_brand_id_foreign` (`brand_id`),
  KEY `special_orders_gender_id_foreign` (`gender_id`),
  KEY `special_orders_size_id_foreign` (`size_id`),
  KEY `special_orders_color_id_foreign` (`color_id`),
  KEY `special_orders_user_id_index` (`user_id`),
  KEY `special_orders_vendor_id_index` (`vendor_id`),
  KEY `special_orders_status_index` (`status`),
  KEY `special_orders_created_at_index` (`created_at`),
  CONSTRAINT `special_orders_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `special_orders_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `special_orders_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `special_orders_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  CONSTRAINT `special_orders_piece_type_id_foreign` FOREIGN KEY (`piece_type_id`) REFERENCES `piece_types` (`id`),
  CONSTRAINT `special_orders_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `special_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `special_orders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.special_orders: ~4 rows (approximately)
INSERT INTO `special_orders` (`id`, `user_id`, `vendor_id`, `category_id`, `piece_type_id`, `brand_id`, `gender_id`, `size_id`, `color_id`, `location_text`, `lat`, `lng`, `details`, `urgent`, `image_path`, `photos`, `status`, `rejection_reason`, `created_at`, `updated_at`) VALUES
	(1, 1, 20, 3, 3, NULL, NULL, NULL, NULL, 'Riyadh, Saudi Arabia', 24.7225000, 46.6848000, 'I would like a custom made item with specific requirements. Please provide a quotation.', 0, NULL, NULL, 'accepted', NULL, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(2, 2, 15, 1, 1, NULL, NULL, NULL, NULL, 'Riyadh, Saudi Arabia', 24.7231000, 46.6739000, 'I would like a custom made item with specific requirements. Please provide a quotation.', 0, NULL, NULL, 'pending', NULL, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(3, 3, 7, 1, 3, NULL, NULL, NULL, NULL, 'Riyadh, Saudi Arabia', 24.7117000, 46.6705000, 'I would like a custom made item with specific requirements. Please provide a quotation.', 0, NULL, NULL, 'pending', NULL, '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(4, 3, 4, 2, 1, NULL, NULL, NULL, NULL, 'Riyadh, Saudi Arabia', 24.7050000, 46.6679000, 'I would like a custom made item with specific requirements. Please provide a quotation.', 0, NULL, NULL, 'cancelled', NULL, '2026-01-25 01:31:38', '2026-01-25 01:31:38');

-- Dumping structure for table ps-database.special_order_vendors
DROP TABLE IF EXISTS `special_order_vendors`;
CREATE TABLE IF NOT EXISTS `special_order_vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `special_order_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `special_order_vendors_special_order_id_vendor_id_unique` (`special_order_id`,`vendor_id`),
  KEY `special_order_vendors_vendor_id_index` (`vendor_id`),
  KEY `special_order_vendors_special_order_id_index` (`special_order_id`),
  CONSTRAINT `special_order_vendors_special_order_id_foreign` FOREIGN KEY (`special_order_id`) REFERENCES `special_orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `special_order_vendors_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.special_order_vendors: ~0 rows (approximately)

-- Dumping structure for table ps-database.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+966',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_country_code_phone_unique` (`country_code`,`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_country_code_phone_index` (`country_code`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.users: ~28 rows (approximately)
INSERT INTO `users` (`id`, `full_name`, `country_code`, `phone`, `email`, `phone_verified_at`, `password`, `location_text`, `lat`, `lng`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Test User', '+966', '500000000', 'test@example.com', NULL, '$2y$12$2DlIHPDLhMl7kBfjEwytduBA7ePRD9XRsJH52NkL55EXYaeMUCiuS', NULL, NULL, NULL, NULL, '2026-01-25 01:31:18', '2026-01-25 01:31:18'),
	(2, 'Ahmed Al-Saud', '+966', '512345678', 'ahmed@example.test', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'bAxdja8sTN', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(3, 'Fatimah Al-Harbi', '+966', '512345679', 'fatimah@example.test', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'vFqTHC3a4L', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(4, 'Markus Flatley', '+966', '593125543', 'mikel89@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'iljr4yAVDR', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(5, 'Roselyn Wyman', '+966', '593368357', 'cmonahan@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'eR7v4U05P2', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(6, 'Alda Satterfield', '+966', '500327387', 'jamir.hammes@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'Oj40uOlYLn', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(7, 'Pascale Hettinger', '+966', '543966088', 'billy.heaney@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'FSQwM9jqKT', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(8, 'Lenore Yundt', '+966', '595879378', 'ijakubowski@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'UJaWGDORtt', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(9, 'Prof. Roger Baumbach III', '+966', '594471609', 'mlowe@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'tBBBchEj4k', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(10, 'Xzavier Hermann', '+966', '512636997', 'darrick.cruickshank@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'so6ARAHUQg', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(11, 'Ceasar Hodkiewicz', '+966', '569721731', 'halvorson.madge@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'wpaiB6rY7s', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(12, 'Amina Langworth', '+966', '512056360', 'chester.frami@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'bFqnW5PwFv', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(13, 'William Zulauf', '+966', '529578668', 'akemmer@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'G7PoVcUKgo', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(14, 'Bulah Robel', '+966', '506380932', 'adams.naomi@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'EL4hHR1WLc', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(15, 'Miss Cordie Sawayn', '+966', '577993962', 'mbergnaum@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'XFmZB0sE5U', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(16, 'Daron Bergnaum', '+966', '513375508', 'ruecker.darwin@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'A8RFCv8lCv', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(17, 'Dannie Kertzmann', '+966', '551541292', 'von.wallace@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'tBGMlqWHjF', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(18, 'Cleo Hamill', '+966', '524548601', 'sarina37@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'U4KPqV7V7V', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(19, 'Summer Kuhn', '+966', '572741275', 'shaun.mohr@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'Z4nSioetYK', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(20, 'Rodrick Upton', '+966', '550118977', 'kpaucek@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'PN1bXFwpJL', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(21, 'Elmore Okuneva', '+966', '532953112', 'retta.rogahn@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'oeqSTz1kvI', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(22, 'Dr. Maximo Morar', '+966', '591822946', 'zmurray@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'Slxb3HjI0o', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(23, 'Julien Kutch', '+966', '511929126', 'laurence60@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'BPkqH81QNu', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(24, 'Prof. Antoinette Kshlerin', '+966', '556099615', 'powlowski.trevor@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'nX3097IP9M', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(25, 'Columbus Nader', '+966', '556038572', 'dooley.dayne@example.com', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'OAgbxTPJlU', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(26, 'Carleton White', '+966', '549679179', 'douglas93@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'NweEpQPoip', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(27, 'Mrs. Emilie Terry PhD', '+966', '545527225', 'blick.salma@example.org', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'JG9bwEno3y', '2026-01-25 01:31:20', '2026-01-25 01:31:20'),
	(28, 'Turner Block', '+966', '516775996', 'rodriguez.nasir@example.net', NULL, '$2y$12$XA0wWeMudzYyyh2upj3HaeAV5TNssvUUJl/BFZVtsVbdNX2OsGizG', NULL, NULL, NULL, 'oZwxELilIO', '2026-01-25 01:31:20', '2026-01-25 01:31:20');

-- Dumping structure for table ps-database.user_favorites
DROP TABLE IF EXISTS `user_favorites`;
CREATE TABLE IF NOT EXISTS `user_favorites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_favorites_user_id_product_id_unique` (`user_id`,`product_id`),
  KEY `user_favorites_user_id_index` (`user_id`),
  KEY `user_favorites_product_id_index` (`product_id`),
  CONSTRAINT `user_favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `vendor_items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.user_favorites: ~98 rows (approximately)
INSERT INTO `user_favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 21, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(2, 1, 39, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(3, 1, 59, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(4, 1, 80, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(5, 1, 85, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(6, 2, 21, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(7, 2, 58, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(8, 2, 59, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(9, 2, 64, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(10, 2, 88, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(11, 3, 15, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(12, 3, 48, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(13, 4, 18, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(14, 4, 48, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(15, 4, 50, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(16, 5, 7, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(17, 5, 66, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(18, 6, 5, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(19, 6, 7, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(20, 6, 42, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(21, 6, 45, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(22, 6, 58, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(23, 7, 3, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(24, 7, 18, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(25, 7, 50, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(26, 7, 101, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(27, 8, 15, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(28, 8, 85, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(29, 8, 101, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(30, 9, 28, '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(31, 9, 42, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(32, 9, 48, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(33, 9, 100, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(34, 10, 15, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(35, 10, 88, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(36, 11, 14, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(37, 11, 64, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(38, 11, 100, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(39, 12, 7, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(40, 12, 96, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(41, 13, 5, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(42, 13, 39, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(43, 13, 55, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(44, 13, 80, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(45, 13, 81, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(46, 14, 14, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(47, 14, 48, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(48, 14, 55, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(49, 14, 100, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(50, 15, 5, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(51, 15, 14, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(52, 15, 21, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(53, 15, 41, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(54, 16, 18, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(55, 16, 87, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(56, 17, 51, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(57, 17, 101, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(58, 18, 18, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(59, 18, 39, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(60, 18, 53, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(61, 18, 58, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(62, 19, 96, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(63, 19, 102, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(64, 20, 51, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(65, 20, 59, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(66, 20, 73, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(67, 20, 85, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(68, 20, 94, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(69, 21, 48, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(70, 21, 66, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(71, 21, 73, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(72, 21, 81, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(73, 21, 100, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(74, 22, 59, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(75, 22, 81, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(76, 23, 10, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(77, 23, 49, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(78, 23, 102, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(79, 24, 10, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(80, 24, 66, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(81, 24, 87, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(82, 24, 96, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(83, 25, 5, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(84, 25, 7, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(85, 25, 32, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(86, 25, 42, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(87, 25, 107, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(88, 26, 76, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(89, 26, 80, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(90, 26, 94, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(91, 27, 11, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(92, 27, 16, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(93, 27, 28, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(94, 27, 50, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(95, 27, 88, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(96, 28, 7, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(97, 28, 66, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(98, 28, 83, '2026-01-25 01:31:36', '2026-01-25 01:31:36');

-- Dumping structure for table ps-database.user_notifications
DROP TABLE IF EXISTS `user_notifications`;
CREATE TABLE IF NOT EXISTS `user_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` json NOT NULL,
  `body` json NOT NULL,
  `data` json DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notifications_user_id_index` (`user_id`),
  KEY `user_notifications_user_id_read_at_index` (`user_id`,`read_at`),
  KEY `user_notifications_user_id_created_at_index` (`user_id`,`created_at`),
  CONSTRAINT `user_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.user_notifications: ~94 rows (approximately)
INSERT INTO `user_notifications` (`id`, `user_id`, `type`, `icon`, `title`, `body`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'system', '🔔', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-24 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(2, 1, 'promotion', '🎉', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(3, 1, 'order', '📦', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(4, 1, 'promotion', '🎉', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(5, 2, 'review', '⭐', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(6, 2, 'message', '💬', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(7, 2, 'promotion', '🎉', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(8, 2, 'order', '📦', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(9, 3, 'review', '⭐', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(10, 3, 'order', '📦', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(11, 3, 'promotion', '🎉', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(12, 3, 'system', '🔔', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(13, 4, 'promotion', '🎉', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(14, 4, 'promotion', '🎉', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-25 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(15, 4, 'review', '⭐', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-24 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(16, 5, 'order', '📦', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(17, 5, 'order', '📦', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(18, 5, 'review', '⭐', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(19, 6, 'promotion', '🎉', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(20, 6, 'system', '🔔', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(21, 7, 'review', '⭐', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(22, 7, 'review', '⭐', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(23, 7, 'promotion', '🎉', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(24, 8, 'order', '📦', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(25, 8, 'promotion', '🎉', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(26, 8, 'review', '⭐', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(27, 9, 'order', '📦', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(28, 9, 'order', '📦', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(29, 9, 'order', '📦', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(30, 9, 'order', '📦', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(31, 10, 'review', '⭐', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-25 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(32, 10, 'system', '🔔', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(33, 10, 'order', '📦', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(34, 11, 'order', '📦', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:36', '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(35, 11, 'promotion', '🎉', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(36, 11, 'review', '⭐', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:36', '2026-01-25 01:31:36'),
	(37, 11, 'order', '📦', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(38, 12, 'message', '💬', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(39, 12, 'promotion', '🎉', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(40, 12, 'review', '⭐', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(41, 13, 'message', '💬', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(42, 13, 'review', '⭐', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(43, 14, 'promotion', '🎉', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(44, 14, 'order', '📦', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(45, 14, 'review', '⭐', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(46, 14, 'message', '💬', '"\\"Payment Received\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(47, 15, 'review', '⭐', '"\\"Payment Received\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(48, 15, 'promotion', '🎉', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(49, 15, 'message', '💬', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(50, 15, 'order', '📦', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(51, 16, 'message', '💬', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(52, 16, 'order', '📦', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(53, 16, 'system', '🔔', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(54, 17, 'system', '🔔', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(55, 17, 'system', '🔔', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(56, 17, 'system', '🔔', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(57, 18, 'review', '⭐', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(58, 18, 'promotion', '🎉', '"\\"Review Request\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(59, 18, 'message', '💬', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(60, 19, 'review', '⭐', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(61, 19, 'review', '⭐', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(62, 19, 'order', '📦', '"\\"Payment Received\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(63, 20, 'system', '🔔', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(64, 20, 'message', '💬', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-25 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(65, 20, 'order', '📦', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(66, 20, 'promotion', '🎉', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(67, 21, 'system', '🔔', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(68, 21, 'message', '💬', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(69, 21, 'message', '💬', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-23 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(70, 22, 'promotion', '🎉', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(71, 22, 'review', '⭐', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(72, 22, 'system', '🔔', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(73, 23, 'promotion', '🎉', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(74, 23, 'system', '🔔', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(75, 23, 'order', '📦', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(76, 23, 'promotion', '🎉', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(77, 24, 'system', '🔔', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(78, 24, 'system', '🔔', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-25 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(79, 24, 'order', '📦', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(80, 24, 'order', '📦', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-21 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(81, 25, 'system', '🔔', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(82, 25, 'message', '💬', '"\\"Inventory Low\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(83, 25, 'system', '🔔', '"\\"Payment Received\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-20 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(84, 25, 'review', '⭐', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(85, 25, 'system', '🔔', '"\\"Promotional Offer\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-25 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(86, 26, 'message', '💬', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(87, 26, 'promotion', '🎉', '"\\"New Message\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(88, 26, 'promotion', '🎉', '"\\"Return Initiated\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(89, 26, 'order', '📦', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-22 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(90, 27, 'review', '⭐', '"\\"Item Shipped\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(91, 27, 'message', '💬', '"\\"Order Confirmed\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(92, 28, 'message', '💬', '"\\"Price Drop Alert\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-18 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(93, 28, 'review', '⭐', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', NULL, '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(94, 28, 'system', '🔔', '"\\"Delivery Update\\""', '"\\"You have a new notification. Click to view details.\\""', '"{\\"url\\":\\"\\\\/notifications\\"}"', '2026-01-19 01:31:37', '2026-01-25 01:31:37', '2026-01-25 01:31:37');

-- Dumping structure for table ps-database.vendors
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `onboarding_step` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `otp_last_sent_at` timestamp NULL DEFAULT NULL,
  `otp_locked_until` timestamp NULL DEFAULT NULL,
  `otp_attempts` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_phone_unique` (`phone`),
  UNIQUE KEY `vendors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendors: ~23 rows (approximately)
INSERT INTO `vendors` (`id`, `full_name`, `name`, `email`, `phone`, `second_phone`, `whatsapp_phone`, `bio`, `avatar_path`, `avatar`, `location_text`, `national_address`, `lat`, `lng`, `national_id`, `password`, `status`, `onboarding_step`, `rejection_reason`, `email_verified_at`, `phone_verified_at`, `otp_last_sent_at`, `otp_locked_until`, `otp_attempts`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Carter, Beier and Bednar 1', 'vendor01@ps.test', '+966543478045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$2cChcB4QhjvXjMGepHiciecxt/LOhPBY/KFQjivI3SjihKD5PCQ/W', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(2, NULL, 'Mitchell-Lang 2', 'vendor02@ps.test', '+966573440854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$kvzOvv61CdTWspqAsgl.8.cx4HInsKJ7Zi3TcI6dpOkX/Wjs2.T2S', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(3, NULL, 'Kling Ltd 3', 'vendor03@ps.test', '+966552953560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$FeWe5S/SyepdCIwaMUQTQ.dnUrbt6FomdA./zdNmxn9Vhj/NiHYbC', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(4, NULL, 'Pfeffer-Koepp 4', 'vendor04@ps.test', '+966538412844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$dzpFslFGMj/qaJBl5bpO7.ku/aIKOX36nJo.p6QxhGRq6sBku86f.', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(5, NULL, 'Beatty PLC 5', 'vendor05@ps.test', '+966539162945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$rQ1zwTDpoVOx8YFXwLHjY.T3P0jjvrSW1SzKjkBavp/KYboEDu8Ae', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(6, NULL, 'Grady-Brown 6', 'vendor06@ps.test', '+966595674336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$Q/ksh5YFJUXgNgSdJfx.j.Eqxq6wKy1jDZYJBSyMdIVZab1MbVrse', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(7, NULL, 'Turner-Lynch 7', 'vendor07@ps.test', '+966559663927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$wMIMHJXaThpL6QhvVOF3Pu43EGEw2SKcTW4R2gBVP/fINQlSdx2bq', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(8, NULL, 'Carter Group 8', 'vendor08@ps.test', '+966544734572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$CFn7/3.aJxbo/8H8l9UoA.z/g7y7nvjCLYj1yl4k0/dTBSsdJRjhW', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(9, NULL, 'Goyette-Pfeffer 9', 'vendor09@ps.test', '+966522766596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$p0c5MMP1dT9cuvuka5mP8.jTTE0YRAaa0ryyreccwaVKex8rJiavq', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(10, NULL, 'Padberg Group 10', 'vendor10@ps.test', '+966551043558', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$He66LeADqWybC9LBeG.1YO/PS3SK2AyvLURS/Km1QpsGogCHxc7Sa', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(11, NULL, 'Swaniawski, Sawayn and Stanton 11', 'vendor11@ps.test', '+966545289467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$EbACAcydOhwG2fZLoC1Xaumaobh9hxpRHfdITQziAADf7Mv0fi0.u', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(12, NULL, 'Bins, O\'Keefe and Johnson 12', 'vendor12@ps.test', '+966556350799', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$BDK0MXiEgUw75KdpaHneEeonEvDFsP2LspSKZcOEOCcOHvWz39/oi', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(13, NULL, 'Green, O\'Keefe and Hartmann 13', 'vendor13@ps.test', '+966557337683', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$ziN0rerE7qSaUvE1CkVOAengdn7z26Rdt/ggAz0YKrZPFSdqqEfAC', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(14, NULL, 'Lesch, Heidenreich and Hamill 14', 'vendor14@ps.test', '+966532012035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$uJzouama51zc5K.AGqFiv.BxkwcEe8Hb5G.V7/kYuw6lyZ8hetbfm', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(15, NULL, 'Conroy-Hessel 15', 'vendor15@ps.test', '+966560444628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$WzGv4K.K4GzQhv78SwbZjONYpid1Kh5khwxkIody1ZZL85AqhZn0y', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(16, NULL, 'Toy-Tillman 16', 'vendor16@ps.test', '+966520658698', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$df00g1AAUMQfjlhtQqmytON8Pp06uhxkPlxnsM3o1Htd8TVfzHd.C', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(17, NULL, 'Yundt, Wilderman and Batz 17', 'vendor17@ps.test', '+966584197156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$HCWjSr9mxT4q1nYto75QJeRFCaSzTS4eMgpl2oZGYWHCTdSNvPUxi', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(18, NULL, 'Walter Ltd 18', 'vendor18@ps.test', '+966550076834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6iFCmLQ4ZGNfmujpSzBfm.bU8fJaQJrBwc90LqzG4MkhLwiwcHbSC', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(19, NULL, 'Orn, Luettgen and Hilpert 19', 'vendor19@ps.test', '+966598461197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$6z89cEb06z59nEyUKT6UMOftwkX7suupxvpMsDmdsi0pfI61KUauq', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(20, NULL, 'Veum and Sons 20', 'vendor20@ps.test', '+966585915062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$frnrsJ52XqPaUOA3XpGBv.AKm8XXVMTeB75JOhKQnCNKzNey9IYE2', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(21, 'Ahmed Electronics Store', 'Ahmed Electronics', 'ahmed@electronics.sa', '+966500000001', '+966500000002', NULL, 'Best electronics store in Riyadh with 10 years of experience', NULL, NULL, NULL, 'King Fahd Road, Riyadh, Saudi Arabia', 24.71360000, 46.67530000, '1234567890', '$2y$12$yKwMA6yVfwyQ1lugvDh0c.2WJu6hwRJqPtIT/M5USxjjOxXjBuPd.', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:29', '2026-01-25 01:31:29'),
	(22, 'Fatima Fashion Boutique', 'Fatima Fashion', 'fatima@fashion.sa', '+966500000011', NULL, NULL, 'Premium fashion and accessories for women', NULL, NULL, NULL, 'Tahlia Street, Jeddah, Saudi Arabia', 21.48580000, 39.19250000, '9876543210', '$2y$12$ucc.BTY8Y5uL3i7wpUGQSOS.66c11bLyWHxyOqKil70WGmabcwer.', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:29', '2026-01-25 01:31:29'),
	(23, 'Mohammed Tech Shop', 'Mohammed Tech Shop', 'mohammed@techshop.sa', '+966500000021', NULL, NULL, 'Latest gadgets and technology products', NULL, NULL, NULL, 'Al Khobar, Eastern Province, Saudi Arabia', 26.21720000, 50.19710000, '5555555555', '$2y$12$GIYf5/ZN6nzQ/Y51kIOkheceKUVAwp3Wib51xhjGYCB3H9DZI5.W.', 'active', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2026-01-25 01:31:29', '2026-01-25 01:31:29');

-- Dumping structure for table ps-database.vendor_business_profiles
DROP TABLE IF EXISTS `vendor_business_profiles`;
CREATE TABLE IF NOT EXISTS `vendor_business_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `commercial_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` bigint unsigned DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_register_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freelance_doc_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` bigint unsigned DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_terms` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_business_profiles_vendor_id_unique` (`vendor_id`),
  KEY `vendor_business_profiles_bank_id_foreign` (`bank_id`),
  CONSTRAINT `vendor_business_profiles_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_business_profiles_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_business_profiles: ~20 rows (approximately)
INSERT INTO `vendor_business_profiles` (`id`, `vendor_id`, `commercial_name`, `activity_id`, `id_number`, `commercial_register_number`, `freelance_doc_number`, `bank_id`, `bank_account_number`, `id_card_file`, `commercial_file`, `accept_terms`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Carter, Beier and Bednar 1', NULL, 'ID90990971', 'CR-780966', NULL, 7, 'SA024547711330746', NULL, NULL, 0, 'pending', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(2, 2, 'Mitchell-Lang 2', NULL, 'ID14962754', 'CR-690523', NULL, 7, 'SA272530421637110', NULL, NULL, 0, 'pending', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(3, 3, 'Kling Ltd 3', NULL, 'ID46620370', 'CR-909691', NULL, 5, 'SA900025996574322', NULL, NULL, 0, 'pending', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(4, 4, 'Pfeffer-Koepp 4', NULL, 'ID90661493', 'CR-314152', NULL, 10, 'SA449596585046894', NULL, NULL, 0, 'pending', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(5, 5, 'Beatty PLC 5', NULL, 'ID60315391', 'CR-612205', NULL, 9, 'SA679292908890294', NULL, NULL, 0, 'pending', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(6, 6, 'Grady-Brown 6', NULL, 'ID84890832', 'CR-643543', NULL, 5, 'SA490240439581124', NULL, NULL, 0, 'pending', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(7, 7, 'Turner-Lynch 7', NULL, 'ID26865775', 'CR-704592', NULL, 5, 'SA752124552875939', NULL, NULL, 0, 'pending', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(8, 8, 'Carter Group 8', NULL, 'ID94149069', 'CR-595447', NULL, 5, 'SA535860345053275', NULL, NULL, 0, 'pending', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(9, 9, 'Goyette-Pfeffer 9', NULL, 'ID99608219', 'CR-501788', NULL, 10, 'SA422635114931775', NULL, NULL, 0, 'pending', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(10, 10, 'Padberg Group 10', NULL, 'ID32653486', 'CR-885491', NULL, 10, 'SA863850923616355', NULL, NULL, 0, 'pending', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(11, 11, 'Swaniawski, Sawayn and Stanton 11', NULL, 'ID40523625', 'CR-209581', NULL, 2, 'SA371817437472023', NULL, NULL, 0, 'pending', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(12, 12, 'Bins, O\'Keefe and Johnson 12', NULL, 'ID36296453', 'CR-542127', NULL, 9, 'SA208568095713005', NULL, NULL, 0, 'pending', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(13, 13, 'Green, O\'Keefe and Hartmann 13', NULL, 'ID51045211', 'CR-823127', NULL, 4, 'SA684101756860700', NULL, NULL, 0, 'pending', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(14, 14, 'Lesch, Heidenreich and Hamill 14', NULL, 'ID22640909', 'CR-936802', NULL, 4, 'SA614673541610941', NULL, NULL, 0, 'pending', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(15, 15, 'Conroy-Hessel 15', NULL, 'ID64220897', 'CR-179117', NULL, 2, 'SA282685707444005', NULL, NULL, 0, 'pending', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(16, 16, 'Toy-Tillman 16', NULL, 'ID08160482', 'CR-154482', NULL, 3, 'SA362736676457883', NULL, NULL, 0, 'pending', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(17, 17, 'Yundt, Wilderman and Batz 17', NULL, 'ID45395930', 'CR-046794', NULL, 3, 'SA931582966106574', NULL, NULL, 0, 'pending', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(18, 18, 'Walter Ltd 18', NULL, 'ID00481644', 'CR-199378', NULL, 8, 'SA400363014143249', NULL, NULL, 0, 'pending', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(19, 19, 'Orn, Luettgen and Hilpert 19', NULL, 'ID96712679', 'CR-439280', NULL, 3, 'SA379798062663359', NULL, NULL, 0, 'pending', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(20, 20, 'Veum and Sons 20', NULL, 'ID98424551', 'CR-680664', NULL, 10, 'SA959929898722343', NULL, NULL, 0, 'pending', '2026-01-25 01:31:26', '2026-01-25 01:31:26');

-- Dumping structure for table ps-database.vendor_documents
DROP TABLE IF EXISTS `vendor_documents`;
CREATE TABLE IF NOT EXISTS `vendor_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_documents_vendor_id_foreign` (`vendor_id`),
  CONSTRAINT `vendor_documents_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_documents: ~100 rows (approximately)
INSERT INTO `vendor_documents` (`id`, `vendor_id`, `type`, `file_path`, `created_at`, `updated_at`) VALUES
	(1, 1, 'trade_license', 'uploads/vendors/1/trade_license.pdf', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(2, 2, 'trade_license', 'uploads/vendors/2/trade_license.pdf', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(3, 3, 'trade_license', 'uploads/vendors/3/trade_license.pdf', '2026-01-25 01:31:22', '2026-01-25 01:31:22'),
	(4, 4, 'trade_license', 'uploads/vendors/4/trade_license.pdf', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(5, 5, 'trade_license', 'uploads/vendors/5/trade_license.pdf', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(6, 6, 'trade_license', 'uploads/vendors/6/trade_license.pdf', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(7, 7, 'trade_license', 'uploads/vendors/7/trade_license.pdf', '2026-01-25 01:31:23', '2026-01-25 01:31:23'),
	(8, 8, 'trade_license', 'uploads/vendors/8/trade_license.pdf', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(9, 9, 'trade_license', 'uploads/vendors/9/trade_license.pdf', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(10, 10, 'trade_license', 'uploads/vendors/10/trade_license.pdf', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(11, 11, 'trade_license', 'uploads/vendors/11/trade_license.pdf', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(12, 12, 'trade_license', 'uploads/vendors/12/trade_license.pdf', '2026-01-25 01:31:24', '2026-01-25 01:31:24'),
	(13, 13, 'trade_license', 'uploads/vendors/13/trade_license.pdf', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(14, 14, 'trade_license', 'uploads/vendors/14/trade_license.pdf', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(15, 15, 'trade_license', 'uploads/vendors/15/trade_license.pdf', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(16, 16, 'trade_license', 'uploads/vendors/16/trade_license.pdf', '2026-01-25 01:31:25', '2026-01-25 01:31:25'),
	(17, 17, 'trade_license', 'uploads/vendors/17/trade_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(18, 18, 'trade_license', 'uploads/vendors/18/trade_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(19, 19, 'trade_license', 'uploads/vendors/19/trade_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(20, 20, 'trade_license', 'uploads/vendors/20/trade_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(21, 1, 'business_license', 'documents/1/business_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(22, 1, 'tax_certificate', 'documents/1/tax_certificate.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(23, 1, 'company_registration', 'documents/1/company_registration.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(24, 1, 'identification', 'documents/1/identification.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(25, 2, 'business_license', 'documents/2/business_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(26, 2, 'tax_certificate', 'documents/2/tax_certificate.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(27, 2, 'company_registration', 'documents/2/company_registration.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(28, 2, 'identification', 'documents/2/identification.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(29, 3, 'business_license', 'documents/3/business_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(30, 3, 'tax_certificate', 'documents/3/tax_certificate.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(31, 3, 'company_registration', 'documents/3/company_registration.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(32, 3, 'identification', 'documents/3/identification.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(33, 4, 'business_license', 'documents/4/business_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(34, 4, 'tax_certificate', 'documents/4/tax_certificate.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(35, 4, 'company_registration', 'documents/4/company_registration.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(36, 4, 'identification', 'documents/4/identification.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(37, 5, 'business_license', 'documents/5/business_license.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(38, 5, 'tax_certificate', 'documents/5/tax_certificate.pdf', '2026-01-25 01:31:26', '2026-01-25 01:31:26'),
	(39, 5, 'company_registration', 'documents/5/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(40, 5, 'identification', 'documents/5/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(41, 6, 'business_license', 'documents/6/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(42, 6, 'tax_certificate', 'documents/6/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(43, 6, 'company_registration', 'documents/6/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(44, 6, 'identification', 'documents/6/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(45, 7, 'business_license', 'documents/7/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(46, 7, 'tax_certificate', 'documents/7/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(47, 7, 'company_registration', 'documents/7/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(48, 7, 'identification', 'documents/7/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(49, 8, 'business_license', 'documents/8/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(50, 8, 'tax_certificate', 'documents/8/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(51, 8, 'company_registration', 'documents/8/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(52, 8, 'identification', 'documents/8/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(53, 9, 'business_license', 'documents/9/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(54, 9, 'tax_certificate', 'documents/9/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(55, 9, 'company_registration', 'documents/9/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(56, 9, 'identification', 'documents/9/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(57, 10, 'business_license', 'documents/10/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(58, 10, 'tax_certificate', 'documents/10/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(59, 10, 'company_registration', 'documents/10/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(60, 10, 'identification', 'documents/10/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(61, 11, 'business_license', 'documents/11/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(62, 11, 'tax_certificate', 'documents/11/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(63, 11, 'company_registration', 'documents/11/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(64, 11, 'identification', 'documents/11/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(65, 12, 'business_license', 'documents/12/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(66, 12, 'tax_certificate', 'documents/12/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(67, 12, 'company_registration', 'documents/12/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(68, 12, 'identification', 'documents/12/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(69, 13, 'business_license', 'documents/13/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(70, 13, 'tax_certificate', 'documents/13/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(71, 13, 'company_registration', 'documents/13/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(72, 13, 'identification', 'documents/13/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(73, 14, 'business_license', 'documents/14/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(74, 14, 'tax_certificate', 'documents/14/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(75, 14, 'company_registration', 'documents/14/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(76, 14, 'identification', 'documents/14/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(77, 15, 'business_license', 'documents/15/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(78, 15, 'tax_certificate', 'documents/15/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(79, 15, 'company_registration', 'documents/15/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(80, 15, 'identification', 'documents/15/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(81, 16, 'business_license', 'documents/16/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(82, 16, 'tax_certificate', 'documents/16/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(83, 16, 'company_registration', 'documents/16/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(84, 16, 'identification', 'documents/16/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(85, 17, 'business_license', 'documents/17/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(86, 17, 'tax_certificate', 'documents/17/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(87, 17, 'company_registration', 'documents/17/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(88, 17, 'identification', 'documents/17/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(89, 18, 'business_license', 'documents/18/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(90, 18, 'tax_certificate', 'documents/18/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(91, 18, 'company_registration', 'documents/18/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(92, 18, 'identification', 'documents/18/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(93, 19, 'business_license', 'documents/19/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(94, 19, 'tax_certificate', 'documents/19/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(95, 19, 'company_registration', 'documents/19/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(96, 19, 'identification', 'documents/19/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(97, 20, 'business_license', 'documents/20/business_license.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(98, 20, 'tax_certificate', 'documents/20/tax_certificate.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(99, 20, 'company_registration', 'documents/20/company_registration.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(100, 20, 'identification', 'documents/20/identification.pdf', '2026-01-25 01:31:27', '2026-01-25 01:31:27');

-- Dumping structure for table ps-database.vendor_follows
DROP TABLE IF EXISTS `vendor_follows`;
CREATE TABLE IF NOT EXISTS `vendor_follows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `vendor_id` bigint unsigned NOT NULL,
  `status` enum('active','muted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_follows_user_id_vendor_id_unique` (`user_id`,`vendor_id`),
  KEY `vendor_follows_user_id_index` (`user_id`),
  KEY `vendor_follows_vendor_id_index` (`vendor_id`),
  CONSTRAINT `vendor_follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendor_follows_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_follows: ~79 rows (approximately)
INSERT INTO `vendor_follows` (`id`, `user_id`, `vendor_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(2, 1, 9, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(3, 1, 13, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(4, 1, 17, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(5, 2, 10, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(6, 2, 21, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(7, 3, 18, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(8, 3, 23, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(9, 4, 5, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(10, 4, 7, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(11, 4, 8, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(12, 4, 9, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(13, 4, 16, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(14, 5, 4, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(15, 5, 16, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(16, 5, 20, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(17, 5, 23, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(18, 6, 14, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(19, 6, 23, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(20, 7, 3, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(21, 7, 12, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(22, 7, 20, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(23, 8, 1, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(24, 8, 12, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(25, 8, 20, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(26, 9, 5, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(27, 9, 23, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(28, 10, 2, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(29, 10, 5, 'active', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(30, 10, 18, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(31, 10, 21, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(32, 10, 22, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(33, 11, 10, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(34, 11, 20, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(35, 11, 23, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(36, 12, 3, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(37, 12, 12, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(38, 12, 21, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(39, 13, 2, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(40, 14, 6, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(41, 14, 14, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(42, 15, 12, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(43, 15, 23, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(44, 16, 11, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(45, 16, 16, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(46, 16, 20, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(47, 17, 8, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(48, 17, 11, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(49, 17, 16, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(50, 17, 20, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(51, 17, 22, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(52, 18, 16, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(53, 18, 21, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(54, 19, 9, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(55, 20, 3, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(56, 20, 8, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(57, 20, 11, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(58, 20, 15, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(59, 21, 8, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(60, 21, 18, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(61, 21, 22, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(62, 22, 4, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(63, 22, 7, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(64, 22, 12, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(65, 23, 2, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(66, 23, 13, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(67, 23, 19, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(68, 24, 2, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(69, 24, 6, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(70, 24, 7, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(71, 24, 11, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(72, 24, 19, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(73, 25, 22, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(74, 26, 3, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(75, 26, 11, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(76, 26, 14, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(77, 27, 17, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(78, 28, 18, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35'),
	(79, 28, 22, 'active', '2026-01-25 01:31:35', '2026-01-25 01:31:35');

-- Dumping structure for table ps-database.vendor_items
DROP TABLE IF EXISTS `vendor_items`;
CREATE TABLE IF NOT EXISTS `vendor_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `piece_type_id` bigint unsigned DEFAULT NULL,
  `brand_id` bigint unsigned DEFAULT NULL,
  `gender_id` bigint unsigned DEFAULT NULL,
  `size_id` bigint unsigned DEFAULT NULL,
  `color_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_available` int unsigned NOT NULL DEFAULT '0',
  `quantity_per_client` int unsigned DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `price` bigint NOT NULL DEFAULT '0',
  `discount_price` bigint DEFAULT NULL,
  `discount_ends_at` timestamp NULL DEFAULT NULL,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_taxable` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `approved_by_admin_id` bigint unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_items_vendor_id_foreign` (`vendor_id`),
  KEY `vendor_items_category_id_foreign` (`category_id`),
  KEY `vendor_items_piece_type_id_foreign` (`piece_type_id`),
  KEY `vendor_items_brand_id_foreign` (`brand_id`),
  KEY `vendor_items_gender_id_foreign` (`gender_id`),
  KEY `vendor_items_size_id_foreign` (`size_id`),
  KEY `vendor_items_color_id_foreign` (`color_id`),
  KEY `vendor_items_approved_by_admin_id_foreign` (`approved_by_admin_id`),
  CONSTRAINT `vendor_items_approved_by_admin_id_foreign` FOREIGN KEY (`approved_by_admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_piece_type_id_foreign` FOREIGN KEY (`piece_type_id`) REFERENCES `piece_types` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_items_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_items: ~108 rows (approximately)
INSERT INTO `vendor_items` (`id`, `vendor_id`, `category_id`, `piece_type_id`, `brand_id`, `gender_id`, `size_id`, `color_id`, `name`, `quantity_available`, `quantity_per_client`, `weight`, `price`, `discount_price`, `discount_ends_at`, `warranty`, `promo_title`, `is_taxable`, `status`, `rejection_reason`, `approved_by_admin_id`, `approved_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 13, 5, 6.12, 45672, 9971, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(2, 1, 2, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 61, 1, 7.22, 24841, NULL, NULL, '1 year', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(3, 1, 2, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 88, 5, 6.68, 26535, NULL, NULL, 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(4, 1, 1, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 95, 4, 6.43, 23154, 8160, NULL, '2 years', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(5, 1, 3, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 45, 2, 8.50, 5189, 21767, NULL, '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(6, 2, 3, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 75, 4, 4.60, 28653, NULL, NULL, '2 years', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(7, 2, 1, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 77, 2, 6.91, 24378, NULL, NULL, 'No warranty', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(8, 2, 3, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 37, 5, 2.66, 13725, NULL, NULL, '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(9, 2, 1, NULL, NULL, NULL, NULL, NULL, 'Linen Shorts', 74, 3, 5.51, 39158, 16180, NULL, 'No warranty', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(10, 3, 1, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 40, 2, 3.27, 41622, 32443, NULL, 'No warranty', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(11, 3, 3, NULL, NULL, NULL, NULL, NULL, 'Summer Floral Dress', 19, 4, 7.73, 25577, 21598, NULL, '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(12, 3, 3, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 82, 5, 7.65, 38934, 36327, '2026-02-16 01:31:30', 'No warranty', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(13, 3, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 12, 4, 4.96, 26070, NULL, '2026-02-19 01:31:30', '1 year', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(14, 4, 1, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 93, 4, 3.47, 23803, NULL, NULL, '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(15, 4, 1, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 66, 5, 3.42, 5101, NULL, NULL, 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(16, 4, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 57, 3, 8.41, 29982, 29963, '2026-02-18 01:31:30', '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(17, 4, 1, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 84, 1, 8.20, 6150, NULL, '2026-02-22 01:31:30', 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(18, 4, 1, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 64, 1, 3.20, 17377, NULL, NULL, '2 years', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(19, 5, 1, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 97, 3, 9.89, 33875, 11089, '2026-02-20 01:31:30', '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(20, 5, 1, NULL, NULL, NULL, NULL, NULL, 'Cotton Hoodie', 73, 1, 4.98, 28068, 4044, NULL, '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(21, 5, 1, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 20, 1, 3.92, 10383, 36265, NULL, '2 years', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(22, 5, 2, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 94, 1, 8.40, 32001, NULL, '2026-02-16 01:31:30', '2 years', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(23, 5, 1, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 17, 2, 2.09, 6288, 35312, '2026-02-20 01:31:30', '2 years', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(24, 6, 3, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 50, 1, 8.63, 22293, 20929, NULL, 'No warranty', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(25, 6, 3, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 19, 5, 2.53, 29795, 27215, '2026-02-22 01:31:30', 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(26, 6, 1, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 93, 5, 7.88, 26265, 21300, '2026-02-21 01:31:30', '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(27, 6, 1, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 56, 3, 8.74, 5569, 26356, NULL, 'No warranty', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(28, 6, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 97, 2, 3.99, 19515, NULL, '2026-02-17 01:31:30', 'No warranty', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(29, 7, 3, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 46, 4, 5.74, 48105, NULL, NULL, 'No warranty', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(30, 7, 3, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 21, 4, 5.33, 26060, NULL, NULL, '2 years', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(31, 7, 1, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 50, 4, 5.21, 7833, NULL, NULL, '1 year', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(32, 7, 3, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 85, 2, 2.00, 29106, NULL, '2026-02-14 01:31:30', '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(33, 7, 1, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 13, 5, 4.43, 25118, NULL, NULL, 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(34, 8, 1, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 14, 3, 9.14, 11198, 35290, NULL, 'No warranty', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(35, 8, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 78, 2, 6.24, 24254, 24577, '2026-02-15 01:31:30', '2 years', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(36, 8, 1, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 62, 2, 6.80, 14978, NULL, NULL, '1 year', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(37, 8, 1, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 50, 2, 4.41, 27210, NULL, '2026-02-21 01:31:30', '2 years', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(38, 9, 3, NULL, NULL, NULL, NULL, NULL, 'Linen Shorts', 19, 2, 9.62, 16009, NULL, '2026-02-07 01:31:30', 'No warranty', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(39, 9, 3, NULL, NULL, NULL, NULL, NULL, 'Summer Floral Dress', 40, 5, 4.70, 15192, 18000, '2026-02-23 01:31:30', 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(40, 9, 3, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 76, 5, 7.91, 48462, 13788, NULL, '2 years', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(41, 9, 1, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 96, 4, 6.04, 33441, 25287, '2026-02-17 01:31:30', '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(42, 9, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 99, 1, 9.55, 41179, 22395, NULL, 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(43, 10, 3, NULL, NULL, NULL, NULL, NULL, 'Linen Shorts', 36, 1, 3.64, 22196, NULL, NULL, '1 year', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(44, 10, 1, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 18, 4, 8.62, 38799, 5811, NULL, '1 year', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(45, 10, 3, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 12, 3, 9.71, 47420, 31928, NULL, '1 year', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(46, 10, 2, NULL, NULL, NULL, NULL, NULL, 'Cotton Hoodie', 54, 5, 5.73, 20754, NULL, '2026-02-21 01:31:31', 'No warranty', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(47, 10, 2, NULL, NULL, NULL, NULL, NULL, 'Summer Floral Dress', 45, 2, 6.34, 48048, 10591, NULL, 'No warranty', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(48, 10, 2, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 14, 3, 9.88, 47104, 35061, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(49, 11, 1, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 57, 4, 6.22, 32210, 13094, '2026-02-08 01:31:31', '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(50, 11, 1, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 27, 2, 5.29, 15962, NULL, '2026-02-05 01:31:31', 'No warranty', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(51, 11, 2, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 17, 1, 6.73, 23209, NULL, '2026-02-16 01:31:31', '2 years', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(52, 11, 3, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 26, 4, 5.65, 9639, 18945, '2026-02-04 01:31:31', 'No warranty', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(53, 11, 3, NULL, NULL, NULL, NULL, NULL, 'Chino Pants', 80, 1, 7.34, 16268, NULL, NULL, 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(54, 11, 2, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 94, 5, 7.01, 31851, 39000, '2026-02-02 01:31:31', '1 year', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(55, 12, 2, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 88, 4, 2.82, 12105, NULL, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(56, 12, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 55, 3, 7.43, 29016, NULL, NULL, 'No warranty', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(57, 12, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 86, 1, 5.14, 41617, NULL, NULL, '1 year', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(58, 12, 1, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 88, 1, 5.04, 12718, 26347, NULL, 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(59, 12, 3, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 19, 2, 8.61, 12992, NULL, '2026-02-09 01:31:31', '2 years', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(60, 12, 2, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 97, 1, 5.31, 19319, NULL, '2026-02-10 01:31:31', 'No warranty', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(61, 13, 3, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 92, 2, 3.96, 41178, 13503, NULL, 'No warranty', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(62, 13, 3, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 43, 2, 2.83, 9367, 35163, '2026-02-07 01:31:31', '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(63, 13, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 78, 3, 4.95, 36383, NULL, NULL, '1 year', NULL, 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(64, 13, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 34, 2, 5.18, 41232, NULL, NULL, '1 year', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(65, 13, 3, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 44, 4, 7.29, 29738, 24012, NULL, '2 years', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(66, 13, 2, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 36, 2, 8.22, 12787, NULL, NULL, '2 years', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(67, 14, 1, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 91, 3, 2.28, 9989, NULL, NULL, '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(68, 14, 3, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 10, 4, 5.37, 32356, NULL, NULL, '2 years', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(69, 14, 3, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 94, 4, 6.06, 18855, NULL, '2026-02-23 01:31:31', 'No warranty', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(70, 15, 3, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 34, 4, 5.29, 35568, NULL, NULL, '1 year', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(71, 15, 2, NULL, NULL, NULL, NULL, NULL, 'Summer Floral Dress', 98, 3, 5.83, 16030, NULL, NULL, '2 years', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(72, 15, 1, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 10, 2, 6.29, 25358, NULL, NULL, 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(73, 16, 1, NULL, NULL, NULL, NULL, NULL, 'Chino Pants', 79, 1, 3.34, 37594, 36417, '2026-02-03 01:31:31', 'No warranty', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(74, 16, 3, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 20, 4, 2.49, 47658, NULL, NULL, '2 years', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(75, 16, 3, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 49, 3, 9.89, 13287, NULL, NULL, '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(76, 16, 3, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 72, 3, 3.57, 42023, 5387, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(77, 17, 2, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 74, 2, 6.31, 31238, 30262, '2026-02-03 01:31:31', '2 years', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(78, 17, 3, NULL, NULL, NULL, NULL, NULL, 'Chino Pants', 79, 3, 6.79, 28951, 24587, '2026-02-22 01:31:31', 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(79, 17, 1, NULL, NULL, NULL, NULL, NULL, 'Premium Cotton T-Shirt', 83, 3, 4.55, 22426, NULL, '2026-02-09 01:31:31', '2 years', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(80, 17, 1, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 71, 3, 8.33, 22280, 35084, '2026-02-19 01:31:31', '1 year', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(81, 17, 2, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 69, 5, 2.67, 15265, 27970, '2026-02-03 01:31:31', '2 years', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(82, 18, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 95, 2, 6.83, 11228, 6667, '2026-02-10 01:31:31', 'No warranty', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(83, 18, 2, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 59, 1, 3.48, 13411, NULL, '2026-02-21 01:31:31', '2 years', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(84, 18, 2, NULL, NULL, NULL, NULL, NULL, 'Linen Shorts', 57, 2, 9.54, 42570, NULL, NULL, '1 year', 'Flash Sale', 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(85, 18, 1, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 100, 1, 8.86, 19446, NULL, '2026-02-23 01:31:31', '1 year', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(86, 19, 3, NULL, NULL, NULL, NULL, NULL, 'White Dress Shirt', 55, 1, 9.51, 40559, 33177, NULL, '1 year', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(87, 19, 2, NULL, NULL, NULL, NULL, NULL, 'Linen Shorts', 53, 2, 7.40, 25181, NULL, NULL, '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(88, 19, 1, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 78, 1, 4.12, 18761, 13304, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(89, 19, 3, NULL, NULL, NULL, NULL, NULL, 'Chino Pants', 37, 3, 6.00, 22431, NULL, NULL, '2 years', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(90, 20, 2, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 29, 3, 7.88, 30060, NULL, NULL, 'No warranty', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(91, 20, 3, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 24, 1, 2.82, 40618, NULL, NULL, '1 year', NULL, 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(92, 20, 2, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 49, 4, 6.45, 43760, NULL, '2026-02-24 01:31:31', '1 year', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(93, 20, 3, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 24, 4, 3.06, 46758, 23744, NULL, 'No warranty', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(94, 20, 1, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 86, 4, 7.02, 36897, 20715, '2026-02-05 01:31:31', '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(95, 21, 3, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 100, 5, 9.69, 15790, NULL, NULL, 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(96, 21, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 19, 2, 5.15, 43386, NULL, '2026-02-19 01:31:31', 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(97, 21, 3, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 62, 4, 8.94, 13567, 27524, '2026-02-15 01:31:31', '2 years', 'Flash Sale', 1, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(98, 21, 2, NULL, NULL, NULL, NULL, NULL, 'Elegant Black Blazer', 87, 1, 5.43, 39509, NULL, '2026-02-11 01:31:31', 'No warranty', 'Flash Sale', 1, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(99, 21, 2, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 46, 5, 3.76, 32172, 17895, NULL, 'No warranty', NULL, 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(100, 22, 3, NULL, NULL, NULL, NULL, NULL, 'Cozy Winter Sweater', 53, 1, 9.77, 16707, NULL, NULL, 'No warranty', 'Flash Sale', 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(101, 22, 2, NULL, NULL, NULL, NULL, NULL, 'Chino Pants', 88, 1, 2.23, 15313, 14742, '2026-02-22 01:31:31', 'No warranty', NULL, 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(102, 22, 2, NULL, NULL, NULL, NULL, NULL, 'Wool Cardigan', 80, 4, 6.49, 17905, 23590, NULL, '1 year', NULL, 1, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(103, 23, 1, NULL, NULL, NULL, NULL, NULL, 'Athletic Joggers', 63, 3, 2.53, 36151, NULL, '2026-02-06 01:31:31', 'No warranty', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(104, 23, 3, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 52, 4, 2.14, 47828, 38428, NULL, '1 year', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(105, 23, 3, NULL, NULL, NULL, NULL, NULL, 'Leather Jacket', 29, 2, 5.42, 10839, 17577, '2026-02-23 01:31:31', '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(106, 23, 3, NULL, NULL, NULL, NULL, NULL, 'Silk Blouse', 90, 5, 3.13, 23159, NULL, NULL, 'No warranty', NULL, 0, 'pending', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(107, 23, 3, NULL, NULL, NULL, NULL, NULL, 'Casual Polo Shirt', 65, 3, 5.23, 35560, NULL, NULL, '1 year', 'Flash Sale', 0, 'approved', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(108, 23, 2, NULL, NULL, NULL, NULL, NULL, 'Classic Denim Jeans', 72, 3, 7.47, 17610, 13197, NULL, '1 year', 'Flash Sale', 0, 'rejected', NULL, NULL, NULL, '2026-01-25 01:31:31', '2026-01-25 01:31:31');

-- Dumping structure for table ps-database.vendor_item_images
DROP TABLE IF EXISTS `vendor_item_images`;
CREATE TABLE IF NOT EXISTS `vendor_item_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_item_id` bigint unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_item_images_vendor_item_id_foreign` (`vendor_item_id`),
  CONSTRAINT `vendor_item_images_vendor_item_id_foreign` FOREIGN KEY (`vendor_item_id`) REFERENCES `vendor_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_item_images: ~312 rows (approximately)
INSERT INTO `vendor_item_images` (`id`, `vendor_item_id`, `path`, `sort_order`, `created_at`, `updated_at`) VALUES
	(1, 1, 'uploads/vendor-items/1/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(2, 1, 'uploads/vendor-items/1/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(3, 2, 'uploads/vendor-items/2/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(4, 2, 'uploads/vendor-items/2/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(5, 2, 'uploads/vendor-items/2/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(6, 3, 'uploads/vendor-items/3/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(7, 3, 'uploads/vendor-items/3/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(8, 3, 'uploads/vendor-items/3/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(9, 4, 'uploads/vendor-items/4/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(10, 4, 'uploads/vendor-items/4/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(11, 4, 'uploads/vendor-items/4/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(12, 4, 'uploads/vendor-items/4/image-4.jpg', 4, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(13, 5, 'uploads/vendor-items/5/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(14, 5, 'uploads/vendor-items/5/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(15, 5, 'uploads/vendor-items/5/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(16, 6, 'uploads/vendor-items/6/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(17, 6, 'uploads/vendor-items/6/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(18, 7, 'uploads/vendor-items/7/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(19, 7, 'uploads/vendor-items/7/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(20, 8, 'uploads/vendor-items/8/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(21, 8, 'uploads/vendor-items/8/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(22, 8, 'uploads/vendor-items/8/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(23, 9, 'uploads/vendor-items/9/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(24, 9, 'uploads/vendor-items/9/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(25, 10, 'uploads/vendor-items/10/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(26, 10, 'uploads/vendor-items/10/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(27, 10, 'uploads/vendor-items/10/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(28, 11, 'uploads/vendor-items/11/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(29, 11, 'uploads/vendor-items/11/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(30, 11, 'uploads/vendor-items/11/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(31, 12, 'uploads/vendor-items/12/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(32, 12, 'uploads/vendor-items/12/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(33, 13, 'uploads/vendor-items/13/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(34, 13, 'uploads/vendor-items/13/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(35, 14, 'uploads/vendor-items/14/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(36, 14, 'uploads/vendor-items/14/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(37, 14, 'uploads/vendor-items/14/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(38, 15, 'uploads/vendor-items/15/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(39, 15, 'uploads/vendor-items/15/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(40, 15, 'uploads/vendor-items/15/image-3.jpg', 3, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(41, 15, 'uploads/vendor-items/15/image-4.jpg', 4, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(42, 16, 'uploads/vendor-items/16/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(43, 16, 'uploads/vendor-items/16/image-2.jpg', 2, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(44, 17, 'uploads/vendor-items/17/image-1.jpg', 1, '2026-01-25 01:31:31', '2026-01-25 01:31:31'),
	(45, 17, 'uploads/vendor-items/17/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(46, 17, 'uploads/vendor-items/17/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(47, 18, 'uploads/vendor-items/18/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(48, 18, 'uploads/vendor-items/18/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(49, 19, 'uploads/vendor-items/19/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(50, 19, 'uploads/vendor-items/19/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(51, 19, 'uploads/vendor-items/19/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(52, 19, 'uploads/vendor-items/19/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(53, 20, 'uploads/vendor-items/20/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(54, 20, 'uploads/vendor-items/20/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(55, 21, 'uploads/vendor-items/21/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(56, 21, 'uploads/vendor-items/21/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(57, 21, 'uploads/vendor-items/21/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(58, 22, 'uploads/vendor-items/22/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(59, 22, 'uploads/vendor-items/22/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(60, 23, 'uploads/vendor-items/23/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(61, 23, 'uploads/vendor-items/23/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(62, 23, 'uploads/vendor-items/23/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(63, 23, 'uploads/vendor-items/23/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(64, 24, 'uploads/vendor-items/24/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(65, 24, 'uploads/vendor-items/24/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(66, 25, 'uploads/vendor-items/25/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(67, 25, 'uploads/vendor-items/25/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(68, 25, 'uploads/vendor-items/25/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(69, 26, 'uploads/vendor-items/26/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(70, 26, 'uploads/vendor-items/26/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(71, 27, 'uploads/vendor-items/27/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(72, 27, 'uploads/vendor-items/27/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(73, 27, 'uploads/vendor-items/27/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(74, 28, 'uploads/vendor-items/28/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(75, 28, 'uploads/vendor-items/28/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(76, 28, 'uploads/vendor-items/28/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(77, 28, 'uploads/vendor-items/28/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(78, 29, 'uploads/vendor-items/29/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(79, 29, 'uploads/vendor-items/29/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(80, 29, 'uploads/vendor-items/29/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(81, 30, 'uploads/vendor-items/30/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(82, 30, 'uploads/vendor-items/30/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(83, 30, 'uploads/vendor-items/30/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(84, 31, 'uploads/vendor-items/31/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(85, 31, 'uploads/vendor-items/31/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(86, 32, 'uploads/vendor-items/32/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(87, 32, 'uploads/vendor-items/32/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(88, 32, 'uploads/vendor-items/32/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(89, 33, 'uploads/vendor-items/33/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(90, 33, 'uploads/vendor-items/33/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(91, 33, 'uploads/vendor-items/33/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(92, 34, 'uploads/vendor-items/34/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(93, 34, 'uploads/vendor-items/34/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(94, 34, 'uploads/vendor-items/34/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(95, 35, 'uploads/vendor-items/35/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(96, 35, 'uploads/vendor-items/35/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(97, 36, 'uploads/vendor-items/36/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(98, 36, 'uploads/vendor-items/36/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(99, 37, 'uploads/vendor-items/37/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(100, 37, 'uploads/vendor-items/37/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(101, 37, 'uploads/vendor-items/37/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(102, 37, 'uploads/vendor-items/37/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(103, 38, 'uploads/vendor-items/38/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(104, 38, 'uploads/vendor-items/38/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(105, 38, 'uploads/vendor-items/38/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(106, 39, 'uploads/vendor-items/39/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(107, 39, 'uploads/vendor-items/39/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(108, 39, 'uploads/vendor-items/39/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(109, 40, 'uploads/vendor-items/40/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(110, 40, 'uploads/vendor-items/40/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(111, 41, 'uploads/vendor-items/41/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(112, 41, 'uploads/vendor-items/41/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(113, 41, 'uploads/vendor-items/41/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(114, 42, 'uploads/vendor-items/42/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(115, 42, 'uploads/vendor-items/42/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(116, 42, 'uploads/vendor-items/42/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(117, 43, 'uploads/vendor-items/43/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(118, 43, 'uploads/vendor-items/43/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(119, 43, 'uploads/vendor-items/43/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(120, 44, 'uploads/vendor-items/44/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(121, 44, 'uploads/vendor-items/44/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(122, 44, 'uploads/vendor-items/44/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(123, 45, 'uploads/vendor-items/45/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(124, 45, 'uploads/vendor-items/45/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(125, 45, 'uploads/vendor-items/45/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(126, 46, 'uploads/vendor-items/46/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(127, 46, 'uploads/vendor-items/46/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(128, 46, 'uploads/vendor-items/46/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(129, 46, 'uploads/vendor-items/46/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(130, 47, 'uploads/vendor-items/47/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(131, 47, 'uploads/vendor-items/47/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(132, 47, 'uploads/vendor-items/47/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(133, 47, 'uploads/vendor-items/47/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(134, 48, 'uploads/vendor-items/48/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(135, 48, 'uploads/vendor-items/48/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(136, 48, 'uploads/vendor-items/48/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(137, 49, 'uploads/vendor-items/49/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(138, 49, 'uploads/vendor-items/49/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(139, 49, 'uploads/vendor-items/49/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(140, 50, 'uploads/vendor-items/50/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(141, 50, 'uploads/vendor-items/50/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(142, 50, 'uploads/vendor-items/50/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(143, 51, 'uploads/vendor-items/51/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(144, 51, 'uploads/vendor-items/51/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(145, 51, 'uploads/vendor-items/51/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(146, 51, 'uploads/vendor-items/51/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(147, 52, 'uploads/vendor-items/52/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(148, 52, 'uploads/vendor-items/52/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(149, 53, 'uploads/vendor-items/53/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(150, 53, 'uploads/vendor-items/53/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(151, 53, 'uploads/vendor-items/53/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(152, 53, 'uploads/vendor-items/53/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(153, 54, 'uploads/vendor-items/54/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(154, 54, 'uploads/vendor-items/54/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(155, 54, 'uploads/vendor-items/54/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(156, 55, 'uploads/vendor-items/55/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(157, 55, 'uploads/vendor-items/55/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(158, 55, 'uploads/vendor-items/55/image-3.jpg', 3, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(159, 55, 'uploads/vendor-items/55/image-4.jpg', 4, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(160, 56, 'uploads/vendor-items/56/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(161, 56, 'uploads/vendor-items/56/image-2.jpg', 2, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(162, 57, 'uploads/vendor-items/57/image-1.jpg', 1, '2026-01-25 01:31:32', '2026-01-25 01:31:32'),
	(163, 57, 'uploads/vendor-items/57/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(164, 57, 'uploads/vendor-items/57/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(165, 57, 'uploads/vendor-items/57/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(166, 58, 'uploads/vendor-items/58/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(167, 58, 'uploads/vendor-items/58/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(168, 58, 'uploads/vendor-items/58/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(169, 59, 'uploads/vendor-items/59/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(170, 59, 'uploads/vendor-items/59/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(171, 59, 'uploads/vendor-items/59/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(172, 60, 'uploads/vendor-items/60/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(173, 60, 'uploads/vendor-items/60/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(174, 61, 'uploads/vendor-items/61/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(175, 61, 'uploads/vendor-items/61/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(176, 61, 'uploads/vendor-items/61/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(177, 61, 'uploads/vendor-items/61/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(178, 62, 'uploads/vendor-items/62/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(179, 62, 'uploads/vendor-items/62/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(180, 63, 'uploads/vendor-items/63/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(181, 63, 'uploads/vendor-items/63/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(182, 64, 'uploads/vendor-items/64/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(183, 64, 'uploads/vendor-items/64/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(184, 65, 'uploads/vendor-items/65/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(185, 65, 'uploads/vendor-items/65/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(186, 66, 'uploads/vendor-items/66/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(187, 66, 'uploads/vendor-items/66/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(188, 66, 'uploads/vendor-items/66/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(189, 67, 'uploads/vendor-items/67/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(190, 67, 'uploads/vendor-items/67/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(191, 67, 'uploads/vendor-items/67/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(192, 68, 'uploads/vendor-items/68/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(193, 68, 'uploads/vendor-items/68/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(194, 69, 'uploads/vendor-items/69/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(195, 69, 'uploads/vendor-items/69/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(196, 69, 'uploads/vendor-items/69/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(197, 70, 'uploads/vendor-items/70/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(198, 70, 'uploads/vendor-items/70/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(199, 70, 'uploads/vendor-items/70/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(200, 71, 'uploads/vendor-items/71/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(201, 71, 'uploads/vendor-items/71/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(202, 72, 'uploads/vendor-items/72/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(203, 72, 'uploads/vendor-items/72/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(204, 73, 'uploads/vendor-items/73/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(205, 73, 'uploads/vendor-items/73/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(206, 73, 'uploads/vendor-items/73/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(207, 73, 'uploads/vendor-items/73/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(208, 74, 'uploads/vendor-items/74/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(209, 74, 'uploads/vendor-items/74/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(210, 75, 'uploads/vendor-items/75/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(211, 75, 'uploads/vendor-items/75/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(212, 75, 'uploads/vendor-items/75/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(213, 76, 'uploads/vendor-items/76/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(214, 76, 'uploads/vendor-items/76/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(215, 76, 'uploads/vendor-items/76/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(216, 77, 'uploads/vendor-items/77/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(217, 77, 'uploads/vendor-items/77/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(218, 77, 'uploads/vendor-items/77/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(219, 78, 'uploads/vendor-items/78/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(220, 78, 'uploads/vendor-items/78/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(221, 78, 'uploads/vendor-items/78/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(222, 79, 'uploads/vendor-items/79/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(223, 79, 'uploads/vendor-items/79/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(224, 80, 'uploads/vendor-items/80/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(225, 80, 'uploads/vendor-items/80/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(226, 80, 'uploads/vendor-items/80/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(227, 80, 'uploads/vendor-items/80/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(228, 81, 'uploads/vendor-items/81/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(229, 81, 'uploads/vendor-items/81/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(230, 81, 'uploads/vendor-items/81/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(231, 81, 'uploads/vendor-items/81/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(232, 82, 'uploads/vendor-items/82/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(233, 82, 'uploads/vendor-items/82/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(234, 82, 'uploads/vendor-items/82/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(235, 83, 'uploads/vendor-items/83/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(236, 83, 'uploads/vendor-items/83/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(237, 83, 'uploads/vendor-items/83/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(238, 84, 'uploads/vendor-items/84/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(239, 84, 'uploads/vendor-items/84/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(240, 84, 'uploads/vendor-items/84/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(241, 85, 'uploads/vendor-items/85/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(242, 85, 'uploads/vendor-items/85/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(243, 86, 'uploads/vendor-items/86/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(244, 86, 'uploads/vendor-items/86/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(245, 86, 'uploads/vendor-items/86/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(246, 86, 'uploads/vendor-items/86/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(247, 87, 'uploads/vendor-items/87/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(248, 87, 'uploads/vendor-items/87/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(249, 88, 'uploads/vendor-items/88/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(250, 88, 'uploads/vendor-items/88/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(251, 88, 'uploads/vendor-items/88/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(252, 88, 'uploads/vendor-items/88/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(253, 89, 'uploads/vendor-items/89/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(254, 89, 'uploads/vendor-items/89/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(255, 89, 'uploads/vendor-items/89/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(256, 89, 'uploads/vendor-items/89/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(257, 90, 'uploads/vendor-items/90/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(258, 90, 'uploads/vendor-items/90/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(259, 90, 'uploads/vendor-items/90/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(260, 90, 'uploads/vendor-items/90/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(261, 91, 'uploads/vendor-items/91/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(262, 91, 'uploads/vendor-items/91/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(263, 91, 'uploads/vendor-items/91/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(264, 91, 'uploads/vendor-items/91/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(265, 92, 'uploads/vendor-items/92/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(266, 92, 'uploads/vendor-items/92/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(267, 93, 'uploads/vendor-items/93/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(268, 93, 'uploads/vendor-items/93/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(269, 93, 'uploads/vendor-items/93/image-3.jpg', 3, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(270, 93, 'uploads/vendor-items/93/image-4.jpg', 4, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(271, 94, 'uploads/vendor-items/94/image-1.jpg', 1, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(272, 94, 'uploads/vendor-items/94/image-2.jpg', 2, '2026-01-25 01:31:33', '2026-01-25 01:31:33'),
	(273, 94, 'uploads/vendor-items/94/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(274, 95, 'uploads/vendor-items/95/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(275, 95, 'uploads/vendor-items/95/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(276, 95, 'uploads/vendor-items/95/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(277, 96, 'uploads/vendor-items/96/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(278, 96, 'uploads/vendor-items/96/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(279, 96, 'uploads/vendor-items/96/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(280, 96, 'uploads/vendor-items/96/image-4.jpg', 4, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(281, 97, 'uploads/vendor-items/97/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(282, 97, 'uploads/vendor-items/97/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(283, 98, 'uploads/vendor-items/98/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(284, 98, 'uploads/vendor-items/98/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(285, 98, 'uploads/vendor-items/98/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(286, 99, 'uploads/vendor-items/99/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(287, 99, 'uploads/vendor-items/99/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(288, 99, 'uploads/vendor-items/99/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(289, 100, 'uploads/vendor-items/100/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(290, 100, 'uploads/vendor-items/100/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(291, 100, 'uploads/vendor-items/100/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(292, 101, 'uploads/vendor-items/101/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(293, 101, 'uploads/vendor-items/101/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(294, 101, 'uploads/vendor-items/101/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(295, 102, 'uploads/vendor-items/102/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(296, 102, 'uploads/vendor-items/102/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(297, 102, 'uploads/vendor-items/102/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(298, 103, 'uploads/vendor-items/103/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(299, 103, 'uploads/vendor-items/103/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(300, 104, 'uploads/vendor-items/104/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(301, 104, 'uploads/vendor-items/104/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(302, 104, 'uploads/vendor-items/104/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(303, 105, 'uploads/vendor-items/105/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(304, 105, 'uploads/vendor-items/105/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(305, 105, 'uploads/vendor-items/105/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(306, 106, 'uploads/vendor-items/106/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(307, 106, 'uploads/vendor-items/106/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(308, 107, 'uploads/vendor-items/107/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(309, 107, 'uploads/vendor-items/107/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(310, 108, 'uploads/vendor-items/108/image-1.jpg', 1, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(311, 108, 'uploads/vendor-items/108/image-2.jpg', 2, '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(312, 108, 'uploads/vendor-items/108/image-3.jpg', 3, '2026-01-25 01:31:34', '2026-01-25 01:31:34');

-- Dumping structure for table ps-database.vendor_notifications
DROP TABLE IF EXISTS `vendor_notifications`;
CREATE TABLE IF NOT EXISTS `vendor_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` json NOT NULL,
  `body` json NOT NULL,
  `data` json DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_notifications_vendor_id_index` (`vendor_id`),
  KEY `vendor_notifications_vendor_id_read_at_index` (`vendor_id`,`read_at`),
  KEY `vendor_notifications_vendor_id_created_at_index` (`vendor_id`,`created_at`),
  CONSTRAINT `vendor_notifications_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_notifications: ~6 rows (approximately)
INSERT INTO `vendor_notifications` (`id`, `vendor_id`, `type`, `icon`, `title`, `body`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	(1, 22, 'order_shipped', 'truck', '{"ar": "تأكيد شحن الطلب", "en": "Order shipped confirmation"}', '{"ar": "تم شحن طلبك من سارة بونياك - رقم المنتج #12584", "en": "Your order has been shipped by Sarah Bonyak - Product #12584"}', '{"order_id": 12584}', NULL, '2026-01-24 23:31:37', '2026-01-25 01:31:37'),
	(2, 22, 'rating_request', 'star', '{"ar": "قيم طلبك الأخير", "en": "Rate your recent order"}', '{"ar": "يرجى تقييم مشترياتك من سارة بونياك", "en": "Please rate your purchase from Sarah Bonyak"}', '{"order_id": 12584}', NULL, '2026-01-24 22:31:37', '2026-01-25 01:31:37'),
	(3, 22, 'order_shipped', 'truck', '{"ar": "تأكيد شحن الطلب", "en": "Order shipped confirmation"}', '{"ar": "تم شحن طلبك من سارة بونياك - رقم المنتج #12585", "en": "Your order has been shipped by Sarah Bonyak - Product #12585"}', '{"order_id": 12585}', NULL, '2026-01-23 23:31:37', '2026-01-25 01:31:37'),
	(4, 22, 'rating_request', 'star', '{"ar": "قيم طلبك الأخير", "en": "Rate your recent order"}', '{"ar": "يرجى تقييم مشترياتك من سارة بونياك", "en": "Please rate your purchase from Sarah Bonyak"}', '{"order_id": 12585}', NULL, '2026-01-23 20:31:37', '2026-01-25 01:31:37'),
	(5, 22, 'system', 'info', '{"ar": "مرحباً بك في PS", "en": "Welcome to PS"}', '{"ar": "نحن سعداء بانضمامك إلينا.", "en": "We are happy to have you on board."}', NULL, NULL, '2026-01-15 01:31:37', '2026-01-25 01:31:37'),
	(6, 22, 'system', 'info', '{"ar": "تحديث النظام", "en": "Platform update"}', '{"ar": "ميزات جديدة متاحة في لوحة التحكم الخاصة بك.", "en": "New features are available in your dashboard."}', NULL, NULL, '2025-12-26 01:31:37', '2026-01-25 01:31:37');

-- Dumping structure for table ps-database.vendor_otps
DROP TABLE IF EXISTS `vendor_otps`;
CREATE TABLE IF NOT EXISTS `vendor_otps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VENDOR_REGISTER_VERIFY',
  `otp_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_at` timestamp NOT NULL,
  `consumed_at` timestamp NULL DEFAULT NULL,
  `resend_available_at` timestamp NULL DEFAULT NULL,
  `attempts` int unsigned NOT NULL DEFAULT '0',
  `reset_token_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_otps_vendor_id_phone_index` (`vendor_id`,`phone`),
  KEY `vendor_otps_purpose_index` (`purpose`),
  CONSTRAINT `vendor_otps_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_otps: ~5 rows (approximately)
INSERT INTO `vendor_otps` (`id`, `vendor_id`, `phone`, `purpose`, `otp_hash`, `expires_at`, `consumed_at`, `resend_available_at`, `attempts`, `reset_token_hash`, `created_at`, `updated_at`) VALUES
	(1, 1, '+966543478045', 'VENDOR_REGISTER_VERIFY', '$2y$12$n4tnnkiMj.igRb9gGQG0U.X/B/Zj1FOCCP3xUek0f609Bs54idh.i', '2026-01-25 01:41:29', NULL, NULL, 0, NULL, '2026-01-25 01:31:29', '2026-01-25 01:31:29'),
	(2, 2, '+966573440854', 'VENDOR_REGISTER_VERIFY', '$2y$12$d4JTnxJkiagFiUlhK5rnzuqJ2gGii4WQAfJobwe15hS0EQKLiOAUK', '2026-01-25 01:41:29', NULL, NULL, 0, NULL, '2026-01-25 01:31:29', '2026-01-25 01:31:29'),
	(3, 3, '+966552953560', 'VENDOR_REGISTER_VERIFY', '$2y$12$6HwRe7ByZP1RhCW9KxZDsuFugW2FsNQFJFVmoUhg2XOsUMoWaTY4G', '2026-01-25 01:41:30', NULL, NULL, 0, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(4, 4, '+966538412844', 'VENDOR_REGISTER_VERIFY', '$2y$12$Cr4SUarWpRG0XgK51Bqoue6teGW63csbYLXEUYU.Cg212dJya1lNS', '2026-01-25 01:41:30', NULL, NULL, 0, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30'),
	(5, 5, '+966539162945', 'VENDOR_REGISTER_VERIFY', '$2y$12$zmKDtipzQPAUsjchMLSl6O/z4PpbC3sdrdcEb6RQYf9.Ub9Gbcagu', '2026-01-25 01:41:30', NULL, NULL, 0, NULL, '2026-01-25 01:31:30', '2026-01-25 01:31:30');

-- Dumping structure for table ps-database.vendor_packages
DROP TABLE IF EXISTS `vendor_packages`;
CREATE TABLE IF NOT EXISTS `vendor_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` json NOT NULL,
  `monthly_price` bigint unsigned NOT NULL DEFAULT '0',
  `yearly_price` bigint unsigned NOT NULL DEFAULT '0',
  `features` json DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SAR',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_packages_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_packages: ~4 rows (approximately)
INSERT INTO `vendor_packages` (`id`, `key`, `name`, `monthly_price`, `yearly_price`, `features`, `currency`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'primary', '{"ar": "الأساسية", "en": "Primary"}', 9900, 118800, '{"ar": ["حتى 50 منتج", "تحليلات أساسية", "دعم عبر البريد الإلكتروني", "الوصول إلى تطبيق الجوال"], "en": ["Up to 50 products", "Basic analytics", "Email support", "Mobile app access"]}', 'SAR', 0, 'active', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(2, 'basic', '{"ar": "الأساسية المحسنة", "en": "Basic"}', 29900, 358800, '{"ar": ["حتى 200 منتج", "تحليلات متقدمة", "دعم بريد إلكتروني ذو أولوية", "التكامل مع وسائل التواصل", "علامة تجارية مخصصة"], "en": ["Up to 200 products", "Advanced analytics", "Priority email support", "Social media integration", "Custom branding"]}', 'SAR', 1, 'active', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(3, 'advanced', '{"ar": "المتقدمة", "en": "Advanced"}', 39900, 478800, '{"ar": ["منتجات غير محدودة", "تحليلات وتقارير متقدمة", "دعم هاتفي وبريد إلكتروني", "أدوات التسويق", "الوصول إلى API", "دعم مواقع متعددة"], "en": ["Unlimited products", "Premium analytics & reports", "Phone & email support", "Marketing tools", "API access", "Multi-location support"]}', 'SAR', 2, 'active', '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(4, 'professional', '{"ar": "الاحترافية", "en": "Professional"}', 199900, 2398800, '{"ar": ["كل ميزات المتقدمة", "مدير حساب مخصص", "دعم على مدار الساعة", "تكاملات مخصصة", "أتمتة متقدمة", "أدوات تعاون الفريق", "خيارات العلامة البيضاء"], "en": ["Everything in Advanced", "Dedicated account manager", "24/7 priority support", "Custom integrations", "Advanced automation", "Team collaboration tools", "White-label options"]}', 'SAR', 3, 'active', '2026-01-25 01:31:27', '2026-01-25 01:31:27');

-- Dumping structure for table ps-database.vendor_package_assignments
DROP TABLE IF EXISTS `vendor_package_assignments`;
CREATE TABLE IF NOT EXISTS `vendor_package_assignments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `vendor_package_id` bigint unsigned NOT NULL,
  `billing_cycle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint unsigned NOT NULL DEFAULT '0',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SAR',
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `assigned_by_admin_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_package_assignments_vendor_id_index` (`vendor_id`),
  KEY `vendor_package_assignments_vendor_package_id_index` (`vendor_package_id`),
  KEY `vendor_package_assignments_assigned_by_admin_id_foreign` (`assigned_by_admin_id`),
  CONSTRAINT `vendor_package_assignments_assigned_by_admin_id_foreign` FOREIGN KEY (`assigned_by_admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  CONSTRAINT `vendor_package_assignments_vendor_package_id_foreign` FOREIGN KEY (`vendor_package_id`) REFERENCES `vendor_packages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_package_assignments: ~20 rows (approximately)
INSERT INTO `vendor_package_assignments` (`id`, `vendor_id`, `vendor_package_id`, `billing_cycle`, `price`, `currency`, `starts_at`, `ends_at`, `status`, `assigned_by_admin_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, 'monthly', 37100, 'SAR', '2026-01-21 01:31:27', '2026-10-19 00:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(2, 2, 3, 'quarterly', 34800, 'SAR', '2026-01-03 01:31:27', '2026-11-28 01:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(3, 3, 4, 'monthly', 68500, 'SAR', '2026-01-14 01:31:27', '2026-09-11 00:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(4, 4, 2, 'yearly', 47700, 'SAR', '2025-12-26 01:31:27', '2027-01-16 01:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(5, 5, 4, 'monthly', 41400, 'SAR', '2026-01-14 01:31:27', '2026-11-09 01:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(6, 6, 4, 'monthly', 69100, 'SAR', '2026-01-22 01:31:27', '2026-03-31 00:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(7, 7, 3, 'yearly', 96900, 'SAR', '2026-01-16 01:31:27', '2027-01-12 01:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(8, 8, 3, 'quarterly', 33900, 'SAR', '2026-01-08 01:31:27', '2026-03-09 00:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(9, 9, 1, 'yearly', 53000, 'SAR', '2026-01-23 01:31:27', '2026-04-09 00:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(10, 10, 1, 'monthly', 47300, 'SAR', '2026-01-06 01:31:27', '2026-05-08 00:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(11, 11, 2, 'monthly', 41800, 'SAR', '2025-12-27 01:31:27', '2026-07-08 00:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(12, 12, 4, 'monthly', 86400, 'SAR', '2026-01-11 01:31:27', '2026-05-10 00:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(13, 13, 2, 'quarterly', 22700, 'SAR', '2026-01-21 01:31:27', '2026-06-02 00:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(14, 14, 3, 'yearly', 50500, 'SAR', '2025-12-31 01:31:27', '2026-11-10 01:31:27', 'inactive', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(15, 15, 2, 'quarterly', 50700, 'SAR', '2026-01-13 01:31:27', '2026-04-24 00:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(16, 16, 1, 'quarterly', 84700, 'SAR', '2026-01-23 01:31:27', '2026-10-02 00:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(17, 17, 1, 'monthly', 52500, 'SAR', '2026-01-08 01:31:27', '2026-08-03 00:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(18, 18, 2, 'yearly', 52300, 'SAR', '2026-01-15 01:31:27', '2026-10-02 00:31:27', 'expired', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(19, 19, 2, 'yearly', 16600, 'SAR', '2026-01-24 01:31:27', '2027-01-17 01:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(20, 20, 4, 'monthly', 35900, 'SAR', '2026-01-06 01:31:27', '2026-05-30 00:31:27', 'active', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27');

-- Dumping structure for table ps-database.vendor_payment_attempts
DROP TABLE IF EXISTS `vendor_payment_attempts`;
CREATE TABLE IF NOT EXISTS `vendor_payment_attempts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `vendor_package_assignment_id` bigint unsigned NOT NULL,
  `payment_method_id` bigint unsigned NOT NULL,
  `billing_period` enum('monthly','yearly') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint unsigned NOT NULL DEFAULT '0',
  `vat` bigint unsigned NOT NULL DEFAULT '0',
  `total` bigint unsigned NOT NULL DEFAULT '0',
  `status` enum('initiated','pending','paid','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'initiated',
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_payment_attempts_payment_method_id_foreign` (`payment_method_id`),
  KEY `vendor_payment_attempts_vendor_id_status_index` (`vendor_id`,`status`),
  KEY `vendor_payment_attempts_vendor_package_assignment_id_index` (`vendor_package_assignment_id`),
  CONSTRAINT `vendor_payment_attempts_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendor_payment_attempts_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendor_payment_attempts_vendor_package_assignment_id_foreign` FOREIGN KEY (`vendor_package_assignment_id`) REFERENCES `vendor_package_assignments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_payment_attempts: ~7 rows (approximately)
INSERT INTO `vendor_payment_attempts` (`id`, `vendor_id`, `vendor_package_assignment_id`, `payment_method_id`, `billing_period`, `amount`, `vat`, `total`, `status`, `reference`, `meta`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 4, 'monthly', 40597, 6089, 46686, 'initiated', 'REF-0000000010', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(2, 1, 1, 3, 'monthly', 11522, 1728, 13250, 'failed', 'REF-0000000011', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:37', '2026-01-25 01:31:37'),
	(3, 2, 2, 3, 'yearly', 12302, 1845, 14147, 'initiated', 'REF-0000000020', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(4, 3, 3, 4, 'monthly', 28411, 4261, 32672, 'failed', 'REF-0000000030', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(5, 3, 3, 2, 'monthly', 10062, 1509, 11571, 'paid', 'REF-0000000031', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(6, 4, 4, 1, 'yearly', 47669, 7150, 54819, 'initiated', 'REF-0000000040', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(7, 5, 5, 3, 'monthly', 38403, 5760, 44163, 'paid', 'REF-0000000050', '"{\\"gateway\\":\\"stripe\\"}"', '2026-01-25 01:31:38', '2026-01-25 01:31:38');

-- Dumping structure for table ps-database.vendor_payment_selections
DROP TABLE IF EXISTS `vendor_payment_selections`;
CREATE TABLE IF NOT EXISTS `vendor_payment_selections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `vendor_package_assignment_id` bigint unsigned DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selected',
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_payment_selections_vendor_id_foreign` (`vendor_id`),
  KEY `vendor_payment_selections_vendor_package_assignment_id_foreign` (`vendor_package_assignment_id`),
  CONSTRAINT `vendor_payment_selections_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendor_payment_selections_vendor_package_assignment_id_foreign` FOREIGN KEY (`vendor_package_assignment_id`) REFERENCES `vendor_package_assignments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_payment_selections: ~37 rows (approximately)
INSERT INTO `vendor_payment_selections` (`id`, `vendor_id`, `vendor_package_assignment_id`, `payment_method`, `status`, `meta`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(2, 1, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(3, 1, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(4, 2, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(5, 3, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(6, 3, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(7, 4, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(8, 4, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(9, 5, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(10, 5, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(11, 6, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(12, 6, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(13, 6, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:27', '2026-01-25 01:31:27'),
	(14, 7, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(15, 8, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(16, 8, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(17, 9, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(18, 9, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(19, 9, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(20, 10, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(21, 11, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(22, 12, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(23, 12, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(24, 13, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(25, 13, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(26, 14, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(27, 14, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(28, 15, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(29, 15, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(30, 16, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(31, 16, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(32, 17, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(33, 18, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(34, 18, NULL, 'bank_transfer', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(35, 19, NULL, 'cash', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(36, 20, NULL, 'credit_card', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28'),
	(37, 20, NULL, 'check', 'selected', NULL, '2026-01-25 01:31:28', '2026-01-25 01:31:28');

-- Dumping structure for table ps-database.vendor_shipping_details
DROP TABLE IF EXISTS `vendor_shipping_details`;
CREATE TABLE IF NOT EXISTS `vendor_shipping_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `within_city_fee` bigint unsigned NOT NULL DEFAULT '0',
  `within_ksa_fee` bigint unsigned NOT NULL DEFAULT '0',
  `ksa_to_gcc_fee` bigint unsigned NOT NULL DEFAULT '0',
  `ksa_to_world_fee` bigint unsigned NOT NULL DEFAULT '0',
  `currency` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SAR',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_shipping_details_vendor_id_foreign` (`vendor_id`),
  CONSTRAINT `vendor_shipping_details_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_shipping_details: ~23 rows (approximately)
INSERT INTO `vendor_shipping_details` (`id`, `vendor_id`, `within_city_fee`, `within_ksa_fee`, `ksa_to_gcc_fee`, `ksa_to_world_fee`, `currency`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 1799, 4183, 7344, 13230, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(2, 2, 700, 2567, 8287, 17731, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(3, 3, 1922, 4758, 4599, 18087, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(4, 4, 1898, 2122, 4614, 18978, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(5, 5, 817, 3194, 2549, 6027, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(6, 6, 1098, 1377, 5865, 6339, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(7, 7, 617, 3476, 2591, 17376, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(8, 8, 795, 3966, 8872, 17861, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(9, 9, 619, 4792, 2260, 10940, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(10, 10, 911, 2662, 5246, 14198, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(11, 11, 759, 3264, 8929, 9738, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(12, 12, 723, 2779, 6396, 9046, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(13, 13, 1458, 1462, 7590, 9414, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(14, 14, 1405, 1108, 2540, 17914, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(15, 15, 1466, 2418, 2083, 7386, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(16, 16, 1172, 4431, 9719, 12182, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(17, 17, 769, 3835, 5493, 14055, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(18, 18, 1805, 4562, 3531, 16710, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(19, 19, 1742, 4160, 9153, 7151, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(20, 20, 1133, 2133, 9670, 10569, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(21, 21, 1285, 2574, 7179, 8503, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(22, 22, 517, 4570, 5266, 17669, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38'),
	(23, 23, 1871, 2810, 7351, 6516, 'SAR', 'active', '2026-01-25 01:31:38', '2026-01-25 01:31:38');

-- Dumping structure for table ps-database.vendor_stories
DROP TABLE IF EXISTS `vendor_stories`;
CREATE TABLE IF NOT EXISTS `vendor_stories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` enum('image','video') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `media_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_seconds` int DEFAULT '5',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_stories_vendor_id_status_start_at_end_at_index` (`vendor_id`,`status`,`start_at`,`end_at`),
  KEY `vendor_stories_sort_order_index` (`sort_order`),
  CONSTRAINT `vendor_stories_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_stories: ~19 rows (approximately)
INSERT INTO `vendor_stories` (`id`, `vendor_id`, `title`, `media_type`, `media_path`, `thumb_path`, `duration_seconds`, `sort_order`, `status`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Story 1 for Kling Ltd 3', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 5, 1, 'active', '2026-01-21 17:31:34', '2026-02-08 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(2, 3, 'Story 2 for Kling Ltd 3', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 15, 2, 'active', '2026-01-24 17:31:34', '2026-02-21 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(3, 3, 'Story 3 for Kling Ltd 3', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 4, 3, 'active', '2026-01-22 17:31:34', '2026-02-19 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(4, 3, 'Story 4 for Kling Ltd 3', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 28, 4, 'active', '2026-01-23 17:31:34', '2026-02-07 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(5, 19, 'Story 1 for Orn, Luettgen and Hilpert 19', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 6, 1, 'active', '2026-01-23 17:31:34', '2026-02-10 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(6, 19, 'Story 2 for Orn, Luettgen and Hilpert 19', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 17, 2, 'active', '2026-01-23 17:31:34', '2026-02-04 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(7, 19, 'Story 3 for Orn, Luettgen and Hilpert 19', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 7, 3, 'active', '2026-01-20 17:31:34', '2026-02-10 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(8, 4, 'Story 1 for Pfeffer-Koepp 4', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 4, 1, 'active', '2026-01-21 17:31:34', '2026-01-31 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(9, 4, 'Story 2 for Pfeffer-Koepp 4', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 14, 2, 'active', '2026-01-19 17:31:34', '2026-02-20 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(10, 4, 'Story 3 for Pfeffer-Koepp 4', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 5, 3, 'active', '2026-01-20 17:31:34', '2026-02-17 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(11, 4, 'Story 4 for Pfeffer-Koepp 4', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 14, 4, 'active', '2026-01-19 17:31:34', '2026-02-08 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(12, 22, 'Story 1 for Fatima Fashion', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 6, 1, 'active', '2026-01-23 17:31:34', '2026-01-30 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(13, 22, 'Story 2 for Fatima Fashion', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 12, 2, 'active', '2026-01-19 17:31:34', '2026-02-14 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(14, 22, 'Story 3 for Fatima Fashion', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 7, 3, 'active', '2026-01-22 17:31:34', '2026-02-14 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(15, 22, 'Story 4 for Fatima Fashion', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 19, 4, 'active', '2026-01-24 17:31:34', '2026-02-10 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(16, 5, 'Story 1 for Beatty PLC 5', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 7, 1, 'active', '2026-01-19 17:31:34', '2026-02-19 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(17, 5, 'Story 2 for Beatty PLC 5', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 19, 2, 'active', '2026-01-20 17:31:34', '2026-02-09 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(18, 5, 'Story 3 for Beatty PLC 5', 'image', 'uploads/stories/placeholder_image.jpg', NULL, 6, 3, 'active', '2026-01-22 17:31:34', '2026-01-30 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(19, 5, 'Story 4 for Beatty PLC 5', 'video', 'uploads/stories/placeholder_video.jpg', NULL, 25, 4, 'active', '2026-01-24 17:31:34', '2026-02-01 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34');

-- Dumping structure for table ps-database.vendor_story_views
DROP TABLE IF EXISTS `vendor_story_views`;
CREATE TABLE IF NOT EXISTS `vendor_story_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vendor_story_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `viewed_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_story_views_user_id_vendor_story_id_unique` (`user_id`,`vendor_story_id`),
  KEY `vendor_story_views_vendor_story_id_foreign` (`vendor_story_id`),
  KEY `vendor_story_views_viewed_at_index` (`viewed_at`),
  CONSTRAINT `vendor_story_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vendor_story_views_vendor_story_id_foreign` FOREIGN KEY (`vendor_story_id`) REFERENCES `vendor_stories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ps-database.vendor_story_views: ~16 rows (approximately)
INSERT INTO `vendor_story_views` (`id`, `vendor_story_id`, `user_id`, `viewed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 9, '2026-01-19 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(2, 1, 20, '2026-01-19 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(3, 2, 10, '2026-01-21 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(4, 2, 11, '2026-01-20 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(5, 2, 21, '2026-01-20 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(6, 2, 26, '2026-01-18 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(7, 3, 12, '2026-01-24 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(8, 3, 25, '2026-01-21 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(9, 3, 28, '2026-01-24 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(10, 4, 10, '2026-01-19 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(11, 4, 16, '2026-01-24 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(12, 4, 21, '2026-01-22 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(13, 4, 22, '2026-01-20 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(14, 4, 26, '2026-01-23 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(15, 5, 9, '2026-01-22 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34'),
	(16, 5, 22, '2026-01-21 17:31:34', '2026-01-25 01:31:34', '2026-01-25 01:31:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
