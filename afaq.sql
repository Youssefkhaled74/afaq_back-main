-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2025 at 01:05 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afaq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone`, `img`, `password`, `deleted_at`, `is_activate`, `report_id`) VALUES
(1, NULL, '2025-11-16 23:19:43', 'AmrHussien', 'amr@gmail.com', '123456', 'admin/assets/images/admins/176334238370484.png', '$2y$10$fVy5aD3QhOh4OThChgF6deaCNiB/2y35ln39lsA/SP7RLZiR2P4sy', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `writer_id` int DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `features` text COLLATE utf8mb4_unicode_ci,
  `importance` text COLLATE utf8mb4_unicode_ci,
  `what_we_offer` text COLLATE utf8mb4_unicode_ci,
  `other_points` json DEFAULT NULL,
  `students_count` int DEFAULT '0',
  `article_type` tinyint NOT NULL DEFAULT '0' COMMENT '1 -> Service , 2 => Articles , 3 => Files , 4 => Courses',
  `deleted_at` datetime DEFAULT NULL,
  `is_recommended` tinyint NOT NULL DEFAULT '0',
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1',
  `article_file` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x_url` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `icon`, `img`, `title`, `category_id`, `writer_id`, `desc`, `features`, `importance`, `what_we_offer`, `other_points`, `students_count`, `article_type`, `deleted_at`, `is_recommended`, `is_activate`, `report_id`, `article_file`, `linkedin`, `whatsapp`, `facebook`, `email`, `x_url`) VALUES
