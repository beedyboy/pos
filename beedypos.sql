-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2018 at 12:20 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.7-1+ubuntu16.04.1+deb.sury.org+1

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
(1, 'TURG-QLFZ-MUVN-RVLY', 'VFVS-RY1R-TEZA-LU1V', '01AC-D0F1-BD0E-7F80', '2017-06-13', '2018-09-13', 'One-Off');

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
(NULL, 'NO'),
(NULL, 'YES');

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
(7, 'Local Dishes'),
(8, 'Continental'),
(9, 'Bar'),
(10, 'Yellow Zone');

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
(6, 12, '1'),
(7, 11, '1'),
(8, 11, '2'),
(9, 6, '2'),
(10, 9, '1'),
(11, 14, '2'),
(12, 14, '3');

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
(6, 9, 'Bar-1'),
(7, 9, 'Bar-2'),
(8, 8, 'Con-1'),
(9, 8, 'Con-2'),
(10, 8, 'Con-3'),
(11, 8, 'Con-4'),
(12, 7, 'Loc-1'),
(13, 7, 'Loc-2'),
(14, 10, 'Yel-Table 1');

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `printId` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `receipt_type` enum('Processing Ticket','Cancelled Bill') DEFAULT 'Processing Ticket',
  `status` enum('NO','YES') DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`printId`, `trans_id`, `receipt_type`, `status`) VALUES
(55, 95, 'Processing Ticket', 'NO'),
(57, 97, 'Processing Ticket', 'NO'),
(64, 134, 'Processing Ticket', 'NO'),
(65, 135, 'Processing Ticket', 'NO'),
(66, 136, 'Processing Ticket', 'NO'),
(67, 137, 'Processing Ticket', 'NO'),
(68, 138, 'Processing Ticket', 'NO'),
(75, 145, 'Processing Ticket', 'NO'),
(76, 146, 'Processing Ticket', 'NO'),
(77, 147, 'Processing Ticket', 'NO'),
(89, 160, 'Processing Ticket', 'NO'),
(90, 161, 'Processing Ticket', 'NO'),
(126, 242, 'Processing Ticket', 'NO'),
(127, 243, 'Processing Ticket', 'NO'),
(128, 244, 'Processing Ticket', 'NO'),
(129, 245, 'Processing Ticket', 'NO'),
(130, 297, 'Processing Ticket', 'NO'),
(131, 298, 'Processing Ticket', 'NO'),
(132, 299, 'Processing Ticket', 'NO'),
(133, 300, 'Processing Ticket', 'NO'),
(134, 301, 'Processing Ticket', 'NO'),
(135, 302, 'Processing Ticket', 'NO'),
(139, 306, 'Processing Ticket', 'NO'),
(140, 307, 'Processing Ticket', 'NO');

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
  `checks` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `selling_price`, `qty_left`, `main`, `subId`, `price`, `checks`) VALUES
