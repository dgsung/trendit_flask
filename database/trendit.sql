-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2018 at 04:03 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoptubedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(4, 'Donggi', 'Sung', 'dg.sung@snu.ac.kr', '01023436920', 'Seoul', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', 'manager', '0');
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, 9, 'Donggi Sung', 2, 1, 'Seoul', '01023436920', 'no', '2018-09-22 02:10:46', NULL),
(2, 9, 'Donggi Sung', 1, 1, 'Seoul', '01023436920', 'no', '2018-09-22 03:04:13', NULL),
(3, 9, 'Donggi Sung', 3, 4, 'Seoul', '01023436920', 'no', '2018-09-22 03:21:14', '2018-09-29'),
(4, 9, 'Donggi Sung', 4, 1, 'Seoul', '01023436920', 'no', '2018-09-22 03:22:05', '2018-09-29'),
(5, NULL, 'Youjin Lee', 2, 1, 'Seoul', '01023436920', 'no', '2018-09-22 02:09:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'yeppi earring', 12000, 'IU earring', 4, 'earring', 'earring', 'e-001', '1.gif', '2018-09-20 07:10:40'),
(2, 'eppi earring', 13000, 'IU earring', 4, 'earring', 'earring', 'e-001', '2.gif', '2018-09-10 07:10:40'),
(3, 'long drop earring', 14000, 'IU earring', 4, 'earring', 'earring', 'e-001', '3.gif', '2018-09-22 07:10:40'),
(4, 'half moon earring', 15000, 'IU earring', 4, 'earring', 'earring', 'e-001', '4.gif', '2018-09-23 07:10:40'),
(5, 'star earring', 16000, 'IU earring', 4, 'earring', 'earring', 'e-001', '5.gif', '2018-09-24 07:10:40'),
(6, 'earring', 17000, 'IU earring', 4, 'earring', 'earring', 'e-001', '6.gif', '2018-09-25 07:10:40'),
(7, 'black earring', 18000, 'IU earring', 4, 'earring', 'earring', 'e-001', '7.gif', '2018-09-26 07:10:40'),
(8, 'silver earring', 19000, 'IU earring', 4, 'earring', 'earring', 'e-001', '8.gif', '2018-09-27 07:10:40'),
(9, 'nail art', 12000, 'IU nailart', 4, 'nailart', 'nailart', 'e-001', '1.jpg', '2018-09-28 07:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

DROP TABLE IF EXISTS `product_level`;
CREATE TABLE IF NOT EXISTS `product_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `length` varchar(10) NOT NULL DEFAULT 'no',
  `gold` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `silver` varchar(10) NOT NULL DEFAULT 'no',
  `weight` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `casual` varchar(10) NOT NULL DEFAULT 'no',
  `luxury` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `length`, `gold`, `clean_text`, `design`, `chain`, `silver`, `weight`, `color`, `formal`, `casual`, `luxury`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no');


-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

DROP TABLE IF EXISTS `product_view`;
CREATE TABLE IF NOT EXISTS `product_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 6, '2018-09-22 02:12:54'),
(9, 9, 1, '2018-09-22 03:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(12, 'Youjin Lee', 'luj@gmail.com', 'youjin', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', '', '2018-07-23 14:09:14', '0', 'yes'),
(9, 'Donggi Sung', 'dg.sung@snu.ac.kr', 'ssddgg321', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', '123456789022', '2018-07-21 06:47:57', '1', 'yes'),
(14, 'Dajin Wang', 'wdj@gmail.com', 'dajin', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', '', '2018-09-07 09:02:35', '0', 'yes'),
(13, 'Minsup Kim', 'kms@gmail.com', 'minsup', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', '', '2018-07-26 12:36:57', '0', 'yes'),
(15, 'Kwangil', 'ki@yahoo.com', 'kwangil', '$5$rounds=535000$iOrOcjx9TpFGnFhU$CAHGzjFXDgChN6/UWT7JNIUgYluDFehg4emq2k8D5A6', '89345793753', '2018-09-08 13:58:36', '0', 'yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
