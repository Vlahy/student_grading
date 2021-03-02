-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 02, 2021 at 02:50 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `school_board` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `grades` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `school_board`, `grades`) VALUES
(1, 'Mark', 'Robert', 'CSM', '8, 10, 7'),
(2, 'Sally', 'Doe', 'CSMB', '8, 6, 7'),
(3, 'Luke', 'King', 'CSMB', '6, 8, 9'),
(4, 'Luke', 'King', 'CSMB', '6, 8, 9'),
(5, 'Logan', 'Scott', 'CSMB', '8,9,9'),
(6, 'Logan', 'Scott', 'CSMB', '8,9,9'),
(7, 'George', 'Gill', 'CSM', '8,10,9,6'),
(8, 'George', 'Gill', 'CSM', '8,10,9,6'),
(9, 'Edwin', 'Roman', 'CSMB', '9'),
(10, 'Damian', 'Hardy', 'CSMB', '6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