(1, 'Fried Rice', '15', 22, 'C', 9, '15', 1),
(18, 'Banku', '2', NULL, 'L', 25, '2', 1),
(19, 'Goat Meat', '15', 200, 'L', NULL, '15', 1),
(20, 'Fufu 5', '5', 33, 'L', 13, '5', 1),
(21, 'Vodka', '12', 49, 'D', 11, '12', 1),
(22, 'Red Red / Egg', '15', 30, 'SM', NULL, '15', 1),
(23, 'Jollof / Grilled Pork', '30', 38, 'C', 9, '30', 1),
(24, 'Cassava Fish', '35', 14, 'F', 16, '35', 1),
(26, 'Coke', '5', 40, 'D', 21, '5', 1),
(27, 'Tuna Salad', '20', 38, 'C', 24, '20', 1),
(28, 'Rice Ball', '2', 51, 'L', 23, '2', 1),
(29, 'Salted Beef', '4', 52, 'L', 20, '4', 1),
(36, 'Tuna Fish', '7', 12, 'F', 16, '7', 1),
(37, 'Fanta', '5', 50, 'D', 21, '5', 1),
(39, 'Club L', '8', 103, 'D', 22, '8', 1),
(40, 'Club M', '6', 48, 'D', 22, '6', 1),
(41, 'Sprite ', '5', 9666, 'D', 21, '5', 1),
(42, 'Red Bull', '10', 45, 'D', 11, '10', 1),
(43, 'Sprite', '5', 32, 'D', 21, '5', 1),
(44, 'Gulder L', '8', 12, 'D', 11, '8', 1),
(45, 'Star L', '8', 10, 'D', 11, '8', 1),
(46, 'Star M', '6', 15, 'D', 11, '6', 1),
(47, 'Ruut Extra  L', '8', 9, 'D', 22, '8', 1),
(48, 'Alvaro', '6', 57, 'D', 21, '6', 1),
(49, 'Malta ', '6', 29, 'D', 11, '6', 1),
(50, 'SminoffIce', '8', 39, 'D', 22, '8', 1),
(51, 'Orijin Beer L', '8', 72, 'D', 22, '8', 1),
(52, 'Hienerken', '10', 16, 'D', 22, '10', 1),
(53, 'savana Dry ', '8', 28, 'D', 11, '8', 1),
(54, 'Hunters Gold ', '8', 33, 'D', 22, '8', 1),
(55, 'GUINNEESS', '8', 73, 'D', 11, '8', 1),
(56, 'Orijin O', '5', 17, 'D', 11, '5', 1),
(57, 'Orijin M', '6', 9, 'D', 11, '6', 1),
(58, 'Mangos Sobolo', '5', 48, 'D', 21, '5', 1),
(59, 'Shandy L', '8', 16, 'D', 11, '8', 1),
(68, 'Dry Fish', '25', 20, 'L', 20, '25', 1),
(69, 'Grasscutter', '15', 23, 'L', 19, '15', 1),
(70, 'Fried Rice / Grilled chicken', '25', 22, 'C', 9, '25', 1),
(71, 'Jollof / Grilled Chicken', '25', 42, 'C', 9, '25', 1),
(72, 'Assorted  Jollof ', '35', 785, 'C', 9, '35', 1),
(73, 'Banku /  GrilledTilapia', '40', 24, 'C', 18, '40', 1),
(74, 'Banku /  Grilled Tilapia L', '45', 39, 'C', 18, '45', 1),
(75, 'Banku / Grilled Tilapia XL', '50', 41, 'C', 18, '50', 1),
(76, 'Yam / Grilled Pork', '30', 48, 'C', 10, '30', 1),
(77, 'Fried Rice / Grilled Pork', '30', 20, 'C', 9, '30', 1),
(78, 'Fried Rice/ Fish', '30', 17, 'C', 9, '30', 1),
(79, 'Jollof / Fish', '30', 17, 'C', 9, '30', 1),
(80, 'Plain Rice / Fish', '30', 2, 'C', 9, '30', 1),
(81, 'Ligh Soup', '0', 0, 'S', 26, '0', 1),
(82, 'Green Soup', '0', 0, 'S', 26, '0', 0);

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
  `kitchen` varchar(20) DEFAULT 'Bar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `amount`, `discount`, `balance`, `status`, `tid`, `sid`, `hall`, `ord_type`, `kitchen`) VALUES
