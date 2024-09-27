-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 06:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_ID` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Class_rate` decimal(3,1) NOT NULL,
  `Seats_per_coach` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_ID`, `Type`, `Class_rate`, `Seats_per_coach`) VALUES
('101', 'CABIN', 3.5, 25),
('202', 'SNIGDHA', 2.5, 25),
('303', 'SHOVON', 1.5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `determine`
--

CREATE TABLE `determine` (
  `Route_ID` varchar(10) NOT NULL,
  `Ticket_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gets_refund`
--

CREATE TABLE `gets_refund` (
  `Pay_ID` varchar(10) NOT NULL,
  `Wallet_ID` int(5) NOT NULL,
  `Journey_time` varchar(100) NOT NULL,
  `Cancel_time` varchar(100) NOT NULL,
  `Ticket_price` int(11) NOT NULL,
  `Refund_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Phone` varchar(11) NOT NULL,
  `P_NID` int(10) NOT NULL,
  `P_Name` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Phone`, `P_NID`, `P_Name`, `password`) VALUES
('01534740578', 2134569898, 'Akib', 'akib123'),
('01712345999', 2147483647, 'ssa', 'asd'),
('01716484787', 2130151000, 'Ahnaf', 'ahnaf787'),
('01717399104', 2130158822, 'Taimoor fahim', '12345'),
('01717399105', 2130459768, 'Niloy', 'niloy123'),
('01775146904', 2139876543, 'Hanif', 'hanif123'),
('01896325741', 2134569874, 'Alve', 'alve123');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_ticket`
--

CREATE TABLE `reserved_ticket` (
  `Pay_ID` varchar(10) NOT NULL,
  `Pay_time` time NOT NULL,
  `Pay_date` date NOT NULL,
  `Amount` int(100) NOT NULL,
  `Ticket_ID` int(20) NOT NULL,
  `Wallet_ID` int(5) NOT NULL,
  `Phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_fare`
--

CREATE TABLE `route_fare` (
  `Route_ID` varchar(10) NOT NULL,
  `Route_name` varchar(10) NOT NULL,
  `Fare` int(10) NOT NULL,
  `Zone_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route_fare`
--

INSERT INTO `route_fare` (`Route_ID`, `Route_name`, `Fare`, `Zone_ID`) VALUES
('001', 'DHK-CTG', 500, '123'),
('002', 'DHK-SYL', 400, '321'),
('003', 'DHK-RNG', 350, '456'),
('004', 'DHK-BAR', 300, '654');

-- --------------------------------------------------------

--
-- Table structure for table `seat_availability`
--

CREATE TABLE `seat_availability` (
  `Class_ID` varchar(10) NOT NULL,
  `Train_Code` varchar(10) NOT NULL,
  `seat_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat_availability`
--

INSERT INTO `seat_availability` (`Class_ID`, `Train_Code`, `seat_count`) VALUES
('101', '1001', 10),
('101', '1002', 10),
('101', '1003', 10),
('202', '1001', 10),
('202', '1002', 10),
('202', '1003', 10),
('303', '1001', 10),
('303', '1002', 10),
('303', '1003', 10);

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `Route_ID` varchar(10) NOT NULL,
  `Train_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`Route_ID`, `Train_Code`) VALUES
('001', '1002'),
('002', '1004'),
('003', '1001'),
('004', '1003');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket_ID` int(20) NOT NULL,
  `Fare` int(11) NOT NULL,
  `From_date` date NOT NULL,
  `To_date` date NOT NULL,
  `From_station` varchar(100) NOT NULL,
  `To_station` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Class_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `Train_Code` varchar(10) NOT NULL,
  `Train_Name` varchar(20) NOT NULL,
  `Frequency` decimal(4,2) NOT NULL,
  `Start_time` time NOT NULL,
  `End_time` time NOT NULL,
  `Start_Station_Code` varchar(10) NOT NULL,
  `End_Station_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`Train_Code`, `Train_Name`, `Frequency`, `Start_time`, `End_time`, `Start_Station_Code`, `End_Station_Code`) VALUES
