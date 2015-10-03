-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 03 Paź 2015, 20:29
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `telecom`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `account_id` int(100) NOT NULL,
  `internet_mb` int(255) NOT NULL,
  `minutes_to_the_network` int(255) NOT NULL,
  `minutes_for_all` int(255) NOT NULL,
  `sms_to_all` int(255) NOT NULL,
  `account_balance` double NOT NULL,
  `activation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `validity_date_of_outgoing_calls` datetime DEFAULT CURRENT_TIMESTAMP,
  `validity_date_of_incoming_calls` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `account`
--

INSERT INTO `account` (`account_id`, `internet_mb`, `minutes_to_the_network`, `minutes_for_all`, `sms_to_all`, `account_balance`, `activation_date`, `validity_date_of_outgoing_calls`, `validity_date_of_incoming_calls`) VALUES
(1, 257, 89, 58, 116, 231, '2014-05-07 13:01:06', '2014-06-24 23:40:51', '2014-05-09 21:55:30'),
(2, 440, 98, 62, 36, 102, '2015-01-01 05:58:55', '2015-12-13 16:24:55', '2016-04-12 17:40:31'),
(3, 525, 55, 192, 258, 149, '2015-04-01 01:07:11', '2015-07-21 05:37:56', '2014-05-08 12:14:04'),
(4, 475, 67, 72, 197, 220, '2015-05-29 09:07:35', '2016-01-01 03:57:14', '2015-02-06 02:53:00'),
(5, 43, 81, 37, 177, 162, '2014-04-16 02:30:56', '2014-11-22 00:31:07', '2016-02-29 03:48:59'),
(6, 277, 87, 124, 100, 173, '2014-06-25 18:18:06', '2015-05-19 20:49:47', '2015-10-13 22:01:17'),
(7, 543, 52, 62, 139, 110, '2016-02-02 19:38:22', '2015-03-28 21:54:46', '2014-06-22 21:30:48'),
(8, 758, 88, 112, 144, 217, '2015-08-23 07:35:57', '2015-02-27 23:06:00', '2015-02-22 21:28:51'),
(9, 964, 69, 38, 220, 164, '2016-02-01 22:35:23', '2014-04-24 08:39:55', '2015-04-21 09:19:03'),
(10, 266, 74, 199, 203, 195, '2015-12-12 01:35:57', '2016-03-26 18:03:19', '2015-07-15 06:03:17'),
(11, 516, 47, 201, 245, 109, '2015-10-20 03:42:27', '2014-09-06 00:57:56', '2015-08-17 14:50:40'),
(12, 819, 46, 118, 286, 137, '2014-07-14 16:07:23', '2015-07-01 05:57:27', '2015-11-22 13:49:38'),
(13, 710, 41, 92, 300, 231, '2016-01-02 13:41:10', '2015-01-16 19:24:42', '2015-08-17 00:15:34'),
(14, 841, 75, 107, 220, 152, '2015-01-24 20:30:45', '2015-02-26 02:44:48', '2014-12-01 21:03:45'),
(15, 404, 92, 205, 116, 201, '2015-05-02 06:17:19', '2015-07-25 22:30:36', '2016-03-25 01:03:56'),
(16, 862, 58, 109, 146, 227, '2015-11-06 15:41:10', '2015-07-16 13:55:42', '2014-09-26 00:49:40'),
(17, 445, 45, 143, 106, 198, '2015-01-21 12:49:39', '2016-01-31 22:20:14', '2014-12-17 16:39:20'),
(18, 507, 58, 133, 310, 164, '2016-02-20 19:25:58', '2015-09-15 05:19:32', '2016-03-09 19:26:52'),
(19, 781, 73, 156, 62, 174, '2014-07-20 09:54:39', '2015-05-15 20:36:25', '2015-02-19 02:22:22'),
(20, 894, 83, 160, 238, 166, '2016-02-08 04:00:28', '2016-01-17 07:21:39', '2015-08-19 15:05:17'),
(21, 647, 98, 154, 286, 180, '2015-09-06 23:19:34', '2015-07-14 07:21:03', '2016-04-04 15:45:16'),
(22, 828, 92, 153, 50, 212, '2015-10-03 00:08:55', '2014-07-16 07:03:48', '2015-09-18 11:32:35'),
(23, 226, 78, 115, 39, 139, '2015-05-15 19:16:17', '2016-03-03 21:58:59', '2014-07-03 21:45:53'),
(24, 875, 96, 62, 136, 183, '2014-06-25 00:56:53', '2015-09-23 17:53:47', '2014-04-24 04:19:50'),
(25, 197, 67, 176, 138, 125, '2016-03-06 18:41:54', '2015-05-11 19:10:30', '2015-05-13 06:43:49'),
(26, 618, 64, 190, 170, 175, '2015-01-18 00:03:49', '2014-12-12 08:20:51', '2015-05-13 08:38:15'),
(27, 837, 81, 87, 262, 138, '2015-09-06 20:51:08', '2015-06-05 21:19:15', '2014-05-21 15:59:01'),
(28, 712, 68, 213, 200, 232, '2016-02-11 12:56:39', '2015-07-28 18:24:22', '2014-10-24 18:10:35'),
(29, 23, 54, 122, 254, 108, '2015-03-01 14:31:04', '2014-11-01 00:06:40', '2015-08-07 01:47:36'),
(30, 699, 98, 125, 115, 107, '2015-11-16 05:58:42', '2014-09-14 07:11:39', '2015-03-05 08:58:23'),
(31, 233, 45, 200, 123, 104, '2015-01-01 20:53:46', '2016-01-22 04:13:47', '2015-02-24 08:00:17'),
(32, 1014, 44, 196, 54, 173, '2014-07-13 10:07:41', '2015-04-19 21:30:31', '2015-12-21 23:52:15'),
(33, 97, 87, 227, 157, 196, '2014-07-01 11:42:27', '2015-11-10 06:35:43', '2015-01-24 03:34:46'),
(34, 217, 43, 148, 203, 171, '2014-06-03 14:33:54', '2015-09-25 19:15:22', '2015-02-10 16:04:28'),
(35, 178, 95, 45, 50, 233, '2015-11-10 02:09:26', '2015-04-10 16:03:47', '2014-12-15 07:19:14'),
(36, 854, 87, 162, 153, 179, '2015-10-31 00:54:13', '2015-12-12 21:41:30', '2015-11-24 13:54:48'),
(37, 367, 76, 133, 121, 181, '2016-02-20 14:10:05', '2015-07-09 12:57:02', '2015-08-05 02:03:10'),
(38, 204, 74, 230, 89, 130, '2014-09-16 05:06:40', '2014-11-30 05:09:51', '2015-11-21 07:15:06'),
(39, 826, 65, 44, 141, 158, '2014-06-19 09:28:15', '2014-04-25 00:08:36', '2016-03-31 02:39:43'),
(40, 758, 42, 233, 159, 139, '2015-09-30 16:48:28', '2015-02-23 19:47:53', '2014-10-29 18:04:07'),
(41, 487, 68, 143, 65, 102, '2015-12-21 10:20:38', '2015-05-31 09:17:19', '2016-02-22 23:48:04'),
(42, 482, 90, 67, 115, 205, '2014-10-15 23:48:36', '2016-01-12 12:59:12', '2014-05-12 21:41:11'),
(43, 949, 62, 71, 83, 190, '2014-04-28 20:04:54', '2015-02-22 21:23:21', '2015-03-19 13:52:12'),
(44, 993, 56, 85, 207, 204, '2015-11-17 03:15:43', '2014-09-07 18:36:31', '2016-03-14 06:10:57'),
(45, 925, 65, 135, 213, 185, '2014-05-28 18:48:50', '2014-08-30 14:17:08', '2015-05-18 09:30:52'),
(46, 948, 60, 177, 224, 107, '2015-09-27 12:48:54', '2014-08-22 10:12:45', '2014-09-24 16:54:06'),
(47, 240, 54, 206, 77, 178, '2015-10-26 18:05:02', '2016-03-02 20:28:06', '2015-06-27 10:57:20'),
(48, 725, 93, 110, 105, 186, '2014-11-10 09:33:41', '2015-01-01 09:23:01', '2015-05-27 13:11:07'),
(49, 943, 62, 226, 227, 166, '2015-08-19 00:52:53', '2016-03-06 06:15:05', '2014-07-12 05:11:01'),
(50, 438, 52, 39, 171, 187, '2014-11-06 21:53:20', '2015-06-02 08:59:27', '2015-12-12 09:33:14'),
(51, 724, 95, 100, 154, 135, '2014-04-17 01:18:32', '2015-10-29 21:12:14', '2015-02-22 12:05:14'),
(52, 827, 64, 201, 183, 221, '2016-02-14 23:17:12', '2014-08-21 16:24:09', '2015-09-09 00:36:20'),
(53, 553, 98, 153, 184, 144, '2014-08-14 18:37:36', '2015-10-28 03:05:56', '2015-10-11 01:02:51'),
(54, 993, 95, 155, 262, 135, '2015-05-14 10:42:00', '2014-06-03 00:56:09', '2015-11-17 20:23:10'),
(55, 603, 43, 172, 164, 192, '2015-05-06 18:11:23', '2014-10-24 02:54:41', '2015-12-28 01:44:17'),
(56, 532, 86, 132, 165, 193, '2015-09-20 06:48:01', '2015-09-03 06:24:47', '2014-04-26 18:35:15'),
(57, 867, 60, 180, 291, 205, '2015-02-25 21:21:30', '2015-02-03 17:58:51', '2015-05-08 23:06:06'),
(58, 714, 69, 118, 195, 133, '2015-02-18 12:24:55', '2016-03-31 22:30:37', '2015-12-20 07:19:32'),
(59, 378, 67, 137, 231, 173, '2015-10-04 22:35:20', '2014-04-22 02:59:51', '2016-01-06 10:52:39'),
(60, 345, 41, 66, 310, 183, '2015-01-18 22:21:37', '2014-06-06 23:42:46', '2016-03-01 22:19:16'),
(61, 486, 86, 48, 257, 187, '2015-06-10 00:03:37', '2015-03-12 13:12:13', '2014-08-06 23:07:03'),
(62, 328, 46, 185, 317, 195, '2016-01-28 08:52:06', '2015-11-09 12:47:49', '2014-07-14 15:33:01'),
(63, 790, 87, 149, 123, 205, '2014-11-26 12:09:06', '2015-12-19 22:18:00', '2015-03-23 02:57:55'),
(64, 135, 54, 93, 65, 153, '2014-06-18 00:48:50', '2015-09-21 16:12:22', '2015-04-15 00:09:31'),
(65, 906, 56, 174, 83, 160, '2015-12-29 06:55:23', '2015-07-21 16:21:46', '2015-07-19 06:14:10'),
(66, 796, 58, 68, 240, 181, '2014-08-07 13:30:01', '2015-01-08 07:35:33', '2014-11-25 05:35:51'),
(67, 415, 57, 209, 44, 162, '2015-03-12 02:31:46', '2014-04-21 08:26:12', '2016-04-10 22:24:10'),
(68, 186, 93, 47, 274, 117, '2016-01-11 22:05:48', '2014-07-30 15:44:55', '2015-03-03 02:48:49'),
(69, 243, 61, 206, 59, 168, '2014-07-01 10:07:21', '2015-02-01 06:35:21', '2015-12-01 00:11:00'),
(70, 986, 100, 211, 60, 133, '2015-06-30 10:40:14', '2015-03-26 04:27:01', '2015-08-22 09:33:21'),
(71, 21, 58, 208, 145, 102, '2015-10-26 23:55:05', '2014-10-11 14:49:36', '2015-12-30 09:50:22'),
(72, 979, 55, 35, 247, 113, '2014-08-05 10:32:40', '2015-05-27 11:10:57', '2015-04-15 13:48:43'),
(73, 929, 69, 226, 179, 102, '2015-08-03 11:16:38', '2014-08-22 18:37:23', '2016-01-01 01:32:14'),
(74, 152, 97, 135, 239, 159, '2015-02-25 00:58:41', '2016-04-08 11:58:22', '2014-12-09 15:33:53'),
(75, 658, 80, 136, 178, 111, '2014-09-14 00:50:22', '2014-11-10 17:31:19', '2015-08-11 20:59:04'),
(76, 393, 100, 131, 87, 104, '2016-01-25 04:34:45', '2015-05-19 16:32:17', '2015-05-23 17:39:18'),
(77, 684, 90, 93, 173, 176, '2015-01-04 19:38:12', '2014-07-25 09:58:26', '2015-11-27 07:01:58'),
(78, 412, 52, 153, 308, 170, '2015-03-22 08:25:01', '2014-09-03 03:18:41', '2015-06-25 14:13:03'),
(79, 276, 87, 193, 185, 106, '2015-09-28 20:55:45', '2015-04-08 16:52:09', '2014-09-09 15:00:44'),
(80, 670, 87, 217, 84, 232, '2015-10-07 16:32:41', '2014-04-29 10:56:49', '2014-11-14 17:11:00'),
(81, 549, 63, 101, 123, 211, '2015-09-26 02:56:10', '2015-03-16 23:54:45', '2014-07-30 04:19:45'),
(82, 478, 49, 61, 89, 157, '2015-07-07 23:46:30', '2015-11-16 22:08:00', '2014-07-12 02:15:33'),
(83, 988, 80, 98, 281, 111, '2014-08-21 11:37:49', '2014-11-11 21:03:46', '2015-12-04 23:04:08'),
(84, 214, 63, 50, 255, 166, '2014-07-29 18:18:12', '2015-03-29 17:58:26', '2015-11-21 19:10:10'),
(85, 829, 87, 54, 96, 180, '2016-01-17 08:25:18', '2015-08-21 19:06:03', '2015-11-06 07:13:00'),
(86, 131, 99, 202, 303, 211, '2016-03-13 14:20:38', '2014-09-03 11:10:28', '2015-07-05 17:14:05'),
(87, 669, 72, 159, 156, 194, '2015-07-26 21:17:43', '2015-07-17 06:43:53', '2015-03-20 19:51:54'),
(88, 858, 53, 89, 236, 200, '2016-03-26 12:45:28', '2016-03-27 18:27:07', '2014-11-01 22:19:32'),
(89, 311, 53, 124, 108, 174, '2014-12-05 22:33:11', '2015-10-20 09:00:20', '2015-02-19 03:47:46'),
(90, 842, 79, 90, 116, 224, '2014-11-07 19:01:35', '2016-04-09 02:00:40', '2015-02-26 04:30:21'),
(91, 881, 46, 153, 116, 226, '2016-02-26 04:07:09', '2014-04-19 21:06:08', '2014-06-15 02:28:16'),
(92, 927, 50, 59, 130, 153, '2016-04-11 09:16:07', '2015-01-19 13:00:41', '2014-10-31 00:25:52'),
(93, 955, 84, 229, 320, 202, '2016-02-03 08:53:23', '2014-09-12 18:52:10', '2014-04-25 00:30:26'),
(94, 505, 70, 142, 217, 168, '2015-02-20 04:41:49', '2016-03-10 09:37:50', '2015-11-17 20:43:07'),
(95, 435, 65, 66, 182, 125, '2016-01-16 16:35:48', '2015-12-07 10:31:32', '2016-02-21 00:48:03'),
(96, 422, 96, 206, 110, 226, '2015-03-20 19:50:48', '2016-02-12 04:33:37', '2014-05-10 11:02:16'),
(97, 784, 55, 92, 267, 170, '2016-03-07 18:04:30', '2015-03-25 12:18:12', '2014-11-24 16:39:11'),
(98, 452, 49, 172, 109, 193, '2015-04-21 13:35:27', '2015-04-27 05:27:02', '2014-05-29 18:14:42'),
(99, 528, 58, 200, 224, 209, '2014-05-24 08:22:18', '2014-06-07 15:39:12', '2014-08-04 16:54:54'),
(100, 639, 51, 229, 299, 132, '2015-11-25 09:11:12', '2015-05-08 04:57:19', '2016-02-03 10:23:49');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(12) NOT NULL,
  `name` varchar(225) NOT NULL,
  `surname` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `pesel` bigint(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `home_nr` int(10) NOT NULL,
  `flat_nr` int(10) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `basic_phone` int(32) NOT NULL,
  `contact_phone` int(32) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `password`, `pesel`, `document`, `post_code`, `street`, `home_nr`, `flat_nr`, `city`, `province`, `email`, `basic_phone`, `contact_phone`, `account_id`) VALUES
(25, 'Shellie', 'Chen', '3040', 61555536971, 'Pellentesque Habitant Associates', '33990', 'Ap #557-2457 Sagittis Street', 128, 2, 'Strasbourg', 'Alsace', 'pharetra.sed@cursus.org', 110782585, 826580756, 25),
(8889, 'cos tam ', 'Hopper', '4723', 82598368015, 'Sed Sapien Nunc Institute', '80427', '894 Metus Ave', 136, 2, 'Belfast', 'U', 'velit.eget@Pellentesqueutipsum.com', 111375162, 408085693, 6676),
(70, 'Dara', 'Crosby', '5431', 26674132510, 'Augue Scelerisque Mollis Corp.', '595440', '5604 Adipiscing Rd.', 19, 7, 'North Las Vegas', 'NV', 'consequat.dolor.vitae@blanditviverra.com', 124093563, 776031501, 70),
(74, 'Latifah', 'Wall', '8052', 97631528303, 'Integer Tincidunt Aliquam Corporation', '81132-625', 'Ap #973-6488 Velit. Av.', 94, 8, 'Kincardine', 'PE', 'In.tincidunt@quis.net', 128726658, 729959662, 74),
(56, 'Arthur', 'Anthony', '5354', 55454702069, 'Vitae Corp.', '941716', 'Ap #532-1917 Eget Rd.', 3, 6, 'Hard', 'Vbg', 'metus.Aliquam@Classaptenttaciti.ca', 131101049, 816789851, 56),
(79, 'Marcia', 'Harmon', '7506', 49312813109, 'Enim Limited', '41018', '1876 Vestibulum Ave', 57, 4, 'Sandy', 'Utah', 'molestie.orci.tincidunt@tellus.com', 140954344, 339147461, 79),
(83, 'Leila', 'Mathis', '1163', 26313802707, 'Ridiculus Mus Donec LLC', '8031', '1842 Sem. Ave', 75, 7, 'Dubbo', 'NSW', 'Aliquam.tincidunt@diam.net', 142503263, 641404189, 83),
(30, 'Ivory', 'Guerra', '8511', 73148746779, 'Turpis Nec Inc.', '0073', 'P.O. Box 329, 9177 Est. Road', 161, 2, 'León', 'CL', 'vehicula.risus.Nulla@vulputateposuere.com', 155297538, 688010611, 30),
(97, 'Ora', 'Carrillo', '6628', 95399175905, 'Cras Dolor Dolor LLC', '7036', 'P.O. Box 671, 9653 Sagittis Ave', 9, 1, 'Salamanca', 'CL', 'lorem.vehicula.et@mattis.co.uk', 161600330, 808021641, 97),
(77, 'Zachary', 'Pickett', '6177', 81700250888, 'Aliquam Corporation', '46136', 'P.O. Box 267, 8310 Metus Road', 9, 3, 'Berlin', 'BE', 'tristique.aliquet@id.co.uk', 180730209, 154730467, 77),
(45, 'Rosalyn', 'Ryan', '3150', 68287312216, 'Quisque Purus Institute', '1573', '950-5435 Lorem St.', 109, 7, 'Brampton', 'Cumberland', 'et.magna@ultriciessem.com', 182163155, 831529379, 45),
(32, 'Karleigh', 'Glenn', '4766', 29109291173, 'Rutrum Non Incorporated', '35580', 'P.O. Box 650, 8087 Tellus. Rd.', 47, 1, 'Zaragoza', 'Aragón', 'Lorem.ipsum.dolor@semperNamtempor.co.uk', 186945501, 869046818, 32),
(47, 'Maia', 'Conner', '2158', 25018716566, 'Diam Limited', '70308', '5355 Ipsum Ave', 37, 1, 'Dresden', 'Saxony', 'enim.Sed.nulla@Vestibulumuteros.org', 190426561, 784749620, 47),
(8889, 'cos tam ', 'Hopper', '4723', 82598368015, 'Sed Sapien Nunc Institute', '80427', '894 Metus Ave', 136, 2, 'Belfast', 'U', 'velit.eget@Pellentesqueutipsum.com', 195375162, 408085693, 6676),
(8, 'cos tam ', 'Hopper', '4723', 82561368015, 'Sed Sapien Nunc Institute', '80427', '894 Metus Ave', 136, 2, 'Belfast', 'U', 'velit.eget@Pellentesqueutipsum.com', 195375361, 408085693, 6676),
(8888, 'cos tam ', 'Hopper', '4723', 82598368015, 'Sed Sapien Nunc Institute', '80427', '894 Metus Ave', 136, 2, 'Belfast', 'U', 'velit.eget@Pellentesqueutipsum.com', 195375362, 408085693, 6676),
(95, 'Kerry', 'Brooks', '6172', 89500149195, 'Elit Elit Fermentum Ltd', '533440', 'Ap #995-2115 Ornare, Ave', 109, 2, 'Shepparton', 'Victoria', 'elit@enimnislelementum.com', 199063415, 406961852, 95),
(34, 'Colette', 'Phillips', '2203', 15269295708, 'Massa Quisque Porttitor Consulting', '85932', 'Ap #651-8841 Urna. St.', 36, 3, 'Bogaarden', 'Vlaams-Brabant', 'velit.Pellentesque.ultricies@nuncacmattis.ca', 209426163, 634141711, 34),
(72, 'Giacomo', 'Robbins', '4726', 25587426600, 'Arcu Sed Et Limited', '03530', '9555 Auctor, Street', 135, 9, 'Akron', 'Ohio', 'primis.in@arcuiaculisenim.co.uk', 209965891, 567888527, 72),
(53, 'Gail', 'Rosales', '7137', 44328577630, 'Ornare Libero At Institute', '41-993', '5381 Sit Street', 123, 6, 'Bad Oldesloe', 'SL', 'pede.malesuada@consectetuer.org', 210924251, 945248102, 53),
(38, 'Yvonne', 'Dawson', '792', 44976859837, 'Libero Et Tristique LLP', '52924', '593-563 Sem Av.', 94, 1, 'Hamburg', 'HH', 'eget.laoreet.posuere@luctus.edu', 216826211, 709824659, 38),
(66, 'Rinah', 'Noel', '3616', 75447888527, 'Sem PC', '2074', 'P.O. Box 156, 4501 Lorem Road', 38, 5, 'Denver', 'CO', 'Duis.ac.arcu@sodalespurus.org', 219472174, 786266553, 66),
(29, 'Cullen', 'Brennan', '8215', 34449198381, 'Adipiscing Ltd', '89138-001', '9765 Nullam Road', 122, 6, 'Port Hope', 'ON', 'eu@laciniaatiaculis.com', 247432971, 702636105, 29),
(67, 'Ursa', 'Owen', '6148', 62163490992, 'Non Limited', '11106', 'Ap #264-5577 Id Rd.', 70, 10, 'Vienna', 'Wie', 'et.lacinia@Vestibulum.com', 247537020, 129547009, 67),
(17, 'Jocelyn', 'Mclean', '3811', 95217244769, 'Erat Vivamus Nisi Ltd', '41851', 'P.O. Box 346, 2673 Nullam Road', 119, 2, 'Whangarei', 'North Island', 'dolor.sit.amet@Praesenteunulla.org', 255477635, 113470746, 17),
(14, 'Ethan', 'Orr', '2549', 54401068552, 'Molestie Orci Foundation', 'R4N 9P0', 'Ap #435-2080 Est. St.', 161, 4, 'Granada', 'Andalucía', 'lorem.auctor.quis@Namtempordiam.org', 261665992, 931277491, 14),
(2, 'Donna', 'Dyer', '4338', 56229105768, 'Mauris Non Dui Ltd', '100243', '951-1982 Lobortis Road', 23, 6, 'Berlin', 'BE', 'vitae@consequat.com', 272953901, 581248281, 2),
(75, 'Macaulay', 'Kinney', '4687', 46599312773, 'Scelerisque Mollis Phasellus Foundation', '31271', 'P.O. Box 876, 5213 Mauris St.', 144, 10, 'Bal?kesir', 'Bal?kesir', 'luctus.ipsum@nullamagnamalesuada.org', 287391278, 502043557, 75),
(39, 'Kibo', 'Norman', '6759', 84468658473, 'Malesuada Fringilla Corporation', '29370', '3655 Enim, Rd.', 106, 2, 'Levin', 'North Island', 'neque@at.co.uk', 299258859, 839220931, 39),
(41, 'Lamar', 'Conway', '6773', 92160652684, 'Curabitur LLC', '82557', 'P.O. Box 893, 1412 Nec, St.', 131, 1, 'Gboko', 'Benue', 'orci@tempusrisus.com', 323375124, 471445921, 41),
(50, 'Felicia', 'Meadows', '6689', 55929423603, 'Nulla Aliquet Incorporated', '72062', 'Ap #364-8571 Nunc Street', 127, 10, 'Hasselt', 'L.', 'tellus.Aenean@orciluctuset.edu', 332870197, 261670568, 50),
(15, 'Noel', 'Arnold', '9299', 78584133628, 'Malesuada Limited', '33891', 'P.O. Box 265, 4321 Diam Av.', 78, 4, 'Beaumaris', 'AG', 'purus.Duis@fringillaornare.co.uk', 338598676, 516440399, 15),
(4, 'Galvin', 'Compton', '8486', 65728229796, 'Dolor Nulla Semper Incorporated', '72559', '5124 Nulla Road', 19, 8, 'Hamburg', 'Hamburg', 'a.magna@anteVivamus.org', 340007478, 762080132, 4),
(62, 'Talon', 'Buckley', '1261', 34372793687, 'A Scelerisque Limited', '5835JQ', 'P.O. Box 480, 9373 Sed Rd.', 188, 7, 'Galway', 'C', 'Phasellus.elit.pede@viverra.net', 349306592, 913323889, 62),
(87, 'Kylan', 'Roman', '8474', 31954672709, 'Aliquet Magna A Associates', '25763', 'P.O. Box 682, 1824 Accumsan Rd.', 53, 1, 'Ichalkaranji', 'MH', 'Mauris.molestie@euligulaAenean.edu', 372795496, 807989807, 87),
(8889, 'cos tam ', 'Hopper', '4723', 82598368015, 'Sed Sapien Nunc Institute', '80427', '894 Metus Ave', 136, 2, 'Belfast', 'U', 'velit.eget@Pellentesqueutipsum.com', 375162222, 408085693, 6676),
(51, 'Abigail', 'Mejia', '22', 67144268476, 'Est Nunc Laoreet Industries', 'Y4E 1S5', 'Ap #612-943 Magnis Avenue', 29, 6, 'Dublin', 'Leinster', 'facilisi.Sed.neque@tinciduntnunc.net', 377497173, 994169836, 51),
(23, 'Omar', 'Harrell', '9144', 46305617508, 'Mauris Industries', '65507', '623-5768 Ut Rd.', 103, 5, 'Manchester', 'LA', 'enim.sit@IntegermollisInteger.ca', 381870591, 893713473, 23),
(42, 'Vivian', 'Donaldson', '7581', 19835000215, 'Augue Scelerisque Mollis Associates', '8588', '614-6409 Nunc St.', 52, 3, 'Grey County', 'ON', 'nibh.Donec.est@ipsumprimisin.org', 396234873, 198769520, 42),
(59, 'Daquan', 'Velez', '6832', 64734430075, 'Amet Corporation', 'P43 7KY', '753-7420 Cursus Rd.', 25, 9, 'Lublin', 'Lubelskie', 'velit.Sed.malesuada@risusNuncac.org', 402313112, 461876611, 59),
(68, 'Camille', 'Webb', '6682', 37169507713, 'Semper Erat Ltd', '7672VZ', 'P.O. Box 828, 1648 Maecenas St.', 20, 1, 'Port Hope', 'ON', 'rhoncus.id.mollis@consectetuereuismod.co.uk', 411707089, 550474909, 68),
(96, 'Elaine', 'Gordon', '7239', 89374490929, 'Tincidunt Pede Ac Consulting', '88-347', '2718 Scelerisque Ave', 158, 9, 'Pittsburgh', 'Pennsylvania', 'dui@CuraeDonectincidunt.net', 415117856, 319552842, 96),
(61, 'Quynn', 'Leblanc', '3674', 89175220611, 'Neque Institute', '350958', 'P.O. Box 805, 5669 Ut Rd.', 35, 3, 'Forgaria nel Friuli', 'Friuli-Venezia Giulia', 'rutrum@DonectinciduntDonec.ca', 420264479, 896466005, 61),
(99, 'Lars', 'Gomez', '6621', 56703868163, 'Magna Foundation', '822678', 'P.O. Box 908, 2659 Molestie Avenue', 153, 7, 'Hawera', 'NI', 'Nunc@nonegestasa.ca', 466389057, 782813995, 99),
(22, 'Keegan', 'Medina', '4978', 94680381272, 'Hendrerit A Industries', '20606', '482-5586 Risus Street', 13, 2, 'Fréjus', 'PR', 'Proin@cursus.net', 499470218, 285498728, 22),
(16, 'Chadwick', 'Rhodes', '2249', 92381967534, 'Sem Inc.', '6242', '7617 Nunc Street', 77, 2, 'Timaru', 'SI', 'metus.In@venenatislacusEtiam.co.uk', 515598158, 697835678, 16),
(89, 'Nyssa', 'Vargas', '7542', 84666245202, 'Iaculis Lacus Pede LLC', '50192', 'P.O. Box 590, 1372 Volutpat. Rd.', 86, 8, 'Concepción', 'San José', 'morbi.tristique@vitaedolor.net', 518577923, 890428052, 89),
(19, 'Juliet', 'Weeks', '5942', 27108800993, 'Vitae Mauris Ltd', 'V1L 7R9', '476-7884 Eu Av.', 137, 10, 'Kaduna', 'Kaduna', 'purus@interdumligula.com', 530751155, 677904986, 19),
(85, 'Vladimir', 'Short', '14', 50972370929, 'Eget Associates', '13667-856', 'P.O. Box 324, 956 Lectus Road', 3, 10, 'Helena', 'Montana', 'vulputate.risus@feugiatnec.ca', 566137756, 352968105, 85),
(54, 'Robert', 'Stanton', '5838', 16068722405, 'Malesuada Integer Id Industries', '42900', 'P.O. Box 116, 9041 In, Avenue', 91, 8, 'Buguma', 'RI', 'interdum.Sed@Quisque.com', 576228042, 706845211, 54),
(93, 'Lars', 'Randolph', '2186', 79539508442, 'Curae; Donec Company', '1184', '7634 Non St.', 50, 2, 'San José de Alajuela', 'Alajuela', 'lacinia.vitae@dolordapibusgravida.com', 583381087, 657909844, 93),
(60, 'Vivian', 'Nguyen', '7260', 37841401658, 'Nulla Facilisi Sed Company', '4393', '8594 Proin Rd.', 48, 7, 'Córdoba', 'Andalucía', 'at.libero.Morbi@purus.com', 591639052, 338941783, 60),
(82, 'Kasper', 'Keller', '5068', 18009471409, 'Lobortis Tellus Ltd', '875756', '667-6903 Dapibus St.', 107, 2, 'Macclesfield', 'CH', 'justo.nec.ante@a.ca', 610932821, 355548073, 82),
(81, 'Fay', 'Byrd', '6998', 23978846888, 'Lobortis Augue Corp.', '29315', 'Ap #241-9529 Libero Rd.', 8, 3, 'Nanterre', 'IL', 'semper@justofaucibus.org', 620347349, 197581701, 81),
(98, 'Vivien', 'Andrews', '4107', 97597225112, 'Diam Eu LLC', '9308', 'P.O. Box 142, 4340 Quam Avenue', 38, 10, 'Wa?brzych', 'Dolno?l?skie', 'lacus.Mauris.non@temporest.co.uk', 627347924, 333570012, 98),
(33, 'Uta', 'Benson', '2684', 57724631587, 'Justo Nec Ante Corp.', '3610', 'Ap #567-9488 Dolor Street', 148, 8, 'Fort Wayne', 'IN', 'pellentesque.massa.lobortis@Etiamligula.com', 633045116, 517722460, 33),
(90, 'Dexter', 'Jenkins', '6887', 28108156407, 'Vulputate Ullamcorper Magna Institute', '8338', '2274 Et, Ave', 83, 10, 'Tay', 'Ontario', 'est.mauris.rhoncus@imperdietornare.co.uk', 641776956, 779958131, 90),
(43, 'Howard', 'Norman', '7873', 40202471758, 'Quisque Porttitor Eros Ltd', '47613', 'P.O. Box 269, 8940 Urna Av.', 55, 1, 'Nijmegen', 'Gelderland', 'euismod@scelerisquenequeNullam.ca', 643947436, 382734042, 43),
(52, 'Lacy', 'Gamble', '9467', 66628599208, 'Tortor Company', '67204', 'P.O. Box 171, 624 Dolor Rd.', 70, 2, 'Galway', 'Connacht', 'magna.malesuada.vel@quis.net', 654413342, 479910574, 52),
(13, 'Forrest', 'Barrera', '4233', 77662973157, 'Adipiscing Fringilla Foundation', '02046', '134 Aliquet Road', 51, 7, 'Heusden', 'Noord Brabant', 'a.arcu.Sed@dolor.co.uk', 696940439, 930985028, 13),
(31, 'Tyrone', 'Sherman', '7498', 60247577442, 'Nulla At Sem Consulting', '3182', '881-1229 Nec Road', 105, 9, 'Berlin', 'BE', 'dis.parturient.montes@sociisnatoque.org', 709840240, 107231472, 31),
(27, 'Blair', 'Stanley', '7946', 89825017135, 'Fusce Mi Consulting', '9717', 'Ap #813-5246 Fusce Av.', 116, 9, 'Montpelier', 'VT', 'dignissim.Maecenas.ornare@tinciduntduiaugue.edu', 713245132, 896440207, 27),
(48, 'Regan', 'Cabrera', '3069', 25781933316, 'Tellus Industries', '11369-331', '196 Risus. Road', 65, 7, 'Mersin', 'Mer', 'malesuada@tinciduntnequevitae.ca', 731497993, 304227435, 48),
(3, 'Piper', 'Boone', '4384', 40900763375, 'Laoreet PC', '51397', '935-2319 Sapien. Av.', 87, 5, 'Zoetermeer', 'Zuid Holland', 'Donec@Phasellus.net', 760470997, 467480646, 3),
(24, 'Destiny', 'Velasquez', '7934', 63147940910, 'Ultrices Limited', '605847', '822-9494 Lectus Av.', 41, 10, 'Melsbroek', 'VB', 'Aenean@sapiengravida.edu', 761300649, 932969195, 24),
(57, 'Russell', 'Guzman', '6540', 40464185285, 'Et Pede Company', '26339-210', '367-9161 Erat Avenue', 151, 9, 'Lacombe', 'Alberta', 'in@Vestibulum.co.uk', 763287760, 698467809, 57),
(94, 'Timon', 'Davis', '9210', 77322819223, 'Purus Nullam Industries', '5463EZ', '454-9054 Amet, Ave', 34, 8, 'Gladstone', 'QLD', 'risus.In.mi@Quisque.edu', 763953847, 309837193, 94),
(1, 'Melvin', 'Zamora', '2683', 77046441012, 'Urna Vivamus Molestie Industries', '08897', 'Ap #914-1405 Imperdiet Street', 92, 8, 'Vienna', 'Vienna', 'enim.Etiam.gravida@risusDuis.com', 770515289, 861343666, 1),
(78, 'Azalia', 'Booth', '1936', 33075630594, 'Sed Limited', '275444', 'P.O. Box 770, 1847 Magna Avenue', 162, 7, 'Lithgow', 'NSW', 'habitant.morbi.tristique@ac.com', 772613900, 902167760, 78),
(64, 'Reece', 'Leon', '1574', 12424715734, 'Risus Donec Incorporated', 'M0M 5T7', '569-4511 Diam Ave', 3, 6, 'Kano', 'KN', 'mauris.blandit@blanditviverra.net', 805283221, 709099693, 64),
(37, 'Brooke', 'Best', '6822', 49415047182, 'Metus Vivamus Institute', '545693', 'P.O. Box 246, 8573 Felis, Av.', 124, 8, 'Patarrá', 'SJ', 'dictum.placerat@cursusIntegermollis.org', 807564090, 512480209, 37),
(49, 'Jenna', 'Preston', '1676', 82261974690, 'Montes Foundation', 'V6S 6G7', '507-8590 Mollis. Avenue', 126, 7, 'Kano', 'KN', 'Sed@euismodet.org', 810674023, 818353843, 49),
(40, 'Kellie', 'Stark', '2251', 21139763933, 'Proin Industries', '21617', 'P.O. Box 834, 4482 Placerat Road', 189, 2, 'Istanbul', 'Ist', 'Phasellus.nulla.Integer@ultricies.edu', 814549019, 394070995, 40),
(12, 'Willow', 'Mendez', '6037', 50171168106, 'Nam Ltd', 'U7S 7RV', '201 Libero St.', 38, 8, 'Oamaru', 'SI', 'Ut.tincidunt.vehicula@sit.net', 820492682, 777045816, 12),
(69, 'Harriet', 'Neal', '6236', 34415844022, 'Vitae Foundation', '3173', 'P.O. Box 555, 1536 Aliquam St.', 33, 1, 'Ere?li', 'Kon', 'consequat.auctor@etnetus.ca', 830980338, 574360437, 69),
(100, 'Oleg', 'Mendoza', '2132', 96322984346, 'Eget PC', '1853', '290-5496 Placerat. St.', 89, 5, 'Caledon', 'Ontario', 'aliquet.vel.vulputate@atortorNunc.co.uk', 836500768, 931920185, 100),
(92, 'Jackson', 'Wallace', '1646', 81231618723, 'Et Institute', '1040HP', 'P.O. Box 783, 6380 Magna. Rd.', 134, 6, 'Bairnsdale', 'Victoria', 'molestie@nonarcuVivamus.net', 846672634, 678203021, 92),
(36, 'Christian', 'Good', '5701', 40682078432, 'Mauris Nulla Integer Foundation', '890965', '2498 Dictum St.', 118, 8, 'Okene', 'KO', 'eget@rhoncus.ca', 847211786, 793112525, 36),
(46, 'Leandra', 'Odom', '5269', 74525568461, 'Tristique Aliquet Phasellus Institute', '31905', 'P.O. Box 814, 6103 Porttitor Av.', 167, 9, 'Vienna', 'Vienna', 'Cras.interdum@elitEtiam.net', 847790946, 983024371, 46),
(76, 'Beau', 'Roth', '2935', 92273054886, 'Nullam Corp.', '191374', 'Ap #611-1700 Dui. St.', 103, 3, 'Tay', 'ON', 'Duis@anunc.net', 848144748, 732295384, 76),
(11, 'Karyn', 'Flynn', '780', 54366304860, 'Ut LLC', '65-306', '6664 Pharetra Rd.', 129, 2, 'Cowdenbeath', 'Fife', 'pharetra.Quisque.ac@dui.co.uk', 862124617, 591230288, 11),
(20, 'Urielle', 'Stephens', '336', 21340171843, 'Mauris Blandit Enim PC', '1613KL', 'Ap #273-9917 Magna St.', 163, 7, 'Vienna', 'Vienna', 'tristique@risusaultricies.com', 864558720, 670631687, 20),
(86, 'Jackson', 'Cortez', '4829', 47700959802, 'Mi Felis Adipiscing LLC', '85-287', 'Ap #192-3251 Non Road', 1, 3, 'Pittsburgh', 'PA', 'a.facilisis@penatibus.net', 880243750, 434722795, 86),
(6, 'Wynne', 'Mcdonald', '3745', 64303887626, 'Accumsan LLP', '03644', 'P.O. Box 701, 3482 Egestas. Rd.', 104, 7, 'Ragnies', 'HE', 'diam.Duis@nonenimMauris.com', 882004640, 685471411, 6),
(73, 'Myles', 'Wong', '6474', 35630884580, 'Curabitur Consequat Lectus Institute', '10-095', 'P.O. Box 127, 5761 Hymenaeos. Street', 5, 6, 'Abeokuta', 'OG', 'ipsum@Nullam.co.uk', 888612882, 792431135, 73),
(44, 'Zephr', 'Bell', '9426', 33318670163, 'Justo Proin Non Corp.', '83446', '2303 Dignissim Avenue', 15, 10, 'Vienna', 'Vienna', 'urna.Nullam@ultricessitamet.com', 891935695, 474678381, 44),
(5, 'Freya', 'Clark', '578', 26716553783, 'Cum Sociis Natoque Corporation', '6957', 'P.O. Box 614, 4803 Consectetuer Ave', 158, 4, 'Cork', 'Munster', 'dui@Sedcongue.org', 895182286, 159450035, 5),
(9, 'Lester', 'Ramirez', '2863', 31091037406, 'Sed Nec PC', '36537986', '739-8248 Non, Rd.', 90, 9, 'Uberaba', 'MG', 'sit.amet.metus@in.co.uk', 905899213, 698156064, 9),
(35, 'Rhoda', 'Castro', '712', 86003347518, 'Consequat Consulting', '118042', '9234 Praesent St.', 35, 6, 'Vienna', 'Vienna', 'sed.consequat.auctor@scelerisque.ca', 908708009, 683118578, 35),
(91, 'August', 'Allen', '5135', 99598861350, 'Cum Sociis Associates', '8163', 'P.O. Box 596, 2566 Id Rd.', 54, 6, 'Goulburn', 'New South Wales', 'mollis@velitAliquam.co.uk', 917980770, 762597832, 91),
(88, 'Azalia', 'Sears', '2660', 81467050248, 'Sit Amet Ultricies Foundation', '6942', 'P.O. Box 919, 352 Fusce Ave', 147, 2, 'Ikot Ekpene', 'AK', 'fringilla.Donec@diamdictumsapien.org', 931035447, 263139231, 88),
(84, 'Rajah', 'Mosley', '1976', 35173438191, 'Parturient LLC', '25400', 'P.O. Box 851, 1923 Felis. Av.', 63, 2, 'Watermaal-Bosvoorde', 'Brussels Hoofdstedelijk Gewest', 'lacus.Ut@convallisantelectus.co.uk', 933992717, 598165566, 84),
(21, 'Tatyana', 'Kelley', '4038', 45139443236, 'Eget Metus Industries', 'G7Y 2M1', '5387 Donec Avenue', 105, 7, 'Thisnes', 'Luik', 'luctus.vulputate.nisi@nonummy.ca', 935193328, 786142171, 21),
(18, 'Valentine', 'Mays', '4744', 25141557003, 'Magna Praesent Interdum Corporation', 'J1R 2J2', '838-1041 Sed St.', 127, 3, 'Waitara', 'North Island', 'facilisis@egetvenenatis.net', 937000454, 145910815, 18),
(58, 'Abdul', 'Manning', '3054', 79759217863, 'Pellentesque LLC', '07791-482', '345-1395 Ut Rd.', 11, 10, 'Baiso', 'Emilia-Romagna', 'lectus.rutrum@Pellentesque.org', 946846234, 918320501, 58),
(80, 'Matthew', 'Patel', '2142', 10895352843, 'Orci LLC', '89611', 'P.O. Box 724, 9044 Donec Rd.', 87, 2, 'Liberia', 'G', 'at.pede.Cras@mi.net', 955164953, 806525495, 80),
(28, 'Imani', 'Moss', '1795', 57001652540, 'Curae; Donec Tincidunt Associates', '806672', 'P.O. Box 688, 5273 Sed St.', 151, 2, 'Alessandria', 'PIE', 'neque@dolor.org', 959899831, 695972345, 28),
(10, 'Thomas', 'Moran', '7595', 99887327020, 'Et Commodo LLP', '65-541', 'Ap #406-719 Erat Street', 75, 10, 'LaSalle', 'Ontario', 'et.magnis.dis@etmagnisdis.com', 971320675, 611053509, 10),
(26, 'Abel', 'Nunez', '8074', 77123991344, 'Tincidunt Consulting', '95366', '6223 Commodo St.', 91, 3, 'San Isidro de El General', 'San José', 'velit@erosnonenim.net', 989388119, 236016768, 26),
(55, 'Lionel', 'Perez', '4391', 20856995903, 'Sit Amet Lorem Consulting', '442710', '8140 Lobortis Street', 158, 7, 'Lansing', 'Michigan', 'metus.urna.convallis@sitametante.net', 991652377, 111695418, 55),
(63, 'Dean', 'Dennis', '18', 63689141077, 'Enim Diam Consulting', '3021', '711-7524 Aliquet Rd.', 163, 2, 'Berlin', 'Berlin', 'in.aliquet@dapibus.co.uk', 994585245, 809847074, 63),
(71, 'Tara', 'May', '1179', 92199123105, 'Magna Praesent Interdum PC', '208318', 'Ap #259-7983 Donec St.', 195, 5, 'Siverek', '?a', 'Nullam.ut@mattissemperdui.ca', 995861195, 574999799, 71);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('alex', '123456', 1),
('mkyong', '123456', 1),
('piotrb', '123456', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `ROLE` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `ROLE`) VALUES
(2, 'mkyong', 'ROLE_ADMIN'),
(7, 'piotrb', 'ROLE_ADMIN'),
(3, 'alex', 'ROLE_USER'),
(1, 'mkyong', 'ROLE_USER');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`basic_phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`ROLE`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
