-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2019 at 04:43 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esoftwarica`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batchId` int(11) NOT NULL,
  `batchName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batchId`, `batchName`) VALUES
(1, '20-A'),
(2, '20-A'),
(3, '20-B'),
(4, '21-A');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `news` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `news`) VALUES
(1, 'Robin Thicke and Pharrell Williams have been ordered to pay nearly $5million to the family of Marvin Gaye, as a long-running legal battle comes to a close.'),
(3, 'Kevin Hart has announced that he will no longer be hosting the 2019 Oscars ceremony.\r\n\r\nOn Thursday night, the comedian-actor took to Twitter to issue an apology to the LGBTQ community for past “insen'),
(5, 'A significant number of Hart’s tweets from between 2009 to 2011 promptly flooded the internet, in which he had used homophobic slurs and derogatory language.');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentId` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `batchId` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `fname`, `lname`, `dob`, `photo`, `batchId`, `username`, `password`) VALUES
(1, 'Sudeep', 'Bajimaya', '2000-01-02', '/images/sudeep.jpg', 1, 'sudeep', 'sudeep'),
(2, 'Bikash', 'Ghimiray', '2000-01-02', '/images/bikash.jpg', 1, 'bikash', 'bikash');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherId` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherId`, `fname`, `lname`, `dob`, `doj`, `salary`, `designation`, `photo`, `username`, `password`) VALUES
(1, 'Kiran', 'Rana', '1986-07-06', '2014-07-01', 70000, 'Senior Lecturer', NULL, 'kiran', 'kiran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentId`),
  ADD KEY `fk_teacher` (`batchId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`batchId`) REFERENCES `batch` (`batchId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
