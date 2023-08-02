-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: biodiversity_park_ system
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('UD-102-M1','UD-102','Aarav','manager',25000,7,2015,8173562982),('UD-102-S1','UD-102','Shiva','security',12000,10,2014,7193740360),('UD-102-W1','UD-102','Harshith','worker',15000,8,2012,6193740631),('VA-103-M3','VA-103','Suriya','manager',24000,7,2012,9281763942),('VA-103-S3','VA-103','Charan','security',11000,10,2010,8162736471),('VA-103-W3','VA-103','Arjun','worker',14000,8,2010,9183746509),('YA-101-D2','YA-101','Swathi','doctor',40000,5,2022,9927746638),('YA-101-M2','YA-101','Deekshit','manager',26000,7,2020,8244164779),('YA-101-S2','YA-101','Shiva','security',13000,10,2015,9937746620),('YA-101-W2','YA-101','Ram','worker',16000,8,2016,8176635429);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 22:25:54
