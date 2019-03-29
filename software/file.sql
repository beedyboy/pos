CREATE DATABASE beedypos;

--CREATING TABLE beedysystem
CREATE TABLE `beedysystem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code1` varchar(50) NOT NULL,
  `code2` varchar(50) NOT NULL,
  `codekey` varchar(30) NOT NULL,
  `dateFrom` varchar(50) NOT NULL,
  `dateTo` varchar(50) NOT NULL,
  `active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO beedysystem
INSERT INTO beedysystem VALUES ('1','TURG-QLFZ-MUVN-RVLY','VFVS-RY1R-TEZA-LU1V','01AC-D0F1-BD0E-7F80','2017-06-13','2018-09-13','One-Off');



--CREATING TABLE discount_settings
CREATE TABLE `discount_settings` (
  `value` varchar(10) DEFAULT NULL,
  `status` enum('YES','NO') DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO discount_settings
INSERT INTO discount_settings VALUES ('','NO');
INSERT INTO discount_settings VALUES ('','YES');



--CREATING TABLE hall
CREATE TABLE `hall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO hall
INSERT INTO hall VALUES ('1','Bar');
INSERT INTO hall VALUES ('2','Drinks');
INSERT INTO hall VALUES ('3','Continental');
INSERT INTO hall VALUES ('6','Local Dishes ');



--CREATING TABLE hseat
CREATE TABLE `hseat` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `tid` (`tid`),
  CONSTRAINT `hseat_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `htables` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO hseat
INSERT INTO hseat VALUES ('1','2','Bar4');
INSERT INTO hseat VALUES ('2','2','Bar4');
INSERT INTO hseat VALUES ('6','12','1');
INSERT INTO hseat VALUES ('7','11','1');
INSERT INTO hseat VALUES ('8','11','2');
INSERT INTO hseat VALUES ('9','1','3');



--CREATING TABLE htables
CREATE TABLE `htables` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `id` (`id`),
  CONSTRAINT `htables_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO htables
INSERT INTO htables VALUES ('1','3','C1');
INSERT INTO htables VALUES ('2','6','002');
INSERT INTO htables VALUES ('5','1','C3');
INSERT INTO htables VALUES ('9','3','Bar 1');
INSERT INTO htables VALUES ('11','6','Bar 2');
INSERT INTO htables VALUES ('12','3','Bar4');
INSERT INTO htables VALUES ('13','6','Loc-1');



--CREATING TABLE products
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `selling_price` varchar(100) DEFAULT NULL,
  `qty_left` int(11) DEFAULT NULL,
  `main` varchar(20) NOT NULL,
  `subId` int(11) DEFAULT NULL,
  `price` varchar(30) NOT NULL,
  `checks` smallint(6) DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `subId` (`main`),
  KEY `subId_2` (`subId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`subId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subId`) REFERENCES `subcategory` (`subId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO products
INSERT INTO products VALUES ('1','Fried Rice','15','26','C','9','15','1');
INSERT INTO products VALUES ('2','Porkish','24','15','C','12','24','1');



--CREATING TABLE sales
CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`transaction_id`),
  KEY `tid` (`tid`),
  KEY `hall` (`hall`),
  KEY `hall_2` (`hall`),
  KEY `sid` (`sid`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `htables` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `hseat` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`hall`) REFERENCES `hall` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO sales
