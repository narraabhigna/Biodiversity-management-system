-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2024 at 10:35 AM
-- Server version: 8.0.29
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodiversity_park_ system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Employee_id` char(10) NOT NULL,
  `Park_id` char(6) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Designation` varchar(45) DEFAULT NULL,
  `Monthly_salary` decimal(5,0) DEFAULT NULL,
  `Hours_of_work` int DEFAULT NULL,
  `Year_of_joining` int DEFAULT NULL,
  `Mobile_no` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Employee_id`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Park_id`, `Name`, `Designation`, `Monthly_salary`, `Hours_of_work`, `Year_of_joining`, `Mobile_no`) VALUES
('UD-102-M1', 'UD-102', 'Aarav', 'manager', 25000, 7, 2015, 8173562982),
('UD-102-S1', 'UD-102', 'Shiva', 'security', 12000, 10, 2014, 7193740360),
('UD-102-W1', 'UD-102', 'Harshith', 'worker', 15000, 8, 2012, 6193740631),
('VA-103-M3', 'VA-103', 'Suriya', 'manager', 24000, 7, 2012, 9281763942),
('VA-103-S3', 'VA-103', 'Charan', 'security', 11000, 10, 2010, 8162736471),
('VA-103-W3', 'VA-103', 'Arjun', 'worker', 14000, 8, 2010, 9183746509),
('YA-101-D2', 'YA-101', 'Swathi', 'doctor', 40000, 5, 2022, 9927746638),
('YA-101-M2', 'YA-101', 'Deekshit', 'manager', 26000, 7, 2020, 8244164779),
('YA-101-S2', 'YA-101', 'Shiva', 'security', 13000, 10, 2015, 9937746620),
('YA-101-W2', 'YA-101', 'Ram', 'worker', 16000, 8, 2016, 8176635429);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `Park_id` char(6) NOT NULL,
  `Employee_salary` decimal(6,0) DEFAULT NULL,
  `Food` decimal(6,0) DEFAULT NULL,
  `Fertilizers` decimal(6,0) DEFAULT NULL,
  `Maintenance` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`Park_id`, `Employee_salary`, `Food`, `Fertilizers`, `Maintenance`) VALUES
