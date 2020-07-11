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
  `user_name` varchar(45) NOT NULL,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `phone_number` int NOT NULL,
  `email_address` varchar(45) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_data`
--

LOCK TABLES `private_data` WRITE;
/*!40000 ALTER TABLE `private_data` DISABLE KEYS */;
INSERT INTO `private_data` VALUES ('Alex11','Alex','Yu',301548629,'alex.yu@yahoo.com'),('Dan7','Dan','Zi',217354826,'dan.zi2@yah.com'),('Emmy14','Emmy','Tran',509872541,'emmy.tran@gmail.com'),('Jack4','Jack','Le',888400787,'jack.le@gmail.com'),('Jenny2','Jenny','Rodriguez',324564876,'jen.rod@mahoo.com'),('John15','John','Sun',372946261,'john.sun2@yahoo.com'),('Johnny3','Johnny','Erdman',635293664,'johnny.erd@mnail.com'),('Mali5','Mali','Mirz',323842817,'mal.mirz@yahoo.com'),('Mary9','Mary','John',769546976,'mary.jogn@gmail.com'),('Nina8','Nina','Lon',735482625,'Nina65.ja@example.com'),('Raz6','Raz','Javi',732917395,'raz.jav@example.com'),('Rose16','Rose','Chase',654927517,'rose.chase@hexun.com'),('Sam12','Sam','Lui',125672947,'sam.lui@yahoo.com'),('Sarah10','Sarah','Kiani',669896712,'sarah.kiani@gmail.com'),('suzi1','Suzi','Tran',876492648,'Suzi.tr@example.com'),('William17','William','Jar',913672936,'jar.wili@gmpg.com');
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

-- Dump completed on 2020-07-11 16:33:18
