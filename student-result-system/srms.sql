-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2024 at 04:25 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-03-10 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

DROP TABLE IF EXISTS `tblclasses`;
CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(13, 'Eight', 8, 'A', '2024-12-15 03:01:47', NULL),
(14, 'Eight', 8, 'B', '2024-12-15 03:01:55', NULL),
(15, 'Nine', 9, 'A', '2024-12-15 03:02:01', NULL),
(16, 'Nine', 9, 'B', '2024-12-15 03:02:08', NULL),
(17, 'Ten', 10, 'A', '2024-12-15 03:02:21', NULL),
(18, 'Ten', 10, 'B', '2024-12-15 03:02:28', NULL),
(19, 'fifth', 5, 'A', '2024-12-18 04:48:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE IF NOT EXISTS `tblnotice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noticeDetails` mediumtext COLLATE utf8mb4_general_ci,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(6, 'result is decalred for the class of fifth', 'result declared on 18-12-2024', '2024-12-18 04:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int DEFAULT NULL,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(42, 12, 13, 17, 85, '2024-12-15 03:09:45', NULL),
(43, 12, 13, 19, 80, '2024-12-15 03:09:45', NULL),
(44, 12, 13, 18, 85, '2024-12-15 03:09:45', NULL),
(45, 12, 13, 21, 90, '2024-12-15 03:09:45', NULL),
(46, 12, 13, 21, 95, '2024-12-15 03:09:45', NULL),
(47, 12, 13, 20, 95, '2024-12-15 03:09:45', NULL),
(48, 13, 14, 17, 50, '2024-12-15 03:10:57', NULL),
(49, 13, 14, 19, 50, '2024-12-15 03:10:57', NULL),
(50, 13, 14, 18, 54, '2024-12-15 03:10:57', NULL),
(51, 13, 14, 21, 87, '2024-12-15 03:10:57', NULL),
(52, 13, 14, 20, 56, '2024-12-15 03:10:57', NULL),
(53, 13, 14, 22, 56, '2024-12-15 03:10:57', NULL),
(54, 15, 14, 17, 80, '2024-12-15 03:11:15', NULL),
(55, 15, 14, 19, 85, '2024-12-15 03:11:15', NULL),
(56, 15, 14, 18, 95, '2024-12-15 03:11:15', NULL),
(57, 15, 14, 21, 65, '2024-12-15 03:11:15', NULL),
(58, 15, 14, 20, 57, '2024-12-15 03:11:15', NULL),
(59, 15, 14, 22, 87, '2024-12-15 03:11:15', NULL),
(60, 14, 14, 17, 90, '2024-12-15 03:11:28', NULL),
(61, 14, 14, 19, 95, '2024-12-15 03:11:28', NULL),
(62, 14, 14, 18, 87, '2024-12-15 03:11:28', NULL),
(63, 14, 14, 21, 54, '2024-12-15 03:11:28', NULL),
(64, 14, 14, 20, 65, '2024-12-15 03:11:28', NULL),
(65, 14, 14, 22, 95, '2024-12-15 03:11:28', NULL),
(66, 16, 19, 23, 80, '2024-12-18 04:51:39', NULL),
(67, 16, 19, 17, 80, '2024-12-18 04:51:39', NULL),
(68, 16, 19, 19, 85, '2024-12-18 04:51:39', NULL),
(69, 16, 19, 18, 95, '2024-12-18 04:51:39', NULL),
(70, 16, 19, 21, 65, '2024-12-18 04:51:39', NULL),
(71, 16, 19, 20, 85, '2024-12-18 04:51:39', NULL),
(72, 16, 19, 22, 80, '2024-12-18 04:51:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(12, 'RAM SHARMA', '2001', 'ram@gmail.com', 'Male', '2008-04-10', 13, '2024-12-15 03:04:38', NULL, 1),
(13, 'ARBAJ SHAIKH', '1002', 'arbaj@gmail.com', 'Male', '2008-02-28', 14, '2024-12-15 03:05:21', NULL, 1),
(14, 'RIYA THAKUR', '1003', 'riya@gmail.com', 'Female', '2008-04-12', 14, '2024-12-15 03:05:51', NULL, 1),
(15, 'RENUKA HANDE', '1004', 'renuka@gmail.com', 'Female', '2008-02-29', 14, '2024-12-15 03:06:29', NULL, 1),
(16, 'ram sharma', '2000', 'ram@gmail.com', 'Male', '2008-02-25', 19, '2024-12-18 04:50:18', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(42, 13, 17, 1, '2024-12-15 03:07:27', NULL),
(43, 13, 18, 1, '2024-12-15 03:07:31', NULL),
(44, 13, 19, 1, '2024-12-15 03:07:36', NULL),
(45, 13, 20, 1, '2024-12-15 03:07:41', NULL),
(46, 13, 21, 1, '2024-12-15 03:07:48', NULL),
(47, 13, 21, 0, '2024-12-15 03:07:54', '2024-12-15 03:08:27'),
(48, 13, 22, 1, '2024-12-15 03:08:00', NULL),
(49, 14, 17, 1, '2024-12-15 03:10:02', NULL),
(50, 14, 18, 1, '2024-12-15 03:10:07', NULL),
(51, 14, 19, 1, '2024-12-15 03:10:13', NULL),
(52, 14, 20, 1, '2024-12-15 03:10:33', NULL),
(53, 14, 21, 1, '2024-12-15 03:10:37', NULL),
(54, 14, 22, 1, '2024-12-15 03:10:43', NULL),
(55, 19, 23, 1, '2024-12-18 04:49:32', NULL),
(56, 19, 17, 1, '2024-12-18 04:50:49', NULL),
(57, 19, 18, 1, '2024-12-18 04:50:54', NULL),
(58, 19, 19, 1, '2024-12-18 04:50:59', NULL),
(59, 19, 20, 1, '2024-12-18 04:51:04', NULL),
(60, 19, 21, 1, '2024-12-18 04:51:10', NULL),
(61, 19, 22, 1, '2024-12-18 04:51:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(17, 'English', '001', '2024-12-15 03:00:19', NULL),
(18, 'Marathi', '002', '2024-12-15 03:00:26', NULL),
(19, 'Hindi', '003', '2024-12-15 03:00:32', NULL),
(20, 'Science', '004', '2024-12-15 03:00:40', NULL),
(21, 'Mathematics', '005', '2024-12-15 03:00:53', NULL),
(22, 'Social Science', '006', '2024-12-15 03:01:02', NULL),
(23, 'drawing', '008', '2024-12-18 04:49:19', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