('UD-102', 52000, 300000, 70000, 150000),
('VA-103', 49000, 200000, 30000, 100000),
('YA-101', 95000, 400000, 100000, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `fauna_1`
--

DROP TABLE IF EXISTS `fauna_1`;
CREATE TABLE IF NOT EXISTS `fauna_1` (
  `Fauna_id` char(5) NOT NULL,
  `Park_id` char(6) NOT NULL,
  `No_of_species` int DEFAULT NULL,
  PRIMARY KEY (`Fauna_id`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fauna_1`
--

INSERT INTO `fauna_1` (`Fauna_id`, `Park_id`, `No_of_species`) VALUES
('EL-03', 'UD-102', 8),
('EL-03', 'YA-101', 9),
('LI-01', 'UD-102', 3),
('LI-01', 'VA-103', 4),
('LI-01', 'YA-101', 5),
('MO-05', 'UD-102', 12),
('MO-05', 'VA-103', 18),
('MO-05', 'YA-101', 15),
('PE-04', 'UD-102', 7),
('PE-04', 'VA-103', 5),
('TI-02', 'VA-103', 6),
('TI-02', 'YA-101', 3);

-- --------------------------------------------------------

--
-- Table structure for table `fauna_2_1`
--

DROP TABLE IF EXISTS `fauna_2_1`;
CREATE TABLE IF NOT EXISTS `fauna_2_1` (
  `Fauna_id` char(5) NOT NULL,
  `Species_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Fauna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fauna_2_1`
--

INSERT INTO `fauna_2_1` (`Fauna_id`, `Species_name`) VALUES
('EL-03', 'Elephant'),
('LI-01', 'Lion'),
('MO-05', 'Monkey'),
('PE-04', 'Peacock'),
('TI-02', 'Tiger');

-- --------------------------------------------------------

--
-- Table structure for table `fauna_2_2`
--

DROP TABLE IF EXISTS `fauna_2_2`;
CREATE TABLE IF NOT EXISTS `fauna_2_2` (
  `Species_name` varchar(45) NOT NULL,
  `Lifespan` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Species_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fauna_2_2`
--

INSERT INTO `fauna_2_2` (`Species_name`, `Lifespan`, `Status`) VALUES
('Elephant', '60-70', 'endangered'),
('Lion', '15-20', 'vulnerable'),
('Monkey', '20-25', 'least concern'),
('Peacock', '10-25', 'least concern'),
('Tiger', '8-10', 'endangered');

-- --------------------------------------------------------

--
-- Table structure for table `fauna_food`
--

DROP TABLE IF EXISTS `fauna_food`;
CREATE TABLE IF NOT EXISTS `fauna_food` (
  `Fauna_id` char(5) NOT NULL,
  `Food` varchar(45) NOT NULL,
  PRIMARY KEY (`Fauna_id`,`Food`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fauna_food`
--

INSERT INTO `fauna_food` (`Fauna_id`, `Food`) VALUES
('EL-03', 'bark'),
('EL-03', 'grasses'),
('LI-01', 'birds'),
('LI-01', 'turtles'),
('MO-05', 'banana'),
('MO-05', 'bird egg'),
('PE-04', 'berries'),
('PE-04', 'insects'),
('TI-02', 'deer'),
('TI-02', 'goat');

-- --------------------------------------------------------

--
-- Table structure for table `fine_info`
--

DROP TABLE IF EXISTS `fine_info`;
CREATE TABLE IF NOT EXISTS `fine_info` (
  `Ticket_no.` varchar(20) NOT NULL,
  `Fine_reason` varchar(100) DEFAULT NULL,
  `Fine_cost` int DEFAULT NULL,
  `Date` char(5) DEFAULT NULL,
  PRIMARY KEY (`Ticket_no.`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fine_info`
--

INSERT INTO `fine_info` (`Ticket_no.`, `Fine_reason`, `Fine_cost`, `Date`) VALUES
('UD-102-12/08-1', 'feeding food to animals', 2000, '10/11'),
('UD-102-19/07-1000', 'wrong parking', 1000, '19/07'),
('VA-103-30/07-956', 'throwing plastic bottles in the park', 500, '30/07'),
('YA-101-10/11-83', 'feeding food to animals', 2000, '10/11');

-- --------------------------------------------------------

--
-- Table structure for table `flora_1`
--

DROP TABLE IF EXISTS `flora_1`;
CREATE TABLE IF NOT EXISTS `flora_1` (
  `Flora_id` char(5) NOT NULL,
  `Park_id` char(6) NOT NULL,
  `No_of_species` int DEFAULT NULL,
  `Plantation_year` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`Flora_id`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flora_1`
--

INSERT INTO `flora_1` (`Flora_id`, `Park_id`, `No_of_species`, `Plantation_year`, `Age`) VALUES
('BA-01', 'UD-102', 25, 2014, 8),
('BA-01', 'VA-103', 30, 2012, 10),
('BA-01', 'YA-101', 35, 2016, 6),
('EU-03', 'UD-102', 20, 2013, 9),
('EU-03', 'YA-101', 30, 2018, 4),
('LI-05', 'UD-102', 10, 2014, 8),
('LI-05', 'VA-103', 22, 2012, 10),
('LO-02', 'UD-102', 14, 2017, 5),
('LO-02', 'VA-103', 17, 2014, 8),
('LO-02', 'YA-101', 25, 2012, 10),
('RU-04', 'VA-103', 12, 2020, 2),
('RU-04', 'YA-101', 18, 2019, 3);

-- --------------------------------------------------------

--
-- Table structure for table `flora_2`
--

DROP TABLE IF EXISTS `flora_2`;
CREATE TABLE IF NOT EXISTS `flora_2` (
  `Flora_id` char(5) NOT NULL,
  `Flora_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Flora_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flora_2`
--

INSERT INTO `flora_2` (`Flora_id`, `Flora_name`) VALUES
('BA-01', 'Bamboo'),
('EU-03', 'Eucalyptus'),
('LI-05', 'Lily'),
('LO-02', 'Lotus'),
('RU-04', 'Rudraksha');

-- --------------------------------------------------------

--
-- Table structure for table `flora_fertilizers`
--

DROP TABLE IF EXISTS `flora_fertilizers`;
CREATE TABLE IF NOT EXISTS `flora_fertilizers` (
  `Flora_id` char(5) NOT NULL,
  `Fertilizers` varchar(45) NOT NULL,
  PRIMARY KEY (`Flora_id`,`Fertilizers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flora_fertilizers`
--

INSERT INTO `flora_fertilizers` (`Flora_id`, `Fertilizers`) VALUES
('BA-01', 'Cattle manure'),
('BA-01', 'Mushroom compost'),
('EU-03', 'High potassium'),
('EU-03', 'Low nitrogen'),
('LI-05', 'NPK 10-30-20'),
('LI-05', 'NPK 15-9-12'),
('LO-02', 'NPK 18-18-21'),
('LO-02', 'NPK 4-8-4'),
('RU-04', 'NPK 10-10-10'),
('RU-04', 'Rotted cow manure');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
CREATE TABLE IF NOT EXISTS `funds` (
  `Name` varchar(35) NOT NULL,
  `Amount` decimal(6,0) NOT NULL,
  `Date` char(5) NOT NULL,
  `Park_id` char(6) NOT NULL,
  PRIMARY KEY (`Name`,`Amount`,`Date`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`Name`, `Amount`, `Date`, `Park_id`) VALUES
('Aishwarya Rai Bachchan', 700000, '29/10', 'UD-102'),
('Animal aid', 75000, '24/07', 'VA-103'),
('Blue cross', 225000, '12/02', 'YA-101'),
('Ghazal Alagh', 200000, '05/04', 'VA-103'),
('Posh foundation', 125000, '17/06', 'YA-101'),
('Ramesh Babu', 5000, '12/11', 'UD-102'),
('Sita Rajput', 7050, '27/02', 'YA-101'),
('Sita Rajput', 10250, '27/03', 'YA-101'),
('Sonu Sood', 500000, '12/11', 'VA-103'),
('Vishal K Reddy', 100000, '10/01', 'UD-102');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `Park_id` char(6) NOT NULL,
  `Tickets_sold` decimal(7,0) DEFAULT NULL,
  `Parking_fee` decimal(6,0) DEFAULT NULL,
  `Cafeteria` decimal(6,0) DEFAULT NULL,
  `Safari_fee` decimal(6,0) DEFAULT NULL,
  `Fine` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`Park_id`, `Tickets_sold`, `Parking_fee`, `Cafeteria`, `Safari_fee`, `Fine`) VALUES
('UD-102', 600000, 50000, 70000, 300000, 30000),
('VA-103', 400000, 25000, 45000, 100000, 10000),
('YA-101', 1000000, 80000, 150000, 574750, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
CREATE TABLE IF NOT EXISTS `park` (
  `Park_id` char(6) NOT NULL,
  `Park_name` varchar(45) DEFAULT NULL,
  `Area_in_hectares` int DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Estd_year` int DEFAULT NULL,
  PRIMARY KEY (`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`Park_id`, `Park_name`, `Area_in_hectares`, `City`, `Estd_year`) VALUES
('UD-102', 'Udaan biodiversity park', 200, 'Pune', 2012),
('VA-103', 'Vanaparvam biodiversity park', 111, 'Kozhikode', 2010),
('YA-101', 'Yamuna biodiversity park', 9770, 'Delhi', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `visitors_1`
--

DROP TABLE IF EXISTS `visitors_1`;
CREATE TABLE IF NOT EXISTS `visitors_1` (
  `Ticket_no.` varchar(25) NOT NULL,
  `Park_id` char(6) NOT NULL,
  `Date` char(5) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` char(6) DEFAULT NULL,
  `Mobile_no.` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Ticket_no.`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitors_1`
--

INSERT INTO `visitors_1` (`Ticket_no.`, `Park_id`, `Date`, `Name`, `Age`, `Gender`, `Mobile_no.`) VALUES
('UD-102-10/11-1', 'UD-102', '10/11', 'Swapna', 21, 'female', 9184750253),
('UD-102-10/11-2', 'UD-102', '10/11', 'Rishi', 9, 'male', 9184750253),
('UD-102-19/07-1000', 'UD-102', '19/07', 'Karan', 45, 'male', 9372804567),
('VA-103-18/02-8', 'VA-103', '18/02', 'Madhav', 24, 'male', 8283374925),
('VA-103-21/06-67', 'VA-103', '21/06', 'Riya', 5, 'female', 6194638583),
('VA-103-30/07-956', 'VA-103', '30/07', 'Rithwik', 36, 'male', 9930027856),
('YA-101-06/02-603', 'YA-101', '06/02', 'Pranav', 19, 'male', 9736659927),
('YA-101-08/04-909', 'YA-101', '08/04', 'Hanu', 20, 'male', 6933758926),
('YA-101-10/11-83', 'YA-101', '10/11', 'Divya', 51, 'female', 9983374460),
('YA-101-19/04-9', 'YA-101', '19/04', 'Manas', 8, 'male', 8376629887);

-- --------------------------------------------------------

--
-- Table structure for table `visitors_2`
--

DROP TABLE IF EXISTS `visitors_2`;
CREATE TABLE IF NOT EXISTS `visitors_2` (
  `Age` varchar(5) NOT NULL,
  `Ticket_price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Age`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitors_2`
--

INSERT INTO `visitors_2` (`Age`, `Ticket_price`) VALUES
('<=10', '100'),
('>10', '200');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_analysis`
--

DROP TABLE IF EXISTS `visitor_analysis`;
CREATE TABLE IF NOT EXISTS `visitor_analysis` (
  `Park_id` char(6) NOT NULL,
  `Season` varchar(45) NOT NULL,
  `No_of_visitors` int DEFAULT NULL,
  PRIMARY KEY (`Park_id`,`Season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitor_analysis`
--

INSERT INTO `visitor_analysis` (`Park_id`, `Season`, `No_of_visitors`) VALUES
('UD-102', 'Autumn', 16000),
('UD-102', 'Monsoon', 12000),
('UD-102', 'Spring', 18000),
('UD-102', 'Summer', 20000),
('UD-102', 'Winter', 15000),
('VA-103', 'Autumn', 9000),
('VA-103', 'Monsoon', 7000),
('VA-103', 'Spring', 5000),
('VA-103', 'Summer', 11000),
('VA-103', 'Winter', 6000),
('YA-101', 'Autumn', 18000),
('YA-101', 'Monsoon', 19000),
('YA-101', 'Spring', 21000),
('YA-101', 'Summer', 24000),
('YA-101', 'Winter', 16000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