('1001', 'Niloy exprs', 11.12, '09:00:00', '18:00:00', 'DHK', 'RNG'),
('1002', 'Hanif exprs', 12.22, '10:00:00', '14:00:00', 'DHK', 'CTG'),
('1003', 'Alvi exprs', 13.33, '10:30:00', '14:30:00', 'DHK', 'BAR'),
('1004', 'Akib exprs', 14.45, '11:15:00', '15:45:00', 'DHK', 'SYL'),
('1005', 'Ahnaf exprs', 11.55, '11:45:00', '21:30:00', 'DHK', 'RNG');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `Phone` varchar(11) NOT NULL,
  `Train_Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `Wallet_ID` int(5) NOT NULL,
  `balance` int(10) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`Wallet_ID`, `balance`, `phone`) VALUES
(12578, 0, '01775146904'),
(36600, 0, '01712345999'),
(44820, 0, '01896325741'),
(45501, 0, '01534740578'),
(72612, 0, '01717399104'),
(77929, 2147483647, '01717399105'),
(81361, 100010000, '01716484787');

-- --------------------------------------------------------

--
-- Table structure for table `w_transac`
--

CREATE TABLE `w_transac` (
  `Wallet_ID` int(5) NOT NULL,
  `Transactions` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `determine`
--
ALTER TABLE `determine`
  ADD PRIMARY KEY (`Route_ID`,`Ticket_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`);

--
-- Indexes for table `gets_refund`
--
ALTER TABLE `gets_refund`
  ADD PRIMARY KEY (`Pay_ID`,`Wallet_ID`),
  ADD KEY `Wallet_ID` (`Wallet_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Phone`),
  ADD UNIQUE KEY `P_NID` (`P_NID`);

--
-- Indexes for table `reserved_ticket`
--
ALTER TABLE `reserved_ticket`
  ADD PRIMARY KEY (`Pay_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`),
  ADD KEY `Wallet_ID` (`Wallet_ID`),
  ADD KEY `Phone` (`Phone`);

--
-- Indexes for table `route_fare`
--
ALTER TABLE `route_fare`
  ADD PRIMARY KEY (`Route_ID`);

--
-- Indexes for table `seat_availability`
--
ALTER TABLE `seat_availability`
  ADD PRIMARY KEY (`Class_ID`,`Train_Code`),
  ADD KEY `Train_Code` (`Train_Code`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`Route_ID`,`Train_Code`),
  ADD KEY `Train_Code` (`Train_Code`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD KEY `Phone` (`Phone`),
  ADD KEY `Class_ID` (`Class_ID`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`Train_Code`),
  ADD UNIQUE KEY `Train_Name` (`Train_Name`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`Phone`,`Train_Code`),
  ADD KEY `Train_Code` (`Train_Code`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`Wallet_ID`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `w_transac`
--
ALTER TABLE `w_transac`
  ADD PRIMARY KEY (`Wallet_ID`,`Transactions`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `determine`
--
ALTER TABLE `determine`
  ADD CONSTRAINT `determine_ibfk_1` FOREIGN KEY (`Route_ID`) REFERENCES `route_fare` (`Route_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `determine_ibfk_2` FOREIGN KEY (`Ticket_ID`) REFERENCES `ticket` (`Ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gets_refund`
--
ALTER TABLE `gets_refund`
  ADD CONSTRAINT `gets_refund_ibfk_1` FOREIGN KEY (`Pay_ID`) REFERENCES `reserved_ticket` (`Pay_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gets_refund_ibfk_2` FOREIGN KEY (`Wallet_ID`) REFERENCES `wallet` (`Wallet_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reserved_ticket`
--
ALTER TABLE `reserved_ticket`
  ADD CONSTRAINT `reserved_ticket_ibfk_1` FOREIGN KEY (`Ticket_ID`) REFERENCES `ticket` (`Ticket_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserved_ticket_ibfk_2` FOREIGN KEY (`Wallet_ID`) REFERENCES `wallet` (`Wallet_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserved_ticket_ibfk_3` FOREIGN KEY (`Phone`) REFERENCES `passenger` (`Phone`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat_availability`
--
ALTER TABLE `seat_availability`
  ADD CONSTRAINT `seat_availability_ibfk_1` FOREIGN KEY (`Class_ID`) REFERENCES `class` (`Class_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seat_availability_ibfk_2` FOREIGN KEY (`Train_Code`) REFERENCES `train` (`Train_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stops`
--
ALTER TABLE `stops`
  ADD CONSTRAINT `stops_ibfk_1` FOREIGN KEY (`Route_ID`) REFERENCES `route_fare` (`Route_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stops_ibfk_2` FOREIGN KEY (`Train_Code`) REFERENCES `train` (`Train_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `passenger` (`Phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`Class_ID`) REFERENCES `class` (`Class_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `passenger` (`Phone`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `views_ibfk_2` FOREIGN KEY (`Train_Code`) REFERENCES `train` (`Train_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `passenger` (`Phone`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `w_transac`
--
ALTER TABLE `w_transac`
  ADD CONSTRAINT `w_transac_ibfk_1` FOREIGN KEY (`Wallet_ID`) REFERENCES `wallet` (`Wallet_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
