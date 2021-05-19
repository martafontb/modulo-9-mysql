-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: optica
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `clients_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` datetime DEFAULT NULL,
  `recommendation` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`clients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'paula','sants 123 08028',63829333,'paula@g.com','2019-04-28 00:00:00','ingrid'),(2,'marc','paris 45 08029',674583922,'marc@g.com','2019-03-12 00:00:00',NULL),(3,'ingrid','diputacio 24 08034',675884499,'ingrid@g.com','2020-07-23 00:00:00',NULL),(4,'toni','balmes 200 08024',645387655,'toni@g.com','2020-08-27 00:00:00',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleat`
--

DROP TABLE IF EXISTS `empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleat` (
  `empleat_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`empleat_id`),
  CONSTRAINT `client_id` FOREIGN KEY (`empleat_id`) REFERENCES `clients` (`clients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleat`
--

LOCK TABLES `empleat` WRITE;
/*!40000 ALTER TABLE `empleat` DISABLE KEYS */;
INSERT INTO `empleat` VALUES (1,'pilar'),(2,'carla'),(3,'jordi');
/*!40000 ALTER TABLE `empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveidor` (
  `proveidor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `NIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`proveidor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor`
--

LOCK TABLES `proveidor` WRITE;
/*!40000 ALTER TABLE `proveidor` DISABLE KEYS */;
INSERT INTO `proveidor` VALUES (1,'optica123','Girona',923817728,46,5000),(2,'lobster123','Lleida',98776624,33,576893),(3,'cold123','Tarragona',977563422,99,5773849),(4,'optica32','Barcelona',937662542,77,548834),(5,'lobster88','Valencia',927883645,22,6773820);
/*!40000 ALTER TABLE `proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidor_ulleres`
--

DROP TABLE IF EXISTS `proveidor_ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveidor_ulleres` (
  `ulleres_id` int(11) NOT NULL,
  `proveidor_id` int(11) NOT NULL,
  `brand` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ulleres_id`,`proveidor_id`),
  KEY `proveidor_id_idx` (`proveidor_id`),
  CONSTRAINT `proveidor_id` FOREIGN KEY (`proveidor_id`) REFERENCES `proveidor` (`proveidor_id`),
  CONSTRAINT `ulleres_id` FOREIGN KEY (`ulleres_id`) REFERENCES `ulleres` (`ulleres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor_ulleres`
--

LOCK TABLES `proveidor_ulleres` WRITE;
/*!40000 ALTER TABLE `proveidor_ulleres` DISABLE KEYS */;
INSERT INTO `proveidor_ulleres` VALUES (1,3,'rayban'),(2,3,'sunban'),(3,1,'soler');
/*!40000 ALTER TABLE `proveidor_ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ulleres` (
  `ulleres_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(200) DEFAULT NULL,
  `graduation` int(11) DEFAULT NULL,
  `frame` varchar(200) DEFAULT NULL,
  `frame color` varchar(200) DEFAULT NULL,
  `glass color` varchar(200) DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`ulleres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,'lobster',-2,'spring','blue','dark',80.00),(2,'rayban',-1,'summer','black','light',59.00),(3,'soler',-1,'spring','brown','dark',70.00),(4,'lereve',0,'summer','red','light',40.00),(5,'sunban',1,'winter','pink','light',87.00),(6,'lovesun',-3,'autum','black','dark',99.00);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_ulleres`
--

DROP TABLE IF EXISTS `venta_ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta_ulleres` (
  `venta_ulleres_id` int(11) NOT NULL,
  `ulleres_id` int(11) NOT NULL,
  `empleat_id` int(11) NOT NULL,
  `clients_id` int(11) NOT NULL,
  PRIMARY KEY (`venta_ulleres_id`,`ulleres_id`,`empleat_id`,`clients_id`),
  KEY `ulleres_id_idx` (`ulleres_id`),
  KEY `fk_empleat_id_idx` (`empleat_id`),
  KEY `fk_clients_id_idx` (`clients_id`),
  CONSTRAINT `fk_clients_id` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`clients_id`),
  CONSTRAINT `fk_empleat_id` FOREIGN KEY (`empleat_id`) REFERENCES `empleat` (`empleat_id`),
  CONSTRAINT `fk_ulleres_id` FOREIGN KEY (`ulleres_id`) REFERENCES `ulleres` (`ulleres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_ulleres`
--

LOCK TABLES `venta_ulleres` WRITE;
/*!40000 ALTER TABLE `venta_ulleres` DISABLE KEYS */;
INSERT INTO `venta_ulleres` VALUES (4,1,2,1),(5,1,3,2),(1,2,1,3),(2,2,1,2),(3,3,3,4);
/*!40000 ALTER TABLE `venta_ulleres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 18:49:10
