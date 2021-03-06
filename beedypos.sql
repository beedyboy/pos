-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2019 at 11:20 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.16-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beedypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `beedysystem`
--

CREATE TABLE `beedysystem` (
  `id` int(11) NOT NULL,
  `code1` varchar(50) NOT NULL,
  `code2` varchar(50) NOT NULL,
  `codekey` varchar(30) NOT NULL,
  `dateFrom` varchar(50) NOT NULL,
  `dateTo` varchar(50) NOT NULL,
  `active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beedysystem`
--

INSERT INTO `beedysystem` (`id`, `code1`, `code2`, `codekey`, `dateFrom`, `dateTo`, `active`) VALUES
(1, 'TURG-QLFZ-MUVN-RVLY', 'VFVS-RY1R-TEZA-LU1V', '01AC-D0F1-BD0E-7F80', '2017-06-13', '2098-09-13', 'One-Off');

-- --------------------------------------------------------

--
-- Table structure for table `discount_settings`
--

CREATE TABLE `discount_settings` (
  `value` varchar(10) DEFAULT NULL,
  `status` enum('YES','NO') DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount_settings`
--

INSERT INTO `discount_settings` (`value`, `status`) VALUES
('', 'NO'),
('', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `name`) VALUES
(10, 'Burgundy  Zone'),
(11, 'Yellow zone'),
(12, 'Pink Zone'),
(13, 'Garden Zone'),
(14, 'Luckie\'s Place'),
(15, 'Jumi Deals ');

-- --------------------------------------------------------

--
-- Table structure for table `hseat`
--

CREATE TABLE `hseat` (
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hseat`
--

INSERT INTO `hseat` (`sid`, `tid`, `name`) VALUES
(17, 43, 'B'),
(18, 43, 'A'),
(20, 46, 'A'),
(21, 46, 'B'),
(23, 44, 'A'),
(25, 44, 'B'),
(26, 45, 'A'),
(28, 47, 'A'),
(30, 47, 'C'),
(31, 47, 'D'),
(32, 48, 'A'),
(33, 48, 'B'),
(34, 49, 'A'),
(35, 49, 'B'),
(36, 50, 'A'),
(37, 50, 'B'),
(38, 15, 'A'),
(39, 15, 'B'),
(40, 16, 'A'),
(41, 16, 'B'),
(42, 16, 'C'),
(43, 16, 'D'),
(44, 17, 'A'),
(45, 17, 'C'),
(46, 17, 'B'),
(47, 45, 'D'),
(48, 18, 'A'),
(49, 18, 'B'),
(50, 19, 'A'),
(51, 19, 'C'),
(52, 19, 'B'),
(53, 19, 'D'),
(54, 20, 'A'),
(55, 20, 'B'),
(56, 20, 'C'),
(57, 20, 'D'),
(58, 21, 'A'),
(59, 21, 'B'),
(60, 22, 'A'),
(61, 22, 'B'),
(66, 22, 'C'),
(67, 22, 'D'),
(68, 23, 'A'),
(69, 23, 'B'),
(70, 23, 'C'),
(71, 23, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `htables`
--

CREATE TABLE `htables` (
  `tid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htables`
--

INSERT INTO `htables` (`tid`, `id`, `name`) VALUES
(15, 11, 'Yel-Table 1'),
(16, 11, 'Yel-Table 2'),
(17, 11, 'Yel-Table 3'),
(18, 11, 'Yel-Table 4'),
(19, 11, 'Yel-Table 5'),
(20, 11, 'Yel-Table 6'),
(21, 11, 'Yel-Table 7'),
(22, 11, 'Yel-Table 8'),
(23, 11, 'Yel-Table 9'),
(24, 11, 'Yel-Table 10'),
(25, 11, 'Yel-Table 11'),
(26, 11, 'Yel-Table 12'),
(27, 11, 'Yel-Table 13'),
(28, 11, 'Yel-Table 14'),
(29, 12, 'Pin-Table 1'),
(30, 12, 'Pin-Table 2'),
(31, 12, 'Pin-Table 3'),
(32, 12, 'Pin-Table 4'),
(33, 12, 'Pin-Table 5'),
(34, 12, 'Pin-Table 6'),
(35, 12, 'Pin-Table 7'),
(36, 12, 'Pin-Table 8'),
(37, 12, 'Pin-Table 9'),
(38, 12, 'Pin-Table 10'),
(39, 12, 'Pin-Table 11'),
(40, 12, 'Pin-Table 12'),
(41, 12, 'Pin-Table 13'),
(42, 12, 'Pin-Table 14'),
(43, 10, 'Bur-Table 1'),
(44, 10, 'Bur-Table 2'),
(45, 10, 'Bur-Table 3'),
(46, 10, 'Bur-Table 4'),
(47, 10, 'Bur-Table 5'),
(48, 10, 'Bur-Table 6'),
(49, 10, 'Bur-Table 7'),
(50, 10, 'Bur-Table 8'),
(51, 10, 'Bur-Table 9'),
(52, 10, 'Bur-Table 10'),
(53, 10, 'Bur-Table 11'),
(54, 10, 'Bur-Table 12'),
(55, 10, 'Bur-Table 13'),
(56, 10, 'Bur-Table 14'),
(57, 14, 'Luc-L P  Table -- 1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `selling_price` varchar(100) DEFAULT NULL,
  `qty_left` int(11) DEFAULT NULL,
  `main` varchar(20) NOT NULL,
  `subId` int(11) DEFAULT NULL,
  `price` varchar(30) NOT NULL,
  `checks` smallint(6) DEFAULT '0',
  `created_on` varchar(30) DEFAULT NULL,
  `updated_on` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `selling_price`, `qty_left`, `main`, `subId`, `price`, `checks`, `created_on`, `updated_on`) VALUES
(1, 'Fried Rice', '15', 9945, 'C', 9, '15', 1, NULL, NULL),
(20, 'Fufu 5', '5', NULL, 'L', 13, '5', 1, NULL, NULL),
(21, 'Absolut Grape Vodka', '10', 33, 'D', 11, '10', 1, NULL, NULL),
(23, 'Jollof / Grilled Pork', '30', 21, 'C', 9, '30', 1, NULL, NULL),
(24, 'Cassava Fish', '35', 14, 'F', 16, '35', 1, NULL, NULL),
(26, 'Coke', '5', 79, 'D', 21, '5', 1, NULL, NULL),
(27, 'Tuna Salad', '20', 40, 'C', 24, '20', 1, NULL, NULL),
(28, 'Rice Ball', '2', 1127, 'L', 23, '2', 1, NULL, NULL),
(36, 'Tuna Fish', '7', 300, 'F', 16, '7', 1, NULL, NULL),
(37, 'Fanta', '5', 4, 'D', 21, '5', 1, NULL, NULL),
(39, 'Club L', '10', 118, 'D', 22, '10', 1, NULL, NULL),
(40, 'Club M', '6', 2, 'D', 22, '6', 1, NULL, NULL),
(41, 'JB Small', '40', 9618, 'D', 11, '40', 1, NULL, NULL),
(43, 'Sprite', '5', 2, 'D', 21, '5', 1, NULL, NULL),
(44, 'Gulder L', '8', 8, 'D', 22, '8', 1, NULL, NULL),
(45, 'Star L', '10', 30, 'D', 22, '10', 1, NULL, NULL),
(46, 'Star M', '6', 23, 'D', 22, '6', 1, NULL, NULL),
(47, 'Ruut Extra  L', '8', 7, 'D', 22, '8', 1, NULL, NULL),
(48, 'Alvaro', '6', 16, 'D', 21, '6', 1, NULL, NULL),
(49, 'Malta ', '6', 2, 'D', 21, '6', 1, NULL, NULL),
(50, 'SminoffIce', '10', 35, 'D', 22, '10', 1, NULL, NULL),
(51, 'Orijin Beer L', '10', 30, 'D', 22, '10', 1, NULL, NULL),
(53, 'savana Dry ', '10', 4, 'D', 22, '10', 1, NULL, NULL),
(54, 'Hunters Gold ', '10', 6, 'D', 22, '10', 1, NULL, NULL),
(55, 'GUINNESS', '10', 80, 'D', 22, '10', 1, NULL, NULL),
(56, 'Orijin O', '5', 993, 'D', 22, '5', 1, NULL, NULL),
(57, 'Orijin M', '6', 10, 'D', 22, '6', 1, NULL, NULL),
(58, 'Mangos Sobolo', '6', 27, 'D', 21, '6', 1, NULL, NULL),
(59, 'Shandy L', '10', 25, 'D', 22, '10', 1, NULL, NULL),
(68, 'Dry Fish 25', '25', 581, 'L', 20, '25', 1, NULL, NULL),
(69, 'Grasscutter', '15', NULL, 'L', 19, '15', 1, NULL, NULL),
(70, 'Fried Rice / Grilled chicken', '25', 160, 'C', 9, '25', 1, NULL, NULL),
(71, 'Jollof / Grilled Chicken', '25', 10000290, 'C', 9, '25', 1, NULL, NULL),
(72, 'Assorted  Jollof ', '40', 628, 'C', 9, '40', 1, NULL, NULL),
(73, 'Banku /  GrilledTilapia', '40', 971, 'C', 18, '40', 1, NULL, NULL),
(74, 'Banku /  Grilled Tilapia L', '45', 764, 'C', 18, '45', 1, NULL, NULL),
(75, 'Banku / Grilled Tilapia XL', '50', 999985, 'C', 18, '50', 1, NULL, NULL),
(76, 'Yam / Grilled Pork', '30', 32, 'C', 10, '30', 1, NULL, NULL),
(77, 'Fried Rice / Grilled Pork', '30', 100001, 'C', 9, '30', 1, NULL, NULL),
(78, 'Fried Rice/ Fish', '45', 46, 'C', 9, '45', 1, NULL, NULL),
(79, 'Jollof / Fish', '40', 18, 'C', 9, '40', 1, NULL, NULL),
(80, 'Plain Rice / Fish', '40', 12, 'C', 9, '40', 1, NULL, NULL),
(81, 'Groundnut Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(82, 'Palmnunt Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(83, 'Okro Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(84, 'Henessy LP', '15', 19, 'D', 11, '15', 1, NULL, NULL),
(85, 'Don Simon', '15', 88, 'D', 21, '15', 1, NULL, NULL),
(86, 'Baileys', '5', 69, 'D', 11, '5', 1, NULL, NULL),
(87, 'Ciroc', '10', 61, 'D', 11, '10', 1, NULL, NULL),
(88, 'Banku', '2', 66, 'L', 25, '2', 1, NULL, NULL),
(89, 'Chicken Light Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(90, 'Green Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(91, 'Goat Light Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(92, 'Dry Fish Soup', '0', NULL, 'S', 26, '0', 1, NULL, NULL),
(93, 'Tilapia Soup', '0', 1001, 'S', 26, '0', 1, NULL, NULL),
(94, 'Grilled Pork Only', '20', 48, 'F', 15, '20', 1, NULL, NULL),
(95, ' Grilled Chicken', '15', 100, 'F', 17, '15', 1, NULL, NULL),
(96, 'Fufu 6', '6', NULL, 'L', 13, '6', 1, NULL, NULL),
(97, 'Fufu 7', '7', NULL, 'L', 13, '7', 1, NULL, NULL),
(98, 'fufu 8', '8', NULL, 'L', 13, '8', 1, NULL, NULL),
(99, 'Fufu 9', '9', NULL, 'L', 13, '9', 1, NULL, NULL),
(100, 'Fufu 10', '10', NULL, 'L', 13, '10', 1, NULL, NULL),
(101, 'Jack Daniel Fire ', '15', 34, 'D', 11, '15', 1, NULL, NULL),
(102, 'St Michaels', '12', 90, 'D', 21, '12', 1, NULL, NULL),
(103, 'Pure Pinapple / Ginger', '12', 168, 'D', 21, '12', 1, NULL, NULL),
(104, 'Pure Pineapple', '12', 168, 'D', 21, '12', 1, NULL, NULL),
(105, 'Pre-Ice L', '10', 2, 'D', 21, '10', 1, NULL, NULL),
(106, 'JoySpring Prepe Delight L', '10', 34, 'D', 21, '10', 1, NULL, NULL),
(107, 'JoySprings Pre-Ice S', '6', 7, 'D', 21, '6', 1, NULL, NULL),
(108, 'JoySpring Prepe Delight S', '6', 0, 'D', 21, '6', 1, NULL, NULL),
(109, 'Water', '2', 432, 'D', 21, '2', 1, NULL, NULL),
(110, 'Spice Goat', '25', 43, 'F', 27, '25', 1, NULL, NULL),
(111, 'Grilled Chicken', '20', 100, 'F', 17, '20', 1, NULL, NULL),
(112, 'Banku', '2', NULL, 'L', 23, '2', 1, NULL, NULL),
(113, 'Kokonte', '4', 83, 'L', 23, '4', 1, NULL, NULL),
(114, 'Fufu 4', '4', NULL, 'L', 13, '4', 1, NULL, NULL),
(115, 'Assorted Fried Rice', '40', 9765, 'C', 9, '40', 1, NULL, NULL),
(116, 'Fried Goat Only', '25', 9940, 'C', 28, '25', 1, NULL, NULL),
(117, 'Fried Rice/ Fried Goat', '35', 830, 'C', 9, '35', 1, NULL, NULL),
(118, 'Jollof / Fried Goat', '35', 999999764, 'C', 9, '35', 1, NULL, NULL),
(119, 'Jollof /Grilled Tilapia L', '50', 6, 'C', 9, '50', 1, NULL, NULL),
(120, 'Red fish only', '20', 841, 'C', 24, '20', 1, NULL, NULL),
(121, 'Fried Yam Only', '10', 9933, 'C', 10, '10', 1, NULL, NULL),
(122, 'Yam / Grilled Chicken', '25', 859, 'C', 10, '25', 1, NULL, NULL),
(123, 'Yam / Fried Goat', '35', 99934, 'C', 10, '35', 1, NULL, NULL),
(124, 'Black Mafia 20', '20', 99727, 'D', 11, '20', 1, NULL, NULL),
(126, 'Black Mafia 10', '10', 99866, 'D', 11, '10', 1, NULL, NULL),
(127, 'Black Mafia 5', '5', 999939, 'D', 11, '5', 1, NULL, NULL),
(128, 'Tuna 5', '5', NULL, 'L', 20, '5', 1, NULL, NULL),
(129, 'Fresh Salmon 10', '15', NULL, 'L', 20, '15', 1, NULL, NULL),
(130, 'Goat Meat 15', '15', NULL, 'L', 19, '15', 1, NULL, NULL),
(131, 'Chiken Live 10', '10', NULL, 'L', 19, '10', 1, NULL, NULL),
(132, 'Crab 7', '7', 45, 'L', 19, '7', 1, NULL, NULL),
(133, 'Crab 5', '5', 209, 'L', 19, '5', 1, NULL, NULL),
(134, 'Cow Meat 15', '15', NULL, 'L', 19, '15', 1, NULL, NULL),
(135, 'Fresh Tilapia 25', '25', NULL, 'L', 20, '25', 1, NULL, NULL),
(136, 'Plain Rice', '10', 99999706, 'C', 9, '10', 1, NULL, NULL),
(137, 'Alomo Gold Tot ', '2', 925, 'D', 11, '2', 1, NULL, NULL),
(138, 'Alomo Bitters Tot', '2', 9803, 'D', 11, '2', 1, NULL, NULL),
(139, 'Orijin Bgitters 20cl small', '6', 80, 'D', 11, '6', 1, NULL, NULL),
(140, 'Alomo Silver Tot ', '2', 10, 'D', 11, '2', 1, NULL, NULL),
(141, 'Alomo Black Tot', '2', 19, 'D', 11, '2', 1, NULL, NULL),
(142, 'Mandingo Tot', '2', 9894, 'D', 11, '2', 1, NULL, NULL),
(143, 'Herbafrik', '2', 99999900, 'D', 11, '2', 1, NULL, NULL),
(144, 'Ginseng Bitters Tot ', '2', 1, 'D', 11, '2', 1, NULL, NULL),
(145, 'Joy Dadi Tot', '2', 47, 'D', 11, '2', 1, NULL, NULL),
(146, 'Castle Bridge Gin Tot', '2', 9999774, 'D', 11, '2', 1, NULL, NULL),
(147, 'Campari ', '5', 81, 'D', 11, '5', 1, NULL, NULL),
(148, 'Adonko Tot', '2', 9787, 'D', 11, '2', 1, NULL, NULL),
(149, 'Twedee Ginger Tot', '2', 982, 'D', 11, '2', 1, NULL, NULL),
(150, 'Agya Appiah Tot', '2', 93, 'D', 11, '2', 1, NULL, NULL),
(151, 'Orijin Bgitters 75cl L', '20', 89, 'D', 11, '20', 1, NULL, NULL),
(152, 'Orijin Gin Tot ', '2', 99999953, 'D', 11, '2', 1, NULL, NULL),
(153, 'Tonic Wine Tot', '2', 86, 'D', 11, '2', 1, NULL, NULL),
(154, 'Nana Takyi Tot', '2', 78, 'D', 11, '2', 1, NULL, NULL),
(155, 'Red Label Tot', '8', 213, 'D', 11, '8', 1, NULL, NULL),
(156, 'Red Label 1lt', '90', 95, 'D', 11, '90', 1, NULL, NULL),
(157, 'Black Lebel Tot', '10', 44, 'D', 11, '10', 1, NULL, NULL),
(158, 'Black Lebel 1Lt', '110', 100, 'D', 11, '110', 1, NULL, NULL),
(159, 'Goat Meat ', '15', 212, 'L', 19, '15', 1, NULL, NULL),
(160, 'Smoke Salmon', '15', 638, 'L', 20, '15', 1, NULL, NULL),
(161, 'Amani', '5', 308, 'L', 20, '5', 1, NULL, NULL),
(162, 'Live Chicken', '10', 1214, 'L', 19, '10', 1, NULL, NULL),
(163, 'Chicken Wings', '6', 723, 'L', 19, '6', 1, NULL, NULL),
(164, 'Towel', '5', 656, 'L', 19, '5', 1, NULL, NULL),
(165, 'Intestine', '6', NULL, 'L', 19, '6', 1, NULL, NULL),
(166, 'Boiled Egg', '1', 254, 'L', 20, '1', 1, NULL, NULL),
(167, 'Rice 1 cup', '5', 882, 'C', 9, '5', 1, NULL, NULL),
(168, 'Tuna', '5', 99, 'F', 16, '5', 1, NULL, NULL),
(169, 'Soda Water', '5', 8, 'D', 21, '5', 1, NULL, NULL),
(170, 'Tonic Water LP', '5', 11, 'D', 21, '5', 1, NULL, NULL),
(171, 'Orijin O LP', '5', 20, 'D', 21, '5', 1, NULL, NULL),
(172, 'Grilled Pork ', '20', 92, 'C', 12, '20', 1, NULL, NULL),
(173, 'Grilled Chicken', '15', 50, 'C', 28, '15', 1, NULL, NULL),
(174, 'Chicken Souce ', '25', 92, 'C', 28, '25', 1, NULL, NULL),
(175, 'Beef Souce', '25', 97, 'C', 28, '25', 1, NULL, NULL),
(176, 'Fried yam / Garzad Sauce', '25', 95, 'C', 10, '25', 1, NULL, NULL),
(177, 'Yam / Fried Fish', '35', 48, 'C', 10, '35', 1, NULL, NULL),
(178, 'Yam/ / Grilled Tilapia S', '40', 63, 'C', 10, '40', 1, NULL, NULL),
(179, 'Yam/ / Grilled Tilapia M', '50', 35, 'C', 10, '50', 1, NULL, NULL),
(180, 'Jollof Only ', '15', 28, 'C', 9, '15', 1, NULL, NULL),
(181, 'plain Rice/ Goat', '35', 25, 'C', 9, '35', 1, NULL, NULL),
(182, 'Jollof 1Cup', '8', 974, 'C', 9, '8', 1, NULL, NULL),
(183, 'Jollof /Grilled Tilapia S', '40', 85, 'C', 9, '40', 1, NULL, NULL),
(184, 'Shrimp Fried Rice', '40', 92, 'C', 29, '40', 1, NULL, NULL),
(185, 'Assorted Seafood Rice', '55', 100, 'C', 29, '55', 1, NULL, NULL),
(186, 'Pork Feet', '5', NULL, 'L', 19, '5', 1, NULL, NULL),
(187, 'Ginger ', '0', 1000, 'S', 26, '0', 1, NULL, NULL),
(188, 'Okro', '0', 1001, 'S', 26, '0', 1, NULL, NULL),
(189, 'Beans', '0', 10000000, 'S', 26, '0', 1, NULL, NULL),
(190, 'Wele ', '5', 338, 'L', 19, '5', 1, NULL, NULL),
(191, 'Yam/ Palava  15', '15', 61, 'L', 25, '15', 1, NULL, NULL),
(192, 'Yam/ Palava/ Fish  20', '20', NULL, 'L', 25, '20', 1, NULL, NULL),
(194, 'Apem / Palava Sauce 15', '15', 113, 'L', 25, '15', 1, NULL, NULL),
(195, 'Apem / Palava Sauce/ Fish 20', '20', 1125, 'L', 25, '20', 1, NULL, NULL),
(196, 'Mix Ampesi Palava 15', '15', NULL, 'L', 25, '15', 1, NULL, NULL),
(197, 'Mix Ampesi Palava Fish 20', '20', 100, 'L', 25, '20', 1, NULL, NULL),
(198, 'Kokonte 5', '5', 114, 'L', 23, '5', 1, NULL, NULL),
(199, 'Palava Sauce only 5', '5', NULL, 'L', 25, '5', 1, NULL, NULL),
(200, 'Fried Plantain 5', '5', NULL, 'L', 25, '5', 1, NULL, NULL),
(201, 'Red Red 15', '15', 1079, 'L', 25, '15', 1, NULL, NULL),
(202, 'Red Red Ext. 5', '5', 1079, 'L', 25, '5', 1, NULL, NULL),
(203, 'Yam Only 5', '5', 146, 'L', 25, '5', 1, NULL, NULL),
(204, 'Apem Ext. 5', '5', 1040, 'L', 25, '5', 1, NULL, NULL),
(205, 'Plain Rice / Grilled Chicken', '30', 38, 'C', 9, '30', 1, NULL, NULL),
(206, 'Plain Rice / Grillled Pork', '30', 996, 'C', 9, '30', 1, NULL, NULL),
(207, 'Plain Rice / Tilapia S', '40', 93, 'C', 9, '40', 1, NULL, NULL),
(208, 'Plain Rice / Tilapia  M', '45', 87, 'C', 9, '45', 1, NULL, NULL),
(209, 'Plain Rice / Tilapia L', '50', 985, 'C', 9, '50', 1, NULL, NULL),
(210, 'Plain Rice /  Beef Sauce ', '35', 97, 'C', 9, '35', 1, NULL, NULL),
(211, 'Plain Rice /  Chicken Sauce', '35', 92, 'C', 9, '35', 1, NULL, NULL),
(212, 'Plain Rice / Red Fish', '40', 81, 'C', 9, '40', 1, NULL, NULL),
(213, 'Cow Meat Beef ', '15', 93, 'L', 19, '15', 1, NULL, NULL),
(214, 'Salted Beef ', '5', 938, 'L', 19, '5', 1, NULL, NULL),
(215, 'Snail L', '20', 246, 'L', 19, '20', 1, NULL, NULL),
(216, 'Snail M', '15', 641, 'L', 19, '15', 1, NULL, NULL),
(217, 'Snail S', '10', NULL, 'L', 19, '10', 1, NULL, NULL),
(218, 'Plain  Rice / Pook feet Stew', '25', 997, 'C', 9, '25', 1, NULL, NULL),
(219, 'Pork Feet Stew', '20', 996, 'C', 12, '20', 1, NULL, NULL),
(220, 'Potk Sauce ', '25', 995, 'C', 12, '25', 1, NULL, NULL),
(221, 'Fish Fillet only', '25', 990, 'C', 24, '25', 1, NULL, NULL),
(222, 'Plain Rice / Fish Filet', '30', 95, 'C', 9, '30', 1, NULL, NULL),
(223, 'Fried Rice / Fish Fillet', '35', 82, 'C', 9, '35', 1, NULL, NULL),
(224, 'Jollof / Fish Fillet', '35', 987, 'C', 9, '35', 1, NULL, NULL),
(225, 'Lime', '1', 627, 'D', 11, '1', 1, NULL, NULL),
(226, 'Mushrooms', '5', 1, 'L', 20, '5', 1, NULL, NULL),
(227, 'Liver ', '5', NULL, 'L', 19, '5', 1, NULL, NULL),
(228, 'Red Fsh only', '30', 920, 'C', 24, '30', 1, NULL, NULL),
(229, 'Costle Blanche Red Wine ', '80', 78, 'D', 14, '80', 1, NULL, NULL),
(230, 'Coste Blanche Rose Wine ', '80', 996, 'D', 14, '80', 1, NULL, NULL),
(231, 'Red Bull', '10', 14, 'D', 21, '10', 1, NULL, NULL),
(232, 'Red Red Fish 20', '20', 292, 'L', 25, '20', 1, NULL, NULL),
(233, 'French fries/ fish fillet', '35', 44, 'C', 10, '35', 1, NULL, NULL),
(234, 'French Fries / Goat', '35', 22, 'C', 10, '35', 1, NULL, NULL),
(235, 'French Fries / Grilled Chicken', '25', 99922, 'C', 10, '25', 1, NULL, NULL),
(236, 'French fries/ Fried pork', '30', 44, 'C', 10, '30', 1, NULL, NULL),
(237, 'French Fries/ Grilled Tilapia L', '45', 44, 'C', 12, '45', 1, NULL, NULL),
(238, 'French Fries/ Grilled Tilapia S', '40', 39, 'C', 10, '40', 1, NULL, NULL),
(239, 'French Fries/ Grilled Tilapia XL', '50', 22, 'C', 10, '50', 1, NULL, NULL),
(240, 'French Fries/ Garzard', '25', 46, 'C', 12, '25', 1, NULL, NULL),
(241, 'French Fries Only', '10', 34, 'C', 10, '10', 1, NULL, NULL),
(242, 'French Fries/ Gazard', '25', 48, 'C', 10, '25', 1, NULL, NULL),
(243, 'Palm Wine Cup', '5', 960, 'D', 11, '5', 1, NULL, NULL),
(244, 'Palm Wine Jar ', '15', 927, 'D', 11, '15', 1, NULL, NULL),
(245, 'Assorted Jollof', '40', 60, 'C', 29, '40', 1, NULL, NULL),
(246, 'Assorted Fried Rice', '40', 9997, 'C', 29, '40', 1, NULL, NULL),
(247, 'Heineken LP', '12', 9, 'D', 22, '12', 1, NULL, NULL),
(248, 'Boiled Egg', '1', 181, 'L', 25, '1', 1, NULL, NULL),
(249, 'American S', '20', 97, 'D', 11, '20', 1, NULL, NULL),
(250, 'French fries/ Fried  Fish', '45', 96, 'C', 24, '45', 1, NULL, NULL),
(251, 'Fried Rice/Tilapia L', '50', 24, 'C', 9, '50', 1, NULL, NULL),
(252, 'Virgin', '15', 49, 'D', 11, '15', 1, NULL, NULL),
(253, 'Jagermeilter', '8', 45, 'D', 11, '8', 1, NULL, NULL),
(254, 'Fried Rice/Tilapia M ', '45', 57, 'C', 9, '45', 1, NULL, NULL),
(255, 'Steam Vegetable', '10', 14, 'C', 10, '10', 1, NULL, NULL),
(256, 'Fied Egg 2', '4', 33, 'C', 28, '4', 1, NULL, NULL),
(257, 'Goat Fried Rice', '35', 40, 'C', 9, '35', 1, NULL, NULL),
(258, 'Gold Label', '15', 49, 'D', 11, '15', 1, NULL, NULL),
(259, 'Smirnoff vodka 20cl', '30', 11, 'D', 11, '30', 1, NULL, NULL),
(260, 'Smirnoff Tot', '8', 117, 'D', 11, '8', 1, NULL, NULL),
(261, 'Fried egg1', '2', 19, 'C', 28, '2', 1, NULL, NULL),
(262, 'Fried Rice / Red Fish', '35', 1000, 'C', 24, '35', 1, NULL, NULL),
(263, 'Grilled Tilapia L', '40', 30, 'C', 28, '40', 1, NULL, NULL),
(264, 'Strawberry', '2', 36, 'D', 11, '2', 1, NULL, NULL),
(265, 'Rice / Palava ,Tuma & egg', '25', 46, 'C', 9, '25', 1, NULL, NULL),
(266, 'Baileys Original 20 cl Small', '30', 7, 'D', 11, '30', 1, NULL, NULL),
(267, 'Plain rice/ fish', '35', 987, 'C', 9, '35', 1, NULL, NULL),
(268, 'Jollof / fish', '45', 31, 'C', 9, '45', 1, NULL, NULL),
(269, 'Red Fish L', '35', 31, 'C', 24, '35', 1, NULL, NULL),
(270, 'Red Fish L', '30', 24, 'C', 24, '30', 1, NULL, NULL),
(271, 'chicken fried rice ', '30', 76, 'C', 9, '30', 1, NULL, NULL),
(272, 'Tarani Rose Wine', '80', 91, 'D', 14, '80', 1, NULL, NULL),
(273, 'Tarani Red Wine', '80', 994, 'D', 14, '80', 1, NULL, NULL),
(274, 'MUSCADOR', '150', 997, 'D', 14, '150', 1, NULL, NULL),
(275, 'PREMIERE BULLE 1', '150', 996, 'D', 14, '150', 1, NULL, NULL),
(276, 'FREIXENET', '150', 999, 'D', 14, '150', 1, NULL, NULL),
(277, 'Grand Marnier Liqueur', '10', 1000, 'D', 11, '10', 1, NULL, NULL),
(278, 'COINTREAU', '10', 995, 'D', 11, '10', 1, NULL, NULL),
(279, 'Banku / Fried Red Fish', '35', 48, 'C', 18, '35', 1, NULL, NULL),
(280, 'Jollof/ Fish', '45', 9989, 'C', 9, '45', 1, NULL, NULL),
(281, 'Goat jollof rice', '35', 20, 'C', 9, '35', 1, NULL, NULL),
(282, 'Alvara Plastic', '4', 989, 'D', 21, '4', 1, NULL, NULL),
(283, 'JB', '10', 10000, 'D', 11, '10', 1, NULL, NULL),
(284, 'Fresh tilapia 30', '30', NULL, 'L', 20, '30', 1, NULL, NULL),
(288, 'Fresh Tilapia 15', '15', NULL, 'L', 20, '15', 1, NULL, NULL),
(289, 'Egg Stew- Ampesi', '25', 1001, 'L', 25, '25', 1, NULL, NULL),
(290, 'Red Fish L ', '40', 9997, 'C', 24, '40', 1, NULL, NULL),
(291, 'Banku Red Fish', '40', 9998, 'C', 24, '40', 1, NULL, NULL),
(292, 'Apreprensan', '5', 1010, 'L', 25, '5', 1, NULL, NULL),
(293, 'JP CHENET Red S LP', '25', 23, 'D', 14, '25', 1, NULL, NULL),
(294, 'MASHKE', '6', 984, 'D', 21, '6', 1, NULL, NULL),
(295, 'Spaghetti/ Tilapia ', '50', 10003, 'C', 29, '50', 1, NULL, NULL),
(296, 'Mangos Juice pineapple /Ginger ', '6', 1, 'D', 21, '6', 1, NULL, NULL),
(297, 'Mangos passion pine', '6', 99, 'D', 21, '6', 1, NULL, NULL),
(298, 'Mangos Mix fruits', '6', 46, 'D', 21, '6', 1, NULL, NULL),
(299, 'Edmond Bernard small', '30', 99990, 'D', 14, '30', 1, NULL, NULL),
(300, 'JAMESON', '8', 1000001, 'D', 11, '8', 1, NULL, NULL),
(301, 'Assorted Fried Rice LP', '55', 101, 'C', 9, '55', 1, NULL, NULL),
(302, 'Fufu 5 LP', '5', NULL, 'L', 13, '5', 1, NULL, NULL),
(303, 'Dry Fish LP', '35', NULL, 'L', 20, '35', 1, NULL, NULL),
(304, 'Grasscutter LP', '20', 22, 'L', 19, '20', 1, NULL, NULL),
(305, 'Bacardi', '10', 9987, 'D', 11, '10', 1, NULL, NULL),
(306, 'Mafia bottle ', '60', 999999, 'D', 11, '60', 1, NULL, NULL),
(307, 'JP CHENET LP', '50', 9996, 'D', 14, '50', 1, NULL, NULL),
(308, 'Banku/ Tilapia LP', '60', 999969, 'C', 18, '60', 1, NULL, NULL),
(309, 'Water LP', '3', 141, 'D', 21, '3', 1, NULL, NULL),
(310, 'Guinness LP', '12', 19, 'D', 22, '12', 1, NULL, NULL),
(311, 'Orijin Tot LP', '3', 9994, 'D', 11, '3', 1, NULL, NULL),
(312, 'Madingo LP', '3', 9998, 'D', 11, '3', 1, NULL, NULL),
(313, 'Jagermeilter LP', '10', 21, 'D', 11, '10', 1, NULL, NULL),
(314, 'Fufu With Goat LP', '50', NULL, 'L', 13, '50', 1, NULL, NULL),
(315, 'Rice Ball with Goat LP', '50', 10006, 'L', 23, '50', 1, NULL, NULL),
(316, 'Mix Ampesi LP', '30', 1012, 'L', 25, '30', 1, NULL, NULL),
(317, 'Fufu With Cow Meat LP', '50', 10007, 'L', 13, '50', 1, NULL, NULL),
(318, 'Malt LP', '8', 5, 'D', 21, '8', 1, NULL, NULL),
(319, 'Goat Fried Rice LP', '40', 9977, 'C', 9, '40', 1, NULL, NULL),
(320, 'Sprite LP', '7', 9, 'D', 21, '7', 1, NULL, NULL),
(321, 'Alvaro LP', '8', 20, 'D', 21, '8', 1, NULL, NULL),
(322, 'Coke LP', '7', 44, 'D', 21, '7', 1, NULL, NULL),
(323, 'Banku /Pork Stew LP', '30', 99997, 'C', 18, '30', 1, NULL, NULL),
(324, 'Father Macus ', '3', 9993, 'D', 11, '3', 1, NULL, NULL),
(325, 'Jollof /Goat LP', '35', 9976, 'C', 9, '35', 1, NULL, NULL),
(326, 'Black Lebel Bottle LP', '320', 15, 'D', 11, '320', 1, NULL, NULL),
(327, 'Club LP', '10', 962, 'D', 22, '10', 1, NULL, NULL),
(328, 'Gulder LP', '10', 10000, 'D', 11, '10', 1, NULL, NULL),
(329, 'Gulder LP', '10', 9983, 'D', 22, '10', 1, NULL, NULL),
(330, 'Red Lebel Small', '30', 99995, 'D', 11, '30', 1, NULL, NULL),
(331, 'Fried Rice/ Chiken LP', '35', 999957, 'C', 9, '35', 1, NULL, NULL),
(332, 'Yam/Goat LP', '40', 9980, 'C', 10, '40', 1, NULL, NULL),
(333, 'Fried Goat Only LP', '30', 9993, 'C', 28, '30', 1, NULL, NULL),
(334, 'Hunter Gold LP', '15', 7, 'D', 22, '15', 1, NULL, NULL),
(335, 'Black Lebel Small', '45', 5, 'D', 11, '45', 1, NULL, NULL),
(336, 'Father Macus', '2', 9979, 'D', 11, '2', 1, NULL, NULL),
(337, 'Fufu With Dry Fish LP', '45', NULL, 'L', 13, '45', 1, NULL, NULL),
(338, 'Fufu With 3Goat LP', '60', NULL, 'L', 13, '60', 1, NULL, NULL),
(339, 'Smirnoff LP', '12', 15, 'D', 11, '12', 1, NULL, NULL),
(340, 'Star L LP', '12', 3, 'D', 22, '12', 1, NULL, NULL),
(341, 'Fudu With Tilapia', '45', NULL, 'L', 13, '45', 1, NULL, NULL),
(342, 'Fufu With Grascutter LP', '50', NULL, 'L', 13, '50', 1, NULL, NULL),
(343, 'Jollof/ Chiken LP', '40', 9943, 'C', 9, '40', 1, NULL, NULL),
(344, 'Fried Plantain only LP', '10', 99996, 'C', 10, '10', 1, NULL, NULL),
(345, 'Point and Kill', '80', 10000, 'F', 16, '80', 1, NULL, NULL),
(346, 'Point And Kill', '80', 22, 'L', 20, '80', 1, NULL, NULL),
(347, 'French fries with  Grilled Chicken LP', '40', 99988, 'C', 10, '40', 1, NULL, NULL),
(348, 'Jack D L P', '15', 9979, 'D', 11, '15', 1, NULL, NULL),
(349, 'Wine LP', '90', 9998, 'D', 14, '90', 1, NULL, NULL),
(350, 'Adonko Tot LP', '3', 9998, 'D', 11, '3', 1, NULL, NULL),
(351, 'Orijin M LP', '8', 7, 'D', 22, '8', 1, NULL, NULL),
(352, 'Banku / Red Fish', '35', 22, 'C', 18, '35', 1, NULL, NULL),
(353, 'Tilapia / Plain Rice LP', '55', 999999, 'C', 9, '55', 1, NULL, NULL),
(354, 'Hunters Green LP', '15', 23, 'D', 22, '15', 1, NULL, NULL),
(355, 'Remy Martin T LP', '20', 40, 'D', 11, '20', 1, NULL, NULL),
(356, 'Pure Pineapple LP', '15', 99976, 'D', 21, '15', 1, NULL, NULL),
(357, 'Alomo Gold LP', '3', 99997, 'D', 11, '3', 1, NULL, NULL),
(358, 'Goat Soup LP', '40', 22, 'L', 19, '40', 1, NULL, NULL),
(359, 'Yam And Chiken LP', '35', 99988, 'C', 10, '35', 1, NULL, NULL),
(360, 'Dry Fish Soup LP', '35', 21, 'L', 20, '35', 1, NULL, NULL),
(361, 'Yam/Red Fish LP', '55', 999986, 'C', 10, '55', 1, NULL, NULL),
(362, 'FuFu With Pork LP', '35', NULL, 'L', 13, '35', 1, NULL, NULL),
(363, 'Baileys Tot LP', '8', 9993, 'D', 11, '8', 1, NULL, NULL),
(364, 'Fanta LP', '7', 26, 'D', 21, '7', 1, NULL, NULL),
(365, 'Banku With Assorted Meat', '45', 10001, 'L', 23, '45', 1, NULL, NULL),
(366, 'Alomo Gold Bottle LP', '25', 9996, 'D', 11, '25', 1, NULL, NULL),
(367, 'Fresh Salmon light soup LP', '15', 21, 'L', 20, '15', 1, NULL, NULL),
(368, 'Fried Rice/ Red Fish M  LP', '45', 99993, 'C', 24, '45', 1, NULL, NULL),
(370, 'Assorted See Food LP', '55', 99963, 'C', 29, '55', 1, NULL, NULL),
(371, 'Black Lebel LP', '15', 99949, 'D', 11, '15', 1, NULL, NULL),
(372, 'Prepi m LP', '7', 99971, 'D', 21, '7', 1, NULL, NULL),
(373, 'Chicken onlyLP', '25', 99991, 'C', 28, '25', 1, NULL, NULL),
(374, 'Star mLP', '8', 21, 'D', 22, '8', 1, NULL, NULL),
(375, 'Fish only LP', '50', 9997, 'C', 24, '50', 1, NULL, NULL),
(376, 'Fish m LP', '40', 9997, 'C', 24, '40', 1, NULL, NULL),
(377, 'Double Black', '25', 9999, 'D', 11, '25', 1, NULL, NULL),
(378, 'Club M LP', '8', 5, 'D', 22, '8', 1, NULL, NULL),
(379, 'Banku With Okro Soup LP', '45', 1000037, 'L', 23, '45', 1, NULL, NULL),
(380, 'Welch \'s LP', '8', 999983, 'D', 21, '8', 1, NULL, NULL),
(381, 'Yam With Egg Stew', '25', 99995, 'C', 10, '25', 1, NULL, NULL),
(382, 'plain Rice / Fish', '35', 99995, 'C', 9, '35', 1, NULL, NULL),
(383, 'Yam/ Fish Fillet LP', '35', 9996, 'C', 10, '35', 1, NULL, NULL),
(384, 'Jollof/ Pork LP', '40', 99999, 'C', 9, '40', 1, NULL, NULL),
(385, 'Canada Dry LP', '5', 999984, 'D', 21, '5', 1, NULL, NULL),
(386, 'Red Fish ', '30', 99958, 'C', 24, '30', 1, NULL, NULL),
(387, 'Fufu With Chiken  LP', '35', 37, 'L', 13, '35', 1, NULL, NULL),
(388, 'Condor Peak LP', '80', 99995, 'D', 14, '80', 1, NULL, NULL),
(389, 'Assorted Fried Rice LP', '55', 9985, 'C', 29, '55', 1, NULL, NULL),
(390, 'Grasscutter Meal LP', '45', NULL, 'L', 19, '45', 1, NULL, NULL),
(391, 'Banku Meal LP', '40', 100020, 'L', 23, '40', 1, NULL, NULL),
(392, 'Shandy LP', '12', 0, 'D', 22, '12', 1, NULL, NULL),
(393, 'Spaghetti / Chiken LP', '40', 9999999, 'C', 29, '40', 1, NULL, NULL),
(394, 'Spaghetti/ Fish LP', '45', 99996, 'C', 29, '45', 1, NULL, NULL),
(395, 'Banku/ Red Fish LP', '45', 99988, 'C', 18, '45', 1, NULL, NULL),
(396, 'Luckie s Special Cooktail', '20', 999996, 'D', 11, '20', 1, NULL, NULL),
(397, 'Fufu with beef, salmon LP', '45', NULL, 'L', 13, '45', 1, NULL, NULL),
(399, 'Plainrice', '10', 99999972, 'C', 9, '10', 1, NULL, NULL),
(400, 'Pork LP', '5', 23, 'L', 19, '5', 1, NULL, NULL),
(401, 'Banku Redfish LP', '55', 999987, 'C', 18, '55', 1, NULL, NULL),
(402, 'Jollof with Tilapia', '45', 999981, 'C', 9, '45', 1, NULL, NULL),
(403, 'Fried Rice / fillet fish LP', '45', 999997, 'C', 9, '45', 1, NULL, NULL),
(404, 'Ruut Extra LP', '10', 9, 'D', 22, '10', 1, NULL, NULL),
(405, 'Martini LP', '10', 999990, 'D', 11, '10', 1, NULL, NULL),
(406, 'Prepi S LP', '7', 99980, 'D', 21, '7', 1, NULL, NULL),
(407, 'Fufu /Red fish/Snail LP', '60', 999995, 'C', 18, '60', 1, NULL, NULL),
(408, 'Rice Ball with Cow Meat LP', '45', 1000001, 'L', 23, '45', 1, NULL, NULL),
(409, 'Red Red LP', '30', 10013, 'L', 25, '30', 1, NULL, NULL),
(410, 'Kokonte With Goat LP', '45', 100001, 'L', 23, '45', 1, NULL, NULL),
(411, 'Fufu With Snail LP', '50', NULL, 'L', 13, '50', 1, NULL, NULL),
(412, 'Fufu With Fresh Salmon LP', '25', NULL, 'L', 13, '25', 1, NULL, NULL),
(413, 'Heineken', '10', 34, 'D', 22, '10', 1, NULL, NULL),
(414, 'Ampesi/Egg/Fried Fish LP', '50', 1000002, 'L', 25, '50', 1, NULL, NULL),
(415, 'Kpoo keke Bottle', '20', 9966, 'D', 11, '20', 1, NULL, NULL),
(416, 'Kpoo Keke', '2', 999606, 'D', 11, '2', 1, NULL, NULL),
(417, 'Point and Kill L', '120', 1000003, 'L', 20, '120', 1, NULL, NULL),
(418, 'Jagermeilter bottle', '150 LP', 10000006, 'D', 11, '150 LP', 1, NULL, NULL),
(419, 'Rice Balls with Grascutter LP', '50', 1000001, 'L', 23, '50', 1, NULL, NULL),
(420, 'Grape LP', '10', 9999997, 'D', 21, '10', 1, NULL, NULL),
(421, 'Cramberry LP', '10', 99995, 'D', 21, '10', 1, NULL, NULL),
(422, 'Courvoisier Small LP', '30', 99992, 'D', 11, '30', 1, NULL, NULL),
(423, 'Noodles With Chiken LP', '50', 9999998, 'C', 29, '50', 1, NULL, NULL),
(424, 'French Fries With Chiken LP', '40', 999993, 'C', 10, '40', 1, NULL, NULL),
(425, 'Egg Stew/Plain Rice/Fried Fish', '35', 1000000, 'C', 9, '35', 1, NULL, NULL),
(426, 'Joy Ginger Tot LP', '3', 999993, 'D', 11, '3', 1, NULL, NULL),
(427, 'Long Island LP', '30', 1000004, 'D', 11, '30', 1, NULL, NULL),
(428, 'Drip wild Red', '25', 65, 'D', 11, '25', 1, NULL, NULL),
(429, 'Cody', '12', 10, 'D', 11, '12', 1, NULL, NULL),
(430, 'Dole', '5', 9999995, 'D', 21, '5', 1, NULL, NULL),
(431, 'Plain Rice / Chicken', '40', 9999991, 'C', 9, '40', 1, NULL, NULL),
(432, 'Fried Rice / Fish', '45', 9999977, 'C', 9, '45', 1, NULL, NULL),
(433, 'French fries / Fish', '35', 9999993, 'C', 10, '35', 1, NULL, NULL),
(434, 'Assortad Jollof Rice', '50', 9999977, 'C', 9, '50', 1, NULL, NULL),
(435, 'Yam / Tilapia LP', '50', 9999992, 'C', 10, '50', 1, NULL, NULL),
(436, 'Red Fish/ Boiled Yam LP', '45', 100000873, 'C', 24, '45', 1, NULL, NULL),
(437, 'Banku/ Red Fish', '30', 1000874, 'C', 18, '30', 1, NULL, NULL),
(438, 'Red Red / Fried Goat', '45', 10000004, 'L', 25, '45', 1, NULL, NULL),
(439, 'Club L LP', '12', 13, 'D', 22, '12', 1, NULL, NULL),
(440, 'Jollof with Tilapia L', '55', 999994, 'C', 9, '55', 1, NULL, NULL),
(441, 'Red Bull LP', '12', 14, 'D', 21, '12', 1, NULL, NULL),
(442, 'Pork feet/beef Soup LP', '25', NULL, 'L', 19, '25', 1, NULL, NULL),
(443, 'Fresh Salmon with Soup', '20', NULL, 'L', 20, '20', 1, NULL, NULL),
(444, 'Jollof & Red Fish', '50', 9999995, 'C', 9, '50', 1, NULL, NULL),
(445, 'Fufu/Goat/Fresh Salmon LP', '45', 23, 'L', 13, '45', 1, NULL, NULL),
(446, 'Fish Fillet/ Steam Veg LP', '45', 999997, 'C', 24, '45', 1, NULL, NULL),
(447, 'French Fries/ Steam Veg LP', '20', 99996, 'C', 10, '20', 1, NULL, NULL),
(448, 'Point And Kill', '60', 100000, 'C', 24, '60', 1, NULL, NULL),
(449, 'Baileys LP', '8', 9999997, 'D', 11, '8', 1, NULL, NULL),
(450, 'Savana Dry LP', '15', 8, 'D', 22, '15', 1, NULL, NULL),
(451, 'Grilled Pork LP', '35', 999997, 'C', 12, '35', 1, NULL, NULL),
(452, 'Plain Rice / Goat/ Soup LP', '30', 1000002, 'L', 23, '30', 1, NULL, NULL),
(453, 'Assorted Jollof LP', '55', 999988, 'C', 29, '55', 1, NULL, NULL),
(454, 'Stella LP', '15', 25, 'D', 11, '15', 1, NULL, NULL),
(455, 'French Fries/ Fish Fillet LP', '40', 9999998, 'C', 10, '40', 1, NULL, NULL),
(456, 'Fried Rice/ Fish Fillet LP', '40', 99999997, 'C', 9, '40', 1, NULL, NULL),
(457, 'Konkote/ DryFish LP', '40', 100000002, 'L', 23, '40', 1, NULL, NULL),
(458, ' Cardenas', '2', 99999988, 'D', 11, '2', 1, NULL, NULL),
(459, 'Fried Rice/ Tilapia LP', '50', 9999993, 'C', 9, '50', 1, NULL, NULL),
(460, 'French Fries / Goat LP', '40', 9999998, 'C', 10, '40', 1, NULL, NULL),
(461, 'French Fries / Pork LP', '35', 10000000, 'C', 10, '35', 1, NULL, NULL),
(462, 'Rice Ball/ Chiken Wings/ Tuna LP', '25', 100004, 'L', 23, '25', 1, NULL, NULL),
(463, 'Rice Ball / Salmon Fish LP', '25', 1000009, 'L', 23, '25', 1, NULL, NULL),
(464, 'JP CHENET PINK S LP', '25', 4, 'D', 14, '25', 1, NULL, NULL),
(465, 'JP CHENET WHITE S LP', '30', 3, 'D', 14, '30', 1, NULL, NULL),
(466, 'JP CHENET M SWT S LP', '25', 4, 'D', 14, '25', 1, NULL, NULL),
(467, 'JP CHENET BRUT S', '25', 2, 'D', 14, '25', 1, NULL, NULL),
(468, 'Fufu/ Red Fish LP', '35', 9999999, 'C', 24, '35', 1, NULL, NULL),
(469, 'Grilled Tilapia Only', '45', 9999944, 'C', 24, '45', 1, NULL, NULL),
(470, 'Fufu/Chiken/Goat LP', '40', NULL, 'L', 13, '40', 1, NULL, NULL),
(471, 'Martinellis LP', '40', 999998, 'D', 14, '40', 1, NULL, NULL),
(472, 'Rice Ball with Goat LP', '30', 1000005, 'L', 23, '30', 1, NULL, NULL),
(473, 'Ginger Ale LP', '5', 99999991, 'D', 21, '5', 1, NULL, NULL),
(474, 'Yam/ Fish', '40', 999988, 'C', 10, '40', 1, NULL, NULL),
(475, 'Orijin L LP', '12', 1, 'D', 22, '12', 1, NULL, NULL),
(476, 'Mangos Juice LP', '15', 99931, 'D', 21, '15', 1, NULL, NULL),
(477, 'Jameson Tot', '15', 99989, 'D', 11, '15', 1, NULL, NULL),
(478, 'Cointreau LP', '15', 89, 'D', 11, '15', 1, NULL, NULL),
(479, 'Spaghetti / Chicken', '30', 42, 'C', 9, '30', 1, NULL, NULL),
(480, 'Apreprensan with Grasscutter LP', '50', 100002, 'L', 25, '50', 1, NULL, NULL),
(481, 'Rice ball/ pork/beef/salmon LP', '30', 100000889, 'L', 23, '30', 1, NULL, NULL),
(482, 'FuFu Grasscutter LP', '30', NULL, 'L', 13, '30', 1, NULL, NULL),
(483, 'Boiled Yam / Tilapia LP', '50', 99998, 'C', 10, '50', 1, NULL, NULL),
(484, 'Point And Kill S', '80', 99996, 'C', 24, '80', 1, NULL, NULL),
(485, 'Rice/Goat/Snail LP', '55', 10002, 'L', 23, '55', 1, NULL, NULL),
(486, 'Blue Thai Moito LP', '25', 998, 'D', 11, '25', 1, NULL, NULL),
(487, 'Red Red /Fried Fish/ Plantain LP', '50', 100007, 'L', 25, '50', 1, NULL, NULL),
(488, 'Cooktail LP', '20', 9965, 'D', 11, '20', 1, NULL, NULL),
(489, 'Cocktail LP', '25', 999902, 'D', 11, '25', 1, NULL, NULL),
(490, 'Mangos Juice Galon', '80', 98, 'D', 21, '80', 1, NULL, NULL),
(491, 'Grilled Tilapia Only L', '50', 93, 'C', 24, '50', 1, NULL, NULL),
(492, 'Plain Rice/ 2Goat LP', '50', 100003, 'L', 23, '50', 1, NULL, NULL),
(493, 'Gizzard Party L', '250', 99, 'C', 28, '250', 1, NULL, NULL),
(494, 'Fish Fingers Party L', '400', 99, 'C', 28, '400', 1, NULL, NULL),
(495, 'Barbeccue Chiken Wings Pary L', '300', 99, 'C', 28, '300', 1, NULL, NULL),
(496, 'Banku/ Red Fish S', '25', 10000, 'C', 18, '25', 1, NULL, NULL),
(497, 'Black Mafia Full', '80', 99, 'D', 11, '80', 1, NULL, NULL),
(498, 'Fresh Tilapia L', '30', 1200, 'L', 20, '30', 1, NULL, NULL),
(499, 'Mangos Pineapple juice S', '6', 13, 'D', 21, '6', 1, NULL, NULL),
(500, 'Double Black LP', '25', 23, 'D', 11, '25', 1, NULL, NULL),
(501, 'Cocktail LP 30', '30', 33, 'D', 11, '30', 1, NULL, NULL),
(502, 'Remy Martin  VSOP Tot LP', '25', 25, 'D', 11, '25', 1, NULL, NULL),
(503, 'Rice Ball/ Dry Fish LP', '40', 105, 'L', 23, '40', 1, NULL, NULL),
(504, 'Remy Martin LP', '25', 34, 'D', 11, '25', 1, NULL, NULL),
(505, 'French Fries LP', '15', 25, 'C', 10, '15', 1, NULL, NULL),
(506, 'Fried Rice/ Tilapia L LP', '55', 86, 'C', 9, '55', 1, NULL, NULL),
(507, 'Palm Wine Jar L P', '15', 15, 'D', 21, '15', 1, NULL, NULL),
(508, 'Shrimp Fried Rice L P', '50', 46, 'C', 9, '50', 1, NULL, NULL),
(509, 'JP Chenet Merlot ', '25', 4, 'D', 14, '25', 1, NULL, NULL),
(510, 'Bahama Mama LP', '35', 99, 'D', 11, '35', 1, NULL, NULL),
(511, 'Chivas Tot LP', '15', 42, 'D', 11, '15', 1, NULL, NULL),
(512, 'Smirnoff Vodka Full', '100', 11, 'D', 11, '100', 1, NULL, NULL),
(513, 'Sobolo LP', '6', 14, 'D', 21, '6', 1, NULL, NULL),
(514, 'Plain Rice / Dry Fish soup JM', '45', 19, 'C', 9, '45', 1, NULL, NULL),
(515, 'Fufu/Snail/Tuna LP', '40', 34, 'L', 13, '40', 1, NULL, NULL),
(516, 'Fufu/Beef/Tuna LP', '35', 22, 'L', 13, '35', 1, NULL, NULL),
(517, 'Mojito LP', '30', 38, 'D', 11, '30', 1, NULL, NULL),
(518, 'Cosmopolitan LP', '30', 85, 'D', 11, '30', 1, NULL, NULL),
(519, 'Tequila Sunset LP', '30', 96, 'D', 11, '30', 1, NULL, NULL),
(520, 'Long Island Ice Tea LP', '35', 83, 'D', 11, '35', 1, NULL, NULL),
(521, 'Margarita LP', '30', 94, 'D', 11, '30', 1, NULL, NULL),
(522, 'Sex On The Beach LP', '35', 78, 'D', 11, '35', 1, NULL, NULL),
(523, 'Pinacolada LP', '30', 82, 'D', 11, '30', 1, NULL, NULL),
(524, 'Malibu Pinacolada LP', '30', 93, 'D', 11, '30', 1, NULL, NULL),
(525, 'Pain Killer LP', '35', 98, 'D', 11, '35', 1, NULL, NULL),
(526, 'Swimming Pool LP', '30', 95, 'D', 11, '30', 1, NULL, NULL),
(527, 'Bullf Rog LP', '35', 98, 'D', 11, '35', 1, NULL, NULL),
(528, 'Drip (Blow Job)', '25', 102, 'D', 11, '25', 1, NULL, NULL),
(529, 'Drip (Black Coffee', '25', 27, 'D', 11, '25', 1, NULL, NULL),
(530, 'Red Red/Red Fish LP', '50', 102, 'L', 25, '50', 1, NULL, NULL),
(531, 'LP juice S', '7', 40, 'D', 21, '7', 1, NULL, NULL),
(532, 'Goat Jollof ', '35', 99, 'C', 10, '35', 1, NULL, NULL),
(533, 'plain Rice / Plava, Tuna & egg', '25', 99, 'C', 9, '25', 1, NULL, NULL),
(534, 'Plain Rice / Palava, Tuna & egg', '25', 98, 'C', 9, '25', 1, NULL, NULL),
(535, 'Yam / Chicken Stew', '25', 17, 'C', 10, '25', 1, NULL, NULL),
(536, 'Fried rice\\ Beef Sauce', '35', 100, 'C', 9, '35', 1, NULL, NULL),
(537, 'Kelewele', '10', NULL, 'L', 25, '10', 1, NULL, NULL),
(538, 'Gran Sud Merlot', '30', 3, 'D', 14, '30', 1, NULL, NULL),
(539, 'Fried Rice\\ Chiken\\ Beef Sauce', '50', 98, 'C', 9, '50', 1, NULL, NULL),
(540, 'Henessy VSOP LP', '20', 28, 'D', 11, '20', 1, NULL, NULL),
(541, 'Bordeaux Red  LP', '30', 21, 'D', 14, '30', 1, NULL, NULL),
(542, 'Bordeaux White  LP', '30', 0, 'D', 21, '30', 1, NULL, NULL),
(543, 'Desperados LP', '15', 29, 'D', 22, '15', 1, NULL, NULL),
(544, 'Red Lebel S', '35', 4, 'D', 11, '35', 1, NULL, NULL),
(545, 'Corona L P', '15', 1, 'D', 22, '15', 1, NULL, NULL),
(546, 'Plain Rice / Palava, Tuna & egg LP', '30', 29, 'C', 9, '30', 1, NULL, NULL),
(547, 'fufu\\Grasscuter\\Amani LP', '35', 22, 'L', 13, '35', 1, NULL, NULL),
(548, 'Buffet 1  Adult ', '60', 40, 'C', 30, '60', 1, NULL, NULL),
(549, 'Buffet Kid ', '30', 48, 'C', 30, '30', 1, NULL, NULL),
(550, 'Fufu with 3 beef LP', '30', 20, 'L', 13, '30', 1, NULL, NULL),
(551, 'Abomu Kontomire', '35', 30, 'L', 25, '35', 1, NULL, NULL),
(552, 'Red Lebel Full', '120', 9, 'D', 11, '120', 1, NULL, NULL),
(553, 'Red Lebel LP', '12', 10, 'D', 11, '12', 1, NULL, NULL),
(554, 'Red Fish / Veggies ', '45', 39, 'C', 30, '45', 1, NULL, NULL),
(555, 'Fried Rice\\Beef Sauce', '40', 96, 'C', 9, '40', 1, NULL, NULL),
(556, 'Jollof\\Beef Sauce', '45', 98, 'C', 9, '45', 1, NULL, NULL),
(557, 'Malibu LP', '10', 24, 'D', 11, '10', 1, NULL, NULL),
(558, 'Rice\\Chiken\\Goat LP', '45', 94, 'C', 9, '45', 1, NULL, NULL),
(559, 'Sparkling wine LP', '60', 9, 'D', 14, '60', 1, NULL, NULL),
(560, 'Red Label LP', '180', 12, 'D', 11, '180', 1, NULL, NULL),
(561, 'Jumia 2 Bank/ Okro (wele, Beef,salmon,crab)', '30', 41, 'L', 23, '30', 1, NULL, NULL),
(562, 'Jumia Jollof Goat ', '35', 50, 'C', 9, '35', 1, NULL, NULL),
(563, 'Dirp (Orange)', '25', 52, 'D', 11, '25', 1, NULL, NULL),
(564, 'Purple Rain ( Drip grape )', '25', 54, 'D', 11, '25', 1, NULL, NULL),
(565, 'Moet NT', '550', 1, 'D', 11, '550', 1, NULL, NULL),
(566, 'Tequila ', '10', 72, 'D', 11, '10', 1, NULL, NULL),
(567, 'Hennessy VS B', '400', 10, 'D', 11, '400', 1, NULL, NULL),
(568, 'Veuve Clicquot Rose', '600', 11, 'D', 11, '600', 1, NULL, NULL),
(569, 'Belair Rose ', '450', 5, 'D', 11, '450', 1, NULL, NULL),
(570, 'Mangos passion pineapple', '6', 13, 'D', 22, '6', 1, NULL, NULL),
(571, 'Cranberry', '15', 20, 'D', 21, '15', 1, NULL, NULL),
(572, 'Tequila LP', '15', 36, 'D', 11, '15', 1, NULL, NULL),
(573, 'courvoisier tot LP', '20', 89, 'D', 11, '20', 1, NULL, NULL),
(574, 'Manischewitz CG  LP', '150', 7, 'D', 14, '150', 1, NULL, NULL),
(575, 'Kelewele/ Tilapia LP', '60', 100, 'C', 10, '60', 1, NULL, NULL),
(576, 'Yam/ Tilapia LP', '60', 91, 'C', 10, '60', 1, NULL, NULL),
(577, 'Mix Amp/ Tilapia  LP', '60', 101, 'L', 25, '60', 1, NULL, NULL),
(578, 'Amarula LP', '8', 99, 'D', 11, '8', 1, NULL, NULL),
(579, 'Smirnoffe Ice LP', '10', 26, 'D', 22, '10', 1, NULL, NULL),
(580, 'Mangos juice L', '10', 11, 'D', 21, '10', 1, NULL, NULL),
(581, 'Cabernet D anjou', '70', 6, 'D', 14, '70', 1, NULL, NULL),
(582, 'chiken\\jollof', '25', 500, 'C', 9, '25', 1, NULL, NULL),
(583, 'Assorted Noodles LP', '55', 99, 'C', 29, '55', 1, NULL, NULL),
(584, 'Absolut Vadka', '280', 4, 'D', 11, '280', 1, NULL, NULL),
(585, 'ABC', '10', 2, 'D', 22, '10', 1, NULL, NULL),
(586, 'Fried  Rice w   seafood Sauce LP', '60', 12, 'C', 30, '60', 1, NULL, NULL),
(587, 'Spaghetti Side', '15', 20, 'C', 30, '15', 1, NULL, NULL),
(588, 'ABC LP', '12', 5, 'D', 22, '12', 1, NULL, NULL),
(589, 'ABC M', '6', 40, 'D', 22, '6', 1, NULL, NULL),
(590, 'Faxe LP', '15', 11, 'D', 22, '15', 1, NULL, NULL),
(591, 'Bajac Wine LP', '60', 16, 'D', 14, '60', 1, NULL, NULL),
(592, 'Sang Mele', '120', 45, 'D', 14, '120', 1, NULL, NULL),
(593, 'Lager', '12', 8, 'D', 22, '12', 1, NULL, NULL),
(594, 'Gulpener', '12', 9, 'D', 22, '12', 1, NULL, NULL),
(595, 'Export', '12', 3, 'D', 22, '12', 1, NULL, NULL),
(596, 'De Klok', '12', 10, 'D', 22, '12', 1, NULL, NULL),
(597, 'De Klok LP', '12', 10, 'D', 22, '12', 1, NULL, NULL),
(598, 'Export LP', '12', 11, 'D', 22, '12', 1, NULL, NULL),
(599, 'Gulpener LP', '12', 12, 'D', 22, '12', 1, NULL, NULL),
(600, 'Lager LP', '12', 12, 'D', 22, '12', 1, NULL, NULL),
(601, 'Lobster LP', '60', 99999, 'C', 29, '60', 1, NULL, NULL),
(602, 'Gaillac LP', '120', 14, 'D', 14, '120', 1, NULL, NULL),
(603, 'Shrimp With Fried Rice LP', '55', 10075, 'C', 29, '55', 1, NULL, NULL),
(604, 'Tsingtao', '12', 7, 'D', 22, '12', 1, NULL, NULL),
(605, 'Estrella  ', '12', 2, 'D', 22, '12', 1, NULL, NULL),
(606, 'Veggie  Rice LP', '20', 40, 'C', 30, '20', 1, NULL, NULL),
(607, 'Plain Rice/ Red Red LP', '30', 100011, 'C', 9, '30', 1, NULL, NULL),
(608, 'AtiÃ©kÃ© / Tillapia. L', '65', 14, 'C', 30, '65', 1, NULL, NULL),
(609, 'Eba/Snail LP', '50', 101, 'L', 13, '50', 1, NULL, NULL),
(610, 'Gari Foto/Fish LP', '45', 98, 'C', 24, '45', 1, NULL, NULL),
(611, 'Rice/Chicken/Potatoes LP', '50', 95, 'C', 9, '50', 1, NULL, NULL),
(612, 'Rice/Red Fish L LP', '60', 998, 'C', 9, '60', 1, NULL, NULL),
(613, 'AtiÃ©kÃ©/Red Fish LP', '55', 999, 'C', 9, '55', 1, NULL, NULL),
(614, 'Smoke Goat', '15', 10000, 'L', 19, '15', 1, NULL, NULL),
(615, 'Smoke Cow Meat', '15', 10000, 'L', 19, '15', 1, NULL, NULL),
(616, 'Smoke Chiken', '15', 10000, 'L', 19, '15', 1, NULL, NULL),
(617, 'aaaa', '12', 34, 'C', 9, '12', 1, '2019-03-29 20:05:41pm', '2019-03-29 20:08:45pm');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(25) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `balance` varchar(20) DEFAULT NULL,
  `status` enum('PAID','PENDING') DEFAULT 'PENDING',
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `hall` int(11) DEFAULT NULL,
  `ord_type` varchar(30) DEFAULT NULL,
  `nhil` varchar(30) DEFAULT NULL,
  `fund` varchar(30) DEFAULT NULL,
  `vat` varchar(30) DEFAULT NULL,
  `kitchen` varchar(20) NOT NULL DEFAULT 'Bar',
  `created_on` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `amount`, `discount`, `balance`, `status`, `tid`, `sid`, `hall`, `ord_type`, `nhil`, `fund`, `vat`, `kitchen`, `created_on`) VALUES
(1, 'MG-82035518', 'ADMINISTRATOR', '2019-03-29', '55', NULL, '55', 'PAID', 16, 41, 11, 'Take In', NULL, NULL, NULL, 'Continental', '2019-03-29 19:42:45pm'),
(2, 'MG-165455', 'ADMINISTRATOR', '2019-03-29', '100', NULL, '100', 'PAID', NULL, NULL, NULL, 'Take-Out', NULL, NULL, NULL, 'Bar', '2019-03-29 19:42:52pm'),
(3, 'MG-35969623', 'Waiter', '2019-03-29', '95', NULL, '95', 'PENDING', NULL, NULL, NULL, 'Take-Out', NULL, NULL, NULL, 'Bar', '2019-03-29 21:22:48pm'),
(4, 'MG-464431724', 'Waiter', '2019-03-29', '11', NULL, '11', 'PENDING', NULL, NULL, NULL, 'Take-Out', NULL, NULL, NULL, 'Bar', '2019-03-29 21:33:34pm'),
(5, 'MG-15063', 'Waiter', '2019-03-29', '55', NULL, '55', 'PENDING', 46, 20, 10, 'Take In', NULL, NULL, NULL, 'Continental', '2019-03-29 22:23:01pm'),
(6, 'MG-436624', 'Waiter', '2019-03-29', '55', NULL, '55', 'PENDING', 48, 32, 10, 'Take In', NULL, NULL, NULL, 'Local', '2019-03-29 22:53:46pm'),
(7, 'MG-22175465', 'Waiter', '2019-03-29', '25', NULL, '25', 'PENDING', 43, 17, 10, 'Take In', NULL, NULL, NULL, 'Continental', '2019-03-29 23:00:26pm'),
(8, 'MG-4144172525', 'Waiter', '2019-03-29', '20', NULL, '20', 'PENDING', 46, 20, 10, 'Take In', NULL, NULL, NULL, 'Continental', '2019-03-29 23:05:18pm'),
(9, 'MG-9513', 'Waiter', '2019-03-30', '15', NULL, '15', 'PENDING', 45, 26, 10, 'Take In', NULL, NULL, NULL, 'Local', '2019-03-30 10:41:08am'),
(10, 'MG-9513', 'Waiter', '2019-03-30', '15', NULL, '15', 'PENDING', 45, 26, 10, 'Take In', NULL, NULL, NULL, 'Local', '2019-03-30 10:41:35am');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `date` varchar(500) NOT NULL,
  `plate` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `qty`, `amount`, `product_id`, `price`, `vat`, `discount`, `date`, `plate`) VALUES
(1, 'MG-82035518', '1', '30', 23, '30', NULL, NULL, '03/29/19', 1),
(2, 'MG-82035518', '1', '25', 70, '25', NULL, NULL, '03/29/19', 1),
(3, 'MG-165455', '1', '25', 70, '25', NULL, NULL, '03/29/19', 1),
(4, 'MG-165455', '1', '40', 80, '40', NULL, NULL, '03/29/19', 1),
(5, 'MG-165455', '1', '35', 117, '35', NULL, NULL, '03/29/19', 1),
(6, 'MG-35969623', '1', '10', 121, '10', NULL, NULL, '03/29/19', 1),
(7, 'MG-35969623', '1', '45', 250, '45', NULL, NULL, '03/29/19', 1),
(8, 'MG-35969623', '1', '40', 245, '40', NULL, NULL, '03/29/19', 1),
(9, 'MG-464431724', '1', '6', 96, '6', NULL, NULL, '03/29/19', 2),
(10, 'MG-464431724', '1', '5', 128, '5', NULL, NULL, '03/29/19', 2),
(11, 'MG-15063', '1', '10', 121, '10', NULL, NULL, '03/29/19', 1),
(12, 'MG-15063', '1', '45', 250, '45', NULL, NULL, '03/29/19', 1),
(13, 'MG-436624', '1', '30', 76, '30', NULL, NULL, '03/29/19', 1),
(14, 'MG-436624', '1', '25', 122, '25', NULL, NULL, '03/29/19', 1),
(15, 'MG-22175465', '1', '25', 70, '25', NULL, NULL, '03/29/19', 1),
(16, 'MG-4144172525', '1', '20', 219, '20', NULL, NULL, '03/29/19', 1),
(17, 'MG-12613117', '1', '45', 237, '45', NULL, NULL, '03/29/19', 1),
(20, 'MG-9513', '1', '15', 1, '15', NULL, NULL, '03/30/19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subId` int(11) NOT NULL,
  `main` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subId`, `main`, `sub`) VALUES
(9, 'C', 'Rice'),
(10, 'C', 'Yam / French Fries '),
(11, 'D', 'Alcohol'),
(12, 'C', 'Pork'),
(13, 'L', 'Fufu'),
(14, 'D', 'Wine'),
(15, 'F', 'Pork'),
(16, 'F', 'Fish'),
(17, 'F', 'Chicken'),
(18, 'C', 'Banku'),
(19, 'L', 'Meat'),
(20, 'L', 'Fish'),
(21, 'D', 'Soft Drink'),
(22, 'D', 'Beer'),
(23, 'L', 'Rice Ball / Banku / Konkote'),
(24, 'C', 'Fish'),
(25, 'L', 'Ampesi / Red Red '),
(26, 'S', 'Soups'),
(27, 'F', 'Meat'),
(28, 'C', 'Chiken/ Meat'),
(29, 'C', 'Sea Food '),
(30, 'C', 'Luckie\'s Place'),
(31, 'SM', 'Luckie\'s Place');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `supplier_contact` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `contact_person`, `note`) VALUES
(1, 'Mike  Juice guy ', '', 'mike', '0244199015', 'gallon');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `companyName` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `CompanyEmail` varchar(100) DEFAULT NULL,
  `CompanyPhoneNum` varchar(100) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`companyName`, `address`, `logo`, `CompanyEmail`, `CompanyPhoneNum`, `version`) VALUES
('Mango\'s Restaurant', 'No 1. 4th Street, Mempeasem East Legon', '', 'mangosrestaurant@gmail.com', '0555008815/0302503754', 'Vs-W2.0.0.');

-- --------------------------------------------------------

--
-- Table structure for table `systemwindow`
--

CREATE TABLE `systemwindow` (
  `id` int(11) NOT NULL,
  `code1` varchar(50) NOT NULL,
  `code2` varchar(50) NOT NULL,
  `codekey` varchar(30) NOT NULL,
  `active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemwindow`
--

INSERT INTO `systemwindow` (`id`, `code1`, `code2`, `codekey`, `active`) VALUES
(1, 'TURD-WE1D-MDRN-RENA', 'VFVS-RC1X-RTFE-LU1E', '0710-8073-4802-5F00', 'One-Off');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(3, 'cashier', 'cashier', 'Cashier', 'Cashier'),
(4, 'waiter', '12345', 'Waiter', 'Waiter'),
(5, 'Ernest', '6741', 'Ernest Ansah', 'Waiter'),
(8, 'Gyan', '10084', 'Luckie Lawson', 'Admin'),
(9, 'Admin', 'admin', 'ADMINISTRATOR', 'Admin'),
(12, 'HelenaY', '1996', 'Helena Yengo', 'Cashier'),
(15, 'Portia', '33346', 'Portia Barku', 'Waiter'),
(16, 'FeliciaA', '0201', 'Felicia Annor', 'Waiter'),
(17, 'Rejoice ', '2121', 'Rejoice A', 'Waiter'),
(18, 'LP', 'waiter', 'Luckie Place ', 'Waiter'),
(19, 'Mauri', 'elza', 'Mauricette', 'Waiter'),
(20, 'DP', 'party', 'Drip Party', 'Waiter'),
(21, 'Grace G', '1546', 'Grace Gohoho', 'Waiter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beedysystem`
--
ALTER TABLE `beedysystem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hseat`
--
ALTER TABLE `hseat`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `htables`
--
ALTER TABLE `htables`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `subId` (`main`),
  ADD KEY `subId_2` (`subId`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `hall` (`hall`),
  ADD KEY `hall_2` (`hall`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subId`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `systemwindow`
--
ALTER TABLE `systemwindow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beedysystem`
--
ALTER TABLE `beedysystem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `hseat`
--
ALTER TABLE `hseat`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `htables`
--
ALTER TABLE `htables`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `systemwindow`
--
ALTER TABLE `systemwindow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hseat`
--
ALTER TABLE `hseat`
  ADD CONSTRAINT `hseat_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `htables` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `htables`
--
ALTER TABLE `htables`
  ADD CONSTRAINT `htables_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`subId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`subId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `htables` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `hseat` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`hall`) REFERENCES `hall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD CONSTRAINT `sales_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
