-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 06:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwscdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(255) NOT NULL,
  `premise_Id` int(255) NOT NULL,
  `Tarrif_id` int(255) NOT NULL,
  `Client_id` int(11) NOT NULL,
  `Name` char(234) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `premise_Id`, `Tarrif_id`, `Client_id`, `Name`) VALUES
(1, 1, 1, 1, 'Adio Adedeji'),
(2, 3, 4, 3, 'Onifade Anjola'),
(3, 4, 3, 4, 'Keshinroloye Abobade'),
(4, 2, 2, 2, 'Razaq Afeez'),
(5, 2, 5, 2, 'Razaq Afeez'),
(6, 7, 6, 7, 'Santiege sankoh');

-- --------------------------------------------------------

--
-- Table structure for table `charge_structure`
--

CREATE TABLE `charge_structure` (
  `tarriff_id` int(255) NOT NULL,
  `lower_limit` int(255) NOT NULL,
  `Upper_limit` int(255) NOT NULL,
  `Charge` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charge_structure`
--

INSERT INTO `charge_structure` (`tarriff_id`, `lower_limit`, `Upper_limit`, `Charge`) VALUES
(1, 5, 2, '10'),
(2, 2, 5, '10'),
(3, 2, 5, '10'),
(4, 2, 5, '10'),
(5, 2, 5, '10'),
(6, 2, 5, '10'),
(1, 5, 2, '10'),
(2, 2, 5, '10'),
(3, 2, 5, '10'),
(4, 2, 5, '10'),
(5, 2, 5, '10'),
(6, 2, 5, '10');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Clients_Id` int(255) NOT NULL,
  `Name` char(255) NOT NULL,
  `telephone_Number` int(255) NOT NULL,
  `Zone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Clients_Id`, `Name`, `telephone_Number`, `Zone`) VALUES
(1, 'Adio Adedeji', 807654234, '001'),
(2, 'Razaq Afeez', 4563748, '001'),
(3, 'Onifade Anjola', 989763844, '002'),
(4, 'Keshiroloye Abobade', 235457449, '003'),
(5, 'Debo Suleyman', 70654322, '004'),
(6, 'Afe Babalola', 9123345, '001');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `bill_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`bill_id`, `transaction_id`, `amount_paid`) VALUES
('001', '001', '10,000'),
('001', '001', '10,000'),
('002', '002', '50,000'),
('003', '003', '100,000'),
('004', '004', '70,000'),
('005', '005', '20,000'),
('005', '005', '10,000'),
('002', '002', '50,000'),
('003', '003', '100,000'),
('004', '004', '70,000'),
('005', '005', '20,000'),
('005', '005', '10,000');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `Plant_Name` char(255) NOT NULL,
  `Plant_id` int(255) NOT NULL,
  `Plant_Size` varchar(255) NOT NULL,
  `Clients_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`Plant_Name`, `Plant_id`, `Plant_Size`, `Clients_id`) VALUES
('Plant One', 1, '3,000 Litres', 0),
('Plant two', 2, '4000 Litres', 0),
('Plant three', 3, '9,000 Litres', 0),
('Plant Four', 4, '6,000 Litres', 0),
('Plant Five', 5, '10,000Litres', 0),
('Plant Six', 6, '29,000Litres', 0),
('plant Seven', 7, '30,000', 0),
('Plant One', 1, '3,000 Litres', 0),
('Plant two', 2, '4000 Litres', 0),
('Plant three', 3, '9,000 Litres', 0),
('Plant Four', 4, '6,000 Litres', 0),
('Plant Five', 5, '10,000Litres', 0),
('Plant Six', 6, '29,000Litres', 0),
('plant Seven', 7, '30,000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `premise_Id` varchar(255) NOT NULL,
  `Client_id` varchar(255) NOT NULL,
  `Meter_Number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premises`
--

INSERT INTO `premises` (`premise_Id`, `Client_id`, `Meter_Number`) VALUES
('001', '001', 1),
('002', '002', 2),
('003', '003', 3),
('004', '004', 4),
('005', '005', 5),
('006', '006', 6),
('003', '003', 3),
('004', '004', 4),
('005', '005', 5),
('006', '006', 6);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` varchar(255) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `Plant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `Plant_id`) VALUES
('1', 'Ife', 0),
('2', 'Oyo', 0),
('3', 'Ogbomosho', 0),
('4', 'Katsina', 0),
('5', 'Jigawa', 0),
('6', 'Osun', 0),
('1', 'Ife', 0),
('2', 'Oyo', 0),
('3', 'Ogbomosho', 0),
('4', 'Katsina', 0),
('5', 'Jigawa', 0),
('6', 'Osun', 0),
('7', 'Freetown', 1),
('8', 'Salone', 2),
('9', 'Borno', 3),
('3', 'ogbomosho', 4),
('6', 'AlabaTOWN', 5),
('7', 'Freetown', 1),
('8', 'Salone', 2),
('9', 'Borno', 3),
('3', 'ogbomosho', 4),
('6', 'AlabaTOWN', 5),
('7', 'Freetown', 1),
('8', 'Salone', 2),
('9', 'Borno', 3),
('3', 'ogbomosho', 4),
('6', 'AlabaTOWN', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `Sector_id` varchar(255) NOT NULL,
  `Sector_Name` char(255) NOT NULL,
  `Office_physical_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`Sector_id`, `Sector_Name`, `Office_physical_address`) VALUES
('1', 'S1', 'kIGALI'),
('2', 'S2', 'kACYIRU'),
('3', 'S3', 'kivu'),
('4', 's4', 'Baro'),
('5', 's5', 'Riyya'),
('6', 's6', 'Brookliu'),
('7', 's7', 'Adegbayi'),
('8', 's8', 'Alaakia'),
('9', 's9', 'Oyoba'),
('10', 's10', 'Sango'),
('11', 's11', 'Agbowo'),
('12', 's12', 'UI');

-- --------------------------------------------------------

--
-- Table structure for table `sector office`
--

CREATE TABLE `sector office` (
  `Id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email address` varchar(255) NOT NULL,
  `Job title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_id` int(255) NOT NULL,
  `Staff_Name` varchar(255) NOT NULL,
  `Sector_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_id`, `Staff_Name`, `Sector_id`) VALUES
(1, 'Ayo Deji', 1),
(2, 'Sam Amunudu', 2),
(3, 'Bobson', 3),
(4, 'Paul', 4),
(5, 'Zahra', 4),
(6, 'Bayo', 5),
(7, 'Shayo', 6),
(8, 'Kunmi', 9),
(9, 'Malik', 8),
(10, 'Tife', 4),
(1, 'Ayo Deji', 1),
(2, 'Sam Amunudu', 2),
(3, 'Bobson', 3),
(4, 'Paul', 4),
(5, 'Zahra', 4),
(6, 'Bayo', 5),
(7, 'Shayo', 6),
(8, 'Kunmi', 9),
(9, 'Malik', 8),
(10, 'Tife', 4);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `Zone_id` int(255) NOT NULL,
  `Zone_name` varchar(255) NOT NULL,
  `Sector_Id` int(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`Zone_id`, `Zone_name`, `Sector_Id`) VALUES
(1, 'Zone 1', 1),
(2, 'Zone 2', 2),
(1, 'Zone 1', 1),
(2, 'Zone 2', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Clients_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