(62, 'RS-3333530', 'John Mensah', '2018-05-14', '85', NULL, '85', 'PAID', 11, 7, 8, 'Take-In', 'Bar'),
(68, 'RS-373032', 'Akinniyi Bolade', '2018-05-15', '55', NULL, '55', 'PAID', 9, 10, 8, 'Take In', 'Bar'),
(69, 'RS-22723', 'Akinniyi Bolade', '2018-05-16', '90', NULL, '90', 'PAID', 6, 9, 9, 'Take In', 'Bar'),
(71, 'RS-39227083', 'Akinniyi Bolade', '2018-05-16', '52', NULL, '52', 'PAID', NULL, NULL, NULL, 'Take-Out', 'Bar'),
(86, 'RS-2732273', 'Akinniyi Bolade', '2018-06-25', '78', NULL, '78', 'PAID', 6, 9, 9, 'Take In', 'Continental'),
(89, 'RS-3293230', 'Akinniyi Bolade', '2018-06-27', '24', NULL, '24', 'PAID', 6, 9, 9, 'Take In', 'Continental'),
(90, 'RS-8336622', 'Akinniyi Bolade', '2018-06-27', '72', NULL, '72', 'PAID', NULL, NULL, NULL, 'Take-Out', 'Bar'),
(92, 'RS-5065330', 'Akinniyi Bolade', '2018-06-27', '50', '5', '50', 'PAID', 11, 7, 8, 'Take-In', 'Continental');

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
(86, 'RS-332322', '1', '15', 1, '15', NULL, NULL, '05/14/18', 1),
(87, 'RS-332322', '1', '30', 78, '30', NULL, NULL, '05/14/18', 1),
(88, 'RS-3333530', '1', '25', 70, '25', NULL, NULL, '05/14/18', 1),
(89, 'RS-3333530', '1', '25', 71, '25', NULL, NULL, '05/14/18', 1),
(90, 'RS-3333530', '1', '35', 72, '35', NULL, NULL, '05/14/18', 1),
(95, 'RS-04730732', '1', '15', 1, '15', NULL, NULL, '05/14/18', 1),
(97, 'RS-04730732', '1', '8', 47, '8', NULL, NULL, '05/14/18', 1),
(134, 'RS-373032', '1', '25', 71, '25', NULL, NULL, '05/15/18', 1),
(135, 'RS-373032', '1', '30', 80, '30', NULL, NULL, '05/15/18', 1),
(136, 'RS-22723', '1', '15', 1, '15', NULL, NULL, '05/16/18', 1),
(137, 'RS-22723', '1', '30', 80, '30', NULL, NULL, '05/16/18', 1),
(138, 'RS-22723', '1', '45', 74, '45', NULL, NULL, '05/16/18', 1),
(145, 'RS-39227083', '1', '35', 72, '35', NULL, NULL, '05/16/18', 1),
(146, 'RS-39227083', '1', '2', 18, '2', NULL, NULL, '05/16/18', 2),
(147, 'RS-39227083', '1', '15', 69, '15', NULL, NULL, '05/16/18', 2),
(160, 'RS-4230422', '1', '0', 81, '0', NULL, NULL, '05/16/18', 2),
(161, 'RS-4230422', '1', '5', 20, '5', NULL, NULL, '05/16/18', 2),
(242, 'RS-2732273', '1', '10', 42, '10', NULL, NULL, '06/25/18', 1),
(243, 'RS-2732273', '1', '8', 55, '8', NULL, NULL, '06/25/18', 1),
(244, 'RS-2732273', '1', '40', 73, '40', NULL, NULL, '06/25/18', 1),
(245, 'RS-2732273', '1', '20', 27, '20', NULL, NULL, '06/25/18', 1),
(297, 'RS-3293230', '1', '10', 42, '10', NULL, NULL, '06/27/18', 1),
(298, 'RS-3293230', '1', '8', 55, '8', NULL, NULL, '06/27/18', 1),
(299, 'RS-3293230', '1', '6', 48, '6', NULL, NULL, '06/27/18', 1),
(300, 'RS-8336622', '1', '35', 24, '35', NULL, NULL, '06/27/18', 1),
(301, 'RS-8336622', '1', '7', 36, '7', NULL, NULL, '06/27/18', 1),
(302, 'RS-8336622', '1', '30', 76, '30', NULL, NULL, '06/27/18', 1),
(306, 'RS-5065330', '1', '32', 72, '35', NULL, '3', '06/27/18', 1),
(307, 'RS-5065330', '1', '18', 27, '20', NULL, '2', '06/27/18', 1);

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
(10, 'C', 'Yam'),
(11, 'D', 'Alcohol'),
(12, 'C', 'Pork'),
(13, 'L', 'Fufu'),
(14, 'D', 'Wine'),
(15, 'F', 'Pork'),
(16, 'F', 'Fish'),
(17, 'F', 'Chicken'),
(18, 'C', 'Banku'),
(19, 'L', 'Grasscutter'),
(20, 'L', 'Fish'),
(21, 'D', 'Soft Drink'),
(22, 'D', 'Beer'),
(23, 'L', 'Rice'),
(24, 'C', 'Fish'),
(25, 'L', 'Banku'),
(26, 'S', 'Soups');

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
('Mango\'s Restaurant', 'No 14 Street, East Legon', NULL, 'mangos@gmail.com', '0553135336 | 05439774867', 'Vs-W2.0.0.');

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
(5, 'admin', 'admin', 'Akinniyi Bolade', 'Admin'),
(6, 'john', '1234', 'John Mensah', 'Waiter'),
(7, 'waiter', 'waiter', 'aaa', 'Waiter');

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
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`printId`),
  ADD KEY `trans_id` (`trans_id`);

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
  ADD KEY `sid` (`sid`),
  ADD KEY `hall` (`hall`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hseat`
--
ALTER TABLE `hseat`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `htables`
--
ALTER TABLE `htables`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `printer`
--
ALTER TABLE `printer`
  MODIFY `printId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `systemwindow`
--
ALTER TABLE `systemwindow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
-- Constraints for table `printer`
--
ALTER TABLE `printer`
  ADD CONSTRAINT `printer_ibfk_1` FOREIGN KEY (`trans_id`) REFERENCES `sales_order` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`subId`) ON DELETE CASCADE ON UPDATE CASCADE;

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
