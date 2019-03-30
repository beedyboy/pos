-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2019 at 03:50 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `discount_settings`
--

CREATE TABLE `discount_settings` (
  `value` varchar(10) DEFAULT NULL,
  `status` enum('YES','NO') DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hseat`
--

CREATE TABLE `hseat` (
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `htables`
--

CREATE TABLE `htables` (
  `tid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `kitchen` varchar(20) NOT NULL DEFAULT 'Bar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subId` int(11) NOT NULL,
  `main` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
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