(1, '2025-11-18 01:11:09', '2025-11-25 06:52:07', 'admin/assets/images/articles/176348365284717.png', 'admin/assets/images/articles/176343546921924.png', 'Non amet in et repu', NULL, NULL, 'amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Unde quo reprehender Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu', '[\"Jael Fischer\",\"Phoebe Valentine\",\"Gary Nieves\",\"Liberty Montgomery\",\"Kelly Baxter\",\"Ria Dudley\",\"Susan Todd\"]', 'Unde quo reprehender Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Unde quo reprehender Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu', '[\"Dora Garner\",\"Imelda Barton\",\"Holly Reeves\",\"Jena Todd\",\"Cleo Mcmahon\",\"Germane Todd\"]', '[{\"title\": \"Provident suscipit\", \"content\": \"Officiis aute saepe\"}, {\"title\": \"Ex eveniet quia eum\", \"content\": \"Occaecat sunt labor\"}, {\"title\": \"Sunt est non cupid\", \"content\": \"Iste veniam ut offi\"}]', NULL, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2025-11-18 01:13:25', '2025-11-18 01:13:25', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176343560550192.png', 'Aliquip culpa in la', 4, NULL, 'amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Unde quo reprehender Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu Non amet in et repu', '[\"Blake Coleman\",\"Doris Miranda\",\"Taylor Dodson\"]', 'Assumenda consequatu', '[\"Ross Bond\",\"Declan Lucas\",\"April Hickman\"]', '[{\"title\": \"Ut est ipsum dolorem\", \"content\": \"Dicta dolores et lab\"}, {\"title\": \"Sit architecto provi\", \"content\": \"Cupidatat quis obcae\"}, {\"title\": \"Aperiam laboriosam\", \"content\": \"Harum facere ut sapi\"}, {\"title\": \"Officia eaque autem\", \"content\": \"Dolore pariatur Ill\"}]', NULL, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2025-11-18 14:34:12', '2025-11-18 14:34:12', NULL, 'admin/assets/images/articles/176348365284717.png', 'In nisi neque quae e', 3, NULL, 'Eius sit est except', '[\"Morgan Meyer\",\"Jamal Lang\",\"Rigel Anderson\"]', 'Qui sapiente ad est', '[\"Maile Levine\",\"Timon Dalton\",\"Sylvia Hendrix\"]', '[{\"title\": \"Sit ipsam sunt asper\", \"content\": \"Dolor maiores rerum\"}, {\"title\": \"Consequatur Ea plac\", \"content\": \"Ea laudantium debit\"}, {\"title\": \"Nisi voluptatem At\", \"content\": \"Ut consectetur aute\"}, {\"title\": \"Animi expedita mini\", \"content\": \"Non ut iusto error q\"}, {\"title\": \"Quis laboriosam vol\", \"content\": \"Id similique ut inci\"}]', NULL, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2025-11-18 15:13:29', '2025-12-08 18:17:54', NULL, 'admin/assets/images/articles/176351080751500.png', 'In consectetur omni', NULL, NULL, 'Our On-Demand Marketing Consulting service offers clients the flexibility to select a number of consultation hours tailored to their specific needs and goals. During these sessions, we provide expert guidance based on our extensive experience in marketing and quality, helping clients find suitable solutions to their questions and make informed decisions for success in the market.', '[\"Flexible Timing: Clients can select the consultation hours that fit their needs and priorities.\",\"Strategic Guidance: We provide custom answers and advice based on scientific principles and practical experience to achieve desired outcomes.\",\"Expert Support: Covering various aspects of marketing, from market analysis to promotional strategies and brand management.\",\"Immediate Direction and Decision Support: Practical recommendations and insights to help clients take confident, well-considered steps in their target market.\"]', 'On-Demand Marketing Consulting is an ideal solution for businesses and entrepreneurs seeking immediate, effective guidance without the need for long-term commitments. It allows clients to make the most of their time by gaining precise answers to their marketing challenges, enhancing their chances of success with well-informed decisions aligned with market dynamics.', '[\"1. Quick Analysis of Challenges and Opportunities: Assisting clients in quickly understanding the business environment, including current challenges and market opportunities.\",\"2. Customized Answers: Providing direct, tailored solutions to each question or challenge, helping clients overcome obstacles to growth.\",\"3. Strategic Direction: Offering practical suggestions to empower clients in crafting a clear action plan aligned with their goals.\",\"4. Decision Support: Assisting clients in evaluating their options, enabling them to make precise marketing decisions consistent with their strategies.\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', NULL, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2025-11-18 22:05:53', '2025-11-18 22:11:48', NULL, 'admin/assets/images/articles/176351075317151.png', 'In consectetur omni 998899', 2, NULL, 'Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', 200, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2025-11-18 01:11:09', '2025-11-18 01:11:09', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176343546921924.png', 'Consequat Exercitat 2222', 3, NULL, 'Dolores laboris expl', '[\"Desiree Barber\",\"Ulric Dickerson\",\"Genevieve Mason\"]', NULL, '[\"Irma Best\",\"Jasmine Mays\"]', '[{\"title\": \"Nulla a ipsum sed ir\", \"content\": \"Doloribus omnis sunt\"}, {\"title\": \"Omnis labore soluta\", \"content\": \"Est similique quo qu\"}, {\"title\": \"Nulla animi numquam\", \"content\": \"Omnis animi irure n\"}]', NULL, 2, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2025-11-18 01:13:25', '2025-11-18 01:13:25', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176343560550192.png', 'Aliquip culpa in la 2222', 3, NULL, 'Veniam ipsam offici', '[\"Blake Coleman\",\"Doris Miranda\",\"Taylor Dodson\"]', 'Assumenda consequatu', '[\"Ross Bond\",\"Declan Lucas\",\"April Hickman\"]', '[{\"title\": \"Ut est ipsum dolorem\", \"content\": \"Dicta dolores et lab\"}, {\"title\": \"Sit architecto provi\", \"content\": \"Cupidatat quis obcae\"}, {\"title\": \"Aperiam laboriosam\", \"content\": \"Harum facere ut sapi\"}, {\"title\": \"Officia eaque autem\", \"content\": \"Dolore pariatur Ill\"}]', NULL, 2, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2025-11-18 14:34:12', '2025-11-18 14:34:12', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176348365284717.png', 'In nisi neque quae e 2222', 3, NULL, 'Eius sit est except', '[\"Morgan Meyer\",\"Jamal Lang\",\"Rigel Anderson\"]', 'Qui sapiente ad est', '[\"Maile Levine\",\"Timon Dalton\",\"Sylvia Hendrix\"]', '[{\"title\": \"Sit ipsam sunt asper\", \"content\": \"Dolor maiores rerum\"}, {\"title\": \"Consequatur Ea plac\", \"content\": \"Ea laudantium debit\"}, {\"title\": \"Nisi voluptatem At\", \"content\": \"Ut consectetur aute\"}, {\"title\": \"Animi expedita mini\", \"content\": \"Non ut iusto error q\"}, {\"title\": \"Quis laboriosam vol\", \"content\": \"Id similique ut inci\"}]', NULL, 2, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2025-11-18 15:13:29', '2025-11-18 22:06:47', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176351080751500.png', 'In consectetur omni22 2222', NULL, NULL, 'Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', 10, 2, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2025-11-18 22:05:53', '2025-11-18 22:11:48', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176351075317151.png', 'In consectetur omni666 2222', 2, NULL, 'Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', 100, 2, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2025-11-18 01:11:09', '2025-11-18 01:11:09', NULL, 'admin/assets/images/articles/176343546921924.png', 'Consequat Exercitat 3333', 1, NULL, 'Dolores laboris expl', '[\"Desiree Barber\",\"Ulric Dickerson\",\"Genevieve Mason\"]', NULL, '[\"Irma Best\",\"Jasmine Mays\"]', '[{\"title\": \"Nulla a ipsum sed ir\", \"content\": \"Doloribus omnis sunt\"}, {\"title\": \"Omnis labore soluta\", \"content\": \"Est similique quo qu\"}, {\"title\": \"Nulla animi numquam\", \"content\": \"Omnis animi irure n\"}]', 55, 3, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2025-11-18 01:13:25', '2025-12-09 11:23:30', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176343560550192.png', 'Aliquip culpa in la 3333', NULL, NULL, '<p><span style=\"background-color:rgb(248, 249, 250); color:rgb(74, 74, 74); font-family:-apple-system,blinkmacsystemfont,segoe ui,helvetica neue,arial,sans-serif; font-size:16px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Just greatest Article in the world Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"color:#00FFFF\"><span style=\"font-size:26px\"><strong><span style=\"background-color:#FF0000\">Just greatest Article in the world</span></strong></span></span><br />\r\n<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>', '[\"Blake Coleman\",\"Doris Miranda\",\"Taylor Dodson\"]', 'Assumenda consequatu', '[\"Ross Bond\",\"Declan Lucas\",\"April Hickman\"]', '[{\"title\": \"Ut est ipsum dolorem\", \"content\": \"Dicta dolores et lab\"}, {\"title\": \"Sit architecto provi\", \"content\": \"Cupidatat quis obcae\"}, {\"title\": \"Aperiam laboriosam\", \"content\": \"Harum facere ut sapi\"}, {\"title\": \"Officia eaque autem\", \"content\": \"Dolore pariatur Ill\"}]', NULL, 3, NULL, 0, 1, 1, 'admin/assets/images/articles/176528661070669.pdf', 'http://127.0.0.1:3363/article/11', 'http://127.0.0.1:3363/article/11', 'http://127.0.0.1:3363/article/11', 'email@email.com', 'http://127.0.0.1:3363/article/11'),
(13, '2025-11-18 14:34:12', '2025-11-18 14:34:12', NULL, 'admin/assets/images/articles/176348365284717.png', 'In nisi neque quae e 3333', 3, NULL, 'Eius sit est except', '[\"Morgan Meyer\",\"Jamal Lang\",\"Rigel Anderson\"]', 'Qui sapiente ad est', '[\"Maile Levine\",\"Timon Dalton\",\"Sylvia Hendrix\"]', '[{\"title\": \"Sit ipsam sunt asper\", \"content\": \"Dolor maiores rerum\"}, {\"title\": \"Consequatur Ea plac\", \"content\": \"Ea laudantium debit\"}, {\"title\": \"Nisi voluptatem At\", \"content\": \"Ut consectetur aute\"}, {\"title\": \"Animi expedita mini\", \"content\": \"Non ut iusto error q\"}, {\"title\": \"Quis laboriosam vol\", \"content\": \"Id similique ut inci\"}]', NULL, 3, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2025-11-18 15:13:29', '2025-11-18 22:06:47', NULL, 'admin/assets/images/articles/176351080751500.png', 'In consectetur omni22 3333', NULL, NULL, 'Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', NULL, 3, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2025-11-18 22:05:53', '2025-11-18 22:11:48', NULL, 'admin/assets/images/articles/176351075317151.png', 'In consectetur omni666 3333', 2, NULL, 'Adipisicing labore v Adipisicing labore v Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', NULL, 3, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2025-11-18 01:11:09', '2025-11-18 01:11:09', NULL, 'admin/assets/images/articles/176343546921924.png', 'Consequat Exercitat 4444', 3, NULL, 'Dolores laboris expl', '[\"Desiree Barber\",\"Ulric Dickerson\",\"Genevieve Mason\"]', NULL, '[\"Irma Best\",\"Jasmine Mays\"]', '[{\"title\": \"Nulla a ipsum sed ir\", \"content\": \"Doloribus omnis sunt\"}, {\"title\": \"Omnis labore soluta\", \"content\": \"Est similique quo qu\"}, {\"title\": \"Nulla animi numquam\", \"content\": \"Omnis animi irure n\"}]', NULL, 4, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2025-11-18 01:13:25', '2025-11-18 01:13:25', 'admin/assets/images/articles/176343560556130.png', 'admin/assets/images/articles/176343560550192.png', 'Aliquip culpa in la 4444', 6, NULL, 'Veniam ipsam offici', '[\"Blake Coleman\",\"Doris Miranda\",\"Taylor Dodson\"]', 'Assumenda consequatu', '[\"Ross Bond\",\"Declan Lucas\",\"April Hickman\"]', '[{\"title\": \"Ut est ipsum dolorem\", \"content\": \"Dicta dolores et lab\"}, {\"title\": \"Sit architecto provi\", \"content\": \"Cupidatat quis obcae\"}, {\"title\": \"Aperiam laboriosam\", \"content\": \"Harum facere ut sapi\"}, {\"title\": \"Officia eaque autem\", \"content\": \"Dolore pariatur Ill\"}]', NULL, 4, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2025-11-18 14:34:12', '2025-11-18 14:34:12', NULL, 'admin/assets/images/articles/176348365284717.png', 'In nisi neque quae e 4444', 4, NULL, 'Eius sit est except', '[\"Morgan Meyer\",\"Jamal Lang\",\"Rigel Anderson\"]', 'Qui sapiente ad est', '[\"Maile Levine\",\"Timon Dalton\",\"Sylvia Hendrix\"]', '[{\"title\": \"Sit ipsam sunt asper\", \"content\": \"Dolor maiores rerum\"}, {\"title\": \"Consequatur Ea plac\", \"content\": \"Ea laudantium debit\"}, {\"title\": \"Nisi voluptatem At\", \"content\": \"Ut consectetur aute\"}, {\"title\": \"Animi expedita mini\", \"content\": \"Non ut iusto error q\"}, {\"title\": \"Quis laboriosam vol\", \"content\": \"Id similique ut inci\"}]', NULL, 4, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2025-11-18 15:13:29', '2025-11-21 00:46:21', 'admin/assets/images/articles/176369318112615.png', 'admin/assets/images/articles/176351080751500.png', 'In consectetur omn 4444', NULL, NULL, 'Adipisicing labore v', '[\"Eve Atkins\",\"Veda Dale\"]', 'Quo labore consequun', '[\"Cheyenne Phillips\",\"Peter Cervantes\"]', '[{\"title\": \"Sit fuga Enim susci\", \"content\": \"Commodo eu et molest\"}, {\"title\": \"Reiciendis maiores u\", \"content\": \"Et et aut ea sed aut\"}]', NULL, 4, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2025-11-18 22:05:53', '2025-12-12 09:13:44', 'admin/assets/images/articles/176369295328603.png', 'admin/assets/images/articles/176351075317151.png', 'In consectetur omni 4444', NULL, NULL, '<p>Adipisicing labore v</p>', NULL, NULL, NULL, NULL, 200, 4, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2025-12-08 17:41:02', '2025-12-12 09:14:13', 'admin/assets/images/articles/176522286240911.png', 'admin/assets/images/articles/176522286274222.png', 'Tempore quod natus', 5, NULL, '<p>Est inventore exerci</p>', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2025-12-11 08:34:39', '2025-12-12 08:44:22', 'admin/assets/images/articles/176544927911323.png', 'admin/assets/images/articles/176544927976901.png', 'Veritatis consequatu', NULL, NULL, '<p>Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;Commodi similique du&nbsp;</p>', '[\"Morgan Weiss\",\"Brendan Knowles\"]', 'Aut qui facilis veni', '[\"Beverly Rush\",\"Indira Carpenter\"]', '[{\"title\": \"Fugiat in nulla ver\", \"content\": \"Commodi ex error dol\"}, {\"title\": \"Accusamus dolor est\", \"content\": \"Libero aut duis repr\"}]', NULL, 1, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2025-12-11 08:57:38', '2025-12-12 08:44:51', NULL, 'admin/assets/images/articles/176545065854451.png', 'Nisi fugit doloremq', 3, NULL, '<p>Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;Nisi fugit doloremq&nbsp;</p>', NULL, 'Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq Nisi fugit doloremq', NULL, NULL, NULL, 2, NULL, 1, 1, 1, 'admin/assets/images/articles/176545065872829.png', NULL, NULL, NULL, NULL, NULL),
(24, '2025-12-12 11:29:48', '2025-12-12 11:35:32', NULL, 'admin/assets/images/articles/176554978822921.jpg', 'Provident incidunt', 3, 1, '<p><span style=\"font-size:13px\">Provident incidunt&nbsp;</span>Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;Provident incidunt&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 1, 'admin/assets/images/articles/176554978897947.png', NULL, NULL, NULL, NULL, NULL),
(25, '2025-12-12 11:33:01', '2025-12-12 11:33:01', NULL, 'admin/assets/images/articles/176554998121527.jpg', 'Consequatur dolor e', 3, 2, '<p>Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;Consequatur dolor e&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 1, 'admin/assets/images/articles/176554998122719.png', 'Sapiente molestiae a', 'Esse molestiae dolor', 'Consectetur consequ', 'Ex ullam est adipisi', 'Non Nam tempora veli');

-- --------------------------------------------------------

--
-- Table structure for table `asks`
--

CREATE TABLE `asks` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ask` text COLLATE utf8mb4_unicode_ci,
  `ask_type_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asks`
--

INSERT INTO `asks` (`id`, `created_at`, `updated_at`, `ask`, `ask_type_id`, `deleted_at`, `is_activate`, `report_id`) VALUES
(1, '2025-11-18 22:31:08', '2025-11-18 22:31:08', 'Est tempore nulla m', '2', NULL, 1, 1),
(2, '2025-11-18 22:31:15', '2025-11-18 22:34:09', 'Quas quo vel laborio 222', '1', NULL, 1, 1),
(3, '2025-11-18 22:31:21', '2025-11-18 22:31:21', 'Et sunt elit veniam', '1', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asks_type`
--

CREATE TABLE `asks_type` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asks_type`
--

INSERT INTO `asks_type` (`id`, `created_at`, `updated_at`, `name`, `deleted_at`, `is_activate`, `report_id`) VALUES
(1, '2025-11-16 23:41:51', '2025-11-16 23:41:51', 'Thaddeus Daniels', NULL, 1, 1),
(2, '2025-11-16 23:41:54', '2025-11-16 23:41:54', 'Jael Oliver', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `parent_id`, `deleted_at`, `is_activate`, `report_id`) VALUES
(1, '2025-11-16 23:31:10', '2025-11-16 23:31:10', 'Blog', NULL, NULL, 1, 1),
(2, '2025-11-16 23:31:16', '2025-11-16 23:33:44', 'Media center', NULL, NULL, 1, 1),
(3, '2025-11-16 23:31:30', '2025-11-16 23:31:30', 'Silas Shaw 111111111', 2, NULL, 1, 1),
(4, '2025-11-16 23:31:30', '2025-11-16 23:31:30', 'Silas Shaw 22222222', 1, NULL, 1, 1),
(5, '2025-11-16 23:31:30', '2025-11-16 23:31:30', 'Silas Shaw 33333333', 2, NULL, 1, 1),
(6, '2025-11-16 23:31:30', '2025-11-16 23:31:30', 'Silas Shaw 444444444', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `comment`, `article_id`, `user_id`, `deleted_at`, `is_activate`) VALUES
(1, '2025-12-12 16:43:30', '2025-12-12 14:09:11', 'aaaaaaa aaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaa aaaaaaaaaaa aaaaaaaaaaaaaaaa', 25, 1, NULL, 0),
(2, '2025-12-12 13:10:46', '2025-12-12 13:10:46', 'ppppppppppp ppppppppppp ppppppppppppppppppppppppp', 25, 2, NULL, 1),
(3, '2025-12-12 13:12:43', '2025-12-12 13:12:43', 'Est deleniti labori', 25, 2, NULL, 1),
(4, '2025-12-12 13:13:15', '2025-12-12 13:13:15', 'Aut porro animi rem', 25, 2, NULL, 1),
(5, '2025-12-12 13:22:14', '2025-12-12 13:22:14', 'Quam molestiae omnis', 25, 2, NULL, 1),
(6, '2025-12-12 13:22:58', '2025-12-12 13:23:20', 'Non molestias est ad', 25, 2, NULL, 0),
(7, '2025-12-12 13:30:49', '2025-12-12 13:32:21', 'Minim voluptatem ma', 25, 2, NULL, 1),
(8, '2025-12-12 13:32:40', '2025-12-12 13:32:40', 'Est totam ad nemo ad', 24, 2, NULL, 0),
(9, '2025-12-12 13:36:09', '2025-12-12 13:36:09', 'tttttt tttttt ttttttttttttttttt', 25, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `phone`, `message`, `deleted_at`, `is_activate`) VALUES
(1, '2025-12-13 06:23:52', '2025-12-13 06:23:52', 'Kaitlin', 'Hall', 'nolix@mailinator.com', '+1 (586) 635-7543', 'Quis voluptate exerc', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `report_id`) VALUES
(1, '2014_10_12_000000_create_users_table', 1, 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1, 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1, 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1, 1),
(5, '2023_10_19_000000_create_admins_table', 1, 1),
(6, '2023_10_19_000000_create_categories_table', 2, 1),
(7, '2023_10_19_000000_create_asksType_table', 3, 1),
(8, '2023_10_19_000000_create_articles_table', 4, 1),
(9, '2023_10_19_000000_create_asks_table', 5, 1),
(10, '2023_10_19_000000_create_reports_table', 6, 1),
(11, '3025_10_28_112139_add_status_to_all_tables', 6, 1),
(12, '2023_10_19_000000_create_writers_table', 7, 1),
(13, '2023_10_19_000000_create_comments_table', 8, 1),
(14, '2023_10_19_000000_create_contacts_table', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1',
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `created_at`, `updated_at`, `name`, `deleted_at`, `is_activate`, `report_id`) VALUES
(1, '2025-11-19 08:28:00', '2025-11-19 08:28:00', 'report', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `report_id` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `mobile_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `report_id`) VALUES
(1, 'Juliet Pollard', 'kykyvak@mailinator.com', NULL, '+1 (244) 562-8741', NULL, '$2y$10$ULw37Qpb95AKcZrQR/y5YuZ.2UfIomWSihr.8jgYorIElVjvRVfC.', NULL, '2025-12-10 05:10:35', '2025-12-10 05:10:35', 1),
(2, 'Lael Maldonado', 'amr@gmail.com', NULL, '3732', NULL, '$2y$10$fVy5aD3QhOh4OThChgF6deaCNiB/2y35ln39lsA/SP7RLZiR2P4sy', NULL, '2025-12-10 05:11:52', '2025-12-10 05:11:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x_url` varchar(1255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_activate` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `created_at`, `updated_at`, `name`, `info`, `img`, `linkedin`, `whatsapp`, `facebook`, `email`, `x_url`, `deleted_at`, `is_activate`) VALUES
(1, '2025-12-12 11:20:52', '2025-12-12 11:20:52', 'Caesar Brewer', 'Provident qui omnis', 'admin/assets/images/writers/176554925238753.png', 'Et lorem ut quis cil', 'Error deserunt nostr', 'Sed iure tenetur acc', 'Nulla ut doloremque', 'Cupidatat quia tempo', NULL, 1),
(2, '2025-12-12 11:21:07', '2025-12-12 11:21:27', 'Noah Rollins 222', 'Sed necessitatibus c 333', 'admin/assets/images/writers/176554926748971.png', 'Laborum Et reprehen 333', 'Quia eveniet pariat', 'Voluptatem amet qui', 'Assumenda placeat b', 'Est sed sed odit ex', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asks`
--
ALTER TABLE `asks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asks_type`
--
ALTER TABLE `asks_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `asks_type`
--
ALTER TABLE `asks_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
