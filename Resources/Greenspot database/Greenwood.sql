CREATE DATABASE  IF NOT EXISTS `Greenspot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Greenspot`;
-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: Greenspot
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (100988,'Customer5'),(111000,'Customer6'),(196777,'Customer3'),(198765,'Customer1'),(202900,'Customer2'),(277177,'Customer4');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `ItemNum` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `DateSold` date DEFAULT NULL,
  `Cust` int DEFAULT NULL,
  `QuantitySold` int DEFAULT NULL,
  `ItemType` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Unit` varchar(20) DEFAULT NULL,
  `Vendor` int DEFAULT NULL,
  KEY `Cust` (`Cust`),
  KEY `Vendor` (`Vendor`),
  CONSTRAINT `Inventory_ibfk_1` FOREIGN KEY (`Cust`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `Inventory_ibfk_2` FOREIGN KEY (`Vendor`) REFERENCES `Vendor` (`VendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1000,'Bennet Farm free-range eggs',29,2.35,'2022-02-01',NULL,NULL,198765,25,'Dairy','D12','dozen',1),(1000,'Bennet Farm free-range eggs',27,NULL,'2022-02-02',5.49,'2022-02-02',198765,2,'Dairy','D12','dozen',1),(2000,'Ruby\'s Kale',3,NULL,'2022-02-02',3.99,NULL,NULL,2,'Produce','p12','bunch',3),(1100,'Freshness White beans',13,NULL,'2022-02-02',1.49,'2022-02-02',202900,2,'Canned','a2','12 ounce can',2),(1100,'Freshness White beans',53,0.69,'2022-02-02',NULL,NULL,198765,40,'Canned','a2','12 oz can',2),(1000,'Bennet Farm free-range eggs',25,NULL,'2022-02-04',5.99,'2022-02-04',196777,2,'Dairy','D12','dozen',1),(1100,'Freshness White beans',45,NULL,'2022-02-07',1.49,'2022-02-07',198765,8,'Canned','a2','12-oz can',2),(1222,'Freshness Green beans',59,0.59,'2022-02-10',NULL,NULL,198765,40,'Canned','a3','12 ounce can',2),(1223,'Freshness Green beans',12,1.75,'2022-02-10',NULL,NULL,198765,10,'Canned','a7','36 oz can',2),(1224,'Freshness Wax beans',31,0.65,'2022-02-10',NULL,NULL,198765,30,'Canned','a3','12 ounce can',2),(1000,'Bennet Farm free-range eggs',21,NULL,'2022-02-11',5.49,'2022-02-11',277177,4,'Dairy','d12','dozen',1),(1100,'Freshness White beans',41,NULL,'2022-02-11',1.49,'2022-02-11',198765,4,'Canned','a2','12 ounce can',2),(1222,'Freshness Green beans',47,NULL,'2022-02-12',1.29,'2022-02-12',111000,12,'Canned','a3','12-oz can',2),(1224,'Freshness Wax beans',23,NULL,'2022-02-12',1.55,'2022-02-12',198765,8,'Canned','a3','12-oz can',2),(2000,'Ruby\'s Kale',28,1.29,'2022-02-12',NULL,NULL,111000,25,'Produce','p12','bunch',3),(2001,'Ruby\'s Organic Kale',20,2.19,'2022-02-12',NULL,NULL,198765,20,'Produce','po2','bunch',3),(1223,'Freshness Green beans',7,NULL,'2022-02-13',3.49,'2022-02-13',198765,5,'Canned','a7','36 oz can',2),(2001,'Ruby\'s Organic Kale',19,NULL,'2022-02-13',6.99,'2022-02-13',100988,1,'Produce','po2','bunch',3),(2001,'Ruby\'s Organic Kale',7,NULL,'2022-02-14',6.99,'2022-02-14',202900,12,'Produce','po2','bunch',3),(1223,'Freshness Green beans',17,1.80,'2022-02-15',NULL,NULL,198765,10,'Canned','a7','36 oz can',2),(2000,'Ruby\'s Kale',26,NULL,'2022-02-15',3.99,'2022-02-15',111000,2,'Produce','p12','bunch',3);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vendor`
--

DROP TABLE IF EXISTS `Vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vendor` (
  `VendorID` int NOT NULL,
  `VendorName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vendor`
--

LOCK TABLES `Vendor` WRITE;
/*!40000 ALTER TABLE `Vendor` DISABLE KEYS */;
INSERT INTO `Vendor` VALUES (1,'Bennet Farms, Rt. 17 Evansville, IL 55446'),(2,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678'),(3,'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567');
/*!40000 ALTER TABLE `Vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-16 18:59:40