INSERT INTO sales VALUES ('1','RS-9023532','Admin','2018-03-02','98','0','98','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('2','RS-330033','Admin','2018-03-02','113','0','113','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('3','RS-02022','Admin','2018-03-02','22','0','22','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('4','RS-99038','Admin','2018-03-02','27','0','27','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('5','RS-3922322','Admin','2018-03-13','22','0','22','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('6','RS-020293','Admin','2018-03-14','20','0','20','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('7','RS-3932022','Admin','2018-03-14','3','0','3','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('11','RS-302320','Admin','2018-03-14','28','0','28','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('12','RS-8382223','Ernest Ansah','2018-03-14','1','4','1','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('13','RS-23020403','Ernest Ansah','2018-03-14','23','2','23','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('18','RS-3723033','Ernest Ansah','2018-03-14','4','0','4','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('19','RS-22330','Admin','2018-03-14','12','0','12','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('20','RS-0300380','Admin','2018-03-14','98','0','98','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('21','RS-322303','Waiter','2018-03-14','10','0','10','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('22','RS-023','Waiter','2018-03-14','30','0','30','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('23','RS-20323900','Waiter','2018-03-14','22','0','22','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('24','RS-23323233','Waiter','2018-03-14','15','0','15','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('25','RS-3300333','Waiter','2018-03-14','5','0','5','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('26','RS-043423','Waiter','2018-03-14','15','0','15','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('27','RS-2503232','Waiter','2018-03-14','25','0','25','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('28','RS-9000425','Ernest Ansah','2018-03-26','56','0','56','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('29','RS-23433333','Ernest Ansah','2018-03-26','56','0','56','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('30','RS-3223223','Ernest Ansah','2018-03-26','','','','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('31','RS-3232226','Ernest Ansah','2018-03-26','16','0','16','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('32','RS-532820','Cashier','2018-03-26','29','0','29','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('33','RS-32903','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('34','RS-3233532','Cashier','2018-03-26','','','','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('35','RS-2050330','Cashier','2018-03-26','','','','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('36','RS-302838','Cashier','2018-03-26','','','','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('37','RS-2022263','Cashier','2018-03-26','','','','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('38','RS-809305','Cashier','2018-03-26','2','0','2','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('39','RS-29070','Cashier','2018-03-26','16','0','16','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('40','RS-20220','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('41','RS-73053','Cashier','2018-03-26','5','0','5','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('42','RS-2236932','Cashier','2018-03-26','12','0','12','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('43','RS-33750202','Cashier','2018-03-26','8','0','8','PAID','2','2','3','','','','','Bar');
INSERT INTO sales VALUES ('44','RS-336823','Cashier','2018-03-26','2','0','2','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('45','RS-333900','Cashier','2018-03-26','6','0','6','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('46','RS-3000333','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('48','RS-2394342','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('49','RS-25003','Cashier','2018-03-26','5','0','5','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('50','RS-320203','Cashier','2018-03-26','','','','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('51','RS-03323223','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('52','RS-042024','Cashier','2018-03-26','8','0','8','PAID','1','1','3','','','','','Bar');
INSERT INTO sales VALUES ('53','RS-076000','ADMINISTRATOR','2019-02-06','90','','90','PAID','11','7','6','Take In','','','','Continental');
INSERT INTO sales VALUES ('56','RS-399042','ADMINISTRATOR','2019-02-09','50','','50','PAID','2','1','6','Take In','1.25','1.25','6.25','Continental');
INSERT INTO sales VALUES ('58','RS-034520','ADMINISTRATOR','2019-02-11','99.875','','99.875','PENDING','11','8','6','Take-In','2.125','2.125','10.625','Local');
INSERT INTO sales VALUES ('59','MG-69639','ADMINISTRATOR','2019-02-20','15','','15','PENDING','2','1','6','Take In','','','','Continental');
INSERT INTO sales VALUES ('60','MG-96055','ADMINISTRATOR','2019-02-26','39','','39','PENDING','','','','Take-Out','','','','Bar');
INSERT INTO sales VALUES ('61','MG-46650773','Akinniyi','2019-02-27','15','','15','PENDING','','','','Take-Out','','','','Bar');



--CREATING TABLE sales_order
CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `amount` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `date` varchar(500) NOT NULL,
  `plate` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`transaction_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO sales_order
INSERT INTO sales_order VALUES ('1','MG-69639','1','15','1','15','','','02/20/19','1');
INSERT INTO sales_order VALUES ('2','MG-96055','1','15','1','15','','','02/26/19','1');
INSERT INTO sales_order VALUES ('3','MG-96055','1','24','2','24','','','02/26/19','1');
INSERT INTO sales_order VALUES ('4','MG-4264432','1','15','1','15','','','02/27/19','1');
INSERT INTO sales_order VALUES ('5','MG-46650773','1','15','1','15','','','02/27/19','1');



--CREATING TABLE subcategory
CREATE TABLE `subcategory` (
  `subId` int(11) NOT NULL AUTO_INCREMENT,
  `main` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO subcategory
INSERT INTO subcategory VALUES ('9','C','Rice');
INSERT INTO subcategory VALUES ('10','C','Yam');
INSERT INTO subcategory VALUES ('11','D','Alcohol');
INSERT INTO subcategory VALUES ('12','C','Pork');
INSERT INTO subcategory VALUES ('13','L','Fufu');
INSERT INTO subcategory VALUES ('14','D','Wine');
INSERT INTO subcategory VALUES ('15','F','Pork');
INSERT INTO subcategory VALUES ('16','F','Fish');
INSERT INTO subcategory VALUES ('17','F','Chicken');
INSERT INTO subcategory VALUES ('18','C','Banku');
INSERT INTO subcategory VALUES ('19','L','Grasscutter');
INSERT INTO subcategory VALUES ('20','L','Fish');
INSERT INTO subcategory VALUES ('21','D','Soft Drink');
INSERT INTO subcategory VALUES ('22','D','Beer');
INSERT INTO subcategory VALUES ('23','L','Rice');
INSERT INTO subcategory VALUES ('24','L','fav');



--CREATING TABLE suppliers
CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) DEFAULT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `supplier_contact` varchar(100) DEFAULT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO suppliers



--CREATING TABLE system
CREATE TABLE `system` (
  `companyName` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `CompanyEmail` varchar(100) DEFAULT NULL,
  `CompanyPhoneNum` varchar(100) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO system
INSERT INTO system VALUES ('Mango\'s Restaurant','No 14 Street, East Legon','','mangos@gmail.com','0553135336 | 0543977486','Vs-W2.0.0.');



--CREATING TABLE systemwindow
CREATE TABLE `systemwindow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code1` varchar(50) NOT NULL,
  `code2` varchar(50) NOT NULL,
  `codekey` varchar(30) NOT NULL,
  `active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO systemwindow
INSERT INTO systemwindow VALUES ('1','TURD-WE1D-MDRN-RENA','VFVS-RC1X-RTFE-LU1E','0710-8073-4802-5F00','One-Off');



--CREATING TABLE user
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--INSERTING DATA INTO user
INSERT INTO user VALUES ('3','cashier','cashier','Cashier','Cashier');
INSERT INTO user VALUES ('4','waiter','waiter','Waiter','Waiter');
INSERT INTO user VALUES ('6','Rose ','2397','Rose','Waiter');
INSERT INTO user VALUES ('7','Marshall ','3173 ','Marshall  Dewude','Waiter');
INSERT INTO user VALUES ('8','Gyan','7016','Luckie Lawson','Admin');
INSERT INTO user VALUES ('9','Admin','admin','ADMINISTRATOR','Admin');
INSERT INTO user VALUES ('10','Prosper','1997 ','Prosper  Dorvlo','Waiter');
INSERT INTO user VALUES ('11','beedy','kaydee','Akinniyi','Admin');



-- THE END

