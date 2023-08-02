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
-- Table structure for table `visitors_1`
--

DROP TABLE IF EXISTS `visitors_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors_1` (
  `Ticket_no.` varchar(25) NOT NULL,
  `Park_id` char(6) NOT NULL,
  `Date` char(5) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` char(6) DEFAULT NULL,
  `Mobile_no.` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Ticket_no.`,`Park_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors_1`
--

LOCK TABLES `visitors_1` WRITE;
/*!40000 ALTER TABLE `visitors_1` DISABLE KEYS */;
INSERT INTO `visitors_1` VALUES ('UD-102-10/11-1','UD-102','10/11','Swapna',21,'female',9184750253),('UD-102-10/11-2','UD-102','10/11','Rishi',9,'male',9184750253),('UD-102-19/07-1000','UD-102','19/07','Karan',45,'male',9372804567),('VA-103-18/02-8','VA-103','18/02','Madhav',24,'male',8283374925),('VA-103-21/06-67','VA-103','21/06','Riya',5,'female',6194638583),('VA-103-30/07-956','VA-103','30/07','Rithwik',36,'male',9930027856),('YA-101-06/02-603','YA-101','06/02','Pranav',19,'male',9736659927),('YA-101-08/04-909','YA-101','08/04','Hanu',20,'male',6933758926),('YA-101-10/11-83','YA-101','10/11','Divya',51,'female',9983374460),('YA-101-19/04-9','YA-101','19/04','Manas',8,'male',8376629887);
/*!40000 ALTER TABLE `visitors_1` ENABLE KEYS */;
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
