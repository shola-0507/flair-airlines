-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 03:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flairairline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Personid` int(11) NOT NULL,
  `logOnName` varchar(255) NOT NULL,
  `PrvCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Personid`, `logOnName`, `PrvCode`) VALUES
(1, 'Olushola', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Personid` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(20) NOT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Dob` date NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `PhoneNum` char(11) DEFAULT NULL,
  `FlightBooked` varchar(50) NOT NULL,
  `Departure Time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Personid`, `FirstName`, `MiddleName`, `LastName`, `Dob`, `Address`, `Email`, `PhoneNum`, `FlightBooked`, `Departure Time`, `status`) VALUES
(2, 'Sadiat', 'Jimo', 'Ibrahim', '0000-00-00', 'agege,Lagos', 'test@yahoo.com', '0700001001', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(3, 'Sadiat', 'Jimo', 'Ibrahim', '0000-00-00', 'agege,Lagos', 'test@yahoo.com', '0700001001', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(4, 'Sadiat', 'Jimo', 'Ibrahim', '0000-00-00', 'agege,Lagos', 'test@yahoo.com', '0700001001', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(5, 'Dare', 'Shoola', 'Bolu', '0000-00-00', 'Ajao lagos', 'test@testre.com', '07033215232', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(6, 'John', 'karo', 'Shola', '0000-00-00', 'agege,Lagos', 'sadiat@test.com', '07033232332', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(7, 'John', 'doe', 'Shola', '0000-00-00', 'agege,Lagos', 'shola.karo@gmail.com', '0700001001', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(8, 'Dare', 'OLushola', 'Sadiat', '0000-00-00', 'Ajao lagos', 'sadiat@test.com', '07033215232', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1),
(9, 'Dare', 'OLushola', 'Sadiat', '0000-00-00', 'Ajao lagos', 'sadiat@test.com', '07033215232', 'Lagos-Jo''borg', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Personid`),
  ADD UNIQUE KEY `Personid` (`Personid`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Personid`),
  ADD UNIQUE KEY `Personid` (`Personid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Personid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
