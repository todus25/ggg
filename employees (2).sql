-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2017 at 12:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vnc`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `salary` float(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeNumber`, `lastName`, `firstName`, `extension`, `email`, `officeCode`, `reportsTo`, `jobTitle`, `salary`) VALUES
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', NULL, 'President', 10000.00),
(1056, 'Patterson', 'Mary', 'x4611', 'mpatterso@classicmodelcars.com', '1', 1002, 'VP Sales', 40000.00),
(1076, 'Firrelli', 'Jeff', 'x9273', 'jfirrelli@classicmodelcars.com', '1', 1002, 'VP Marketing', 30000.00),
(1088, 'Patterson', 'William', 'X002', 'wpatterson@classicmodelcars.com', '6', 1056, 'Sales Manager (APAC)', 20000.00),
(1102, 'Bondur', 'Gerard', 'x5408', 'gbondur@classicmodelcars.com', '4', 1056, 'Sale Manager (EMEA)', 10000.00),
(1143, 'Bow', 'Anthony', 'x5428', 'abow@classicmodelcars.com', '1', 1056, 'Sales Manager (NA)', 10000.00),
(1165, 'Jennings', 'Leslie', 'x3291', 'ljennings@classicmodelcars.com', '1', 1143, 'Sales Rep', 15000.00),
(1166, 'Thompson', 'Leslie', 'x4065', 'lthompson@classicmodelcars.com', '1', 1143, 'Sales Rep', 15000.00),
(1188, 'Firrelli', 'Julie', 'x2173', 'jfirrelli@classicmodelcars.com', '2', 1143, 'Sales Rep', 10000.00),
(1216, 'Patterson', 'Steve', 'x4334', 'spatterson@classicmodelcars.com', '2', 1143, 'Sales Rep', 50000.00),
(1337, 'Bondur', 'Loui', 'x6493', 'lbondur@classicmodelcars.com', '4', 1102, 'Sales Rep', 40000.00),
(1370, 'Hernandez', 'Gerard', 'x2028', 'ghernande@classicmodelcars.com', '4', 1102, 'Sales Rep', 10000.00),
(1401, 'Castillo', 'Pamela', 'x2759', 'pcastillo@classicmodelcars.com', '4', 1102, 'Sales Rep', 15000.00),
(1501, 'Bott', 'Larry', 'x2311', 'lbott@classicmodelcars.com', '7', 1102, 'Sales Rep', 15000.00),
(1504, 'Jones', 'Barry', 'x102', 'bjones@classicmodelcars.com', '7', 1102, 'Sales Rep', 10000.00),
(1611, 'Fixter', 'Andy', 'X002', 'afixter@classicmodelcars.com', '6', 1088, 'Sales Rep', 10000.00),
(1612, 'Marsh', 'Peter', 'X002', 'pmarsh@classicmodelcars.com', '6', 1088, 'Sales Rep', 5000.00),
(1619, 'King', 'Tom', 'X002', 'tking@classicmodelcars.com', '6', 1088, 'Sales Rep', 15000.00),
(1621, 'Nishi', 'Mami', 'x101', 'mnishi@classicmodelcars.com', '5', 1056, 'Sales Rep', 15000.00),
(1625, 'Kato', 'Yoshimi', 'x102', 'ykato@classicmodelcars.com', '5', 1621, 'Sales Rep', 15000.00),
(1702, 'Gerard', 'Martin', 'x2312', 'mgerard@classicmodelcars.com', '4', 1102, 'Sales Rep', 15000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeNumber`),
  ADD KEY `reportsTo` (`reportsTo`),
  ADD KEY `officeCode` (`officeCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
