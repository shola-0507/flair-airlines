-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 04:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flairairlines`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `Personid` int(11) NOT NULL,
  `LogOnName` varchar(10) NOT NULL,
  `PrvCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `Aircraftid` int(11) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Capacity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft_cabinclass`
--

CREATE TABLE `aircraft_cabinclass` (
  `Aircraftid` int(11) NOT NULL,
  `CabinClassid` int(11) NOT NULL,
  `SeatNo` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Airportcode` char(3) NOT NULL,
  `AirportName` varchar(50) NOT NULL,
  `Countrycode` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookedflight`
--

CREATE TABLE `bookedflight` (
  `Flightid` int(11) NOT NULL,
  `Itinerarycode` char(10) NOT NULL,
  `Routeid` int(11) NOT NULL,
  `DepartureDateTime` datetime NOT NULL,
  `Personid` int(11) NOT NULL,
  `SeatNo` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cabinclass`
--

CREATE TABLE `cabinclass` (
  `CabinClassid` int(11) NOT NULL,
  `ClassName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `Countrycode` char(2) NOT NULL,
  `CountryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `Flightid` int(11) NOT NULL,
  `Routeid` int(11) NOT NULL,
  `DepartureDateTime` datetime NOT NULL,
  `ArrivalDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `Itinerarycode` char(10) NOT NULL,
  `Fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Personid` int(11) NOT NULL,
  `SpecialNeeds` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Personid` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) NOT NULL,
  `DateofBirth` date NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PostCode` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNum` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `Routeid` int(11) NOT NULL,
  `AirportCode` char(3) NOT NULL,
  `SourceAirportcode` char(3) NOT NULL,
  `DestinationAirportcode` char(3) NOT NULL,
  `Aircraftid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`Personid`),
  ADD UNIQUE KEY `Personid` (`Personid`);

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`Aircraftid`),
  ADD UNIQUE KEY `Aircraftid` (`Aircraftid`);

--
-- Indexes for table `aircraft_cabinclass`
--
ALTER TABLE `aircraft_cabinclass`
  ADD PRIMARY KEY (`Aircraftid`,`SeatNo`),
  ADD KEY `CabinClassid` (`CabinClassid`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Airportcode`),
  ADD UNIQUE KEY `Airportcode` (`Airportcode`),
  ADD KEY `Countrycode` (`Countrycode`);

--
-- Indexes for table `bookedflight`
--
ALTER TABLE `bookedflight`
  ADD PRIMARY KEY (`Flightid`,`Itinerarycode`,`Routeid`,`DepartureDateTime`,`Personid`),
  ADD KEY `Personid` (`Personid`);

--
-- Indexes for table `cabinclass`
--
ALTER TABLE `cabinclass`
  ADD PRIMARY KEY (`CabinClassid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Countrycode`),
  ADD UNIQUE KEY `Countrycode` (`Countrycode`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`Routeid`,`Flightid`,`DepartureDateTime`),
  ADD UNIQUE KEY `Flightid` (`Flightid`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`Itinerarycode`),
  ADD UNIQUE KEY `Itinerarycode` (`Itinerarycode`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Personid`),
  ADD UNIQUE KEY `Personid` (`Personid`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Personid`),
  ADD UNIQUE KEY `Personid` (`Personid`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`Routeid`),
  ADD KEY `AirportCode` (`AirportCode`),
  ADD KEY `Aircraftid` (`Aircraftid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`Personid`) REFERENCES `person` (`Personid`);

--
-- Constraints for table `aircraft_cabinclass`
--
ALTER TABLE `aircraft_cabinclass`
  ADD CONSTRAINT `aircraft_cabinclass_ibfk_1` FOREIGN KEY (`Aircraftid`) REFERENCES `aircraft` (`Aircraftid`),
  ADD CONSTRAINT `aircraft_cabinclass_ibfk_2` FOREIGN KEY (`CabinClassid`) REFERENCES `cabinclass` (`CabinClassid`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`Countrycode`) REFERENCES `countries` (`Countrycode`);

--
-- Constraints for table `bookedflight`
--
ALTER TABLE `bookedflight`
  ADD CONSTRAINT `bookedflight_ibfk_1` FOREIGN KEY (`Personid`) REFERENCES `person` (`Personid`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`Routeid`) REFERENCES `routes` (`Routeid`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`Personid`) REFERENCES `person` (`Personid`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`AirportCode`) REFERENCES `airport` (`Airportcode`),
  ADD CONSTRAINT `routes_ibfk_2` FOREIGN KEY (`Aircraftid`) REFERENCES `aircraft` (`Aircraftid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
