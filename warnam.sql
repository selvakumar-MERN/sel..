-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2024 at 11:02 AM
-- Server version: 5.6.51
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warnam`
--

-- --------------------------------------------------------

--
-- Table structure for table `aasari`
--

CREATE TABLE IF NOT EXISTS `aasari` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `userName` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `totalGram` varchar(250) NOT NULL DEFAULT '',
  `balanceGram` varchar(250) NOT NULL DEFAULT '',
  `workedGram` varchar(250) NOT NULL DEFAULT '',
  `totalAmount` varchar(250) NOT NULL DEFAULT '',
  `paidAmount` varchar(250) NOT NULL DEFAULT '',
  `balanceAmount` varchar(250) NOT NULL DEFAULT '',
  `otp` varchar(250) NOT NULL DEFAULT '',
  `shopId` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aasari`
--

INSERT INTO `aasari` (`id`, `name`, `phone`, `experience`, `address`, `userName`, `password`, `totalGram`, `balanceGram`, `workedGram`, `totalAmount`, `paidAmount`, `balanceAmount`, `otp`, `shopId`, `status`, `createdAt`, `updatedAt`, `image`) VALUES
(1, 'greenma', '9638527410', '2 Years', 'Thiruvananthapuram ', 'greenma', '123456', '', '', '', '', '', '', '', 1, 1, '2023-08-03 07:09:08.281', '2023-08-03 07:09:08.281', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `userName` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `otp` varchar(250) NOT NULL DEFAULT '',
  `shopId` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `userName`, `password`, `phone`, `otp`, `shopId`, `status`, `createdAt`, `updatedAt`) VALUES
(3, 'Haran', 'haran', '123456', '9638527410', '', 1, 1, '2023-08-02 14:06:20.328', '2023-08-02 14:06:20.328');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL,
  `orderId` int(100) NOT NULL,
  `userId` int(100) NOT NULL,
  `aasariId` int(100) NOT NULL,
  `message` varchar(250) NOT NULL DEFAULT '',
  `type` int(10) NOT NULL,
  `isUser` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `createdAt` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deviceInfo`
--

CREATE TABLE IF NOT EXISTS `deviceInfo` (
  `id` int(11) NOT NULL,
  `userId` int(100) NOT NULL,
  `token` text,
  `serialNumber` text,
  `systemFeatures` text,
  `type` text,
  `product` text,
  `model` text,
  `manufacturer` text,
  `buildId` text,
  `host` text,
  `hardware` text,
  `display` text,
  `device` text,
  `brand` text,
  `board` text,
  `baseOs` text,
  `codeName` text,
  `sdk` text,
  `releaseId` text,
  `securityPatch` text,
  `status` int(10) NOT NULL,
  `createdAt` text NOT NULL,
  `updatedAt` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deviceInfo`
--

INSERT INTO `deviceInfo` (`id`, `userId`, `token`, `serialNumber`, `systemFeatures`, `type`, `product`, `model`, `manufacturer`, `buildId`, `host`, `hardware`, `display`, `device`, `brand`, `board`, `baseOs`, `codeName`, `sdk`, `releaseId`, `securityPatch`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNjkwOTYzMDA0LCJleHAiOjE3NzczNjMwMDR9.1mPh572eF5AppWuRu1-xzXVkEVGb8orR02LYx9zdBOA', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-02 07:56:44.095', '2023-08-02 07:56:44.095'),
(2, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNjkwOTYzMTQ5LCJleHAiOjE3NzczNjMxNDl9.6Utwxk-hJKgF-xrSzYWXcoCD8BtAZbeGHnp4RaEORJQ', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-02 07:59:09.069', '2023-08-02 07:59:09.069'),
(3, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNjkwOTc1NjQ0LCJleHAiOjE3NzczNzU2NDR9.ds01Ld-xkgXDePZANUWAHklhg-zj7IkRYMiYgPaO72s', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-02 11:27:24.223', '2023-08-02 11:27:24.223'),
(4, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNjkwOTc3MTIzLCJleHAiOjE3NzczNzcxMjN9.GrzK2z5oEgknfDDBX2x77Fl1BHIRqZqQ1KRdepBkR4o', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-02 11:52:03.828', '2023-08-02 11:52:03.828'),
(5, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNjkwOTc4OTc4LCJleHAiOjE3NzczNzg5Nzh9.En-KslPur7geFhFDWxVlcFvJTRhz5qeZh_EYWGrdBXc', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-02 12:22:58.469', '2023-08-02 12:22:58.469'),
(6, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNzAzODUwMTUzLCJleHAiOjE3OTAyNTAxNTN9.27cRG3fpCTeA3zBqroenPrsF7b0DZYVx13xeoKxy6I4', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-12-29 11:42:33.801', '2023-12-29 11:42:33.801'),
(7, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNzA2NzY1ODE1LCJleHAiOjE3OTMxNjU4MTV9.2PBRKIyNBlS27gGs3444b3GzuoTjBwKeeJHc3KBdAn0', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-01 05:36:55.829', '2024-02-01 05:36:55.829'),
(8, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNzA2NzY1OTQ3LCJleHAiOjE3OTMxNjU5NDd9.gVx8wzOgQJdOVHpxprEqaUa1nBmLF0Cd80LaC4vxXxE', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-01 05:39:07.004', '2024-02-01 05:39:07.004'),
(9, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNzA2NzcwNTQwLCJleHAiOjE3OTMxNzA1NDB9.D9NB6u1u1Om0_mRI7lYaio8ILA3w0EjQbHWpgJdBHgU', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-01 06:55:40.188', '2024-02-01 06:55:40.188');

