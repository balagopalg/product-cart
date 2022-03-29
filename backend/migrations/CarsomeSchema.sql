CREATE DATABASE  IF NOT EXISTS `carsome` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carsome`;
-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: carsome
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` longtext,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Ford Raptor.',NULL,1),(2,'Ferrari Testarossa.',NULL,1),(3,'Porsche 911 Carrera.',NULL,0),(4,'Ferrari 812 Superfast.',NULL,1),(5,'Jeep Gladiator.',NULL,0),(6,'Honda Civic',NULL,1),(7,'Toyota Pajero',NULL,1),(8,'Mini Cooper',NULL,1),(9,'Audi A4',NULL,1),(10,'Honda CR-V',NULL,0),(11,'Toyota Corolla',NULL,1),(12,'Toyota Fortuner',NULL,1);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ratings` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `review` varchar(300) DEFAULT NULL,
  `timestamp` bigint DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `Products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ratings`
--

LOCK TABLES `Ratings` WRITE;
/*!40000 ALTER TABLE `Ratings` DISABLE KEYS */;
INSERT INTO `Ratings` VALUES (21,1,5.00,'Nice',1648371393643),(22,2,1.50,'Not Good',1648371504022),(23,2,4.50,'Good',1648371523788),(24,2,3.00,'Average',1648371864183),(25,4,3.50,'Average',1648371882507),(26,4,1.00,'Not Good',1648371895530),(27,4,3.00,'Awesome',1648371917379),(28,9,4.00,'Usable',1648371917379),(29,11,2.00,'Bad Quality',1648371917379),(30,9,3.00,'Great Car',1648371917379),(31,7,1.00,'Milage is poor',1648371882507),(32,12,4.00,'Great',1648478137667),(33,11,2.50,'Checking',1648480323320),(34,11,2.00,'Bad',1648480661230),(35,12,3.00,'Okay',1648482218117),(36,7,4.00,'Good Car',1648484022698),(37,7,3.00,'Average Performance',1648484053738),(38,8,5.00,'Mini is cool',1648484067854),(39,8,3.00,'stylish',1648484079805),(40,4,4.20,'Awesome',1648484920673),(42,11,1.00,'Dont buy',1648484984356),(43,6,4.50,'Awesome',1648485093047),(44,4,5.00,'Wonderful',1648486130389),(45,4,4.00,'Cant send',1648486160372);
/*!40000 ALTER TABLE `Ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29  8:49:49
