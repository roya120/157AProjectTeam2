-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: DEALERSHIP
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `private_data`
--

DROP TABLE IF EXISTS `private_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_data` (
  `email_address` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `phone_number` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` int NOT NULL,
  PRIMARY KEY (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_data`
--

LOCK TABLES `private_data` WRITE;
/*!40000 ALTER TABLE `private_data` DISABLE KEYS */;
INSERT INTO `private_data` VALUES ('alex.yu@yahoo.com','Alex11','Alex','Yu',301548629,'211 Stevens Creek','Cupertino',95014),('dan.zi2@yah.com','Dan7','Dan','Zi',217354826,'565 Melrose Avenue','San Jose',95116),('emmy.tran@gmail.com','Emmy14','Emmy','Tran',509872541,'webster','Oakland',94612),('jack.le@gmail.com','Jack4','Jack','Le',888400787,'Torre Ave','Cupertino',95014),('jar.wili@gmpg.com','William17','William','Jar',913672936,'Martin St','Gilroy',95020),('jen.rod@mahoo.com','Jenny2','Jenny','Rodriguez',324564876,'7660 Monterey Rd','Gilroy',95020),('john.sun2@yahoo.com','John15','John','Sun',372946261,'145 Alameda','San Jose',95126),('johnny.erd@mnail.com','Johnny3','Johnny','Erdman',635293664,'2020 Homestead ','Santa Clara',95050),('mal.mirz@yahoo.com','Mali5','Mali','Mirz',323842817,'20 E first st','Morgan Hill',95037),('mary.jogn@gmail.com','Mary9','Mary','John',769546976,'300 Olin Ave','San Jose',95128),('Nina65.ja@example.com','Nina8','Nina','Lon',735482625,'1700 Depot st','Morgan Hill',95037),('raz.jav@example.com','Raz6','Raz','Javi',732917395,'2112 Bellomy','Santa Clara',95051),('rose.chase@hexun.com','Rose16','Rose','Chase',654927517,'921 Saratoga','Santa Clara',95050),('sam.lui@yahoo.com','Sam12','Sam','Lui',125672947,'560 University Ave','Los Gatos',95032),('sarah.kiani@gmail.com','Sarah10','Sarah','Kiani',669896712,'30  Main st','Los Gatos',95030),('Suzi.tr@example.com','suzi1','Suzi','Tran',876492648,'1462 winchester blvd','san jose',95126);
/*!40000 ALTER TABLE `private_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-20 16:51:58