-- --------------------------------------------------------

--
-- Table structure for table `dimensions`
--

CREATE TABLE IF NOT EXISTS `dimensions` (
  `id` int(11) NOT NULL,
  `dimension` text,
  `isDropDown` int(11) NOT NULL DEFAULT '0',
  `dropDownData` longtext,
  `unit` text,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensions`
--

INSERT INTO `dimensions` (`id`, `dimension`, `isDropDown`, `dropDownData`, `unit`, `status`) VALUES
(1, 'Chain', 1, '[{"name":"Back Chain Length"},{"name":"Neclase Length"}]', 'Length (inch)', 1),
(2, 'Ring', 1, '[{"name":"22"},{"name":"24"}]', 'Size', 1),
(3, 'Bangle', 0, NULL, 'Size', 1);

-- --------------------------------------------------------

--
-- Table structure for table `karats`
--

CREATE TABLE IF NOT EXISTS `karats` (
  `id` int(11) NOT NULL,
  `karat` text,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karats`
--

INSERT INTO `karats` (`id`, `karat`, `status`) VALUES
(1, '75', 1),
(2, '85', 1),
(3, '88', 1),
(4, '92', 1);

-- --------------------------------------------------------

--
-- Table structure for table `metal`
--

CREATE TABLE IF NOT EXISTS `metal` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metal`
--

INSERT INTO `metal` (`id`, `name`, `status`) VALUES
(1, 'Aluminium', 1),
(2, 'Silver', 1),
(3, 'Nickel', 1),
(4, 'Iron', 1),
(5, 'Zinc', 1),
(6, 'Tin', 1),
(7, 'Manganese', 1),
(8, 'Cadmium', 1),
(9, 'Titanium', 1),
(10, 'Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `metalcolor`
--

CREATE TABLE IF NOT EXISTS `metalcolor` (
  `id` int(11) NOT NULL,
  `metalColorName` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metalcolor`
--

INSERT INTO `metalcolor` (`id`, `metalColorName`, `status`) VALUES
(1, 'Yellow', 1),
(2, 'White', 1),
(3, 'Rose', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(250) NOT NULL,
  `dueDate` varchar(250) NOT NULL,
  `crossWeight` varchar(250) NOT NULL DEFAULT '',
  `netWeight` varchar(250) NOT NULL DEFAULT '',
  `purity` varchar(250) NOT NULL DEFAULT '',
  `diceRate` varchar(250) NOT NULL DEFAULT '',
  `stoneRate` varchar(250) NOT NULL DEFAULT '',
  `wastage` varchar(250) NOT NULL DEFAULT '',
  `valueAdd` varchar(250) NOT NULL DEFAULT '',
  `makingCharge` varchar(250) NOT NULL DEFAULT '',
  `aasariRate` varchar(250) NOT NULL DEFAULT '0',
  `hallMark` varchar(250) NOT NULL DEFAULT '',
  `certificate` varchar(250) NOT NULL DEFAULT '',
  `otherExp` varchar(250) NOT NULL DEFAULT '',
  `gst` varchar(250) NOT NULL DEFAULT '',
  `gold` varchar(250) NOT NULL DEFAULT '',
  `glodWeight` varchar(250) NOT NULL DEFAULT '',
  `stone` varchar(250) NOT NULL DEFAULT '',
  `stoneWeight` varchar(250) NOT NULL DEFAULT '',
  `silver` varchar(250) NOT NULL DEFAULT '',
  `silverWeight` varchar(250) NOT NULL DEFAULT '',
  `metal` varchar(250) NOT NULL DEFAULT '',
  `metalId` int(250) NOT NULL DEFAULT '0',
  `setting` varchar(250) NOT NULL DEFAULT '',
  `settingId` int(250) NOT NULL DEFAULT '0',
  `metalColor` varchar(250) NOT NULL DEFAULT '',
  `metalColorId` int(250) NOT NULL DEFAULT '0',
  `rhodiumTip` varchar(250) NOT NULL DEFAULT '',
  `rhodiumTipId` int(250) NOT NULL DEFAULT '0',
  `length` varchar(250) NOT NULL DEFAULT '',
  `size` varchar(250) NOT NULL DEFAULT '',
  `huid` varchar(250) NOT NULL DEFAULT '',
  `outwardCertificate` varchar(250) NOT NULL DEFAULT '',
  `outwardGst` varchar(250) NOT NULL DEFAULT '',
  `otherExpenses` varchar(250) NOT NULL DEFAULT '',
  `advance` varchar(250) NOT NULL DEFAULT '',
  `totalRate` varchar(250) NOT NULL DEFAULT '',
  `orderStatus` int(10) NOT NULL,
  `aasariId` int(100) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL,
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL,
  `createdBy` int(100) NOT NULL,
  `shopId` int(100) NOT NULL,
  `images` varchar(250) NOT NULL DEFAULT '',
  `total` varchar(250) NOT NULL,
  `balance` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `dueDate`, `crossWeight`, `netWeight`, `purity`, `diceRate`, `stoneRate`, `wastage`, `valueAdd`, `makingCharge`, `aasariRate`, `hallMark`, `certificate`, `otherExp`, `gst`, `gold`, `glodWeight`, `stone`, `stoneWeight`, `silver`, `silverWeight`, `metal`, `metalId`, `setting`, `settingId`, `metalColor`, `metalColorId`, `rhodiumTip`, `rhodiumTipId`, `length`, `size`, `huid`, `outwardCertificate`, `outwardGst`, `otherExpenses`, `advance`, `totalRate`, `orderStatus`, `aasariId`, `status`, `createdAt`, `updatedAt`, `createdBy`, `shopId`, `images`, `total`, `balance`, `paid`) VALUES
(1, 'ORD0001', '2023-08-26', '', '67', '15', '80', '190', '15', '10', '35000', '10000', '', '', '', '', '24 ', '100', '', '', '', '', 'metal 1', 1, 'Settings 1', 1, 'metal color 1', 1, 'rhodium tip 1', 1, '1500', '50', '', '', '', '', '1000', '100000', 3, 1, 1, '2023-08-03 07:26:17.148', '2023-08-03 07:55:25.702', 1, 1, 'shopping.webp', '45010', '45010', '0'),
(2, 'ORD0002', '2023-12-30', '', '10', '10', '10', '', '10', '', '', '', '', '', '', '', '22 cor', '10', '', '', '', '', 'Manganese', 7, 'Pavé', 6, 'Old Gold', 2, 'Brown - Single End', 1, '10', '10', '', '', '', '', '', '', 4, 1, 1, '2023-12-29 12:07:28.809', '2024-01-03 04:27:23.987', 1, 1, 'images.jpg', '0', '0', '0'),
(3, 'ORD0003', '2023-12-30', '', '', '10', '10', '01', '', '', '', '10000', '', '', '', '', '', '', '', '', '', '', 'Manganese', 7, 'Pavé', 6, 'Old Gold', 2, 'Brown - Single End', 1, '', '', '', '', '', '', '', '', 2, 1, 1, '2023-12-29 12:13:08.945', '2024-02-03 08:26:09.024', 1, 1, 'images.jpg', '10000', '10000', '0'),
(4, 'ORD0004', '2024-01-27', '', '47', '10', '10', '10', '', '', '', '10000', '', '', '', '', '120', '60', '', '', '', '', 'Manganese', 7, 'Pavé', 6, 'Old Gold', 2, 'Brown - Single End', 1, '', '', '', '', '', '', '', '', 3, 1, 1, '2023-12-29 12:14:17.764', '2024-02-03 08:27:25.750', 1, 1, 'images.jpg', '10000', '8000', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL,
  `packageName` text NOT NULL,
  `crossAmount` text NOT NULL,
  `amount` text NOT NULL,
  `description` text NOT NULL,
  `adminIdCount` int(11) NOT NULL,
  `smithIdCount` int(11) NOT NULL,
  `period` text COMMENT 'days',
  `status` int(10) NOT NULL,
  `createdAt` text NOT NULL,
  `updatedAt` text NOT NULL,
  `startDate` text,
  `endDate` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `packageName`, `crossAmount`, `amount`, `description`, `adminIdCount`, `smithIdCount`, `period`, `status`, `createdAt`, `updatedAt`, `startDate`, `endDate`) VALUES
(1, 'Platinum', '1499', '999', '1) Can use 2 admin Login Account\n2) Can use 2 Smith Login Account', 2, 4, '180', 1, '2023-08-03 17:14:00', '2023-08-24 06:34:58.386', '2023-08-01', '2024-08-01'),
(2, 'Gold', '1099', '799', '1) Active 2 Admin\n2) Active 2 Smith', 2, 2, '45', 1, '2023-08-24 06:34:39.143', '2023-08-24 06:34:39.143', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paymenthistory`
--

CREATE TABLE IF NOT EXISTS `paymenthistory` (
  `id` int(11) NOT NULL,
  `orderId` int(100) NOT NULL,
  `createdBy` int(100) NOT NULL,
  `shopId` int(100) NOT NULL,
  `aasariId` int(100) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `mode` varchar(250) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymenthistory`
--

INSERT INTO `paymenthistory` (`id`, `orderId`, `createdBy`, `shopId`, `aasariId`, `amount`, `mode`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 4, 1, 1, 1, '1000', 'CASH', 1, '2024-01-03 04:21:58.601', '2024-01-03 04:21:58.601'),
(2, 4, 1, 1, 1, '1000', 'CASH', 1, '2024-01-03 04:22:57.255', '2024-01-03 04:22:57.255');

-- --------------------------------------------------------

--
-- Table structure for table `rhodiumtip`
--

CREATE TABLE IF NOT EXISTS `rhodiumtip` (
  `id` int(11) NOT NULL,
  `rhodiumTip` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rhodiumtip`
--

INSERT INTO `rhodiumtip` (`id`, `rhodiumTip`, `status`) VALUES
(1, 'Yes', 1),
(2, 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `settingsName` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `settingsName`, `status`) VALUES
(1, 'Open', 1),
(2, 'Close', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting_types`
--

CREATE TABLE IF NOT EXISTS `setting_types` (
  `id` int(11) NOT NULL,
  `type` text,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_types`
--

INSERT INTO `setting_types` (`id`, `type`, `status`) VALUES
(1, 'Type 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stone`
--

CREATE TABLE IF NOT EXISTS `stone` (
  `id` int(11) NOT NULL,
  `stName` text,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stone`
--

INSERT INTO `stone` (`id`, `stName`, `status`) VALUES
(1, 'Ruby', 1),
(2, 'Emerald', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `id` int(11) NOT NULL,
  `shopId` int(100) NOT NULL,
  `paymentMethod` text NOT NULL,
  `paymentId` text NOT NULL,
  `amount` text NOT NULL,
  `planId` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `createdAt` text NOT NULL,
  `updatedAt` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `shopId`, `paymentMethod`, `paymentId`, `amount`, `planId`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, '', '', '999', 1, 1, '2023-08-03 12:47:20.179', '2023-08-03 12:47:20.179'),
(2, 1, '', '', '799', 2, 1, '2024-01-03 04:01:14.544', '2024-01-03 04:01:14.544');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE IF NOT EXISTS `super_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `shopName` varchar(250) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `status` int(10) NOT NULL,
  `expireDate` varchar(250) DEFAULT NULL,
  `createdAt` varchar(250) NOT NULL,
  `updatedAt` varchar(250) NOT NULL,
  `userName` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `isLogin` int(10) NOT NULL DEFAULT '0' COMMENT '0 = Logout , 1= Login',
  `token` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `name`, `phone`, `email`, `shopName`, `address`, `status`, `expireDate`, `createdAt`, `updatedAt`, `userName`, `password`, `isLogin`, `token`) VALUES
(1, 'Greenma', '9638527410', 'greenma@gmail.com', 'greenma', 'Trichy', 1, NULL, '2023-08-11 00:00:23', '2023-08-11 00:00:23', 'greenma', '123456', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email` text,
  `shopName` text NOT NULL,
  `address` text,
  `userName` text NOT NULL,
  `password` text NOT NULL,
  `isLogin` int(10) NOT NULL DEFAULT '0' COMMENT '0 - logout,1 - login',
  `token` text,
  `createdBy` int(100) NOT NULL DEFAULT '0',
  `shopId` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL COMMENT '1 - Super Admin, 2 - Admin, 3 - Smith',
  `otp` text,
  `expireDate` text,
  `status` int(10) NOT NULL,
  `createdAt` text NOT NULL,
  `updatedAt` text NOT NULL,
  `planId` int(100) NOT NULL DEFAULT '0',
  `isExpire` int(10) NOT NULL DEFAULT '0' COMMENT '0 - Not Active, 1 - Active'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `shopName`, `address`, `userName`, `password`, `isLogin`, `token`, `createdBy`, `shopId`, `type`, `otp`, `expireDate`, `status`, `createdAt`, `updatedAt`, `planId`, `isExpire`) VALUES
(1, 'Ramesh', '9638527410', 'ss@gmail.com', 'S S Jewellery ', '', 'ramesh', '123456', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InJhbWVzaCIsInVzZXJJZCI6MSwiaWF0IjoxNzA2NzcwNTQwLCJleHAiOjE3OTMxNzA1NDB9.D9NB6u1u1Om0_mRI7lYaio8ILA3w0EjQbHWpgJdBHgU', 0, 0, 1, NULL, '2024-02-17 09:31:14.454856', 1, '2023-08-02 07:23:19.099', '2023-08-02 07:23:19.099', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL,
  `temId` int(11) NOT NULL DEFAULT '0',
  `noOfItems` int(11) NOT NULL,
  `orderId` text,
  `dueDate` text,
  `catName` text,
  `gKarat` int(11) NOT NULL DEFAULT '0',
  `settings` int(11) NOT NULL DEFAULT '0',
  `sType` int(11) NOT NULL DEFAULT '0',
  `rhodium` int(11) NOT NULL DEFAULT '0',
  `gColor` int(11) NOT NULL DEFAULT '0',
  `estWgt` decimal(11,2) NOT NULL DEFAULT '0.00',
  `cmd` text,
  `diaQty` int(11) DEFAULT '0',
  `diaWgt` decimal(11,2) DEFAULT '0.00',
  `dimenstion` longtext,
  `wrkStatus` int(11) NOT NULL DEFAULT '0',
  `aasariId` int(11) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL DEFAULT '0',
  `shopId` int(11) DEFAULT '0',
  `pName` text,
  `phone` text,
  `corStDet` longtext,
  `stoDet` longtext,
  `dimDet` longtext,
  `createdAt` text,
  `updatedAt` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_gold`
--

CREATE TABLE IF NOT EXISTS `work_gold` (
  `id` int(11) NOT NULL,
  `gName` text,
  `gms` decimal(11,2) NOT NULL DEFAULT '0.00',
  `purity` decimal(11,2) NOT NULL DEFAULT '0.00',
  `formNo` text NOT NULL,
  `status` int(11) NOT NULL,
  `wrkId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_items`
--

CREATE TABLE IF NOT EXISTS `work_items` (
  `id` int(11) NOT NULL,
  `wrkId` int(11) NOT NULL,
  `item` text,
  `diaWtg` decimal(10,0) NOT NULL DEFAULT '0',
  `colSt` decimal(10,0) NOT NULL DEFAULT '0',
  `gWtg` decimal(10,0) NOT NULL DEFAULT '0',
  `image` text,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_stone`
--

CREATE TABLE IF NOT EXISTS `work_stone` (
  `id` int(11) NOT NULL,
  `wrkId` int(11) NOT NULL,
  `stoneId` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `weight` decimal(11,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aasari`
--
ALTER TABLE `aasari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deviceInfo`
--
ALTER TABLE `deviceInfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karats`
--
ALTER TABLE `karats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metal`
--
ALTER TABLE `metal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metalcolor`
--
ALTER TABLE `metalcolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhodiumtip`
--
ALTER TABLE `rhodiumtip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_types`
--
ALTER TABLE `setting_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stone`
--
ALTER TABLE `stone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_gold`
--
ALTER TABLE `work_gold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_items`
--
ALTER TABLE `work_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_stone`
--
ALTER TABLE `work_stone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aasari`
--
ALTER TABLE `aasari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deviceInfo`
--
ALTER TABLE `deviceInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `karats`
--
ALTER TABLE `karats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `metal`
--
ALTER TABLE `metal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `metalcolor`
--
ALTER TABLE `metalcolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rhodiumtip`
--
ALTER TABLE `rhodiumtip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `setting_types`
--
ALTER TABLE `setting_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stone`
--
ALTER TABLE `stone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work_gold`
--
ALTER TABLE `work_gold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work_items`
--
ALTER TABLE `work_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work_stone`
--
ALTER TABLE `work_stone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
