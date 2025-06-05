-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2023 at 04:19 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-03-20 00:00:00', '2023-03-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'HORTICULTURE', '', '2023-03-17 17:02:53', NULL),
(2, 'FIELD CROPS', '', '2023-03-17 17:02:53', NULL),
(3, 'PLANT NUTRIENTS', '', '2023-03-17 17:02:53', NULL),
(4, 'PESTICIDES', '', '2023-03-17 17:02:53', NULL),
(5, 'STATES', '', '2023-03-17 17:02:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ordertrackhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `productreviews`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'SAAHO TO 3251 TOMATO SEEDS', 'syngenta', 1000, 1300, '<br>', 'H1.jpg', 'H1.jpg', 'H1.jpg', 10, 'In Stock', '2023-03-24 17:32:06', NULL),
(2, 1, 1, 'VNR 212 BRINJAL SEEDS', 'VNR', 299, 599, '<br>', 'H2.jpg', 'H2.jpg', 'H2.jpg', 0, 'Out of Stock', '2023-03-24 17:34:32', NULL),
(4, 1, 2, 'IRIS HYBRID PAPAYA SEEDS', 'IRIS', 425, 500, '<br>', 'H4.png', 'H4.png', 'H4.png', 0, 'In Stock', '2023-03-24 17:41:13', NULL),
(5, 2, 3, 'URJA - BABY CORN-ORION SEEDS', 'URJA', 399, 799, '<br>', 'FC1.png', 'FC1.png', 'FC1.png', 70, 'In Stock', '2023-03-24 17:48:29', NULL),
(6, 2, 3, 'SHINE SWEET-80 SWEET CORN SEEDS', 'SHINE', 1199, 1400, '<br>', 'FC2.jpg', 'FC2.jpg', 'FC2.jpg', 0, 'In Stock', '2023-03-24 17:56:28', NULL),
(7, 2, 4, '27P31 PADDY VARIETY (RICE) ', 'Pioneer', 940, 1040, '<br>', 'FC3.png', 'FC3.png', 'FC3.png', 0, 'In Stock', '2023-03-24 18:00:34', NULL),
(8, 2, 5, 'PIONEER 45S35 MUSTARD SEEDS', 'Pioneer', 1000, 1400, '<br>', 'FC4.jpg', 'FC4.jpg', 'FC4.jpg', 80, 'In Stock', '2023-03-24 18:02:48', NULL),
(9, 2, 6, 'RCH 659 BG II COTTON', 'Rasi Seeds', 850, 1000, '<br>', 'FC5.jpg', 'FC5.jpg', 'FC5.jpg', 0, 'In Stock', '2023-03-24 18:04:35', NULL),
(10, 2, 7, 'PAC 501 JOWAR', 'Advanta', 399, 499, '<br>', 'FC6.jpg', 'FC6.jpg', 'FC6.jpg', 20, 'In Stock', '2023-03-24 18:07:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Vegetable Seeds', '2023-03-24 17:07:15', NULL),
(2, 1, 'Fruits', '2023-03-24 17:07:24', NULL),
(3, 2, 'Corn', '2023-03-24 17:09:24', '24-03-2023 05:43:49 PM'),
(4, 2, 'Paddy', '2023-03-24 17:09:41', '24-03-2023 05:57:42 PM'),
(5, 2, 'Mustard', '2023-03-24 17:09:56', '24-03-2023 05:58:35 PM'),
(6, 2, 'Cotton', '2023-03-24 17:10:13', NULL),
(7, 2, 'Jowar', '2023-03-24 17:10:41', '24-03-2023 05:58:47 PM'),
(8, 3, 'Major Nutrients', '2023-03-24 17:12:19', NULL),
(9, 3, 'Minor Nutrients', '2023-03-24 17:12:36', NULL),
(10, 3, 'Secondary Nutrients', '2023-03-24 17:12:54', NULL),
(11, 3, 'Growth Promoters', '2023-03-24 17:13:41', NULL),
(12, 4, 'Bio Fungicides', '2023-03-24 17:14:41', NULL),
(13, 4, 'Bio Insecticides', '2023-03-24 17:15:01', NULL),
(14, 4, 'Insecticides', '2023-03-24 17:15:13', NULL),
(15, 5, 'Punjab', '2023-03-24 17:15:45', NULL),
(16, 5, 'Gujarat', '2023-03-24 17:15:56', NULL),
(17, 5, 'Assam', '2023-03-24 17:16:07', NULL),
(18, 5, 'Kerala', '2023-03-24 17:16:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userlog`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2023-03-20 00:00:00');
