-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 07:12 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinequizplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `login_id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `privilege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`login_id`, `password`, `privilege`) VALUES
('m', 'm', 1),
('mm', 'mm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `listofquizzes`
--

CREATE TABLE `listofquizzes` (
  `quizid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `num_of_questions` int(11) DEFAULT NULL,
  `testsetterid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listofquizzes`
--

INSERT INTO `listofquizzes` (`quizid`, `name`, `start_time`, `end_time`, `total_marks`, `num_of_questions`, `testsetterid`) VALUES
(1, 'momo', '2020-12-04 00:21:00', '2020-12-10 02:18:00', 100, 2, 'm'),
(2, 'v', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 2, 'm'),
(3, 'xx', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 1, 'm'),
(4, 'quiz1', '2020-12-30 01:00:00', '2022-06-30 01:00:00', 1, 1, 'm'),
(5, 'g', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 0, 'm'),
(6, 'momo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 10, 'm'),
(7, 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 0, 'm'),
(8, 'mm,n,mn', '2020-12-30 02:14:00', '2122-10-30 02:14:00', 100, 0, 'm'),
(9, 'zxcxz', '2020-12-30 02:15:00', '2022-02-28 02:15:00', 100, 0, 'm'),
(10, 'Mustafa', '2020-12-30 02:24:00', '2020-12-05 02:23:00', 9, 0, 'm'),
(11, 'm,', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 10, 'm'),
(12, 'm,', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 0, 'm'),
(13, 'momo', '2020-12-30 02:29:00', '2022-07-13 02:29:00', 100, 0, 'm'),
(14, 'real', '2020-12-30 02:34:00', '2022-04-08 02:34:00', 100, 1, 'm'),
(15, 'quiz2', '2020-12-30 06:30:00', '2026-10-06 06:30:00', 100, 2, 'm'),
(16, '', '2020-12-30 11:34:00', '2021-01-30 11:35:00', 10, 1, 'm'),
(17, 'momo', '2020-12-30 22:20:00', '2021-01-30 22:20:00', 9, 1, 'm'),
(18, 'Mustafa', '2021-03-05 23:49:00', '2021-04-28 22:49:00', 100, 10, 'm'),
(19, 'quiz166', '2021-02-28 21:40:00', '2021-03-30 21:40:00', 4, 1, 'mm'),
(20, 'java', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1, 'm'),
(21, 'ww', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 1, 'm'),
(22, 'mm', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 1, 1, 'm'),
(23, 's', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 1, 'm'),
(24, 'd', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 1, 'm'),
(25, 'm', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 1, 'm'),
(26, 'mmm', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 100, 1, 'm'),
(27, 'java', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 10, 1, 'm'),
(28, 'c++', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 1, 1, 'm'),
(29, 'database', '2020-12-30 00:35:00', '2021-12-26 00:35:00', 2, 1, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quizid` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `qtype` varchar(20) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizid`, `qno`, `question`, `answer`, `qtype`, `marks`) VALUES
(1, 1, 'czz$xzxz$xzxz$xzxz$xzxz', '1', '1', 1),
(1, 2, 'cczc$xzxz$xzxz$zxzx$xzxz', '1', '1', 1),
(2, 1, 'dsdsdfdfdsfds$dsfds$dfas$adad$dadfs', '1', '1', 1),
(2, 2, 'm,m$kzckxzk$zcx$cc$zxxz', '1', '1', 1),
(3, 1, 'ac$cd$sd$sd$ds', '1', '1', 100),
(4, 1, 'whatnmsa$dada$dada$fcf$xccx', '1', '1', 1),
(5, 1, '$$$$', '1', '1', 1),
(6, 1, '$$$$', '1', '1', 1),
(6, 2, ',$l$l$$', '1', '1', 1),
(7, 1, '$$$$', '1', '1', 1),
(8, 1, '$$$$', '1', '1', 1),
(9, 1, '$$$$', '1', '1', 1),
(10, 1, '$$$$', '1', '1', 1),
(12, 1, '$$$$', '1', '1', 1),
(13, 1, '$$$$', '1', '1', 1),
(14, 1, 'jkjlkjlkljkjjkjkl$jkkjkjlkjl$jhjkkjl$ililliu$iouooiuoiu', '1', '1', 10),
(15, 1, 'what is worlid$yes$no$mabe$dzdz', '2', '1', 18),
(15, 2, 'dssdf$32$32$2$23', '3', '1', 34),
(16, 1, 'vvcvc$vcvcvc$vcvc$vcvc$vcvc', '1', '1', 1),
(17, 1, 'k,sakasjkljlskaj$dasj,adssjjk$assa$asdsad$asdsad', '3', '1', 10),
(19, 1, 'tyuuytyu$iuoi8oiu$i8o8789$io89$ioo98', '1', '1', 4),
(20, 1, '1red$1$3$3$3', '1', '1', 3),
(21, 1, ' c$cz$c$c$c', '1', '1', 1),
(22, 1, 's$sa$sasa$as$as', '1', '1', 1),
(23, 1, 'z$zx$zx$xz$zx', '1', '1', 1),
(24, 1, 'zcz$adas$as$as$as', '1', '1', 1),
(25, 1, 'mm$kk$jk$oo$lo', '1', '1', 1),
(26, 1, 'nn$mmjmn$kjkj$kjkjk$khjkj', '1', '1', 1),
(27, 1, 'output$ckzhkjc$ffdsldosk$daod$dslkdsok', '3', '1', 2),
(28, 1, 'lkscjlksadjkldsajlkdxjaklj$skjsksasa$as$as$dd', '1', '1', 1),
(29, 1, 'kjliulkjiluiou$jkkjujkh$jkljkljkl$lkkljkl$kjkljklj', '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `student_id` varchar(50) NOT NULL,
  `quizid` int(11) NOT NULL,
  `answers` text DEFAULT NULL,
  `marks_alloted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`student_id`, `quizid`, `answers`, `marks_alloted`) VALUES
('mm', 2, '2$2', 0),
('mm', 4, '2', 0),
('mm', 8, '0', 0),
('mm', 13, '0', 0),
('mm', 14, '1', 10),
('mm', 15, '2$4', 18),
('mm', 16, '2', 0),
('mm', 17, '3', 10),
('mm', 19, '1', 4),
('mm', 21, '1', 1),
('mm', 22, '1', 1),
('mm', 23, '1', 1),
('mm', 24, '1', 1),
('mm', 25, '2', 0),
('mm', 26, '1', 1),
('mm', 27, '2', 0),
('mm', 28, '1', 1),
('mm', 29, '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `login_id` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `sex`, `class`, `branch`, `login_id`, `phone`) VALUES
('Mustafa', 'b', ' m', 'm', 'mm', '3');

-- --------------------------------------------------------

--
-- Table structure for table `testseligiblefor`
--

CREATE TABLE `testseligiblefor` (
  `student_id` varchar(50) NOT NULL,
  `testid` int(11) NOT NULL,
  `test_taken` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testseligiblefor`
--

INSERT INTO `testseligiblefor` (`student_id`, `testid`, `test_taken`) VALUES
('mm', 2, 1),
('mm', 4, 1),
('mm', 5, 0),
('mm', 7, 0),
('mm', 8, 1),
('mm', 13, 1),
('mm', 14, 1),
('mm', 15, 1),
('mm', 16, 1),
('mm', 17, 1),
('mm', 19, 1),
('mm', 20, 0),
('mm', 21, 1),
('mm', 22, 1),
('mm', 23, 1),
('mm', 24, 1),
('mm', 25, 1),
('mm', 26, 1),
('mm', 27, 1),
('mm', 28, 1),
('mm', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testsetter`
--

CREATE TABLE `testsetter` (
  `name` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `login_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testsetter`
--

INSERT INTO `testsetter` (`name`, `sex`, `phone`, `login_id`) VALUES
('m', 'b', '01066918430', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `listofquizzes`
--
ALTER TABLE `listofquizzes`
  ADD PRIMARY KEY (`quizid`),
  ADD KEY `testsetterid` (`testsetterid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizid`,`qno`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`student_id`,`quizid`),
  ADD KEY `quizid` (`quizid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `testseligiblefor`
--
ALTER TABLE `testseligiblefor`
  ADD PRIMARY KEY (`student_id`,`testid`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `testsetter`
--
ALTER TABLE `testsetter`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `listofquizzes`
--
ALTER TABLE `listofquizzes`
  MODIFY `quizid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listofquizzes`
--
ALTER TABLE `listofquizzes`
  ADD CONSTRAINT `listofquizzes_ibfk_1` FOREIGN KEY (`testsetterid`) REFERENCES `credentials` (`login_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`quizid`) REFERENCES `listofquizzes` (`quizid`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`login_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`quizid`) REFERENCES `listofquizzes` (`quizid`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `credentials` (`login_id`) ON DELETE CASCADE;

--
-- Constraints for table `testseligiblefor`
--
ALTER TABLE `testseligiblefor`
  ADD CONSTRAINT `testseligiblefor_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`login_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testseligiblefor_ibfk_2` FOREIGN KEY (`testid`) REFERENCES `listofquizzes` (`quizid`) ON DELETE CASCADE;

--
-- Constraints for table `testsetter`
--
ALTER TABLE `testsetter`
  ADD CONSTRAINT `testsetter_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `credentials` (`login_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
