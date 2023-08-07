-- TEST USER
CREATE USER 'admin'@'%' IDENTIFIED BY 'admin'; 
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%'; 
FLUSH PRIVILEGES;

CREATE DATABASE  IF NOT EXISTS `museum_visit` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `museum_visit`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: museum_visit
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `museum`
--

DROP TABLE IF EXISTS `museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `museum` (
  `Museum_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Num_of_Staff` int DEFAULT NULL,
  `Open_Year` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Museum_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museum`
--

LOCK TABLES `museum` WRITE;
/*!40000 ALTER TABLE `museum` DISABLE KEYS */;
INSERT INTO `museum` VALUES (1,'Plaza Museum',62,'2000'),(2,'Capital Plaza Museum',25,'2012'),(3,'Jefferson Development Museum',18,'2010'),(4,'Willow Grande Museum',17,'2011'),(5,'RiverPark Museum',16,'2008'),(6,'Place Tower Museum',16,'2008'),(7,'Central City District Residential Museum',15,'2010'),(8,'ZirMed Gateway Museum',12,'2009');
/*!40000 ALTER TABLE `museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `Museum_ID` int NOT NULL,
  `visitor_ID` int NOT NULL,
  `Num_of_Ticket` int DEFAULT NULL,
  `Total_spent` double DEFAULT NULL,
  PRIMARY KEY (`Museum_ID`,`visitor_ID`),
  KEY `visit_FK_0_0` (`visitor_ID`),
  CONSTRAINT `visit_FK_0_0` FOREIGN KEY (`visitor_ID`) REFERENCES `visitor` (`ID`),
  CONSTRAINT `visit_FK_1_0` FOREIGN KEY (`Museum_ID`) REFERENCES `museum` (`Museum_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,5,20,320.14),(2,3,24,209.98),(2,5,4,89.98),(4,3,10,320.44),(4,6,3,20.44),(8,6,2,19.98);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Level_of_membership` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'Gonzalo Higuaín ',8,35),(2,'Guti Midfielder',5,28),(3,'Arjen Robben',1,27),(4,'Raúl Brown',2,56),(5,'Fernando Gago',6,36),(6,'Rafael van der Vaart',1,25);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `course_teach` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `course_teach`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: course_teach
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Course_ID` int NOT NULL AUTO_INCREMENT,
  `Staring_Date` text COLLATE utf8mb4_general_ci,
  `Course` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'5 May','Language Arts'),(2,'6 May','Math'),(3,'7 May','Science'),(4,'9 May','History'),(5,'10 May','Bible'),(6,'11 May','Geography'),(7,'13 May','Sports'),(8,'14 May','French'),(9,'15 May','Health'),(10,'17 May','Music');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_arrange`
--

DROP TABLE IF EXISTS `course_arrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_arrange` (
  `Course_ID` int NOT NULL,
  `Teacher_ID` int NOT NULL,
  `Grade` int NOT NULL,
  PRIMARY KEY (`Course_ID`,`Teacher_ID`,`Grade`),
  KEY `course_arrange_FK_0_0` (`Teacher_ID`),
  CONSTRAINT `course_arrange_FK_0_0` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher` (`Teacher_ID`),
  CONSTRAINT `course_arrange_FK_1_0` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_arrange`
--

LOCK TABLES `course_arrange` WRITE;
/*!40000 ALTER TABLE `course_arrange` DISABLE KEYS */;
INSERT INTO `course_arrange` VALUES (3,2,5),(2,3,3),(2,5,1),(4,6,7),(5,6,1),(10,7,4);
/*!40000 ALTER TABLE `course_arrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `Teacher_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Age` text COLLATE utf8mb4_general_ci,
  `Hometown` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Teacher_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Joseph Huts','32','Blackrod Urban District'),(2,'Gustaaf Deloor','29','Bolton County Borough'),(3,'Vicente Carretero','26','Farnworth Municipal Borough'),(4,'John Deloor','33','Horwich Urban District'),(5,'Kearsley Brown','45','Kearsley Urban District'),(6,'Anne Walker','41','Little Lever Urban District'),(7,'Lucy Wong','39','Turton Urban District');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `singer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `singer`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: singer
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer` (
  `Singer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Birth_Year` double DEFAULT NULL,
  `Net_Worth_Millions` double DEFAULT NULL,
  `Citizenship` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Singer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'Liliane Bettencourt',1944,30,'France'),(2,'Christy Walton',1948,28.8,'United States'),(3,'Alice Walton',1949,26.3,'United States'),(4,'Iris Fontbona',1942,17.4,'Chile'),(5,'Jacqueline Mars',1940,17.8,'United States'),(6,'Gina Rinehart',1953,17,'Australia'),(7,'Susanne Klatten',1962,14.3,'Germany'),(8,'Abigail Johnson',1961,12.7,'United States');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `Song_ID` int NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_general_ci,
  `Singer_ID` int DEFAULT NULL,
  `Sales` double DEFAULT NULL,
  `Highest_Position` double DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `song_FK_0_0` (`Singer_ID`),
  CONSTRAINT `song_FK_0_0` FOREIGN KEY (`Singer_ID`) REFERENCES `singer` (`Singer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Do They Know It\'s Christmas',1,1094000,1),(2,'F**k It (I Don\'t Want You Back)',1,552407,1),(3,'Cha Cha Slide',2,351421,1),(4,'Call on Me',4,335000,1),(5,'Yeah',2,300000,1),(6,'All This Time',6,292000,1),(7,'Left Outside Alone',5,275000,3),(8,'Mysterious Girl',7,261000,1);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `orchestra` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `orchestra`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: orchestra
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `Conductor_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Age` int DEFAULT NULL,
  `Nationality` text COLLATE utf8mb4_general_ci,
  `Year_of_Work` int DEFAULT NULL,
  PRIMARY KEY (`Conductor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Antal Doráti',40,'USA',10),(2,'Igor Stravinsky',41,'UK',11),(3,'Colin Davis',42,'USA',6),(4,'Paul Jorgensen',43,'UK',11),(5,'Antal Brown',43,'USA',20),(6,'Charles Dutoit',43,'France',12),(7,'Gerard Schwarz',50,'USA',20),(8,'Pierre Boulez',49,'UK',11),(9,'Valeri Gergiev',47,'USA',16),(10,'Robert Craft',63,'UK',21),(11,'Seiji Ozawa',43,'USA',10),(12,'Michael Tilson Thomas',42,'France',12);
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orchestra`
--

DROP TABLE IF EXISTS `orchestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orchestra` (
  `Orchestra_ID` int NOT NULL AUTO_INCREMENT,
  `Orchestra` text COLLATE utf8mb4_general_ci,
  `Conductor_ID` int DEFAULT NULL,
  `Record_Company` text COLLATE utf8mb4_general_ci,
  `Year_of_Founded` double DEFAULT NULL,
  `Major_Record_Format` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Orchestra_ID`),
  KEY `orchestra_FK_0_0` (`Conductor_ID`),
  CONSTRAINT `orchestra_FK_0_0` FOREIGN KEY (`Conductor_ID`) REFERENCES `conductor` (`Conductor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orchestra`
--

LOCK TABLES `orchestra` WRITE;
/*!40000 ALTER TABLE `orchestra` DISABLE KEYS */;
INSERT INTO `orchestra` VALUES (1,'London Symphony Orchestra',1,'Mercury Records',2003,'CD'),(2,'Columbia Symphony Orchestra',2,'Columbia Masterworks',2009,'CD / LP'),(3,'Royal Concertgebouw Orchestra',3,'Philips',2008,'CD'),(4,'Royal Danish Orchestra',4,'Kultur',2002,'DVD'),(5,'Detroit Symphony Orchestra',5,'Decca Records',2002,'CD'),(6,'Montreal Symphony Orchestra',6,'Decca Records',2004,'CD'),(7,'Seattle Symphony Orchestra',7,'Delos Records',2002,'CD'),(8,'Chicago Symphony Orchestra',8,'Deutsche Grammophon',2003,'CD'),(9,'Kirov Orchestra',9,'Philips Classics Records',2008,'CD'),(10,'Philharmonia Orchestra',10,'Koch Records / Naxos Records',2006,'CD'),(11,'Orchestre de Paris',11,'EMI',2007,'CD'),(12,'San Francisco Symphony Orchestra',12,'RCA',2008,'CD');
/*!40000 ALTER TABLE `orchestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `Performance_ID` int NOT NULL AUTO_INCREMENT,
  `Orchestra_ID` int DEFAULT NULL,
  `Type` text COLLATE utf8mb4_general_ci,
  `Date` text COLLATE utf8mb4_general_ci,
  `Official_ratings_(millions)` double DEFAULT NULL,
  `Weekly_rank` text COLLATE utf8mb4_general_ci,
  `Share` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Performance_ID`),
  KEY `performance_FK_0_0` (`Orchestra_ID`),
  CONSTRAINT `performance_FK_0_0` FOREIGN KEY (`Orchestra_ID`) REFERENCES `orchestra` (`Orchestra_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,1,'Auditions 1','9 June',5.2,'12','22.7%'),(2,2,'Auditions 2','10 June',6.73,'8','28.0%'),(3,3,'Auditions 3','11 June',7.28,'15','29.4%'),(4,4,'Auditions 4','12 June',7.39,'13','29.3%'),(5,5,'Auditions 5','13 June',7.51,'11','29.2%'),(6,6,'Semi-final 2','15 June',9.28,'8','38.1%'),(7,7,'Semi-final 3','16 June',9.29,'7','40.9%'),(8,8,'Live final','17 June',11.58,'1','43.7%'),(9,9,'Live final results','17 June',11.45,'2','44.7%'),(10,10,'Series average','2007',8.38,'TBC','34%'),(11,11,'Semi-final 1','14 June',8.36,'9','34.0%');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show`
--

DROP TABLE IF EXISTS `show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show` (
  `Show_ID` int DEFAULT NULL,
  `Performance_ID` int DEFAULT NULL,
  `If_first_show` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Result` text COLLATE utf8mb4_general_ci,
  `Attendance` double DEFAULT NULL,
  KEY `show_FK_0_0` (`Performance_ID`),
  CONSTRAINT `show_FK_0_0` FOREIGN KEY (`Performance_ID`) REFERENCES `performance` (`Performance_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show`
--

LOCK TABLES `show` WRITE;
/*!40000 ALTER TABLE `show` DISABLE KEYS */;
INSERT INTO `show` VALUES (1,1,'Glebe Park','T',1026),(2,2,'Fir Park','T',695),(3,3,'St. Mirren Park','F',555),(4,4,'St. Mirren Park','F',1925),(5,5,'Hampden Park','T',2431);
/*!40000 ALTER TABLE `show` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `flight_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flight_2`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: flight_2
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `AIRLINES`
--

DROP TABLE IF EXISTS `AIRLINES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AIRLINES` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `Airline` text COLLATE utf8mb4_general_ci,
  `Abbreviation` text COLLATE utf8mb4_general_ci,
  `Country` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AIRLINES`
--

LOCK TABLES `AIRLINES` WRITE;
/*!40000 ALTER TABLE `AIRLINES` DISABLE KEYS */;
INSERT INTO `AIRLINES` VALUES (1,'United Airlines','UAL','USA'),(2,'US Airways','USAir','USA'),(3,'Delta Airlines','Delta','USA'),(4,'Southwest Airlines','Southwest','USA'),(5,'American Airlines','American','USA'),(6,'Northwest Airlines','Northwest','USA'),(7,'Continental Airlines','Continental','USA'),(8,'JetBlue Airways','JetBlue','USA'),(9,'Frontier Airlines','Frontier','USA'),(10,'AirTran Airways','AirTran','USA'),(11,'Allegiant Air','Allegiant','USA'),(12,'Virgin America','Virgin','USA');
/*!40000 ALTER TABLE `AIRLINES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AIRPORTS`
--

DROP TABLE IF EXISTS `AIRPORTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AIRPORTS` (
  `City` text COLLATE utf8mb4_general_ci,
  `AirportCode` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `AirportName` text COLLATE utf8mb4_general_ci,
  `Country` text COLLATE utf8mb4_general_ci,
  `CountryAbbrev` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`AirportCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AIRPORTS`
--

LOCK TABLES `AIRPORTS` WRITE;
/*!40000 ALTER TABLE `AIRPORTS` DISABLE KEYS */;
INSERT INTO `AIRPORTS` VALUES ('Apalachicola ','AAF','Municipal ','United States ','US '),('Abilene ','ABI','Municipal ','United States ','US '),('Ambler ','ABL','Ambler ','United States ','US '),('Albuquerque ','ABQ','Albuquerque International ','United States ','US '),('Aberdeen ','ABR','Municipal ','United States ','US '),('Albany ','ABY','Dougherty County ','United States ','US '),('Arcata ','ACV','Arcata ','United States ','US '),('Adrian ','ADG','Lenawee County ','United States ','US '),('Adak Island ','ADK','Adak Island Ns ','United States ','US '),('Ardmore ','ADM','Ardmore Municipal Arpt ','United States ','US '),('Andrews ','ADR','Andrews ','United States ','US '),('Ada ','ADT','Ada ','United States ','US '),('Aleneva ','AED','Aleneva ','United States ','US '),('Albert Lea ','AEL','Albert Lea ','United States ','US '),('Allakaket ','AET','Allakaket ','United States ','US '),('Alexandria LA ','AEX','Alexandria International ','United States ','US '),('Afton ','AFO','Municipal ','United States ','US '),('Angoon ','AGN','Angoon ','United States ','US '),('Ardmore ','AHD','Downtown ','United States ','US '),('Arapahoe ','AHF','Municipal ','United States ','US '),('Amery ','AHH','Municipal ','United States ','US '),('Athens ','AHN','Athens ','United States ','US '),('Amchitka ','AHT','Amchitka ','United States ','US '),('Alliance ','AIA','Alliance ','United States ','US '),('Anita Bay ','AIB','Anita Bay ','United States ','US '),('Anderson ','AID','Municipal ','United States ','US '),('Aiken ','AIK','Municipal ','United States ','US '),('Aliceville AL ','AIV','George Downer ','United States ','US '),('Akron/Canton ','AKC','Fulton International ','United States ','US '),('Akiak ','AKI','Akiak ','United States ','US '),('Akhiok ','AKK','Akhiok SPB ','United States ','US '),('Akron CO ','AKO','Colorado Plains Regional Airport ','United States ','US '),('Anaktuvuk ','AKP','Anaktuvuk ','United States ','US '),('Albany ','ALB','Albany International ','United States ','US '),('Alpine ','ALE','Alpine ','United States ','US '),('Alice ','ALI','International ','United States ','US '),('Alamogordo ','ALM','Municipal ','United States ','US '),('Alton ','ALN','Alton ','United States ','US '),('Alamosa ','ALS','Municipal ','United States ','US '),('Alexander City AL ','ALX','Thomas C Russell Fld ','United States ','US '),('Alitak ','ALZ','Alitak SPB ','United States ','US '),('Amarillo  ','AMA','Rick Husband Amarillo International ','United States ','US '),('Alma ','AMN','Gratiot Community ','United States ','US '),('Ames ','AMW','Ames ','United States ','US '),('Anaheim ','ANA','Orange County Steel Salvage Heliport ','United States ','US '),('Anniston AL ','ANB','Anniston Metropolitan ','United States ','US '),('Anchorage ','ANC','Ted Stevens Anchorage International Airport ','United States ','US '),('Anderson ','AND','Anderson ','United States ','US '),('Aniak ','ANI','Aniak ','United States ','US '),('Annette Island ','ANN','Annette Island ','United States ','US '),('Annapolis ','ANP','Lee ','United States ','US '),('Angola ','ANQ','Tri-State Steuben Cty ','United States ','US '),('Anvik ','ANV','Anvik ','United States ','US '),('Ainsworth ','ANW','Ainsworth ','United States ','US '),('Anthony ','ANY','Anthony ','United States ','US '),('Amook ','AOS','Amook ','United States ','US '),('Aberdeen ','APG','Phillips AAF ','United States ','US '),('Alpena ','APN','Alpena County Regional ','United States ','US '),('Apple Valley ','APV','Apple Valley ','United States ','US '),('Alyeska ','AQY','Alyeska ','United States ','US '),('Ann Arbor MI ','ARB','Municipal ','United States ','US '),('Arctic Village ','ARC','Arctic Village ','United States ','US '),('Neptune ','ARX','Asbury Park ','United States ','US '),('Aspen ','ASE','Aspen ','United States ','US '),('Astoria ','AST','Astoria ','United States ','US '),('Ashland ','ASX','Ashland ','United States ','US '),('Ashley ','ASY','Ashley ','United States ','US '),('Antlers ','ATE','Antlers ','United States ','US '),('Athens ','ATO','Ohio University ','United States ','US '),('Artesia ','ATS','Artesia ','United States ','US '),('Appleton ','ATW','Outagamie County ','United States ','US '),('Alakanuk ','AUK','Alakanuk ','United States ','US '),('Alexandria Bay ','AXB','Alexandria Bay ','United States ','US '),('Algona ','AXG','Algona ','United States ','US '),('Alexandria ','AXN','Alexandria ','United States ','US '),('Altus ','AXS','Municipal ','United States ','US '),('Angel Fire ','AXX','Angel Fire ','United States ','US '),('Amityville ','AYZ','Zahns ','United States ','US '),('Akron/Canton OH ','CAK','Akron/canton Regional ','United States ','US '),('Albany ','CVO','Albany ','United States ','US '),('Abilene ','DYS','Dyess AFB ','United States ','US '),('Anchorage ','EDF','Elmendorf Afb ','United States ','US '),('Alexandria ','ESF','Esler Field ','United States ','US '),('Alamogordo ','HMN','Holloman AFB ','United States ','US '),('Arlington Heights ','JLH','US Army Heliport ','United States ','US '),('Akiachak ','KKI','Spb ','United States ','US '),('Akutan ','KQA','Akutan ','United States ','US '),('Altus ','LTS','Altus AFB ','United States ','US '),('Athens ','MMI','McMinn County ','United States ','US '),('Anchorage ','MRI','Merrill Field ','United States ','US '),('Albany ','NAB','Albany NAS ','United States ','US '),('Anacostia ','NDV','USN Heliport ','United States ','US '),('Alameda ','NGZ','NAS ','United States ','US '),('Anacortes ','OTS','Anacortes ','United States ','US '),('Anniston ','QAW','Ft Mcclellan Bus Trml ','United States ','US '),('Anguilla ','RFK','Rollang Field ','United States ','US '),('Anniston ','RLI','Reilly AHP ','United States ','US '),('Amarillo ','TDW','Tradewind ','United States ','US '),('Abingdon ','VJI','Virginia Highlands ','United States ','US '),('Aleknagik ','WKK','Aleknagik ','United States ','US ');
/*!40000 ALTER TABLE `AIRPORTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FLIGHTS`
--

DROP TABLE IF EXISTS `FLIGHTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FLIGHTS` (
  `Airline` int NOT NULL,
  `FlightNo` int NOT NULL,
  `SourceAirport` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DestAirport` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Airline`,`FlightNo`),
  KEY `flights_FK_0_0` (`DestAirport`),
  KEY `flights_FK_1_0` (`SourceAirport`),
  CONSTRAINT `flights_FK_0_0` FOREIGN KEY (`DestAirport`) REFERENCES `AIRPORTS` (`AirportCode`),
  CONSTRAINT `flights_FK_1_0` FOREIGN KEY (`SourceAirport`) REFERENCES `AIRPORTS` (`AirportCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FLIGHTS`
--

LOCK TABLES `FLIGHTS` WRITE;
/*!40000 ALTER TABLE `FLIGHTS` DISABLE KEYS */;
INSERT INTO `FLIGHTS` VALUES (1,28,'APG','ASY'),(2,15,'ALX','APV'),(2,18,'MRI','OTS'),(2,19,'OTS','MRI'),(2,64,'VJI','AOS'),(2,65,'AOS','VJI'),(2,88,'AGN','AXX'),(2,89,'AXX','AGN'),(2,124,'OTS','ALZ'),(2,125,'ALZ','OTS'),(2,142,'ABQ','ADM'),(2,143,'ADM','ABQ'),(3,245,'AHT','EDF'),(3,268,'AMW','AHN'),(3,269,'AHN','AMW'),(3,284,'AXB','AXN'),(3,285,'AXN','AXB'),(3,300,'ASY','ALE'),(3,301,'ALE','ASY'),(3,334,'ALI','ATW'),(3,335,'ATW','ALI'),(4,10,'ASY','ATS'),(4,11,'ATS','ASY'),(4,32,'ALX','OTS'),(4,33,'OTS','ALX'),(4,34,'ADR','ATS'),(4,35,'ATS','ADR'),(4,56,'AET','AKI'),(4,57,'AKI','AET'),(4,62,'AEX','MRI'),(4,545,'QAW','LTS'),(4,546,'ANY','AKC'),(4,547,'AKC','ANY'),(4,558,'AGN','AHN'),(4,559,'AHN','AGN'),(4,564,'AYZ','AED'),(4,565,'AED','AYZ'),(4,582,'AXX','WKK'),(4,583,'WKK','AXX'),(5,386,'NDV','EDF'),(5,387,'EDF','NDV'),(5,412,'ALS','AHT'),(5,413,'AHT','ALS'),(5,432,'APV','TDW'),(5,433,'TDW','APV'),(5,468,'CVO','AXS'),(5,469,'AXS','CVO'),(5,484,'QAW','MMI'),(5,485,'MMI','QAW'),(5,504,'ASX','AND');
/*!40000 ALTER TABLE `FLIGHTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `wta_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wta_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: wta_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `first_name` text COLLATE utf8mb4_general_ci,
  `last_name` text COLLATE utf8mb4_general_ci,
  `hand` text COLLATE utf8mb4_general_ci,
  `birth_date` date DEFAULT NULL,
  `country_code` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--
DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `best_of` int DEFAULT NULL,
  `draw_size` int DEFAULT NULL,
  `loser_age` float DEFAULT NULL,
  `loser_entry` text COLLATE utf8mb4_general_ci,
  `loser_hand` text COLLATE utf8mb4_general_ci,
  `loser_ht` int DEFAULT NULL,
  `loser_id` int DEFAULT NULL,
  `loser_ioc` text COLLATE utf8mb4_general_ci,
  `loser_name` text COLLATE utf8mb4_general_ci,
  `loser_rank` int DEFAULT NULL,
  `loser_rank_points` int DEFAULT NULL,
  `loser_seed` int DEFAULT NULL,
  `match_num` int DEFAULT NULL,
  `minutes` int DEFAULT NULL,
  `round` text COLLATE utf8mb4_general_ci,
  `score` text COLLATE utf8mb4_general_ci,
  `surface` text COLLATE utf8mb4_general_ci,
  `tourney_date` date DEFAULT NULL,
  `tourney_id` text COLLATE utf8mb4_general_ci,
  `tourney_level` text COLLATE utf8mb4_general_ci,
  `tourney_name` text COLLATE utf8mb4_general_ci,
  `winner_age` float DEFAULT NULL,
  `winner_entry` text COLLATE utf8mb4_general_ci,
  `winner_hand` text COLLATE utf8mb4_general_ci,
  `winner_ht` int DEFAULT NULL,
  `winner_id` int DEFAULT NULL,
  `winner_ioc` text COLLATE utf8mb4_general_ci,
  `winner_name` text COLLATE utf8mb4_general_ci,
  `winner_rank` int DEFAULT NULL,
  `winner_rank_points` int DEFAULT NULL,
  `winner_seed` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  KEY `matches_FK_0_0` (`winner_id`),
  KEY `matches_FK_1_0` (`loser_id`),
  CONSTRAINT `matches_FK_0_0` FOREIGN KEY (`winner_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `matches_FK_1_0` FOREIGN KEY (`loser_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualifying_matches`
--

DROP TABLE IF EXISTS `qualifying_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualifying_matches` (
  `best_of` int DEFAULT NULL,
  `draw_size` int DEFAULT NULL,
  `l_1stIn` text COLLATE utf8mb4_general_ci,
  `l_1stWon` text COLLATE utf8mb4_general_ci,
  `l_2ndWon` text COLLATE utf8mb4_general_ci,
  `l_SvGms` text COLLATE utf8mb4_general_ci,
  `l_ace` text COLLATE utf8mb4_general_ci,
  `l_bpFaced` text COLLATE utf8mb4_general_ci,
  `l_bpSaved` text COLLATE utf8mb4_general_ci,
  `l_df` text COLLATE utf8mb4_general_ci,
  `l_svpt` text COLLATE utf8mb4_general_ci,
  `loser_age` float DEFAULT NULL,
  `loser_entry` text COLLATE utf8mb4_general_ci,
  `loser_hand` text COLLATE utf8mb4_general_ci,
  `loser_ht` int DEFAULT NULL,
  `loser_id` int DEFAULT NULL,
  `loser_ioc` text COLLATE utf8mb4_general_ci,
  `loser_name` text COLLATE utf8mb4_general_ci,
  `loser_rank` int DEFAULT NULL,
  `loser_rank_points` int DEFAULT NULL,
  `loser_seed` int DEFAULT NULL,
  `match_num` int DEFAULT NULL,
  `minutes` int DEFAULT NULL,
  `round` text COLLATE utf8mb4_general_ci,
  `score` text COLLATE utf8mb4_general_ci,
  `surface` text COLLATE utf8mb4_general_ci,
  `tourney_date` date DEFAULT NULL,
  `tourney_id` text COLLATE utf8mb4_general_ci,
  `tourney_level` text COLLATE utf8mb4_general_ci,
  `tourney_name` text COLLATE utf8mb4_general_ci,
  `w_1stIn` text COLLATE utf8mb4_general_ci,
  `w_1stWon` text COLLATE utf8mb4_general_ci,
  `w_2ndWon` text COLLATE utf8mb4_general_ci,
  `w_SvGms` text COLLATE utf8mb4_general_ci,
  `w_ace` text COLLATE utf8mb4_general_ci,
  `w_bpFaced` text COLLATE utf8mb4_general_ci,
  `w_bpSaved` text COLLATE utf8mb4_general_ci,
  `w_df` text COLLATE utf8mb4_general_ci,
  `w_svpt` text COLLATE utf8mb4_general_ci,
  `winner_age` float DEFAULT NULL,
  `winner_entry` text COLLATE utf8mb4_general_ci,
  `winner_hand` text COLLATE utf8mb4_general_ci,
  `winner_ht` int DEFAULT NULL,
  `winner_id` int DEFAULT NULL,
  `winner_ioc` text COLLATE utf8mb4_general_ci,
  `winner_name` text COLLATE utf8mb4_general_ci,
  `winner_rank` int DEFAULT NULL,
  `winner_rank_points` int DEFAULT NULL,
  `winner_seed` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  KEY `qualifying_matches_FK_0_0` (`winner_id`),
  KEY `qualifying_matches_FK_1_0` (`loser_id`),
  CONSTRAINT `qualifying_matches_FK_0_0` FOREIGN KEY (`winner_id`) REFERENCES `players` (`player_id`),
  CONSTRAINT `qualifying_matches_FK_1_0` FOREIGN KEY (`loser_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifying_matches`
--

LOCK TABLES `qualifying_matches` WRITE;
/*!40000 ALTER TABLE `qualifying_matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualifying_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rankings`
--

DROP TABLE IF EXISTS `rankings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rankings` (
  `ranking_date` date DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  `ranking_points` int DEFAULT NULL,
  `tours` int DEFAULT NULL,
  KEY `rankings_FK_0_0` (`player_id`),
  CONSTRAINT `rankings_FK_0_0` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rankings`
--

LOCK TABLES `rankings` WRITE;
/*!40000 ALTER TABLE `rankings` DISABLE KEYS */;
/*!40000 ALTER TABLE `rankings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `pets_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pets_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: pets_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `has_pet`
--

DROP TABLE IF EXISTS `has_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_pet` (
  `StuID` int DEFAULT NULL,
  `PetID` int DEFAULT NULL,
  KEY `Has_Pet_FK_0_0` (`StuID`),
  KEY `Has_Pet_FK_1_0` (`PetID`),
  CONSTRAINT `Has_Pet_FK_0_0` FOREIGN KEY (`StuID`) REFERENCES `student` (`StuID`),
  CONSTRAINT `Has_Pet_FK_1_0` FOREIGN KEY (`PetID`) REFERENCES `pets` (`PetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pet`
--

LOCK TABLES `has_pet` WRITE;
/*!40000 ALTER TABLE `has_pet` DISABLE KEYS */;
INSERT INTO `has_pet` VALUES (1001,2001),(1002,2002),(1002,2003);
/*!40000 ALTER TABLE `has_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `PetID` int NOT NULL AUTO_INCREMENT,
  `PetType` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pet_age` int DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`PetID`)
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (2001,'cat',3,12),(2002,'dog',2,13.4),(2003,'dog',1,9.3);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StuID` int NOT NULL AUTO_INCREMENT,
  `LName` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fname` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Sex` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Major` int DEFAULT NULL,
  `Advisor` int DEFAULT NULL,
  `city_code` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`StuID`)
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1001,'Smith','Linda',18,'F',600,1121,'BAL'),(1002,'Kim','Tracy',19,'F',600,7712,'HKG'),(1003,'Jones','Shiela',21,'F',600,7792,'WAS'),(1004,'Kumar','Dinesh',20,'M',600,8423,'CHI'),(1005,'Gompers','Paul',26,'M',600,1121,'YYZ'),(1006,'Schultz','Andy',18,'M',600,1148,'BAL'),(1007,'Apap','Lisa',18,'F',600,8918,'PIT'),(1008,'Nelson','Jandy',20,'F',600,9172,'BAL'),(1009,'Tai','Eric',19,'M',600,2192,'YYZ'),(1010,'Lee','Derek',17,'M',600,2192,'HOU'),(1011,'Adams','David',22,'M',600,1148,'PHL'),(1012,'Davis','Steven',20,'M',600,7723,'PIT'),(1014,'Norris','Charles',18,'M',600,8741,'DAL'),(1015,'Lee','Susan',16,'F',600,8721,'HKG'),(1016,'Schwartz','Mark',17,'M',600,2192,'DET'),(1017,'Wilson','Bruce',27,'M',600,1148,'LON'),(1018,'Leighton','Michael',20,'M',600,1121,'PIT'),(1019,'Pang','Arthur',18,'M',600,2192,'WAS'),(1020,'Thornton','Ian',22,'M',520,7271,'NYC'),(1021,'Andreou','George',19,'M',520,8722,'NYC'),(1022,'Woods','Michael',17,'M',540,8722,'PHL'),(1023,'Shieber','David',20,'M',520,8722,'NYC'),(1024,'Prater','Stacy',18,'F',540,7271,'BAL'),(1025,'Goldman','Mark',18,'M',520,7134,'PIT'),(1026,'Pang','Eric',19,'M',520,7134,'HKG'),(1027,'Brody','Paul',18,'M',520,8723,'LOS'),(1028,'Rugh','Eric',20,'M',550,2311,'ROC'),(1029,'Han','Jun',17,'M',100,2311,'PEK'),(1030,'Cheng','Lisa',21,'F',550,2311,'SFO'),(1031,'Smith','Sarah',20,'F',550,8772,'PHL'),(1032,'Brown','Eric',20,'M',550,8772,'ATL'),(1033,'Simms','William',18,'M',550,8772,'NAR'),(1034,'Epp','Eric',18,'M',50,5718,'BOS'),(1035,'Schmidt','Sarah',26,'F',50,5718,'WAS');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `voter_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `voter_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: voter_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `area_code_state`
--

DROP TABLE IF EXISTS `area_code_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_code_state` (
  `area_code` int NOT NULL AUTO_INCREMENT,
  `state` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `sqlite_autoindex_AREA_CODE_STATE_1` (`area_code`)
) ENGINE=InnoDB AUTO_INCREMENT=990 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_code_state`
--

LOCK TABLES `area_code_state` WRITE;
/*!40000 ALTER TABLE `area_code_state` DISABLE KEYS */;
INSERT INTO `area_code_state` VALUES (201,'NJ'),(202,'DC'),(203,'CT'),(205,'AL'),(206,'WA'),(207,'ME'),(208,'ID'),(209,'CA'),(210,'TX'),(212,'NY'),(213,'CA'),(214,'TX'),(215,'PA'),(216,'OH'),(217,'IL'),(218,'MN'),(219,'IN'),(224,'IL'),(225,'LA'),(228,'MS'),(229,'GA'),(231,'MI'),(234,'OH'),(236,'VA'),(239,'FL'),(240,'MD'),(248,'MI'),(251,'AL'),(252,'NC'),(253,'WA'),(254,'TX'),(256,'AL'),(260,'IN'),(262,'WI'),(267,'PA'),(269,'MI'),(270,'KY'),(276,'VA'),(278,'MI'),(281,'TX'),(283,'OH'),(301,'MD'),(302,'DE'),(303,'CO'),(304,'WV'),(305,'FL'),(307,'WY'),(308,'NE'),(309,'IL'),(310,'CA'),(312,'IL'),(313,'MI'),(314,'MO'),(315,'NY'),(316,'KS'),(317,'IN'),(318,'LA'),(319,'IA'),(320,'MN'),(321,'FL'),(323,'CA'),(325,'TX'),(330,'OH'),(331,'IL'),(334,'AL'),(336,'NC'),(337,'LA'),(339,'MA'),(341,'CA'),(347,'NY'),(351,'MA'),(352,'FL'),(360,'WA'),(361,'TX'),(369,'CA'),(380,'OH'),(385,'UT'),(386,'FL'),(401,'RI'),(402,'NE'),(404,'GA'),(405,'OK'),(406,'MT'),(407,'FL'),(408,'CA'),(409,'TX'),(410,'MD'),(412,'PA'),(413,'MA'),(414,'WI'),(415,'CA'),(417,'MO'),(419,'OH'),(423,'TN'),(424,'CA'),(425,'WA'),(430,'TX'),(432,'TX'),(434,'VA'),(435,'UT'),(440,'OH'),(442,'CA'),(443,'MD'),(464,'IL'),(469,'TX'),(470,'GA'),(475,'CT'),(478,'GA'),(479,'AR'),(480,'AZ'),(484,'PA'),(501,'AR'),(502,'KY'),(503,'OR'),(504,'LA'),(505,'NM'),(507,'MN'),(508,'MA'),(509,'WA'),(510,'CA'),(512,'TX'),(513,'OH'),(515,'IA'),(516,'NY'),(517,'MI'),(518,'NY'),(520,'AZ'),(530,'CA'),(540,'VA'),(541,'OR'),(551,'NJ'),(557,'MO'),(559,'CA'),(561,'FL'),(562,'CA'),(563,'IA'),(564,'WA'),(567,'OH'),(570,'PA'),(571,'VA'),(573,'MO'),(574,'IN'),(575,'NM'),(580,'OK'),(585,'NY'),(586,'MI'),(601,'MS'),(602,'AZ'),(603,'NH'),(605,'SD'),(606,'KY'),(607,'NY'),(608,'WI'),(609,'NJ'),(610,'PA'),(612,'MN'),(614,'OH'),(615,'TN'),(616,'MI'),(617,'MA'),(618,'IL'),(619,'CA'),(620,'KS'),(623,'AZ'),(626,'CA'),(627,'CA'),(628,'CA'),(630,'IL'),(631,'NY'),(636,'MO'),(641,'IA'),(646,'NY'),(650,'CA'),(651,'MN'),(660,'MO'),(661,'CA'),(662,'MS'),(669,'CA'),(678,'GA'),(679,'MI'),(682,'TX'),(689,'FL'),(701,'ND'),(702,'NV'),(703,'VA'),(704,'NC'),(706,'GA'),(707,'CA'),(708,'IL'),(712,'IA'),(713,'TX'),(714,'CA'),(715,'WI'),(716,'NY'),(717,'PA'),(718,'NY'),(719,'CO'),(720,'CO'),(724,'PA'),(727,'FL'),(731,'TN'),(732,'NJ'),(734,'MI'),(737,'TX'),(740,'OH'),(747,'CA'),(754,'FL'),(757,'VA'),(760,'CA'),(762,'GA'),(763,'MN'),(764,'CA'),(765,'IN'),(769,'MS'),(770,'GA'),(772,'FL'),(773,'IL'),(774,'MA'),(775,'NV'),(779,'IL'),(781,'MA'),(785,'KS'),(786,'FL'),(801,'UT'),(802,'VT'),(803,'SC'),(804,'VA'),(805,'CA'),(806,'TX'),(808,'HI'),(810,'MI'),(812,'IN'),(813,'FL'),(814,'PA'),(815,'IL'),(816,'MO'),(817,'TX'),(818,'CA'),(828,'NC'),(830,'TX'),(831,'CA'),(832,'TX'),(835,'PA'),(843,'SC'),(845,'NY'),(847,'IL'),(848,'NJ'),(850,'FL'),(856,'NJ'),(857,'MA'),(858,'CA'),(859,'KY'),(860,'CT'),(862,'NJ'),(863,'FL'),(864,'SC'),(865,'TN'),(870,'AR'),(872,'IL'),(878,'PA'),(901,'TN'),(903,'TX'),(904,'FL'),(906,'MI'),(907,'AK'),(908,'NJ'),(909,'CA'),(910,'NC'),(912,'GA'),(913,'KS'),(914,'NY'),(915,'TX'),(916,'CA'),(917,'NY'),(918,'OK'),(919,'NC'),(920,'WI'),(925,'CA'),(927,'FL'),(928,'AZ'),(931,'TN'),(935,'CA'),(936,'TX'),(937,'OH'),(940,'TX'),(941,'FL'),(947,'MI'),(949,'CA'),(951,'CA'),(952,'MN'),(954,'FL'),(956,'TX'),(957,'NM'),(959,'CT'),(970,'CO'),(971,'OR'),(972,'TX'),(973,'NJ'),(975,'MO'),(978,'MA'),(979,'TX'),(980,'NC'),(984,'NC'),(985,'LA'),(989,'MI');
/*!40000 ALTER TABLE `area_code_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contestants`
--

DROP TABLE IF EXISTS `contestants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contestants` (
  `contestant_number` int NOT NULL AUTO_INCREMENT,
  `contestant_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`contestant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contestants`
--

LOCK TABLES `contestants` WRITE;
/*!40000 ALTER TABLE `contestants` DISABLE KEYS */;
INSERT INTO `contestants` VALUES (1,'Edwina Burnam'),(2,'Tabatha Gehling'),(3,'Kelly Clauss'),(4,'Jessie Alloway'),(5,'Alana Bregman'),(6,'Jessie Eichman'),(7,'Allie Rogalski'),(8,'Nita Coster'),(9,'Kurt Walser'),(10,'Ericka Dieter'),(11,'Loraine NygrenTania Mattioli');
/*!40000 ALTER TABLE `contestants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `vote_id` int NOT NULL AUTO_INCREMENT,
  `phone_number` int NOT NULL,
  `state` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `contestant_number` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vote_id`),
  KEY `VOTES_FK_0_0` (`contestant_number`),
  CONSTRAINT `VOTES_FK_0_0` FOREIGN KEY (`contestant_number`) REFERENCES `contestants` (`contestant_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,2147483647,'NY',2,'2018-03-10 00:03:21'),(2,2147483647,'NY',3,'2018-03-10 00:03:36'),(3,2147483647,'CA',3,'2018-03-10 00:03:39'),(5,2147483647,'NJ',5,'2018-03-10 00:03:40');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `concert_singer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `concert_singer`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: concert_singer
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `concert`
--

DROP TABLE IF EXISTS `concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert` (
  `concert_ID` int NOT NULL AUTO_INCREMENT,
  `concert_Name` text COLLATE utf8mb4_general_ci,
  `Theme` text COLLATE utf8mb4_general_ci,
  `Stadium_ID` int DEFAULT NULL,
  `Year` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`concert_ID`),
  KEY `concert_FK_0_0` (`Stadium_ID`),
  CONSTRAINT `concert_FK_0_0` FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert`
--

LOCK TABLES `concert` WRITE;
/*!40000 ALTER TABLE `concert` DISABLE KEYS */;
INSERT INTO `concert` VALUES (1,'Auditions','Free choice',1,'2014'),(2,'Super bootcamp','Free choice 2',2,'2014'),(3,'Home Visits','Bleeding Love',2,'2015'),(4,'Week 1','Wide Awake',10,'2014'),(5,'Week 1','Happy Tonight',9,'2015'),(6,'Week 2','Party All Night',7,'2015');
/*!40000 ALTER TABLE `concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer` (
  `Singer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Country` text COLLATE utf8mb4_general_ci,
  `Song_Name` text COLLATE utf8mb4_general_ci,
  `Song_release_year` text COLLATE utf8mb4_general_ci,
  `Age` int DEFAULT NULL,
  `Is_male` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Singer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (1,'Joe Sharp','Netherlands','You','1992',52,'F'),(2,'Timbaland','United States','Dangerous','2008',32,'T'),(3,'Justin Brown','France','Hey Oh','2013',29,'T'),(4,'Rose White','France','Sun','2003',41,'F'),(5,'John Nizinik','France','Gentleman','2014',43,'T'),(6,'Tribal King','France','Love','2016',25,'T');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `singer_in_concert`
--

DROP TABLE IF EXISTS `singer_in_concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `singer_in_concert` (
  `concert_ID` int NOT NULL,
  `Singer_ID` int NOT NULL,
  PRIMARY KEY (`concert_ID`,`Singer_ID`),
  KEY `singer_in_concert_FK_0_0` (`Singer_ID`),
  CONSTRAINT `singer_in_concert_FK_0_0` FOREIGN KEY (`Singer_ID`) REFERENCES `singer` (`Singer_ID`),
  CONSTRAINT `singer_in_concert_FK_1_0` FOREIGN KEY (`concert_ID`) REFERENCES `concert` (`concert_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer_in_concert`
--

LOCK TABLES `singer_in_concert` WRITE;
/*!40000 ALTER TABLE `singer_in_concert` DISABLE KEYS */;
INSERT INTO `singer_in_concert` VALUES (1,2),(6,2),(1,3),(2,3),(5,3),(4,4),(1,5),(3,5),(2,6),(5,6);
/*!40000 ALTER TABLE `singer_in_concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `Stadium_ID` int NOT NULL AUTO_INCREMENT,
  `Location` text COLLATE utf8mb4_general_ci,
  `Name` text COLLATE utf8mb4_general_ci,
  `Capacity` int DEFAULT NULL,
  `Highest` int DEFAULT NULL,
  `Lowest` int DEFAULT NULL,
  `Average` int DEFAULT NULL,
  PRIMARY KEY (`Stadium_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Raith Rovers','Stark\'s Park',10104,4812,1294,2106),(2,'Ayr United','Somerset Park',11998,2363,1057,1477),(3,'East Fife','Bayview Stadium',2000,1980,533,864),(4,'Queen\'s Park','Hampden Park',52500,1763,466,730),(5,'Stirling Albion','Forthbank Stadium',3808,1125,404,642),(6,'Arbroath','Gayfield Park',4125,921,411,638),(7,'Alloa Athletic','Recreation Park',3100,1057,331,637),(9,'Peterhead','Balmoor',4000,837,400,615),(10,'Brechin City','Glebe Park',3960,780,315,552);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `network_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `network_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: network_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Friend`
--

DROP TABLE IF EXISTS `Friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Friend` (
  `student_id` int NOT NULL,
  `friend_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`friend_id`),
  KEY `Friend_FK_0_0` (`friend_id`),
  CONSTRAINT `Friend_FK_0_0` FOREIGN KEY (`friend_id`) REFERENCES `Highschooler` (`ID`),
  CONSTRAINT `Friend_FK_1_0` FOREIGN KEY (`student_id`) REFERENCES `Highschooler` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Friend`
--

LOCK TABLES `Friend` WRITE;
/*!40000 ALTER TABLE `Friend` DISABLE KEYS */;
INSERT INTO `Friend` VALUES (1661,1025),(1468,1101),(1381,1247),(1709,1247),(1782,1304),(1934,1304),(1782,1316),(1510,1381),(1782,1468),(1247,1501),(1911,1501),(1101,1641),(1468,1641),(1304,1661),(1510,1689),(1689,1709),(1689,1782),(1247,1911),(1316,1934),(1501,1934);
/*!40000 ALTER TABLE `Friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Highschooler`
--

DROP TABLE IF EXISTS `Highschooler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Highschooler` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `grade` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1935 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Highschooler`
--

LOCK TABLES `Highschooler` WRITE;
/*!40000 ALTER TABLE `Highschooler` DISABLE KEYS */;
INSERT INTO `Highschooler` VALUES (1025,'John',12),(1101,'Haley',10),(1247,'Alexis',11),(1304,'Jordan',12),(1316,'Austin',11),(1381,'Tiffany',9),(1468,'Kris',10),(1501,'Jessica',11),(1510,'Jordan',9),(1641,'Brittany',10),(1661,'Logan',12),(1689,'Gabriel',9),(1709,'Cassandra',9),(1782,'Andrew',10),(1911,'Gabriel',11),(1934,'Kyle',12);
/*!40000 ALTER TABLE `Highschooler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Likes`
--

DROP TABLE IF EXISTS `Likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Likes` (
  `student_id` int NOT NULL,
  `liked_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`liked_id`),
  KEY `Likes_FK_1_0` (`liked_id`),
  CONSTRAINT `Likes_FK_0_0` FOREIGN KEY (`student_id`) REFERENCES `Highschooler` (`ID`),
  CONSTRAINT `Likes_FK_1_0` FOREIGN KEY (`liked_id`) REFERENCES `Highschooler` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Likes`
--

LOCK TABLES `Likes` WRITE;
/*!40000 ALTER TABLE `Likes` DISABLE KEYS */;
INSERT INTO `Likes` VALUES (1025,1101),(1911,1247),(1316,1304),(1247,1468),(1641,1468),(1934,1501),(1709,1689),(1689,1709),(1782,1709),(1501,1934);
/*!40000 ALTER TABLE `Likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `world_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `world_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: world_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `CountryCode` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `District` char(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `city_FK_0_0` (`CountryCode`),
  CONSTRAINT `city_FK_0_0` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Kabul','AFG','Kabol',1780000),(2,'Qandahar','AFG','Qandahar',237500),(3,'Herat','AFG','Herat',186800),(4,'Mazar-e-Sharif','AFG','Balkh',127800),(5,'Amsterdam','NLD','Noord-Holland',731200),(6,'Rotterdam','NLD','Zuid-Holland',593321),(7,'Haag','NLD','Zuid-Holland',440900),(8,'Utrecht','NLD','Utrecht',234323),(9,'Eindhoven','NLD','Noord-Brabant',201843),(10,'Tilburg','NLD','Noord-Brabant',193238),(11,'Groningen','NLD','Groningen',172701),(12,'Breda','NLD','Noord-Brabant',160398),(13,'Apeldoorn','NLD','Gelderland',153491),(14,'Nijmegen','NLD','Gelderland',152463),(15,'Enschede','NLD','Overijssel',149544),(16,'Haarlem','NLD','Noord-Holland',148772),(17,'Almere','NLD','Flevoland',142465),(18,'Arnhem','NLD','Gelderland',138020),(19,'Zaanstad','NLD','Noord-Holland',135621),(20,'´s-Hertogenbosch','NLD','Noord-Brabant',129170),(21,'Amersfoort','NLD','Utrecht',126270),(22,'Maastricht','NLD','Limburg',122087),(23,'Dordrecht','NLD','Zuid-Holland',119811),(24,'Leiden','NLD','Zuid-Holland',117196),(25,'Haarlemmermeer','NLD','Noord-Holland',110722),(26,'Zoetermeer','NLD','Zuid-Holland',110214),(27,'Emmen','NLD','Drenthe',105853),(28,'Zwolle','NLD','Overijssel',105819),(29,'Ede','NLD','Gelderland',101574),(30,'Delft','NLD','Zuid-Holland',95268),(31,'Heerlen','NLD','Limburg',95052),(32,'Alkmaar','NLD','Noord-Holland',92713),(33,'Willemstad','ANT','Curaçao',2345),(34,'Tirana','ALB','Tirana',270000),(35,'Alger','DZA','Alger',2168000),(36,'Oran','DZA','Oran',609823),(37,'Constantine','DZA','Constantine',443727),(38,'Annaba','DZA','Annaba',222518),(39,'Batna','DZA','Batna',183377),(40,'Sétif','DZA','Sétif',179055),(41,'Sidi Bel Abbès','DZA','Sidi Bel Abbès',153106),(42,'Skikda','DZA','Skikda',128747),(43,'Biskra','DZA','Biskra',128281),(44,'Blida (el-Boulaida)','DZA','Blida',127284),(45,'Béjaïa','DZA','Béjaïa',117162),(46,'Mostaganem','DZA','Mostaganem',115212),(47,'Tébessa','DZA','Tébessa',112007),(48,'Tlemcen (Tilimsen)','DZA','Tlemcen',110242),(49,'Béchar','DZA','Béchar',107311),(50,'Tiaret','DZA','Tiaret',100118),(51,'Ech-Chleff (el-Asnam)','DZA','Chlef',96794),(52,'Ghardaïa','DZA','Ghardaïa',89415),(53,'Tafuna','ASM','Tutuila',5200),(54,'Fagatogo','ASM','Tutuila',2323),(55,'Andorra la Vella','AND','Andorra la Vella',21189),(56,'Luanda','AGO','Luanda',2022000),(57,'Huambo','AGO','Huambo',163100),(58,'Lobito','AGO','Benguela',130000),(59,'Benguela','AGO','Benguela',128300),(60,'Namibe','AGO','Namibe',118200),(61,'South Hill','AIA','–',961),(62,'The Valley','AIA','–',595),(63,'Saint John´s','ATG','St John',24000),(64,'Dubai','ARE','Dubai',669181),(65,'Abu Dhabi','ARE','Abu Dhabi',398695),(66,'Sharja','ARE','Sharja',320095),(67,'al-Ayn','ARE','Abu Dhabi',225970),(68,'Ajman','ARE','Ajman',114395),(69,'Buenos Aires','ARG','Distrito Federal',2982146),(70,'La Matanza','ARG','Buenos Aires',1266461),(71,'Córdoba','ARG','Córdoba',1157507),(72,'Rosario','ARG','Santa Fé',907718),(73,'Lomas de Zamora','ARG','Buenos Aires',622013),(74,'Quilmes','ARG','Buenos Aires',559249),(75,'Almirante Brown','ARG','Buenos Aires',538918),(76,'La Plata','ARG','Buenos Aires',521936),(77,'Mar del Plata','ARG','Buenos Aires',512880),(78,'San Miguel de Tucumán','ARG','Tucumán',470809),(79,'Lanús','ARG','Buenos Aires',469735),(80,'Merlo','ARG','Buenos Aires',463846),(81,'General San Martín','ARG','Buenos Aires',422542),(82,'Salta','ARG','Salta',367550),(83,'Moreno','ARG','Buenos Aires',356993),(84,'Santa Fé','ARG','Santa Fé',353063),(85,'Avellaneda','ARG','Buenos Aires',353046),(86,'Tres de Febrero','ARG','Buenos Aires',352311),(87,'Morón','ARG','Buenos Aires',349246),(88,'Florencio Varela','ARG','Buenos Aires',315432),(89,'San Isidro','ARG','Buenos Aires',306341),(90,'Tigre','ARG','Buenos Aires',296226),(91,'Malvinas Argentinas','ARG','Buenos Aires',290335),(92,'Vicente López','ARG','Buenos Aires',288341),(93,'Berazategui','ARG','Buenos Aires',276916),(94,'Corrientes','ARG','Corrientes',258103),(95,'San Miguel','ARG','Buenos Aires',248700),(96,'Bahía Blanca','ARG','Buenos Aires',239810),(97,'Esteban Echeverría','ARG','Buenos Aires',235760),(98,'Resistencia','ARG','Chaco',229212),(99,'José C. Paz','ARG','Buenos Aires',221754),(100,'Paraná','ARG','Entre Rios',207041),(101,'Godoy Cruz','ARG','Mendoza',206998),(102,'Posadas','ARG','Misiones',201273),(103,'Guaymallén','ARG','Mendoza',200595),(104,'Santiago del Estero','ARG','Santiago del Estero',189947),(105,'San Salvador de Jujuy','ARG','Jujuy',178748),(106,'Hurlingham','ARG','Buenos Aires',170028),(107,'Neuquén','ARG','Neuquén',167296),(108,'Ituzaingó','ARG','Buenos Aires',158197),(109,'San Fernando','ARG','Buenos Aires',153036),(110,'Formosa','ARG','Formosa',147636),(111,'Las Heras','ARG','Mendoza',145823),(112,'La Rioja','ARG','La Rioja',138117),(113,'San Fernando del Valle de Cata','ARG','Catamarca',134935),(114,'Río Cuarto','ARG','Córdoba',134355),(115,'Comodoro Rivadavia','ARG','Chubut',124104),(116,'Mendoza','ARG','Mendoza',123027),(117,'San Nicolás de los Arroyos','ARG','Buenos Aires',119302),(118,'San Juan','ARG','San Juan',119152),(119,'Escobar','ARG','Buenos Aires',116675),(120,'Concordia','ARG','Entre Rios',116485),(121,'Pilar','ARG','Buenos Aires',113428),(122,'San Luis','ARG','San Luis',110136),(123,'Ezeiza','ARG','Buenos Aires',99578),(124,'San Rafael','ARG','Mendoza',94651),(125,'Tandil','ARG','Buenos Aires',91101),(126,'Yerevan','ARM','Yerevan',1248700),(127,'Gjumri','ARM','Širak',211700),(128,'Vanadzor','ARM','Lori',172700),(129,'Oranjestad','ABW','–',29034),(130,'Sydney','AUS','New South Wales',3276207),(131,'Melbourne','AUS','Victoria',2865329),(132,'Brisbane','AUS','Queensland',1291117),(133,'Perth','AUS','West Australia',1096829),(134,'Adelaide','AUS','South Australia',978100),(135,'Canberra','AUS','Capital Region',322723),(136,'Gold Coast','AUS','Queensland',311932),(137,'Newcastle','AUS','New South Wales',270324),(138,'Central Coast','AUS','New South Wales',227657),(139,'Wollongong','AUS','New South Wales',219761),(140,'Hobart','AUS','Tasmania',126118),(141,'Geelong','AUS','Victoria',125382),(142,'Townsville','AUS','Queensland',109914),(143,'Cairns','AUS','Queensland',92273),(144,'Baku','AZE','Baki',1787800),(145,'Gäncä','AZE','Gäncä',299300),(146,'Sumqayit','AZE','Sumqayit',283000),(147,'Mingäçevir','AZE','Mingäçevir',93900),(148,'Nassau','BHS','New Providence',172000),(149,'al-Manama','BHR','al-Manama',148000),(150,'Dhaka','BGD','Dhaka',3612850),(151,'Chittagong','BGD','Chittagong',1392860),(152,'Khulna','BGD','Khulna',663340),(153,'Rajshahi','BGD','Rajshahi',294056),(154,'Narayanganj','BGD','Dhaka',202134),(155,'Rangpur','BGD','Rajshahi',191398),(156,'Mymensingh','BGD','Dhaka',188713),(157,'Barisal','BGD','Barisal',170232),(158,'Tungi','BGD','Dhaka',168702),(159,'Jessore','BGD','Khulna',139710),(160,'Comilla','BGD','Chittagong',135313),(161,'Nawabganj','BGD','Rajshahi',130577),(162,'Dinajpur','BGD','Rajshahi',127815),(163,'Bogra','BGD','Rajshahi',120170),(164,'Sylhet','BGD','Sylhet',117396),(165,'Brahmanbaria','BGD','Chittagong',109032),(166,'Tangail','BGD','Dhaka',106004),(167,'Jamalpur','BGD','Dhaka',103556),(168,'Pabna','BGD','Rajshahi',103277),(169,'Naogaon','BGD','Rajshahi',101266),(170,'Sirajganj','BGD','Rajshahi',99669),(171,'Narsinghdi','BGD','Dhaka',98342),(172,'Saidpur','BGD','Rajshahi',96777),(173,'Gazipur','BGD','Dhaka',96717),(174,'Bridgetown','BRB','St Michael',6070),(175,'Antwerpen','BEL','Antwerpen',446525),(176,'Gent','BEL','East Flanderi',224180),(177,'Charleroi','BEL','Hainaut',200827),(178,'Liège','BEL','Liège',185639),(179,'Bruxelles [Brussel]','BEL','Bryssel',133859),(180,'Brugge','BEL','West Flanderi',116246),(181,'Schaerbeek','BEL','Bryssel',105692),(182,'Namur','BEL','Namur',105419),(183,'Mons','BEL','Hainaut',90935),(184,'Belize City','BLZ','Belize City',55810),(185,'Belmopan','BLZ','Cayo',7105),(186,'Cotonou','BEN','Atlantique',536827),(187,'Porto-Novo','BEN','Ouémé',194000),(188,'Djougou','BEN','Atacora',134099),(189,'Parakou','BEN','Borgou',103577),(190,'Saint George','BMU','Saint George´s',1800),(191,'Hamilton','BMU','Hamilton',1200),(192,'Thimphu','BTN','Thimphu',22000),(193,'Santa Cruz de la Sierra','BOL','Santa Cruz',935361),(194,'La Paz','BOL','La Paz',758141),(195,'El Alto','BOL','La Paz',534466),(196,'Cochabamba','BOL','Cochabamba',482800),(197,'Oruro','BOL','Oruro',223553),(198,'Sucre','BOL','Chuquisaca',178426),(199,'Potosí','BOL','Potosí',140642),(200,'Tarija','BOL','Tarija',125255),(201,'Sarajevo','BIH','Federaatio',360000),(202,'Banja Luka','BIH','Republika Srpska',143079),(203,'Zenica','BIH','Federaatio',96027),(204,'Gaborone','BWA','Gaborone',213017),(205,'Francistown','BWA','Francistown',101805),(206,'São Paulo','BRA','São Paulo',9968485),(207,'Rio de Janeiro','BRA','Rio de Janeiro',5598953),(208,'Salvador','BRA','Bahia',2302832),(209,'Belo Horizonte','BRA','Minas Gerais',2139125),(210,'Fortaleza','BRA','Ceará',2097757),(211,'Brasília','BRA','Distrito Federal',1969868),(212,'Curitiba','BRA','Paraná',1584232),(213,'Recife','BRA','Pernambuco',1378087),(214,'Porto Alegre','BRA','Rio Grande do Sul',1314032),(215,'Manaus','BRA','Amazonas',1255049),(216,'Belém','BRA','Pará',1186926),(217,'Guarulhos','BRA','São Paulo',1095874),(218,'Goiânia','BRA','Goiás',1056330),(219,'Campinas','BRA','São Paulo',950043),(220,'São Gonçalo','BRA','Rio de Janeiro',869254),(221,'Nova Iguaçu','BRA','Rio de Janeiro',862225),(222,'São Luís','BRA','Maranhão',837588),(223,'Maceió','BRA','Alagoas',786288),(224,'Duque de Caxias','BRA','Rio de Janeiro',746758),(225,'São Bernardo do Campo','BRA','São Paulo',723132),(226,'Teresina','BRA','Piauí',691942),(227,'Natal','BRA','Rio Grande do Norte',688955),(228,'Osasco','BRA','São Paulo',659604),(229,'Campo Grande','BRA','Mato Grosso do Sul',649593),(230,'Santo André','BRA','São Paulo',630073),(231,'João Pessoa','BRA','Paraíba',584029),(232,'Jaboatão dos Guararapes','BRA','Pernambuco',558680),(233,'Contagem','BRA','Minas Gerais',520801),(234,'São José dos Campos','BRA','São Paulo',515553),(235,'Uberlândia','BRA','Minas Gerais',487222),(236,'Feira de Santana','BRA','Bahia',479992),(237,'Ribeirão Preto','BRA','São Paulo',473276),(238,'Sorocaba','BRA','São Paulo',466823),(239,'Niterói','BRA','Rio de Janeiro',459884),(240,'Cuiabá','BRA','Mato Grosso',453813),(241,'Juiz de Fora','BRA','Minas Gerais',450288),(242,'Aracaju','BRA','Sergipe',445555),(243,'São João de Meriti','BRA','Rio de Janeiro',440052),(244,'Londrina','BRA','Paraná',432257),(245,'Joinville','BRA','Santa Catarina',428011),(246,'Belford Roxo','BRA','Rio de Janeiro',425194),(247,'Santos','BRA','São Paulo',408748),(248,'Ananindeua','BRA','Pará',400940),(249,'Campos dos Goytacazes','BRA','Rio de Janeiro',398418),(250,'Mauá','BRA','São Paulo',375055),(251,'Carapicuíba','BRA','São Paulo',357552),(252,'Olinda','BRA','Pernambuco',354732),(253,'Campina Grande','BRA','Paraíba',352497),(254,'São José do Rio Preto','BRA','São Paulo',351944),(255,'Caxias do Sul','BRA','Rio Grande do Sul',349581),(256,'Moji das Cruzes','BRA','São Paulo',339194),(257,'Diadema','BRA','São Paulo',335078),(258,'Aparecida de Goiânia','BRA','Goiás',324662),(259,'Piracicaba','BRA','São Paulo',319104),(260,'Cariacica','BRA','Espírito Santo',319033),(261,'Vila Velha','BRA','Espírito Santo',318758),(262,'Pelotas','BRA','Rio Grande do Sul',315415),(263,'Bauru','BRA','São Paulo',313670),(264,'Porto Velho','BRA','Rondônia',309750),(265,'Serra','BRA','Espírito Santo',302666),(266,'Betim','BRA','Minas Gerais',302108),(267,'Jundíaí','BRA','São Paulo',296127),(268,'Canoas','BRA','Rio Grande do Sul',294125),(269,'Franca','BRA','São Paulo',290139),(270,'São Vicente','BRA','São Paulo',286848),(271,'Maringá','BRA','Paraná',286461),(272,'Montes Claros','BRA','Minas Gerais',286058),(273,'Anápolis','BRA','Goiás',282197),(274,'Florianópolis','BRA','Santa Catarina',281928),(275,'Petrópolis','BRA','Rio de Janeiro',279183),(276,'Itaquaquecetuba','BRA','São Paulo',270874),(277,'Vitória','BRA','Espírito Santo',270626),(278,'Ponta Grossa','BRA','Paraná',268013),(279,'Rio Branco','BRA','Acre',259537),(280,'Foz do Iguaçu','BRA','Paraná',259425),(281,'Macapá','BRA','Amapá',256033),(282,'Ilhéus','BRA','Bahia',254970),(283,'Vitória da Conquista','BRA','Bahia',253587),(284,'Uberaba','BRA','Minas Gerais',249225),(285,'Paulista','BRA','Pernambuco',248473),(286,'Limeira','BRA','São Paulo',245497),(287,'Blumenau','BRA','Santa Catarina',244379),(288,'Caruaru','BRA','Pernambuco',244247),(289,'Santarém','BRA','Pará',241771),(290,'Volta Redonda','BRA','Rio de Janeiro',240315),(291,'Novo Hamburgo','BRA','Rio Grande do Sul',239940),(292,'Caucaia','BRA','Ceará',238738),(293,'Santa Maria','BRA','Rio Grande do Sul',238473),(294,'Cascavel','BRA','Paraná',237510),(295,'Guarujá','BRA','São Paulo',237206),(296,'Ribeirão das Neves','BRA','Minas Gerais',232685),(297,'Governador Valadares','BRA','Minas Gerais',231724),(298,'Taubaté','BRA','São Paulo',229130),(299,'Imperatriz','BRA','Maranhão',224564),(300,'Gravataí','BRA','Rio Grande do Sul',223011),(301,'Embu','BRA','São Paulo',222223),(302,'Mossoró','BRA','Rio Grande do Norte',214901),(303,'Várzea Grande','BRA','Mato Grosso',214435),(304,'Petrolina','BRA','Pernambuco',210540),(305,'Barueri','BRA','São Paulo',208426),(306,'Viamão','BRA','Rio Grande do Sul',207557),(307,'Ipatinga','BRA','Minas Gerais',206338),(308,'Juazeiro','BRA','Bahia',201073),(309,'Juazeiro do Norte','BRA','Ceará',199636),(310,'Taboão da Serra','BRA','São Paulo',197550),(311,'São José dos Pinhais','BRA','Paraná',196884),(312,'Magé','BRA','Rio de Janeiro',196147),(313,'Suzano','BRA','São Paulo',195434),(314,'São Leopoldo','BRA','Rio Grande do Sul',189258),(315,'Marília','BRA','São Paulo',188691),(316,'São Carlos','BRA','São Paulo',187122),(317,'Sumaré','BRA','São Paulo',186205),(318,'Presidente Prudente','BRA','São Paulo',185340),(319,'Divinópolis','BRA','Minas Gerais',185047),(320,'Sete Lagoas','BRA','Minas Gerais',182984),(321,'Rio Grande','BRA','Rio Grande do Sul',182222),(322,'Itabuna','BRA','Bahia',182148),(323,'Jequié','BRA','Bahia',179128),(324,'Arapiraca','BRA','Alagoas',178988),(325,'Colombo','BRA','Paraná',177764),(326,'Americana','BRA','São Paulo',177409),(327,'Alvorada','BRA','Rio Grande do Sul',175574),(328,'Araraquara','BRA','São Paulo',174381),(329,'Itaboraí','BRA','Rio de Janeiro',173977),(330,'Santa Bárbara d´Oeste','BRA','São Paulo',171657),(331,'Nova Friburgo','BRA','Rio de Janeiro',170697),(332,'Jacareí','BRA','São Paulo',170356),(333,'Araçatuba','BRA','São Paulo',169303),(334,'Barra Mansa','BRA','Rio de Janeiro',168953),(335,'Praia Grande','BRA','São Paulo',168434),(336,'Marabá','BRA','Pará',167795),(337,'Criciúma','BRA','Santa Catarina',167661),(338,'Boa Vista','BRA','Roraima',167185),(339,'Passo Fundo','BRA','Rio Grande do Sul',166343),(340,'Dourados','BRA','Mato Grosso do Sul',164716),(341,'Santa Luzia','BRA','Minas Gerais',164704),(342,'Rio Claro','BRA','São Paulo',163551),(343,'Maracanaú','BRA','Ceará',162022),(344,'Guarapuava','BRA','Paraná',160510),(345,'Rondonópolis','BRA','Mato Grosso',155115),(346,'São José','BRA','Santa Catarina',155105),(347,'Cachoeiro de Itapemirim','BRA','Espírito Santo',155024),(348,'Nilópolis','BRA','Rio de Janeiro',153383),(349,'Itapevi','BRA','São Paulo',150664),(350,'Cabo de Santo Agostinho','BRA','Pernambuco',149964),(351,'Camaçari','BRA','Bahia',149146),(352,'Sobral','BRA','Ceará',146005),(353,'Itajaí','BRA','Santa Catarina',145197),(354,'Chapecó','BRA','Santa Catarina',144158),(355,'Cotia','BRA','São Paulo',140042),(356,'Lages','BRA','Santa Catarina',139570),(357,'Ferraz de Vasconcelos','BRA','São Paulo',139283),(358,'Indaiatuba','BRA','São Paulo',135968),(359,'Hortolândia','BRA','São Paulo',135755),(360,'Caxias','BRA','Maranhão',133980),(361,'São Caetano do Sul','BRA','São Paulo',133321),(362,'Itu','BRA','São Paulo',132736),(363,'Nossa Senhora do Socorro','BRA','Sergipe',131351),(364,'Parnaíba','BRA','Piauí',129756),(365,'Poços de Caldas','BRA','Minas Gerais',129683),(366,'Teresópolis','BRA','Rio de Janeiro',128079),(367,'Barreiras','BRA','Bahia',127801),(368,'Castanhal','BRA','Pará',127634),(369,'Alagoinhas','BRA','Bahia',126820),(370,'Itapecerica da Serra','BRA','São Paulo',126672),(371,'Uruguaiana','BRA','Rio Grande do Sul',126305),(372,'Paranaguá','BRA','Paraná',126076),(373,'Ibirité','BRA','Minas Gerais',125982),(374,'Timon','BRA','Maranhão',125812),(375,'Luziânia','BRA','Goiás',125597),(376,'Macaé','BRA','Rio de Janeiro',125597),(377,'Teófilo Otoni','BRA','Minas Gerais',124489),(378,'Moji-Guaçu','BRA','São Paulo',123782),(379,'Palmas','BRA','Tocantins',121919),(380,'Pindamonhangaba','BRA','São Paulo',121904),(381,'Francisco Morato','BRA','São Paulo',121197),(382,'Bagé','BRA','Rio Grande do Sul',120793),(383,'Sapucaia do Sul','BRA','Rio Grande do Sul',120217),(384,'Cabo Frio','BRA','Rio de Janeiro',119503),(385,'Itapetininga','BRA','São Paulo',119391),(386,'Patos de Minas','BRA','Minas Gerais',119262),(387,'Camaragibe','BRA','Pernambuco',118968),(388,'Bragança Paulista','BRA','São Paulo',116929),(389,'Queimados','BRA','Rio de Janeiro',115020),(390,'Araguaína','BRA','Tocantins',114948),(391,'Garanhuns','BRA','Pernambuco',114603),(392,'Vitória de Santo Antão','BRA','Pernambuco',113595),(393,'Santa Rita','BRA','Paraíba',113135),(394,'Barbacena','BRA','Minas Gerais',113079),(395,'Abaetetuba','BRA','Pará',111258),(396,'Jaú','BRA','São Paulo',109965),(397,'Lauro de Freitas','BRA','Bahia',109236),(398,'Franco da Rocha','BRA','São Paulo',108964),(399,'Teixeira de Freitas','BRA','Bahia',108441),(400,'Varginha','BRA','Minas Gerais',108314),(401,'Ribeirão Pires','BRA','São Paulo',108121),(402,'Sabará','BRA','Minas Gerais',107781),(403,'Catanduva','BRA','São Paulo',107761),(404,'Rio Verde','BRA','Goiás',107755),(405,'Botucatu','BRA','São Paulo',107663),(406,'Colatina','BRA','Espírito Santo',107354),(407,'Santa Cruz do Sul','BRA','Rio Grande do Sul',106734),(408,'Linhares','BRA','Espírito Santo',106278),(409,'Apucarana','BRA','Paraná',105114),(410,'Barretos','BRA','São Paulo',104156),(411,'Guaratinguetá','BRA','São Paulo',103433),(412,'Cachoeirinha','BRA','Rio Grande do Sul',103240),(413,'Codó','BRA','Maranhão',103153),(414,'Jaraguá do Sul','BRA','Santa Catarina',102580),(415,'Cubatão','BRA','São Paulo',102372),(416,'Itabira','BRA','Minas Gerais',102217),(417,'Itaituba','BRA','Pará',101320),(418,'Araras','BRA','São Paulo',101046),(419,'Resende','BRA','Rio de Janeiro',100627),(420,'Atibaia','BRA','São Paulo',100356),(421,'Pouso Alegre','BRA','Minas Gerais',100028),(422,'Toledo','BRA','Paraná',99387),(423,'Crato','BRA','Ceará',98965),(424,'Passos','BRA','Minas Gerais',98570),(425,'Araguari','BRA','Minas Gerais',98399),(426,'São José de Ribamar','BRA','Maranhão',98318),(427,'Pinhais','BRA','Paraná',98198),(428,'Sertãozinho','BRA','São Paulo',98140),(429,'Conselheiro Lafaiete','BRA','Minas Gerais',97507),(430,'Paulo Afonso','BRA','Bahia',97291),(431,'Angra dos Reis','BRA','Rio de Janeiro',96864),(432,'Eunápolis','BRA','Bahia',96610),(433,'Salto','BRA','São Paulo',96348),(434,'Ourinhos','BRA','São Paulo',96291),(435,'Parnamirim','BRA','Rio Grande do Norte',96210),(436,'Jacobina','BRA','Bahia',96131),(437,'Coronel Fabriciano','BRA','Minas Gerais',95933),(438,'Birigui','BRA','São Paulo',94685),(439,'Tatuí','BRA','São Paulo',93897),(440,'Ji-Paraná','BRA','Rondônia',93346),(441,'Bacabal','BRA','Maranhão',93121),(442,'Cametá','BRA','Pará',92779),(443,'Guaíba','BRA','Rio Grande do Sul',92224),(444,'São Lourenço da Mata','BRA','Pernambuco',91999),(445,'Santana do Livramento','BRA','Rio Grande do Sul',91779),(446,'Votorantim','BRA','São Paulo',91777),(447,'Campo Largo','BRA','Paraná',91203),(448,'Patos','BRA','Paraíba',90519),(449,'Ituiutaba','BRA','Minas Gerais',90507),(450,'Corumbá','BRA','Mato Grosso do Sul',90111),(451,'Palhoça','BRA','Santa Catarina',89465),(452,'Barra do Piraí','BRA','Rio de Janeiro',89388),(453,'Bento Gonçalves','BRA','Rio Grande do Sul',89254),(454,'Poá','BRA','São Paulo',89236),(455,'Águas Lindas de Goiás','BRA','Goiás',89200),(456,'London','GBR','England',7285000),(457,'Birmingham','GBR','England',1013000),(458,'Glasgow','GBR','Scotland',619680),(459,'Liverpool','GBR','England',461000),(460,'Edinburgh','GBR','Scotland',450180),(461,'Sheffield','GBR','England',431607),(462,'Manchester','GBR','England',430000),(463,'Leeds','GBR','England',424194),(464,'Bristol','GBR','England',402000),(465,'Cardiff','GBR','Wales',321000),(466,'Coventry','GBR','England',304000),(467,'Leicester','GBR','England',294000),(468,'Bradford','GBR','England',289376),(469,'Belfast','GBR','North Ireland',287500),(470,'Nottingham','GBR','England',287000),(471,'Kingston upon Hull','GBR','England',262000),(472,'Plymouth','GBR','England',253000),(473,'Stoke-on-Trent','GBR','England',252000),(474,'Wolverhampton','GBR','England',242000),(475,'Derby','GBR','England',236000),(476,'Swansea','GBR','Wales',230000),(477,'Southampton','GBR','England',216000),(478,'Aberdeen','GBR','Scotland',213070),(479,'Northampton','GBR','England',196000),(480,'Dudley','GBR','England',192171),(481,'Portsmouth','GBR','England',190000),(482,'Newcastle upon Tyne','GBR','England',189150),(483,'Sunderland','GBR','England',183310),(484,'Luton','GBR','England',183000),(485,'Swindon','GBR','England',180000),(486,'Southend-on-Sea','GBR','England',176000),(487,'Walsall','GBR','England',174739),(488,'Bournemouth','GBR','England',162000),(489,'Peterborough','GBR','England',156000),(490,'Brighton','GBR','England',156124),(491,'Blackpool','GBR','England',151000),(492,'Dundee','GBR','Scotland',146690),(493,'West Bromwich','GBR','England',146386),(494,'Reading','GBR','England',148000),(495,'Oldbury/Smethwick (Warley)','GBR','England',145542),(496,'Middlesbrough','GBR','England',145000),(497,'Huddersfield','GBR','England',143726),(498,'Oxford','GBR','England',144000),(499,'Poole','GBR','England',141000),(500,'Bolton','GBR','England',139020),(501,'Blackburn','GBR','England',140000),(502,'Newport','GBR','Wales',139000),(503,'Preston','GBR','England',135000),(504,'Stockport','GBR','England',132813),(505,'Norwich','GBR','England',124000),(506,'Rotherham','GBR','England',121380),(507,'Cambridge','GBR','England',121000),(508,'Watford','GBR','England',113080),(509,'Ipswich','GBR','England',114000),(510,'Slough','GBR','England',112000),(511,'Exeter','GBR','England',111000),(512,'Cheltenham','GBR','England',106000),(513,'Gloucester','GBR','England',107000),(514,'Saint Helens','GBR','England',106293),(515,'Sutton Coldfield','GBR','England',106001),(516,'York','GBR','England',104425),(517,'Oldham','GBR','England',103931),(518,'Basildon','GBR','England',100924),(519,'Worthing','GBR','England',100000),(520,'Chelmsford','GBR','England',97451),(521,'Colchester','GBR','England',96063),(522,'Crawley','GBR','England',97000),(523,'Gillingham','GBR','England',92000),(524,'Solihull','GBR','England',94531),(525,'Rochdale','GBR','England',94313),(526,'Birkenhead','GBR','England',93087),(527,'Worcester','GBR','England',95000),(528,'Hartlepool','GBR','England',92000),(529,'Halifax','GBR','England',91069),(530,'Woking/Byfleet','GBR','England',92000),(531,'Southport','GBR','England',90959),(532,'Maidstone','GBR','England',90878),(533,'Eastbourne','GBR','England',90000),(534,'Grimsby','GBR','England',89000),(535,'Saint Helier','GBR','Jersey',27523),(536,'Douglas','GBR','–',23487),(537,'Road Town','VGB','Tortola',8000),(538,'Bandar Seri Begawan','BRN','Brunei and Muara',21484),(539,'Sofija','BGR','Grad Sofija',1122302),(540,'Plovdiv','BGR','Plovdiv',342584),(541,'Varna','BGR','Varna',299801),(542,'Burgas','BGR','Burgas',195255),(543,'Ruse','BGR','Ruse',166467),(544,'Stara Zagora','BGR','Haskovo',147939),(545,'Pleven','BGR','Lovec',121952),(546,'Sliven','BGR','Burgas',105530),(547,'Dobric','BGR','Varna',100399),(548,'Šumen','BGR','Varna',94686),(549,'Ouagadougou','BFA','Kadiogo',824000),(550,'Bobo-Dioulasso','BFA','Houet',300000),(551,'Koudougou','BFA','Boulkiemdé',105000),(552,'Bujumbura','BDI','Bujumbura',300000),(553,'George Town','CYM','Grand Cayman',19600),(554,'Santiago de Chile','CHL','Santiago',4703954),(555,'Puente Alto','CHL','Santiago',386236),(556,'Viña del Mar','CHL','Valparaíso',312493),(557,'Valparaíso','CHL','Valparaíso',293800),(558,'Talcahuano','CHL','Bíobío',277752),(559,'Antofagasta','CHL','Antofagasta',251429),(560,'San Bernardo','CHL','Santiago',241910),(561,'Temuco','CHL','La Araucanía',233041),(562,'Concepción','CHL','Bíobío',217664),(563,'Rancagua','CHL','O´Higgins',212977),(564,'Arica','CHL','Tarapacá',189036),(565,'Talca','CHL','Maule',187557),(566,'Chillán','CHL','Bíobío',178182),(567,'Iquique','CHL','Tarapacá',177892),(568,'Los Angeles','CHL','Bíobío',158215),(569,'Puerto Montt','CHL','Los Lagos',152194),(570,'Coquimbo','CHL','Coquimbo',143353),(571,'Osorno','CHL','Los Lagos',141468),(572,'La Serena','CHL','Coquimbo',137409),(573,'Calama','CHL','Antofagasta',137265),(574,'Valdivia','CHL','Los Lagos',133106),(575,'Punta Arenas','CHL','Magallanes',125631),(576,'Copiapó','CHL','Atacama',120128),(577,'Quilpué','CHL','Valparaíso',118857),(578,'Curicó','CHL','Maule',115766),(579,'Ovalle','CHL','Coquimbo',94854),(580,'Coronel','CHL','Bíobío',93061),(581,'San Pedro de la Paz','CHL','Bíobío',91684),(582,'Melipilla','CHL','Santiago',91056),(583,'Avarua','COK','Rarotonga',11900),(584,'San José','CRI','San José',339131),(585,'Djibouti','DJI','Djibouti',383000),(586,'Roseau','DMA','St George',16243),(587,'Santo Domingo de Guzmán','DOM','Distrito Nacional',1609966),(588,'Santiago de los Caballeros','DOM','Santiago',365463),(589,'La Romana','DOM','La Romana',140204),(590,'San Pedro de Macorís','DOM','San Pedro de Macorís',124735),(591,'San Francisco de Macorís','DOM','Duarte',108485),(592,'San Felipe de Puerto Plata','DOM','Puerto Plata',89423),(593,'Guayaquil','ECU','Guayas',2070040),(594,'Quito','ECU','Pichincha',1573458),(595,'Cuenca','ECU','Azuay',270353),(596,'Machala','ECU','El Oro',210368),(597,'Santo Domingo de los Colorados','ECU','Pichincha',202111),(598,'Portoviejo','ECU','Manabí',176413),(599,'Ambato','ECU','Tungurahua',169612),(600,'Manta','ECU','Manabí',164739),(601,'Duran [Eloy Alfaro]','ECU','Guayas',152514),(602,'Ibarra','ECU','Imbabura',130643),(603,'Quevedo','ECU','Los Ríos',129631),(604,'Milagro','ECU','Guayas',124177),(605,'Loja','ECU','Loja',123875),(606,'Ríobamba','ECU','Chimborazo',123163),(607,'Esmeraldas','ECU','Esmeraldas',123045),(608,'Cairo','EGY','Kairo',6789479),(609,'Alexandria','EGY','Aleksandria',3328196),(610,'Giza','EGY','Giza',2221868),(611,'Shubra al-Khayma','EGY','al-Qalyubiya',870716),(612,'Port Said','EGY','Port Said',469533),(613,'Suez','EGY','Suez',417610),(614,'al-Mahallat al-Kubra','EGY','al-Gharbiya',395402),(615,'Tanta','EGY','al-Gharbiya',371010),(616,'al-Mansura','EGY','al-Daqahliya',369621),(617,'Luxor','EGY','Luxor',360503),(618,'Asyut','EGY','Asyut',343498),(619,'Bahtim','EGY','al-Qalyubiya',275807),(620,'Zagazig','EGY','al-Sharqiya',267351),(621,'al-Faiyum','EGY','al-Faiyum',260964),(622,'Ismailia','EGY','Ismailia',254477),(623,'Kafr al-Dawwar','EGY','al-Buhayra',231978),(624,'Assuan','EGY','Assuan',219017),(625,'Damanhur','EGY','al-Buhayra',212203),(626,'al-Minya','EGY','al-Minya',201360),(627,'Bani Suwayf','EGY','Bani Suwayf',172032),(628,'Qina','EGY','Qina',171275),(629,'Sawhaj','EGY','Sawhaj',170125),(630,'Shibin al-Kawm','EGY','al-Minufiya',159909),(631,'Bulaq al-Dakrur','EGY','Giza',148787),(632,'Banha','EGY','al-Qalyubiya',145792),(633,'Warraq al-Arab','EGY','Giza',127108),(634,'Kafr al-Shaykh','EGY','Kafr al-Shaykh',124819),(635,'Mallawi','EGY','al-Minya',119283),(636,'Bilbays','EGY','al-Sharqiya',113608),(637,'Mit Ghamr','EGY','al-Daqahliya',101801),(638,'al-Arish','EGY','Shamal Sina',100447),(639,'Talkha','EGY','al-Daqahliya',97700),(640,'Qalyub','EGY','al-Qalyubiya',97200),(641,'Jirja','EGY','Sawhaj',95400),(642,'Idfu','EGY','Qina',94200),(643,'al-Hawamidiya','EGY','Giza',91700),(644,'Disuq','EGY','Kafr al-Shaykh',91300),(645,'San Salvador','SLV','San Salvador',415346),(646,'Santa Ana','SLV','Santa Ana',139389),(647,'Mejicanos','SLV','San Salvador',138800),(648,'Soyapango','SLV','San Salvador',129800),(649,'San Miguel','SLV','San Miguel',127696),(650,'Nueva San Salvador','SLV','La Libertad',98400),(651,'Apopa','SLV','San Salvador',88800),(652,'Asmara','ERI','Maekel',431000),(653,'Madrid','ESP','Madrid',2879052),(654,'Barcelona','ESP','Katalonia',1503451),(655,'Valencia','ESP','Valencia',739412),(656,'Sevilla','ESP','Andalusia',701927),(657,'Zaragoza','ESP','Aragonia',603367),(658,'Málaga','ESP','Andalusia',530553),(659,'Bilbao','ESP','Baskimaa',357589),(660,'Las Palmas de Gran Canaria','ESP','Canary Islands',354757),(661,'Murcia','ESP','Murcia',353504),(662,'Palma de Mallorca','ESP','Balears',326993),(663,'Valladolid','ESP','Castilla and León',319998),(664,'Córdoba','ESP','Andalusia',311708),(665,'Vigo','ESP','Galicia',283670),(666,'Alicante [Alacant]','ESP','Valencia',272432),(667,'Gijón','ESP','Asturia',267980),(668,'L´Hospitalet de Llobregat','ESP','Katalonia',247986),(669,'Granada','ESP','Andalusia',244767),(670,'A Coruña (La Coruña)','ESP','Galicia',243402),(671,'Vitoria-Gasteiz','ESP','Baskimaa',217154),(672,'Santa Cruz de Tenerife','ESP','Canary Islands',213050),(673,'Badalona','ESP','Katalonia',209635),(674,'Oviedo','ESP','Asturia',200453),(675,'Móstoles','ESP','Madrid',195351),(676,'Elche [Elx]','ESP','Valencia',193174),(677,'Sabadell','ESP','Katalonia',184859),(678,'Santander','ESP','Cantabria',184165),(679,'Jerez de la Frontera','ESP','Andalusia',182660),(680,'Pamplona [Iruña]','ESP','Navarra',180483),(681,'Donostia-San Sebastián','ESP','Baskimaa',179208),(682,'Cartagena','ESP','Murcia',177709),(683,'Leganés','ESP','Madrid',173163),(684,'Fuenlabrada','ESP','Madrid',171173),(685,'Almería','ESP','Andalusia',169027),(686,'Terrassa','ESP','Katalonia',168695),(687,'Alcalá de Henares','ESP','Madrid',164463),(688,'Burgos','ESP','Castilla and León',162802),(689,'Salamanca','ESP','Castilla and León',158720),(690,'Albacete','ESP','Kastilia-La Mancha',147527),(691,'Getafe','ESP','Madrid',145371),(692,'Cádiz','ESP','Andalusia',142449),(693,'Alcorcón','ESP','Madrid',142048),(694,'Huelva','ESP','Andalusia',140583),(695,'León','ESP','Castilla and León',139809),(696,'Castellón de la Plana [Castell','ESP','Valencia',139712),(697,'Badajoz','ESP','Extremadura',136613),(698,'[San Cristóbal de] la Laguna','ESP','Canary Islands',127945),(699,'Logroño','ESP','La Rioja',127093),(700,'Santa Coloma de Gramenet','ESP','Katalonia',120802),(701,'Tarragona','ESP','Katalonia',113016),(702,'Lleida (Lérida)','ESP','Katalonia',112207),(703,'Jaén','ESP','Andalusia',109247),(704,'Ourense (Orense)','ESP','Galicia',109120),(705,'Mataró','ESP','Katalonia',104095),(706,'Algeciras','ESP','Andalusia',103106),(707,'Marbella','ESP','Andalusia',101144),(708,'Barakaldo','ESP','Baskimaa',98212),(709,'Dos Hermanas','ESP','Andalusia',94591),(710,'Santiago de Compostela','ESP','Galicia',93745),(711,'Torrejón de Ardoz','ESP','Madrid',92262),(712,'Cape Town','ZAF','Western Cape',2352121),(713,'Soweto','ZAF','Gauteng',904165),(714,'Johannesburg','ZAF','Gauteng',756653),(715,'Port Elizabeth','ZAF','Eastern Cape',752319),(716,'Pretoria','ZAF','Gauteng',658630),(717,'Inanda','ZAF','KwaZulu-Natal',634065),(718,'Durban','ZAF','KwaZulu-Natal',566120),(719,'Vanderbijlpark','ZAF','Gauteng',468931),(720,'Kempton Park','ZAF','Gauteng',442633),(721,'Alberton','ZAF','Gauteng',410102),(722,'Pinetown','ZAF','KwaZulu-Natal',378810),(723,'Pietermaritzburg','ZAF','KwaZulu-Natal',370190),(724,'Benoni','ZAF','Gauteng',365467),(725,'Randburg','ZAF','Gauteng',341288),(726,'Umlazi','ZAF','KwaZulu-Natal',339233),(727,'Bloemfontein','ZAF','Free State',334341),(728,'Vereeniging','ZAF','Gauteng',328535),(729,'Wonderboom','ZAF','Gauteng',283289),(730,'Roodepoort','ZAF','Gauteng',279340),(731,'Boksburg','ZAF','Gauteng',262648),(732,'Klerksdorp','ZAF','North West',261911),(733,'Soshanguve','ZAF','Gauteng',242727),(734,'Newcastle','ZAF','KwaZulu-Natal',222993),(735,'East London','ZAF','Eastern Cape',221047),(736,'Welkom','ZAF','Free State',203296),(737,'Kimberley','ZAF','Northern Cape',197254),(738,'Uitenhage','ZAF','Eastern Cape',192120),(739,'Chatsworth','ZAF','KwaZulu-Natal',189885),(740,'Mdantsane','ZAF','Eastern Cape',182639),(741,'Krugersdorp','ZAF','Gauteng',181503),(742,'Botshabelo','ZAF','Free State',177971),(743,'Brakpan','ZAF','Gauteng',171363),(744,'Witbank','ZAF','Mpumalanga',167183),(745,'Oberholzer','ZAF','Gauteng',164367),(746,'Germiston','ZAF','Gauteng',164252),(747,'Springs','ZAF','Gauteng',162072),(748,'Westonaria','ZAF','Gauteng',159632),(749,'Randfontein','ZAF','Gauteng',120838),(750,'Paarl','ZAF','Western Cape',105768),(751,'Potchefstroom','ZAF','North West',101817),(752,'Rustenburg','ZAF','North West',97008),(753,'Nigel','ZAF','Gauteng',96734),(754,'George','ZAF','Western Cape',93818),(755,'Ladysmith','ZAF','KwaZulu-Natal',89292),(756,'Addis Abeba','ETH','Addis Abeba',2495000),(757,'Dire Dawa','ETH','Dire Dawa',164851),(758,'Nazret','ETH','Oromia',127842),(759,'Gonder','ETH','Amhara',112249),(760,'Dese','ETH','Amhara',97314),(761,'Mekele','ETH','Tigray',96938),(762,'Bahir Dar','ETH','Amhara',96140),(763,'Stanley','FLK','East Falkland',1636),(764,'Suva','FJI','Central',77366),(765,'Quezon','PHL','National Capital Reg',2173831),(766,'Manila','PHL','National Capital Reg',1581082),(767,'Kalookan','PHL','National Capital Reg',1177604),(768,'Davao','PHL','Southern Mindanao',1147116),(769,'Cebu','PHL','Central Visayas',718821),(770,'Zamboanga','PHL','Western Mindanao',601794),(771,'Pasig','PHL','National Capital Reg',505058),(772,'Valenzuela','PHL','National Capital Reg',485433),(773,'Las Piñas','PHL','National Capital Reg',472780),(774,'Antipolo','PHL','Southern Tagalog',470866),(775,'Taguig','PHL','National Capital Reg',467375),(776,'Cagayan de Oro','PHL','Northern Mindanao',461877),(777,'Parañaque','PHL','National Capital Reg',449811),(778,'Makati','PHL','National Capital Reg',444867),(779,'Bacolod','PHL','Western Visayas',429076),(780,'General Santos','PHL','Southern Mindanao',411822),(781,'Marikina','PHL','National Capital Reg',391170),(782,'Dasmariñas','PHL','Southern Tagalog',379520),(783,'Muntinlupa','PHL','National Capital Reg',379310),(784,'Iloilo','PHL','Western Visayas',365820),(785,'Pasay','PHL','National Capital Reg',354908),(786,'Malabon','PHL','National Capital Reg',338855),(787,'San José del Monte','PHL','Central Luzon',315807),(788,'Bacoor','PHL','Southern Tagalog',305699),(789,'Iligan','PHL','Central Mindanao',285061),(790,'Calamba','PHL','Southern Tagalog',281146),(791,'Mandaluyong','PHL','National Capital Reg',278474),(792,'Butuan','PHL','Caraga',267279),(793,'Angeles','PHL','Central Luzon',263971),(794,'Tarlac','PHL','Central Luzon',262481),(795,'Mandaue','PHL','Central Visayas',259728),(796,'Baguio','PHL','CAR',252386),(797,'Batangas','PHL','Southern Tagalog',247588),(798,'Cainta','PHL','Southern Tagalog',242511),(799,'San Pedro','PHL','Southern Tagalog',231403),(800,'Navotas','PHL','National Capital Reg',230403),(801,'Cabanatuan','PHL','Central Luzon',222859),(802,'San Fernando','PHL','Central Luzon',221857),(803,'Lipa','PHL','Southern Tagalog',218447),(804,'Lapu-Lapu','PHL','Central Visayas',217019),(805,'San Pablo','PHL','Southern Tagalog',207927),(806,'Biñan','PHL','Southern Tagalog',201186),(807,'Taytay','PHL','Southern Tagalog',198183),(808,'Lucena','PHL','Southern Tagalog',196075),(809,'Imus','PHL','Southern Tagalog',195482),(810,'Olongapo','PHL','Central Luzon',194260),(811,'Binangonan','PHL','Southern Tagalog',187691),(812,'Santa Rosa','PHL','Southern Tagalog',185633),(813,'Tagum','PHL','Southern Mindanao',179531),(814,'Tacloban','PHL','Eastern Visayas',178639),(815,'Malolos','PHL','Central Luzon',175291),(816,'Mabalacat','PHL','Central Luzon',171045),(817,'Cotabato','PHL','Central Mindanao',163849),(818,'Meycauayan','PHL','Central Luzon',163037),(819,'Puerto Princesa','PHL','Southern Tagalog',161912),(820,'Legazpi','PHL','Bicol',157010),(821,'Silang','PHL','Southern Tagalog',156137),(822,'Ormoc','PHL','Eastern Visayas',154297),(823,'San Carlos','PHL','Ilocos',154264),(824,'Kabankalan','PHL','Western Visayas',149769),(825,'Talisay','PHL','Central Visayas',148110),(826,'Valencia','PHL','Northern Mindanao',147924),(827,'Calbayog','PHL','Eastern Visayas',147187),(828,'Santa Maria','PHL','Central Luzon',144282),(829,'Pagadian','PHL','Western Mindanao',142515),(830,'Cadiz','PHL','Western Visayas',141954),(831,'Bago','PHL','Western Visayas',141721),(832,'Toledo','PHL','Central Visayas',141174),(833,'Naga','PHL','Bicol',137810),(834,'San Mateo','PHL','Southern Tagalog',135603),(835,'Panabo','PHL','Southern Mindanao',133950),(836,'Koronadal','PHL','Southern Mindanao',133786),(837,'Marawi','PHL','Central Mindanao',131090),(838,'Dagupan','PHL','Ilocos',130328),(839,'Sagay','PHL','Western Visayas',129765),(840,'Roxas','PHL','Western Visayas',126352),(841,'Lubao','PHL','Central Luzon',125699),(842,'Digos','PHL','Southern Mindanao',125171),(843,'San Miguel','PHL','Central Luzon',123824),(844,'Malaybalay','PHL','Northern Mindanao',123672),(845,'Tuguegarao','PHL','Cagayan Valley',120645),(846,'Ilagan','PHL','Cagayan Valley',119990),(847,'Baliuag','PHL','Central Luzon',119675),(848,'Surigao','PHL','Caraga',118534),(849,'San Carlos','PHL','Western Visayas',118259),(850,'San Juan del Monte','PHL','National Capital Reg',117680),(851,'Tanauan','PHL','Southern Tagalog',117539),(852,'Concepcion','PHL','Central Luzon',115171),(853,'Rodriguez (Montalban)','PHL','Southern Tagalog',115167),(854,'Sariaya','PHL','Southern Tagalog',114568),(855,'Malasiqui','PHL','Ilocos',113190),(856,'General Mariano Alvarez','PHL','Southern Tagalog',112446),(857,'Urdaneta','PHL','Ilocos',111582),(858,'Hagonoy','PHL','Central Luzon',111425),(859,'San Jose','PHL','Southern Tagalog',111009),(860,'Polomolok','PHL','Southern Mindanao',110709),(861,'Santiago','PHL','Cagayan Valley',110531),(862,'Tanza','PHL','Southern Tagalog',110517),(863,'Ozamis','PHL','Northern Mindanao',110420),(864,'Mexico','PHL','Central Luzon',109481),(865,'San Jose','PHL','Central Luzon',108254),(866,'Silay','PHL','Western Visayas',107722),(867,'General Trias','PHL','Southern Tagalog',107691),(868,'Tabaco','PHL','Bicol',107166),(869,'Cabuyao','PHL','Southern Tagalog',106630),(870,'Calapan','PHL','Southern Tagalog',105910),(871,'Mati','PHL','Southern Mindanao',105908),(872,'Midsayap','PHL','Central Mindanao',105760),(873,'Cauayan','PHL','Cagayan Valley',103952),(874,'Gingoog','PHL','Northern Mindanao',102379),(875,'Dumaguete','PHL','Central Visayas',102265),(876,'San Fernando','PHL','Ilocos',102082),(877,'Arayat','PHL','Central Luzon',101792),(878,'Bayawan (Tulong)','PHL','Central Visayas',101391),(879,'Kidapawan','PHL','Central Mindanao',101205),(880,'Daraga (Locsin)','PHL','Bicol',101031),(881,'Marilao','PHL','Central Luzon',101017),(882,'Malita','PHL','Southern Mindanao',100000),(883,'Dipolog','PHL','Western Mindanao',99862),(884,'Cavite','PHL','Southern Tagalog',99367),(885,'Danao','PHL','Central Visayas',98781),(886,'Bislig','PHL','Caraga',97860),(887,'Talavera','PHL','Central Luzon',97329),(888,'Guagua','PHL','Central Luzon',96858),(889,'Bayambang','PHL','Ilocos',96609),(890,'Nasugbu','PHL','Southern Tagalog',96113),(891,'Baybay','PHL','Eastern Visayas',95630),(892,'Capas','PHL','Central Luzon',95219),(893,'Sultan Kudarat','PHL','ARMM',94861),(894,'Laoag','PHL','Ilocos',94466),(895,'Bayugan','PHL','Caraga',93623),(896,'Malungon','PHL','Southern Mindanao',93232),(897,'Santa Cruz','PHL','Southern Tagalog',92694),(898,'Sorsogon','PHL','Bicol',92512),(899,'Candelaria','PHL','Southern Tagalog',92429),(900,'Ligao','PHL','Bicol',90603),(901,'Tórshavn','FRO','Streymoyar',14542),(902,'Libreville','GAB','Estuaire',419000),(903,'Serekunda','GMB','Kombo St Mary',102600),(904,'Banjul','GMB','Banjul',42326),(905,'Tbilisi','GEO','Tbilisi',1235200),(906,'Kutaisi','GEO','Imereti',240900),(907,'Rustavi','GEO','Kvemo Kartli',155400),(908,'Batumi','GEO','Adzaria [Atšara]',137700),(909,'Sohumi','GEO','Abhasia [Aphazeti]',111700),(910,'Accra','GHA','Greater Accra',1070000),(911,'Kumasi','GHA','Ashanti',385192),(912,'Tamale','GHA','Northern',151069),(913,'Tema','GHA','Greater Accra',109975),(914,'Sekondi-Takoradi','GHA','Western',103653),(915,'Gibraltar','GIB','–',27025),(916,'Saint George´s','GRD','St George',4621),(917,'Nuuk','GRL','Kitaa',13445),(918,'Les Abymes','GLP','Grande-Terre',62947),(919,'Basse-Terre','GLP','Basse-Terre',12433),(920,'Tamuning','GUM','–',9500),(921,'Agaña','GUM','–',1139),(922,'Ciudad de Guatemala','GTM','Guatemala',823301),(923,'Mixco','GTM','Guatemala',209791),(924,'Villa Nueva','GTM','Guatemala',101295),(925,'Quetzaltenango','GTM','Quetzaltenango',90801),(926,'Conakry','GIN','Conakry',1090610),(927,'Bissau','GNB','Bissau',241000),(928,'Georgetown','GUY','Georgetown',254000),(929,'Port-au-Prince','HTI','Ouest',884472),(930,'Carrefour','HTI','Ouest',290204),(931,'Delmas','HTI','Ouest',240429),(932,'Le-Cap-Haïtien','HTI','Nord',102233),(933,'Tegucigalpa','HND','Distrito Central',813900),(934,'San Pedro Sula','HND','Cortés',383900),(935,'La Ceiba','HND','Atlántida',89200),(936,'Kowloon and New Kowloon','HKG','Kowloon and New Kowl',1987996),(937,'Victoria','HKG','Hongkong',1312637),(938,'Longyearbyen','SJM','Länsimaa',1438),(939,'Jakarta','IDN','Jakarta Raya',9604900),(940,'Surabaya','IDN','East Java',2663820),(941,'Bandung','IDN','West Java',2429000),(942,'Medan','IDN','Sumatera Utara',1843919),(943,'Palembang','IDN','Sumatera Selatan',1222764),(944,'Tangerang','IDN','West Java',1198300),(945,'Semarang','IDN','Central Java',1104405),(946,'Ujung Pandang','IDN','Sulawesi Selatan',1060257),(947,'Malang','IDN','East Java',716862),(948,'Bandar Lampung','IDN','Lampung',680332),(949,'Bekasi','IDN','West Java',644300),(950,'Padang','IDN','Sumatera Barat',534474),(951,'Surakarta','IDN','Central Java',518600),(952,'Banjarmasin','IDN','Kalimantan Selatan',482931),(953,'Pekan Baru','IDN','Riau',438638),(954,'Denpasar','IDN','Bali',435000),(955,'Yogyakarta','IDN','Yogyakarta',418944),(956,'Pontianak','IDN','Kalimantan Barat',409632),(957,'Samarinda','IDN','Kalimantan Timur',399175),(958,'Jambi','IDN','Jambi',385201),(959,'Depok','IDN','West Java',365200),(960,'Cimahi','IDN','West Java',344600),(961,'Balikpapan','IDN','Kalimantan Timur',338752),(962,'Manado','IDN','Sulawesi Utara',332288),(963,'Mataram','IDN','Nusa Tenggara Barat',306600),(964,'Pekalongan','IDN','Central Java',301504),(965,'Tegal','IDN','Central Java',289744),(966,'Bogor','IDN','West Java',285114),(967,'Ciputat','IDN','West Java',270800),(968,'Pondokgede','IDN','West Java',263200),(969,'Cirebon','IDN','West Java',254406),(970,'Kediri','IDN','East Java',253760),(971,'Ambon','IDN','Molukit',249312),(972,'Jember','IDN','East Java',218500),(973,'Cilacap','IDN','Central Java',206900),(974,'Cimanggis','IDN','West Java',205100),(975,'Pematang Siantar','IDN','Sumatera Utara',203056),(976,'Purwokerto','IDN','Central Java',202500),(977,'Ciomas','IDN','West Java',187400),(978,'Tasikmalaya','IDN','West Java',179800),(979,'Madiun','IDN','East Java',171532),(980,'Bengkulu','IDN','Bengkulu',146439),(981,'Karawang','IDN','West Java',145000),(982,'Banda Aceh','IDN','Aceh',143409),(983,'Palu','IDN','Sulawesi Tengah',142800),(984,'Pasuruan','IDN','East Java',134019),(985,'Kupang','IDN','Nusa Tenggara Timur',129300),(986,'Tebing Tinggi','IDN','Sumatera Utara',129300),(987,'Percut Sei Tuan','IDN','Sumatera Utara',129000),(988,'Binjai','IDN','Sumatera Utara',127222),(989,'Sukabumi','IDN','West Java',125766),(990,'Waru','IDN','East Java',124300),(991,'Pangkal Pinang','IDN','Sumatera Selatan',124000),(992,'Magelang','IDN','Central Java',123800),(993,'Blitar','IDN','East Java',122600),(994,'Serang','IDN','West Java',122400),(995,'Probolinggo','IDN','East Java',120770),(996,'Cilegon','IDN','West Java',117000),(997,'Cianjur','IDN','West Java',114300),(998,'Ciparay','IDN','West Java',111500),(999,'Lhokseumawe','IDN','Aceh',109600),(1000,'Taman','IDN','East Java',107000),(1001,'Depok','IDN','Yogyakarta',106800),(1002,'Citeureup','IDN','West Java',105100),(1003,'Pemalang','IDN','Central Java',103500),(1004,'Klaten','IDN','Central Java',103300),(1005,'Salatiga','IDN','Central Java',103000),(1006,'Cibinong','IDN','West Java',101300),(1007,'Palangka Raya','IDN','Kalimantan Tengah',99693),(1008,'Mojokerto','IDN','East Java',96626),(1009,'Purwakarta','IDN','West Java',95900),(1010,'Garut','IDN','West Java',95800),(1011,'Kudus','IDN','Central Java',95300),(1012,'Kendari','IDN','Sulawesi Tenggara',94800),(1013,'Jaya Pura','IDN','West Irian',94700),(1014,'Gorontalo','IDN','Sulawesi Utara',94058),(1015,'Majalaya','IDN','West Java',93200),(1016,'Pondok Aren','IDN','West Java',92700),(1017,'Jombang','IDN','East Java',92600),(1018,'Sunggal','IDN','Sumatera Utara',92300),(1019,'Batam','IDN','Riau',91871),(1020,'Padang Sidempuan','IDN','Sumatera Utara',91200),(1021,'Sawangan','IDN','West Java',91100),(1022,'Banyuwangi','IDN','East Java',89900),(1023,'Tanjung Pinang','IDN','Riau',89900),(1024,'Mumbai (Bombay)','IND','Maharashtra',10500000),(1025,'Delhi','IND','Delhi',7206704),(1026,'Calcutta [Kolkata]','IND','West Bengali',4399819),(1027,'Chennai (Madras)','IND','Tamil Nadu',3841396),(1028,'Hyderabad','IND','Andhra Pradesh',2964638),(1029,'Ahmedabad','IND','Gujarat',2876710),(1030,'Bangalore','IND','Karnataka',2660088),(1031,'Kanpur','IND','Uttar Pradesh',1874409),(1032,'Nagpur','IND','Maharashtra',1624752),(1033,'Lucknow','IND','Uttar Pradesh',1619115),(1034,'Pune','IND','Maharashtra',1566651),(1035,'Surat','IND','Gujarat',1498817),(1036,'Jaipur','IND','Rajasthan',1458483),(1037,'Indore','IND','Madhya Pradesh',1091674),(1038,'Bhopal','IND','Madhya Pradesh',1062771),(1039,'Ludhiana','IND','Punjab',1042740),(1040,'Vadodara (Baroda)','IND','Gujarat',1031346),(1041,'Kalyan','IND','Maharashtra',1014557),(1042,'Madurai','IND','Tamil Nadu',977856),(1043,'Haora (Howrah)','IND','West Bengali',950435),(1044,'Varanasi (Benares)','IND','Uttar Pradesh',929270),(1045,'Patna','IND','Bihar',917243),(1046,'Srinagar','IND','Jammu and Kashmir',892506),(1047,'Agra','IND','Uttar Pradesh',891790),(1048,'Coimbatore','IND','Tamil Nadu',816321),(1049,'Thane (Thana)','IND','Maharashtra',803389),(1050,'Allahabad','IND','Uttar Pradesh',792858),(1051,'Meerut','IND','Uttar Pradesh',753778),(1052,'Vishakhapatnam','IND','Andhra Pradesh',752037),(1053,'Jabalpur','IND','Madhya Pradesh',741927),(1054,'Amritsar','IND','Punjab',708835),(1055,'Faridabad','IND','Haryana',703592),(1056,'Vijayawada','IND','Andhra Pradesh',701827),(1057,'Gwalior','IND','Madhya Pradesh',690765),(1058,'Jodhpur','IND','Rajasthan',666279),(1059,'Nashik (Nasik)','IND','Maharashtra',656925),(1060,'Hubli-Dharwad','IND','Karnataka',648298),(1061,'Solapur (Sholapur)','IND','Maharashtra',604215),(1062,'Ranchi','IND','Jharkhand',599306),(1063,'Bareilly','IND','Uttar Pradesh',587211),(1064,'Guwahati (Gauhati)','IND','Assam',584342),(1065,'Shambajinagar (Aurangabad)','IND','Maharashtra',573272),(1066,'Cochin (Kochi)','IND','Kerala',564589),(1067,'Rajkot','IND','Gujarat',559407),(1068,'Kota','IND','Rajasthan',537371),(1069,'Thiruvananthapuram (Trivandrum','IND','Kerala',524006),(1070,'Pimpri-Chinchwad','IND','Maharashtra',517083),(1071,'Jalandhar (Jullundur)','IND','Punjab',509510),(1072,'Gorakhpur','IND','Uttar Pradesh',505566),(1073,'Chandigarh','IND','Chandigarh',504094),(1074,'Mysore','IND','Karnataka',480692),(1075,'Aligarh','IND','Uttar Pradesh',480520),(1076,'Guntur','IND','Andhra Pradesh',471051),(1077,'Jamshedpur','IND','Jharkhand',460577),(1078,'Ghaziabad','IND','Uttar Pradesh',454156),(1079,'Warangal','IND','Andhra Pradesh',447657),(1080,'Raipur','IND','Chhatisgarh',438639),(1081,'Moradabad','IND','Uttar Pradesh',429214),(1082,'Durgapur','IND','West Bengali',425836),(1083,'Amravati','IND','Maharashtra',421576),(1084,'Calicut (Kozhikode)','IND','Kerala',419831),(1085,'Bikaner','IND','Rajasthan',416289),(1086,'Bhubaneswar','IND','Orissa',411542),(1087,'Kolhapur','IND','Maharashtra',406370),(1088,'Kataka (Cuttack)','IND','Orissa',403418),(1089,'Ajmer','IND','Rajasthan',402700),(1090,'Bhavnagar','IND','Gujarat',402338),(1091,'Tiruchirapalli','IND','Tamil Nadu',387223),(1092,'Bhilai','IND','Chhatisgarh',386159),(1093,'Bhiwandi','IND','Maharashtra',379070),(1094,'Saharanpur','IND','Uttar Pradesh',374945),(1095,'Ulhasnagar','IND','Maharashtra',369077),(1096,'Salem','IND','Tamil Nadu',366712),(1097,'Ujjain','IND','Madhya Pradesh',362266),(1098,'Malegaon','IND','Maharashtra',342595),(1099,'Jamnagar','IND','Gujarat',341637),(1100,'Bokaro Steel City','IND','Jharkhand',333683),(1101,'Akola','IND','Maharashtra',328034),(1102,'Belgaum','IND','Karnataka',326399),(1103,'Rajahmundry','IND','Andhra Pradesh',324851),(1104,'Nellore','IND','Andhra Pradesh',316606),(1105,'Udaipur','IND','Rajasthan',308571),(1106,'New Bombay','IND','Maharashtra',307297),(1107,'Bhatpara','IND','West Bengali',304952),(1108,'Gulbarga','IND','Karnataka',304099),(1109,'New Delhi','IND','Delhi',301297),(1110,'Jhansi','IND','Uttar Pradesh',300850),(1111,'Gaya','IND','Bihar',291675),(1112,'Kakinada','IND','Andhra Pradesh',279980),(1113,'Dhule (Dhulia)','IND','Maharashtra',278317),(1114,'Panihati','IND','West Bengali',275990),(1115,'Nanded (Nander)','IND','Maharashtra',275083),(1116,'Mangalore','IND','Karnataka',273304),(1117,'Dehra Dun','IND','Uttaranchal',270159),(1118,'Kamarhati','IND','West Bengali',266889),(1119,'Davangere','IND','Karnataka',266082),(1120,'Asansol','IND','West Bengali',262188),(1121,'Bhagalpur','IND','Bihar',253225),(1122,'Bellary','IND','Karnataka',245391),(1123,'Barddhaman (Burdwan)','IND','West Bengali',245079),(1124,'Rampur','IND','Uttar Pradesh',243742),(1125,'Jalgaon','IND','Maharashtra',242193),(1126,'Muzaffarpur','IND','Bihar',241107),(1127,'Nizamabad','IND','Andhra Pradesh',241034),(1128,'Muzaffarnagar','IND','Uttar Pradesh',240609),(1129,'Patiala','IND','Punjab',238368),(1130,'Shahjahanpur','IND','Uttar Pradesh',237713),(1131,'Kurnool','IND','Andhra Pradesh',236800),(1132,'Tiruppur (Tirupper)','IND','Tamil Nadu',235661),(1133,'Rohtak','IND','Haryana',233400),(1134,'South Dum Dum','IND','West Bengali',232811),(1135,'Mathura','IND','Uttar Pradesh',226691),(1136,'Chandrapur','IND','Maharashtra',226105),(1137,'Barahanagar (Baranagar)','IND','West Bengali',224821),(1138,'Darbhanga','IND','Bihar',218391),(1139,'Siliguri (Shiliguri)','IND','West Bengali',216950),(1140,'Raurkela','IND','Orissa',215489),(1141,'Ambattur','IND','Tamil Nadu',215424),(1142,'Panipat','IND','Haryana',215218),(1143,'Firozabad','IND','Uttar Pradesh',215128),(1144,'Ichalkaranji','IND','Maharashtra',214950),(1145,'Jammu','IND','Jammu and Kashmir',214737),(1146,'Ramagundam','IND','Andhra Pradesh',214384),(1147,'Eluru','IND','Andhra Pradesh',212866),(1148,'Brahmapur','IND','Orissa',210418),(1149,'Alwar','IND','Rajasthan',205086),(1150,'Pondicherry','IND','Pondicherry',203065),(1151,'Thanjavur','IND','Tamil Nadu',202013),(1152,'Bihar Sharif','IND','Bihar',201323),(1153,'Tuticorin','IND','Tamil Nadu',199854),(1154,'Imphal','IND','Manipur',198535),(1155,'Latur','IND','Maharashtra',197408),(1156,'Sagar','IND','Madhya Pradesh',195346),(1157,'Farrukhabad-cum-Fatehgarh','IND','Uttar Pradesh',194567),(1158,'Sangli','IND','Maharashtra',193197),(1159,'Parbhani','IND','Maharashtra',190255),(1160,'Nagar Coil','IND','Tamil Nadu',190084),(1161,'Bijapur','IND','Karnataka',186939),(1162,'Kukatpalle','IND','Andhra Pradesh',185378),(1163,'Bally','IND','West Bengali',184474),(1164,'Bhilwara','IND','Rajasthan',183965),(1165,'Ratlam','IND','Madhya Pradesh',183375),(1166,'Avadi','IND','Tamil Nadu',183215),(1167,'Dindigul','IND','Tamil Nadu',182477),(1168,'Ahmadnagar','IND','Maharashtra',181339),(1169,'Bilaspur','IND','Chhatisgarh',179833),(1170,'Shimoga','IND','Karnataka',179258),(1171,'Kharagpur','IND','West Bengali',177989),(1172,'Mira Bhayandar','IND','Maharashtra',175372),(1173,'Vellore','IND','Tamil Nadu',175061),(1174,'Jalna','IND','Maharashtra',174985),(1175,'Burnpur','IND','West Bengali',174933),(1176,'Anantapur','IND','Andhra Pradesh',174924),(1177,'Allappuzha (Alleppey)','IND','Kerala',174666),(1178,'Tirupati','IND','Andhra Pradesh',174369),(1179,'Karnal','IND','Haryana',173751),(1180,'Burhanpur','IND','Madhya Pradesh',172710),(1181,'Hisar (Hissar)','IND','Haryana',172677),(1182,'Tiruvottiyur','IND','Tamil Nadu',172562),(1183,'Mirzapur-cum-Vindhyachal','IND','Uttar Pradesh',169336),(1184,'Secunderabad','IND','Andhra Pradesh',167461),(1185,'Nadiad','IND','Gujarat',167051),(1186,'Dewas','IND','Madhya Pradesh',164364),(1187,'Murwara (Katni)','IND','Madhya Pradesh',163431),(1188,'Ganganagar','IND','Rajasthan',161482),(1189,'Vizianagaram','IND','Andhra Pradesh',160359),(1190,'Erode','IND','Tamil Nadu',159232),(1191,'Machilipatnam (Masulipatam)','IND','Andhra Pradesh',159110),(1192,'Bhatinda (Bathinda)','IND','Punjab',159042),(1193,'Raichur','IND','Karnataka',157551),(1194,'Agartala','IND','Tripura',157358),(1195,'Arrah (Ara)','IND','Bihar',157082),(1196,'Satna','IND','Madhya Pradesh',156630),(1197,'Lalbahadur Nagar','IND','Andhra Pradesh',155500),(1198,'Aizawl','IND','Mizoram',155240),(1199,'Uluberia','IND','West Bengali',155172),(1200,'Katihar','IND','Bihar',154367),(1201,'Cuddalore','IND','Tamil Nadu',153086),(1202,'Hugli-Chinsurah','IND','West Bengali',151806),(1203,'Dhanbad','IND','Jharkhand',151789),(1204,'Raiganj','IND','West Bengali',151045),(1205,'Sambhal','IND','Uttar Pradesh',150869),(1206,'Durg','IND','Chhatisgarh',150645),(1207,'Munger (Monghyr)','IND','Bihar',150112),(1208,'Kanchipuram','IND','Tamil Nadu',150100),(1209,'North Dum Dum','IND','West Bengali',149965),(1210,'Karimnagar','IND','Andhra Pradesh',148583),(1211,'Bharatpur','IND','Rajasthan',148519),(1212,'Sikar','IND','Rajasthan',148272),(1213,'Hardwar (Haridwar)','IND','Uttaranchal',147305),(1214,'Dabgram','IND','West Bengali',147217),(1215,'Morena','IND','Madhya Pradesh',147124),(1216,'Noida','IND','Uttar Pradesh',146514),(1217,'Hapur','IND','Uttar Pradesh',146262),(1218,'Bhusawal','IND','Maharashtra',145143),(1219,'Khandwa','IND','Madhya Pradesh',145133),(1220,'Yamuna Nagar','IND','Haryana',144346),(1221,'Sonipat (Sonepat)','IND','Haryana',143922),(1222,'Tenali','IND','Andhra Pradesh',143726),(1223,'Raurkela Civil Township','IND','Orissa',140408),(1224,'Kollam (Quilon)','IND','Kerala',139852),(1225,'Kumbakonam','IND','Tamil Nadu',139483),(1226,'Ingraj Bazar (English Bazar)','IND','West Bengali',139204),(1227,'Timkur','IND','Karnataka',138903),(1228,'Amroha','IND','Uttar Pradesh',137061),(1229,'Serampore','IND','West Bengali',137028),(1230,'Chapra','IND','Bihar',136877),(1231,'Pali','IND','Rajasthan',136842),(1232,'Maunath Bhanjan','IND','Uttar Pradesh',136697),(1233,'Adoni','IND','Andhra Pradesh',136182),(1234,'Jaunpur','IND','Uttar Pradesh',136062),(1235,'Tirunelveli','IND','Tamil Nadu',135825),(1236,'Bahraich','IND','Uttar Pradesh',135400),(1237,'Gadag Betigeri','IND','Karnataka',134051),(1238,'Proddatur','IND','Andhra Pradesh',133914),(1239,'Chittoor','IND','Andhra Pradesh',133462),(1240,'Barrackpur','IND','West Bengali',133265),(1241,'Bharuch (Broach)','IND','Gujarat',133102),(1242,'Naihati','IND','West Bengali',132701),(1243,'Shillong','IND','Meghalaya',131719),(1244,'Sambalpur','IND','Orissa',131138),(1245,'Junagadh','IND','Gujarat',130484),(1246,'Rae Bareli','IND','Uttar Pradesh',129904),(1247,'Rewa','IND','Madhya Pradesh',128981),(1248,'Gurgaon','IND','Haryana',128608),(1249,'Khammam','IND','Andhra Pradesh',127992),(1250,'Bulandshahr','IND','Uttar Pradesh',127201),(1251,'Navsari','IND','Gujarat',126089),(1252,'Malkajgiri','IND','Andhra Pradesh',126066),(1253,'Midnapore (Medinipur)','IND','West Bengali',125498),(1254,'Miraj','IND','Maharashtra',125407),(1255,'Raj Nandgaon','IND','Chhatisgarh',125371),(1256,'Alandur','IND','Tamil Nadu',125244),(1257,'Puri','IND','Orissa',125199),(1258,'Navadwip','IND','West Bengali',125037),(1259,'Sirsa','IND','Haryana',125000),(1260,'Korba','IND','Chhatisgarh',124501),(1261,'Faizabad','IND','Uttar Pradesh',124437),(1262,'Etawah','IND','Uttar Pradesh',124072),(1263,'Pathankot','IND','Punjab',123930),(1264,'Gandhinagar','IND','Gujarat',123359),(1265,'Palghat (Palakkad)','IND','Kerala',123289),(1266,'Veraval','IND','Gujarat',123000),(1267,'Hoshiarpur','IND','Punjab',122705),(1268,'Ambala','IND','Haryana',122596),(1269,'Sitapur','IND','Uttar Pradesh',121842),(1270,'Bhiwani','IND','Haryana',121629),(1271,'Cuddapah','IND','Andhra Pradesh',121463),(1272,'Bhimavaram','IND','Andhra Pradesh',121314),(1273,'Krishnanagar','IND','West Bengali',121110),(1274,'Chandannagar','IND','West Bengali',120378),(1275,'Mandya','IND','Karnataka',120265),(1276,'Dibrugarh','IND','Assam',120127),(1277,'Nandyal','IND','Andhra Pradesh',119813),(1278,'Balurghat','IND','West Bengali',119796),(1279,'Neyveli','IND','Tamil Nadu',118080),(1280,'Fatehpur','IND','Uttar Pradesh',117675),(1281,'Mahbubnagar','IND','Andhra Pradesh',116833),(1282,'Budaun','IND','Uttar Pradesh',116695),(1283,'Porbandar','IND','Gujarat',116671),(1284,'Silchar','IND','Assam',115483),(1285,'Berhampore (Baharampur)','IND','West Bengali',115144),(1286,'Purnea (Purnia)','IND','Jharkhand',114912),(1287,'Bankura','IND','West Bengali',114876),(1288,'Rajapalaiyam','IND','Tamil Nadu',114202),(1289,'Titagarh','IND','West Bengali',114085),(1290,'Halisahar','IND','West Bengali',114028),(1291,'Hathras','IND','Uttar Pradesh',113285),(1292,'Bhir (Bid)','IND','Maharashtra',112434),(1293,'Pallavaram','IND','Tamil Nadu',111866),(1294,'Anand','IND','Gujarat',110266),(1295,'Mango','IND','Jharkhand',110024),(1296,'Santipur','IND','West Bengali',109956),(1297,'Bhind','IND','Madhya Pradesh',109755),(1298,'Gondiya','IND','Maharashtra',109470),(1299,'Tiruvannamalai','IND','Tamil Nadu',109196),(1300,'Yeotmal (Yavatmal)','IND','Maharashtra',108578),(1301,'Kulti-Barakar','IND','West Bengali',108518),(1302,'Moga','IND','Punjab',108304),(1303,'Shivapuri','IND','Madhya Pradesh',108277),(1304,'Bidar','IND','Karnataka',108016),(1305,'Guntakal','IND','Andhra Pradesh',107592),(1306,'Unnao','IND','Uttar Pradesh',107425),(1307,'Barasat','IND','West Bengali',107365),(1308,'Tambaram','IND','Tamil Nadu',107187),(1309,'Abohar','IND','Punjab',107163),(1310,'Pilibhit','IND','Uttar Pradesh',106605),(1311,'Valparai','IND','Tamil Nadu',106523),(1312,'Gonda','IND','Uttar Pradesh',106078),(1313,'Surendranagar','IND','Gujarat',105973),(1314,'Qutubullapur','IND','Andhra Pradesh',105380),(1315,'Beawar','IND','Rajasthan',105363),(1316,'Hindupur','IND','Andhra Pradesh',104651),(1317,'Gandhidham','IND','Gujarat',104585),(1318,'Haldwani-cum-Kathgodam','IND','Uttaranchal',104195),(1319,'Tellicherry (Thalassery)','IND','Kerala',103579),(1320,'Wardha','IND','Maharashtra',102985),(1321,'Rishra','IND','West Bengali',102649),(1322,'Bhuj','IND','Gujarat',102176),(1323,'Modinagar','IND','Uttar Pradesh',101660),(1324,'Gudivada','IND','Andhra Pradesh',101656),(1325,'Basirhat','IND','West Bengali',101409),(1326,'Uttarpara-Kotrung','IND','West Bengali',100867),(1327,'Ongole','IND','Andhra Pradesh',100836),(1328,'North Barrackpur','IND','West Bengali',100513),(1329,'Guna','IND','Madhya Pradesh',100490),(1330,'Haldia','IND','West Bengali',100347),(1331,'Habra','IND','West Bengali',100223),(1332,'Kanchrapara','IND','West Bengali',100194),(1333,'Tonk','IND','Rajasthan',100079),(1334,'Champdani','IND','West Bengali',98818),(1335,'Orai','IND','Uttar Pradesh',98640),(1336,'Pudukkottai','IND','Tamil Nadu',98619),(1337,'Sasaram','IND','Bihar',98220),(1338,'Hazaribag','IND','Jharkhand',97712),(1339,'Palayankottai','IND','Tamil Nadu',97662),(1340,'Banda','IND','Uttar Pradesh',97227),(1341,'Godhra','IND','Gujarat',96813),(1342,'Hospet','IND','Karnataka',96322),(1343,'Ashoknagar-Kalyangarh','IND','West Bengali',96315),(1344,'Achalpur','IND','Maharashtra',96216),(1345,'Patan','IND','Gujarat',96109),(1346,'Mandasor','IND','Madhya Pradesh',95758),(1347,'Damoh','IND','Madhya Pradesh',95661),(1348,'Satara','IND','Maharashtra',95133),(1349,'Meerut Cantonment','IND','Uttar Pradesh',94876),(1350,'Dehri','IND','Bihar',94526),(1351,'Delhi Cantonment','IND','Delhi',94326),(1352,'Chhindwara','IND','Madhya Pradesh',93731),(1353,'Bansberia','IND','West Bengali',93447),(1354,'Nagaon','IND','Assam',93350),(1355,'Kanpur Cantonment','IND','Uttar Pradesh',93109),(1356,'Vidisha','IND','Madhya Pradesh',92917),(1357,'Bettiah','IND','Bihar',92583),(1358,'Purulia','IND','Jharkhand',92574),(1359,'Hassan','IND','Karnataka',90803),(1360,'Ambala Sadar','IND','Haryana',90712),(1361,'Baidyabati','IND','West Bengali',90601),(1362,'Morvi','IND','Gujarat',90357),(1363,'Raigarh','IND','Chhatisgarh',89166),(1364,'Vejalpur','IND','Gujarat',89053),(1365,'Baghdad','IRQ','Baghdad',4336000),(1366,'Mosul','IRQ','Ninawa',879000),(1367,'Irbil','IRQ','Irbil',485968),(1368,'Kirkuk','IRQ','al-Tamim',418624),(1369,'Basra','IRQ','Basra',406296),(1370,'al-Sulaymaniya','IRQ','al-Sulaymaniya',364096),(1371,'al-Najaf','IRQ','al-Najaf',309010),(1372,'Karbala','IRQ','Karbala',296705),(1373,'al-Hilla','IRQ','Babil',268834),(1374,'al-Nasiriya','IRQ','DhiQar',265937),(1375,'al-Amara','IRQ','Maysan',208797),(1376,'al-Diwaniya','IRQ','al-Qadisiya',196519),(1377,'al-Ramadi','IRQ','al-Anbar',192556),(1378,'al-Kut','IRQ','Wasit',183183),(1379,'Baquba','IRQ','Diyala',114516),(1380,'Teheran','IRN','Teheran',6758845),(1381,'Mashhad','IRN','Khorasan',1887405),(1382,'Esfahan','IRN','Esfahan',1266072),(1383,'Tabriz','IRN','East Azerbaidzan',1191043),(1384,'Shiraz','IRN','Fars',1053025),(1385,'Karaj','IRN','Teheran',940968),(1386,'Ahvaz','IRN','Khuzestan',804980),(1387,'Qom','IRN','Qom',777677),(1388,'Kermanshah','IRN','Kermanshah',692986),(1389,'Urmia','IRN','West Azerbaidzan',435200),(1390,'Zahedan','IRN','Sistan va Baluchesta',419518),(1391,'Rasht','IRN','Gilan',417748),(1392,'Hamadan','IRN','Hamadan',401281),(1393,'Kerman','IRN','Kerman',384991),(1394,'Arak','IRN','Markazi',380755),(1395,'Ardebil','IRN','Ardebil',340386),(1396,'Yazd','IRN','Yazd',326776),(1397,'Qazvin','IRN','Qazvin',291117),(1398,'Zanjan','IRN','Zanjan',286295),(1399,'Sanandaj','IRN','Kordestan',277808),(1400,'Bandar-e-Abbas','IRN','Hormozgan',273578),(1401,'Khorramabad','IRN','Lorestan',272815),(1402,'Eslamshahr','IRN','Teheran',265450),(1403,'Borujerd','IRN','Lorestan',217804),(1404,'Abadan','IRN','Khuzestan',206073),(1405,'Dezful','IRN','Khuzestan',202639),(1406,'Kashan','IRN','Esfahan',201372),(1407,'Sari','IRN','Mazandaran',195882),(1408,'Gorgan','IRN','Golestan',188710),(1409,'Najafabad','IRN','Esfahan',178498),(1410,'Sabzevar','IRN','Khorasan',170738),(1411,'Khomeynishahr','IRN','Esfahan',165888),(1412,'Amol','IRN','Mazandaran',159092),(1413,'Neyshabur','IRN','Khorasan',158847),(1414,'Babol','IRN','Mazandaran',158346),(1415,'Khoy','IRN','West Azerbaidzan',148944),(1416,'Malayer','IRN','Hamadan',144373),(1417,'Bushehr','IRN','Bushehr',143641),(1418,'Qaemshahr','IRN','Mazandaran',143286),(1419,'Qarchak','IRN','Teheran',142690),(1420,'Qods','IRN','Teheran',138278),(1421,'Sirjan','IRN','Kerman',135024),(1422,'Bojnurd','IRN','Khorasan',134835),(1423,'Maragheh','IRN','East Azerbaidzan',132318),(1424,'Birjand','IRN','Khorasan',127608),(1425,'Ilam','IRN','Ilam',126346),(1426,'Bukan','IRN','West Azerbaidzan',120020),(1427,'Masjed-e-Soleyman','IRN','Khuzestan',116883),(1428,'Saqqez','IRN','Kordestan',115394),(1429,'Gonbad-e Qabus','IRN','Mazandaran',111253),(1430,'Saveh','IRN','Qom',111245),(1431,'Mahabad','IRN','West Azerbaidzan',107799),(1432,'Varamin','IRN','Teheran',107233),(1433,'Andimeshk','IRN','Khuzestan',106923),(1434,'Khorramshahr','IRN','Khuzestan',105636),(1435,'Shahrud','IRN','Semnan',104765),(1436,'Marv Dasht','IRN','Fars',103579),(1437,'Zabol','IRN','Sistan va Baluchesta',100887),(1438,'Shahr-e Kord','IRN','Chaharmahal va Bakht',100477),(1439,'Bandar-e Anzali','IRN','Gilan',98500),(1440,'Rafsanjan','IRN','Kerman',98300),(1441,'Marand','IRN','East Azerbaidzan',96400),(1442,'Torbat-e Heydariyeh','IRN','Khorasan',94600),(1443,'Jahrom','IRN','Fars',94200),(1444,'Semnan','IRN','Semnan',91045),(1445,'Miandoab','IRN','West Azerbaidzan',90100),(1446,'Qomsheh','IRN','Esfahan',89800),(1447,'Dublin','IRL','Leinster',481854),(1448,'Cork','IRL','Munster',127187),(1449,'Reykjavík','ISL','Höfuðborgarsvæði',109184),(1450,'Jerusalem','ISR','Jerusalem',633700),(1451,'Tel Aviv-Jaffa','ISR','Tel Aviv',348100),(1452,'Haifa','ISR','Haifa',265700),(1453,'Rishon Le Ziyyon','ISR','Ha Merkaz',188200),(1454,'Beerseba','ISR','Ha Darom',163700),(1455,'Holon','ISR','Tel Aviv',163100),(1456,'Petah Tiqwa','ISR','Ha Merkaz',159400),(1457,'Ashdod','ISR','Ha Darom',155800),(1458,'Netanya','ISR','Ha Merkaz',154900),(1459,'Bat Yam','ISR','Tel Aviv',137000),(1460,'Bene Beraq','ISR','Tel Aviv',133900),(1461,'Ramat Gan','ISR','Tel Aviv',126900),(1462,'Ashqelon','ISR','Ha Darom',92300),(1463,'Rehovot','ISR','Ha Merkaz',90300),(1464,'Roma','ITA','Latium',2643581),(1465,'Milano','ITA','Lombardia',1300977),(1466,'Napoli','ITA','Campania',1002619),(1467,'Torino','ITA','Piemonte',903705),(1468,'Palermo','ITA','Sisilia',683794),(1469,'Genova','ITA','Liguria',636104),(1470,'Bologna','ITA','Emilia-Romagna',381161),(1471,'Firenze','ITA','Toscana',376662),(1472,'Catania','ITA','Sisilia',337862),(1473,'Bari','ITA','Apulia',331848),(1474,'Venezia','ITA','Veneto',277305),(1475,'Messina','ITA','Sisilia',259156),(1476,'Verona','ITA','Veneto',255268),(1477,'Trieste','ITA','Friuli-Venezia Giuli',216459),(1478,'Padova','ITA','Veneto',211391),(1479,'Taranto','ITA','Apulia',208214),(1480,'Brescia','ITA','Lombardia',191317),(1481,'Reggio di Calabria','ITA','Calabria',179617),(1482,'Modena','ITA','Emilia-Romagna',176022),(1483,'Prato','ITA','Toscana',172473),(1484,'Parma','ITA','Emilia-Romagna',168717),(1485,'Cagliari','ITA','Sardinia',165926),(1486,'Livorno','ITA','Toscana',161673),(1487,'Perugia','ITA','Umbria',156673),(1488,'Foggia','ITA','Apulia',154891),(1489,'Reggio nell´ Emilia','ITA','Emilia-Romagna',143664),(1490,'Salerno','ITA','Campania',142055),(1491,'Ravenna','ITA','Emilia-Romagna',138418),(1492,'Ferrara','ITA','Emilia-Romagna',132127),(1493,'Rimini','ITA','Emilia-Romagna',131062),(1494,'Syrakusa','ITA','Sisilia',126282),(1495,'Sassari','ITA','Sardinia',120803),(1496,'Monza','ITA','Lombardia',119516),(1497,'Bergamo','ITA','Lombardia',117837),(1498,'Pescara','ITA','Abruzzit',115698),(1499,'Latina','ITA','Latium',114099),(1500,'Vicenza','ITA','Veneto',109738),(1501,'Terni','ITA','Umbria',107770),(1502,'Forlì','ITA','Emilia-Romagna',107475),(1503,'Trento','ITA','Trentino-Alto Adige',104906),(1504,'Novara','ITA','Piemonte',102037),(1505,'Piacenza','ITA','Emilia-Romagna',98384),(1506,'Ancona','ITA','Marche',98329),(1507,'Lecce','ITA','Apulia',98208),(1508,'Bolzano','ITA','Trentino-Alto Adige',97232),(1509,'Catanzaro','ITA','Calabria',96700),(1510,'La Spezia','ITA','Liguria',95504),(1511,'Udine','ITA','Friuli-Venezia Giuli',94932),(1512,'Torre del Greco','ITA','Campania',94505),(1513,'Andria','ITA','Apulia',94443),(1514,'Brindisi','ITA','Apulia',93454),(1515,'Giugliano in Campania','ITA','Campania',93286),(1516,'Pisa','ITA','Toscana',92379),(1517,'Barletta','ITA','Apulia',91904),(1518,'Arezzo','ITA','Toscana',91729),(1519,'Alessandria','ITA','Piemonte',90289),(1520,'Cesena','ITA','Emilia-Romagna',89852),(1521,'Pesaro','ITA','Marche',88987),(1522,'Dili','TMP','Dili',47900),(1523,'Wien','AUT','Wien',1608144),(1524,'Graz','AUT','Steiermark',240967),(1525,'Linz','AUT','North Austria',188022),(1526,'Salzburg','AUT','Salzburg',144247),(1527,'Innsbruck','AUT','Tiroli',111752),(1528,'Klagenfurt','AUT','Kärnten',91141),(1529,'Spanish Town','JAM','St. Catherine',110379),(1530,'Kingston','JAM','St. Andrew',103962),(1531,'Portmore','JAM','St. Andrew',99799),(1532,'Tokyo','JPN','Tokyo-to',7980230),(1533,'Jokohama [Yokohama]','JPN','Kanagawa',3339594),(1534,'Osaka','JPN','Osaka',2595674),(1535,'Nagoya','JPN','Aichi',2154376),(1536,'Sapporo','JPN','Hokkaido',1790886),(1537,'Kioto','JPN','Kyoto',1461974),(1538,'Kobe','JPN','Hyogo',1425139),(1539,'Fukuoka','JPN','Fukuoka',1308379),(1540,'Kawasaki','JPN','Kanagawa',1217359),(1541,'Hiroshima','JPN','Hiroshima',1119117),(1542,'Kitakyushu','JPN','Fukuoka',1016264),(1543,'Sendai','JPN','Miyagi',989975),(1544,'Chiba','JPN','Chiba',863930),(1545,'Sakai','JPN','Osaka',797735),(1546,'Kumamoto','JPN','Kumamoto',656734),(1547,'Okayama','JPN','Okayama',624269),(1548,'Sagamihara','JPN','Kanagawa',586300),(1549,'Hamamatsu','JPN','Shizuoka',568796),(1550,'Kagoshima','JPN','Kagoshima',549977),(1551,'Funabashi','JPN','Chiba',545299),(1552,'Higashiosaka','JPN','Osaka',517785),(1553,'Hachioji','JPN','Tokyo-to',513451),(1554,'Niigata','JPN','Niigata',497464),(1555,'Amagasaki','JPN','Hyogo',481434),(1556,'Himeji','JPN','Hyogo',475167),(1557,'Shizuoka','JPN','Shizuoka',473854),(1558,'Urawa','JPN','Saitama',469675),(1559,'Matsuyama','JPN','Ehime',466133),(1560,'Matsudo','JPN','Chiba',461126),(1561,'Kanazawa','JPN','Ishikawa',455386),(1562,'Kawaguchi','JPN','Saitama',452155),(1563,'Ichikawa','JPN','Chiba',441893),(1564,'Omiya','JPN','Saitama',441649),(1565,'Utsunomiya','JPN','Tochigi',440353),(1566,'Oita','JPN','Oita',433401),(1567,'Nagasaki','JPN','Nagasaki',432759),(1568,'Yokosuka','JPN','Kanagawa',430200),(1569,'Kurashiki','JPN','Okayama',425103),(1570,'Gifu','JPN','Gifu',408007),(1571,'Hirakata','JPN','Osaka',403151),(1572,'Nishinomiya','JPN','Hyogo',397618),(1573,'Toyonaka','JPN','Osaka',396689),(1574,'Wakayama','JPN','Wakayama',391233),(1575,'Fukuyama','JPN','Hiroshima',376921),(1576,'Fujisawa','JPN','Kanagawa',372840),(1577,'Asahikawa','JPN','Hokkaido',364813),(1578,'Machida','JPN','Tokyo-to',364197),(1579,'Nara','JPN','Nara',362812),(1580,'Takatsuki','JPN','Osaka',361747),(1581,'Iwaki','JPN','Fukushima',361737),(1582,'Nagano','JPN','Nagano',361391),(1583,'Toyohashi','JPN','Aichi',360066),(1584,'Toyota','JPN','Aichi',346090),(1585,'Suita','JPN','Osaka',345750),(1586,'Takamatsu','JPN','Kagawa',332471),(1587,'Koriyama','JPN','Fukushima',330335),(1588,'Okazaki','JPN','Aichi',328711),(1589,'Kawagoe','JPN','Saitama',327211),(1590,'Tokorozawa','JPN','Saitama',325809),(1591,'Toyama','JPN','Toyama',325790),(1592,'Kochi','JPN','Kochi',324710),(1593,'Kashiwa','JPN','Chiba',320296),(1594,'Akita','JPN','Akita',314440),(1595,'Miyazaki','JPN','Miyazaki',303784),(1596,'Koshigaya','JPN','Saitama',301446),(1597,'Naha','JPN','Okinawa',299851),(1598,'Aomori','JPN','Aomori',295969),(1599,'Hakodate','JPN','Hokkaido',294788),(1600,'Akashi','JPN','Hyogo',292253),(1601,'Yokkaichi','JPN','Mie',288173),(1602,'Fukushima','JPN','Fukushima',287525),(1603,'Morioka','JPN','Iwate',287353),(1604,'Maebashi','JPN','Gumma',284473),(1605,'Kasugai','JPN','Aichi',282348),(1606,'Otsu','JPN','Shiga',282070),(1607,'Ichihara','JPN','Chiba',279280),(1608,'Yao','JPN','Osaka',276421),(1609,'Ichinomiya','JPN','Aichi',270828),(1610,'Tokushima','JPN','Tokushima',269649),(1611,'Kakogawa','JPN','Hyogo',266281),(1612,'Ibaraki','JPN','Osaka',261020),(1613,'Neyagawa','JPN','Osaka',257315),(1614,'Shimonoseki','JPN','Yamaguchi',257263),(1615,'Yamagata','JPN','Yamagata',255617),(1616,'Fukui','JPN','Fukui',254818),(1617,'Hiratsuka','JPN','Kanagawa',254207),(1618,'Mito','JPN','Ibaragi',246559),(1619,'Sasebo','JPN','Nagasaki',244240),(1620,'Hachinohe','JPN','Aomori',242979),(1621,'Takasaki','JPN','Gumma',239124),(1622,'Shimizu','JPN','Shizuoka',239123),(1623,'Kurume','JPN','Fukuoka',235611),(1624,'Fuji','JPN','Shizuoka',231527),(1625,'Soka','JPN','Saitama',222768),(1626,'Fuchu','JPN','Tokyo-to',220576),(1627,'Chigasaki','JPN','Kanagawa',216015),(1628,'Atsugi','JPN','Kanagawa',212407),(1629,'Numazu','JPN','Shizuoka',211382),(1630,'Ageo','JPN','Saitama',209442),(1631,'Yamato','JPN','Kanagawa',208234),(1632,'Matsumoto','JPN','Nagano',206801),(1633,'Kure','JPN','Hiroshima',206504),(1634,'Takarazuka','JPN','Hyogo',205993),(1635,'Kasukabe','JPN','Saitama',201838),(1636,'Chofu','JPN','Tokyo-to',201585),(1637,'Odawara','JPN','Kanagawa',200171),(1638,'Kofu','JPN','Yamanashi',199753),(1639,'Kushiro','JPN','Hokkaido',197608),(1640,'Kishiwada','JPN','Osaka',197276),(1641,'Hitachi','JPN','Ibaragi',196622),(1642,'Nagaoka','JPN','Niigata',192407),(1643,'Itami','JPN','Hyogo',190886),(1644,'Uji','JPN','Kyoto',188735),(1645,'Suzuka','JPN','Mie',184061),(1646,'Hirosaki','JPN','Aomori',177522),(1647,'Ube','JPN','Yamaguchi',175206),(1648,'Kodaira','JPN','Tokyo-to',174984),(1649,'Takaoka','JPN','Toyama',174380),(1650,'Obihiro','JPN','Hokkaido',173685),(1651,'Tomakomai','JPN','Hokkaido',171958),(1652,'Saga','JPN','Saga',170034),(1653,'Sakura','JPN','Chiba',168072),(1654,'Kamakura','JPN','Kanagawa',167661),(1655,'Mitaka','JPN','Tokyo-to',167268),(1656,'Izumi','JPN','Osaka',166979),(1657,'Hino','JPN','Tokyo-to',166770),(1658,'Hadano','JPN','Kanagawa',166512),(1659,'Ashikaga','JPN','Tochigi',165243),(1660,'Tsu','JPN','Mie',164543),(1661,'Sayama','JPN','Saitama',162472),(1662,'Yachiyo','JPN','Chiba',161222),(1663,'Tsukuba','JPN','Ibaragi',160768),(1664,'Tachikawa','JPN','Tokyo-to',159430),(1665,'Kumagaya','JPN','Saitama',157171),(1666,'Moriguchi','JPN','Osaka',155941),(1667,'Otaru','JPN','Hokkaido',155784),(1668,'Anjo','JPN','Aichi',153823),(1669,'Narashino','JPN','Chiba',152849),(1670,'Oyama','JPN','Tochigi',152820),(1671,'Ogaki','JPN','Gifu',151758),(1672,'Matsue','JPN','Shimane',149821),(1673,'Kawanishi','JPN','Hyogo',149794),(1674,'Hitachinaka','JPN','Tokyo-to',148006),(1675,'Niiza','JPN','Saitama',147744),(1676,'Nagareyama','JPN','Chiba',147738),(1677,'Tottori','JPN','Tottori',147523),(1678,'Tama','JPN','Ibaragi',146712),(1679,'Iruma','JPN','Saitama',145922),(1680,'Ota','JPN','Gumma',145317),(1681,'Omuta','JPN','Fukuoka',142889),(1682,'Komaki','JPN','Aichi',139827),(1683,'Ome','JPN','Tokyo-to',139216),(1684,'Kadoma','JPN','Osaka',138953),(1685,'Yamaguchi','JPN','Yamaguchi',138210),(1686,'Higashimurayama','JPN','Tokyo-to',136970),(1687,'Yonago','JPN','Tottori',136461),(1688,'Matsubara','JPN','Osaka',135010),(1689,'Musashino','JPN','Tokyo-to',134426),(1690,'Tsuchiura','JPN','Ibaragi',134072),(1691,'Joetsu','JPN','Niigata',133505),(1692,'Miyakonojo','JPN','Miyazaki',133183),(1693,'Misato','JPN','Saitama',132957),(1694,'Kakamigahara','JPN','Gifu',131831),(1695,'Daito','JPN','Osaka',130594),(1696,'Seto','JPN','Aichi',130470),(1697,'Kariya','JPN','Aichi',127969),(1698,'Urayasu','JPN','Chiba',127550),(1699,'Beppu','JPN','Oita',127486),(1700,'Niihama','JPN','Ehime',127207),(1701,'Minoo','JPN','Osaka',127026),(1702,'Fujieda','JPN','Shizuoka',126897),(1703,'Abiko','JPN','Chiba',126670),(1704,'Nobeoka','JPN','Miyazaki',125547),(1705,'Tondabayashi','JPN','Osaka',125094),(1706,'Ueda','JPN','Nagano',124217),(1707,'Kashihara','JPN','Nara',124013),(1708,'Matsusaka','JPN','Mie',123582),(1709,'Isesaki','JPN','Gumma',123285),(1710,'Zama','JPN','Kanagawa',122046),(1711,'Kisarazu','JPN','Chiba',121967),(1712,'Noda','JPN','Chiba',121030),(1713,'Ishinomaki','JPN','Miyagi',120963),(1714,'Fujinomiya','JPN','Shizuoka',119714),(1715,'Kawachinagano','JPN','Osaka',119666),(1716,'Imabari','JPN','Ehime',119357),(1717,'Aizuwakamatsu','JPN','Fukushima',119287),(1718,'Higashihiroshima','JPN','Hiroshima',119166),(1719,'Habikino','JPN','Osaka',118968),(1720,'Ebetsu','JPN','Hokkaido',118805),(1721,'Hofu','JPN','Yamaguchi',118751),(1722,'Kiryu','JPN','Gumma',118326),(1723,'Okinawa','JPN','Okinawa',117748),(1724,'Yaizu','JPN','Shizuoka',117258),(1725,'Toyokawa','JPN','Aichi',115781),(1726,'Ebina','JPN','Kanagawa',115571),(1727,'Asaka','JPN','Saitama',114815),(1728,'Higashikurume','JPN','Tokyo-to',111666),(1729,'Ikoma','JPN','Nara',111645),(1730,'Kitami','JPN','Hokkaido',111295),(1731,'Koganei','JPN','Tokyo-to',110969),(1732,'Iwatsuki','JPN','Saitama',110034),(1733,'Mishima','JPN','Shizuoka',109699),(1734,'Handa','JPN','Aichi',108600),(1735,'Muroran','JPN','Hokkaido',108275),(1736,'Komatsu','JPN','Ishikawa',107937),(1737,'Yatsushiro','JPN','Kumamoto',107661),(1738,'Iida','JPN','Nagano',107583),(1739,'Tokuyama','JPN','Yamaguchi',107078),(1740,'Kokubunji','JPN','Tokyo-to',106996),(1741,'Akishima','JPN','Tokyo-to',106914),(1742,'Iwakuni','JPN','Yamaguchi',106647),(1743,'Kusatsu','JPN','Shiga',106232),(1744,'Kuwana','JPN','Mie',106121),(1745,'Sanda','JPN','Hyogo',105643),(1746,'Hikone','JPN','Shiga',105508),(1747,'Toda','JPN','Saitama',103969),(1748,'Tajimi','JPN','Gifu',103171),(1749,'Ikeda','JPN','Osaka',102710),(1750,'Fukaya','JPN','Saitama',102156),(1751,'Ise','JPN','Mie',101732),(1752,'Sakata','JPN','Yamagata',101651),(1753,'Kasuga','JPN','Fukuoka',101344),(1754,'Kamagaya','JPN','Chiba',100821),(1755,'Tsuruoka','JPN','Yamagata',100713),(1756,'Hoya','JPN','Tokyo-to',100313),(1757,'Nishio','JPN','Chiba',100032),(1758,'Tokai','JPN','Aichi',99738),(1759,'Inazawa','JPN','Aichi',98746),(1760,'Sakado','JPN','Saitama',98221),(1761,'Isehara','JPN','Kanagawa',98123),(1762,'Takasago','JPN','Hyogo',97632),(1763,'Fujimi','JPN','Saitama',96972),(1764,'Urasoe','JPN','Okinawa',96002),(1765,'Yonezawa','JPN','Yamagata',95592),(1766,'Konan','JPN','Aichi',95521),(1767,'Yamatokoriyama','JPN','Nara',95165),(1768,'Maizuru','JPN','Kyoto',94784),(1769,'Onomichi','JPN','Hiroshima',93756),(1770,'Higashimatsuyama','JPN','Saitama',93342),(1771,'Kimitsu','JPN','Chiba',93216),(1772,'Isahaya','JPN','Nagasaki',93058),(1773,'Kanuma','JPN','Tochigi',93053),(1774,'Izumisano','JPN','Osaka',92583),(1775,'Kameoka','JPN','Kyoto',92398),(1776,'Mobara','JPN','Chiba',91664),(1777,'Narita','JPN','Chiba',91470),(1778,'Kashiwazaki','JPN','Niigata',91229),(1779,'Tsuyama','JPN','Okayama',91170),(1780,'Sanaa','YEM','Sanaa',503600),(1781,'Aden','YEM','Aden',398300),(1782,'Taizz','YEM','Taizz',317600),(1783,'Hodeida','YEM','Hodeida',298500),(1784,'al-Mukalla','YEM','Hadramawt',122400),(1785,'Ibb','YEM','Ibb',103300),(1786,'Amman','JOR','Amman',1000000),(1787,'al-Zarqa','JOR','al-Zarqa',389815),(1788,'Irbid','JOR','Irbid',231511),(1789,'al-Rusayfa','JOR','al-Zarqa',137247),(1790,'Wadi al-Sir','JOR','Amman',89104),(1791,'Flying Fish Cove','CXR','–',700),(1792,'Beograd','YUG','Central Serbia',1204000),(1793,'Novi Sad','YUG','Vojvodina',179626),(1794,'Niš','YUG','Central Serbia',175391),(1795,'Priština','YUG','Kosovo and Metohija',155496),(1796,'Kragujevac','YUG','Central Serbia',147305),(1797,'Podgorica','YUG','Montenegro',135000),(1798,'Subotica','YUG','Vojvodina',100386),(1799,'Prizren','YUG','Kosovo and Metohija',92303),(1800,'Phnom Penh','KHM','Phnom Penh',570155),(1801,'Battambang','KHM','Battambang',129800),(1802,'Siem Reap','KHM','Siem Reap',105100),(1803,'Douala','CMR','Littoral',1448300),(1804,'Yaoundé','CMR','Centre',1372800),(1805,'Garoua','CMR','Nord',177000),(1806,'Maroua','CMR','Extrême-Nord',143000),(1807,'Bamenda','CMR','Nord-Ouest',138000),(1808,'Bafoussam','CMR','Ouest',131000),(1809,'Nkongsamba','CMR','Littoral',112454),(1810,'Montréal','CAN','Québec',1016376),(1811,'Calgary','CAN','Alberta',768082),(1812,'Toronto','CAN','Ontario',688275),(1813,'North York','CAN','Ontario',622632),(1814,'Winnipeg','CAN','Manitoba',618477),(1815,'Edmonton','CAN','Alberta',616306),(1816,'Mississauga','CAN','Ontario',608072),(1817,'Scarborough','CAN','Ontario',594501),(1818,'Vancouver','CAN','British Colombia',514008),(1819,'Etobicoke','CAN','Ontario',348845),(1820,'London','CAN','Ontario',339917),(1821,'Hamilton','CAN','Ontario',335614),(1822,'Ottawa','CAN','Ontario',335277),(1823,'Laval','CAN','Québec',330393),(1824,'Surrey','CAN','British Colombia',304477),(1825,'Brampton','CAN','Ontario',296711),(1826,'Windsor','CAN','Ontario',207588),(1827,'Saskatoon','CAN','Saskatchewan',193647),(1828,'Kitchener','CAN','Ontario',189959),(1829,'Markham','CAN','Ontario',189098),(1830,'Regina','CAN','Saskatchewan',180400),(1831,'Burnaby','CAN','British Colombia',179209),(1832,'Québec','CAN','Québec',167264),(1833,'York','CAN','Ontario',154980),(1834,'Richmond','CAN','British Colombia',148867),(1835,'Vaughan','CAN','Ontario',147889),(1836,'Burlington','CAN','Ontario',145150),(1837,'Oshawa','CAN','Ontario',140173),(1838,'Oakville','CAN','Ontario',139192),(1839,'Saint Catharines','CAN','Ontario',136216),(1840,'Longueuil','CAN','Québec',127977),(1841,'Richmond Hill','CAN','Ontario',116428),(1842,'Thunder Bay','CAN','Ontario',115913),(1843,'Nepean','CAN','Ontario',115100),(1844,'Cape Breton','CAN','Nova Scotia',114733),(1845,'East York','CAN','Ontario',114034),(1846,'Halifax','CAN','Nova Scotia',113910),(1847,'Cambridge','CAN','Ontario',109186),(1848,'Gloucester','CAN','Ontario',107314),(1849,'Abbotsford','CAN','British Colombia',105403),(1850,'Guelph','CAN','Ontario',103593),(1851,'Saint John´s','CAN','Newfoundland',101936),(1852,'Coquitlam','CAN','British Colombia',101820),(1853,'Saanich','CAN','British Colombia',101388),(1854,'Gatineau','CAN','Québec',100702),(1855,'Delta','CAN','British Colombia',95411),(1856,'Sudbury','CAN','Ontario',92686),(1857,'Kelowna','CAN','British Colombia',89442),(1858,'Barrie','CAN','Ontario',89269),(1859,'Praia','CPV','São Tiago',94800),(1860,'Almaty','KAZ','Almaty Qalasy',1129400),(1861,'Qaraghandy','KAZ','Qaraghandy',436900),(1862,'Shymkent','KAZ','South Kazakstan',360100),(1863,'Taraz','KAZ','Taraz',330100),(1864,'Astana','KAZ','Astana',311200),(1865,'Öskemen','KAZ','East Kazakstan',311000),(1866,'Pavlodar','KAZ','Pavlodar',300500),(1867,'Semey','KAZ','East Kazakstan',269600),(1868,'Aqtöbe','KAZ','Aqtöbe',253100),(1869,'Qostanay','KAZ','Qostanay',221400),(1870,'Petropavl','KAZ','North Kazakstan',203500),(1871,'Oral','KAZ','West Kazakstan',195500),(1872,'Temirtau','KAZ','Qaraghandy',170500),(1873,'Qyzylorda','KAZ','Qyzylorda',157400),(1874,'Aqtau','KAZ','Mangghystau',143400),(1875,'Atyrau','KAZ','Atyrau',142500),(1876,'Ekibastuz','KAZ','Pavlodar',127200),(1877,'Kökshetau','KAZ','North Kazakstan',123400),(1878,'Rudnyy','KAZ','Qostanay',109500),(1879,'Taldyqorghan','KAZ','Almaty',98000),(1880,'Zhezqazghan','KAZ','Qaraghandy',90000),(1881,'Nairobi','KEN','Nairobi',2290000),(1882,'Mombasa','KEN','Coast',461753),(1883,'Kisumu','KEN','Nyanza',192733),(1884,'Nakuru','KEN','Rift Valley',163927),(1885,'Machakos','KEN','Eastern',116293),(1886,'Eldoret','KEN','Rift Valley',111882),(1887,'Meru','KEN','Eastern',94947),(1888,'Nyeri','KEN','Central',91258),(1889,'Bangui','CAF','Bangui',524000),(1890,'Shanghai','CHN','Shanghai',9696300),(1891,'Peking','CHN','Peking',7472000),(1892,'Chongqing','CHN','Chongqing',6351600),(1893,'Tianjin','CHN','Tianjin',5286800),(1894,'Wuhan','CHN','Hubei',4344600),(1895,'Harbin','CHN','Heilongjiang',4289800),(1896,'Shenyang','CHN','Liaoning',4265200),(1897,'Kanton [Guangzhou]','CHN','Guangdong',4256300),(1898,'Chengdu','CHN','Sichuan',3361500),(1899,'Nanking [Nanjing]','CHN','Jiangsu',2870300),(1900,'Changchun','CHN','Jilin',2812000),(1901,'Xi´an','CHN','Shaanxi',2761400),(1902,'Dalian','CHN','Liaoning',2697000),(1903,'Qingdao','CHN','Shandong',2596000),(1904,'Jinan','CHN','Shandong',2278100),(1905,'Hangzhou','CHN','Zhejiang',2190500),(1906,'Zhengzhou','CHN','Henan',2107200),(1907,'Shijiazhuang','CHN','Hebei',2041500),(1908,'Taiyuan','CHN','Shanxi',1968400),(1909,'Kunming','CHN','Yunnan',1829500),(1910,'Changsha','CHN','Hunan',1809800),(1911,'Nanchang','CHN','Jiangxi',1691600),(1912,'Fuzhou','CHN','Fujian',1593800),(1913,'Lanzhou','CHN','Gansu',1565800),(1914,'Guiyang','CHN','Guizhou',1465200),(1915,'Ningbo','CHN','Zhejiang',1371200),(1916,'Hefei','CHN','Anhui',1369100),(1917,'Urumtši [Ürümqi]','CHN','Xinxiang',1310100),(1918,'Anshan','CHN','Liaoning',1200000),(1919,'Fushun','CHN','Liaoning',1200000),(1920,'Nanning','CHN','Guangxi',1161800),(1921,'Zibo','CHN','Shandong',1140000),(1922,'Qiqihar','CHN','Heilongjiang',1070000),(1923,'Jilin','CHN','Jilin',1040000),(1924,'Tangshan','CHN','Hebei',1040000),(1925,'Baotou','CHN','Inner Mongolia',980000),(1926,'Shenzhen','CHN','Guangdong',950500),(1927,'Hohhot','CHN','Inner Mongolia',916700),(1928,'Handan','CHN','Hebei',840000),(1929,'Wuxi','CHN','Jiangsu',830000),(1930,'Xuzhou','CHN','Jiangsu',810000),(1931,'Datong','CHN','Shanxi',800000),(1932,'Yichun','CHN','Heilongjiang',800000),(1933,'Benxi','CHN','Liaoning',770000),(1934,'Luoyang','CHN','Henan',760000),(1935,'Suzhou','CHN','Jiangsu',710000),(1936,'Xining','CHN','Qinghai',700200),(1937,'Huainan','CHN','Anhui',700000),(1938,'Jixi','CHN','Heilongjiang',683885),(1939,'Daqing','CHN','Heilongjiang',660000),(1940,'Fuxin','CHN','Liaoning',640000),(1941,'Amoy [Xiamen]','CHN','Fujian',627500),(1942,'Liuzhou','CHN','Guangxi',610000),(1943,'Shantou','CHN','Guangdong',580000),(1944,'Jinzhou','CHN','Liaoning',570000),(1945,'Mudanjiang','CHN','Heilongjiang',570000),(1946,'Yinchuan','CHN','Ningxia',544500),(1947,'Changzhou','CHN','Jiangsu',530000),(1948,'Zhangjiakou','CHN','Hebei',530000),(1949,'Dandong','CHN','Liaoning',520000),(1950,'Hegang','CHN','Heilongjiang',520000),(1951,'Kaifeng','CHN','Henan',510000),(1952,'Jiamusi','CHN','Heilongjiang',493409),(1953,'Liaoyang','CHN','Liaoning',492559),(1954,'Hengyang','CHN','Hunan',487148),(1955,'Baoding','CHN','Hebei',483155),(1956,'Hunjiang','CHN','Jilin',482043),(1957,'Xinxiang','CHN','Henan',473762),(1958,'Huangshi','CHN','Hubei',457601),(1959,'Haikou','CHN','Hainan',454300),(1960,'Yantai','CHN','Shandong',452127),(1961,'Bengbu','CHN','Anhui',449245),(1962,'Xiangtan','CHN','Hunan',441968),(1963,'Weifang','CHN','Shandong',428522),(1964,'Wuhu','CHN','Anhui',425740),(1965,'Pingxiang','CHN','Jiangxi',425579),(1966,'Yingkou','CHN','Liaoning',421589),(1967,'Anyang','CHN','Henan',420332),(1968,'Panzhihua','CHN','Sichuan',415466),(1969,'Pingdingshan','CHN','Henan',410775),(1970,'Xiangfan','CHN','Hubei',410407),(1971,'Zhuzhou','CHN','Hunan',409924),(1972,'Jiaozuo','CHN','Henan',409100),(1973,'Wenzhou','CHN','Zhejiang',401871),(1974,'Zhangjiang','CHN','Guangdong',400997),(1975,'Zigong','CHN','Sichuan',393184),(1976,'Shuangyashan','CHN','Heilongjiang',386081),(1977,'Zaozhuang','CHN','Shandong',380846),(1978,'Yakeshi','CHN','Inner Mongolia',377869),(1979,'Yichang','CHN','Hubei',371601),(1980,'Zhenjiang','CHN','Jiangsu',368316),(1981,'Huaibei','CHN','Anhui',366549),(1982,'Qinhuangdao','CHN','Hebei',364972),(1983,'Guilin','CHN','Guangxi',364130),(1984,'Liupanshui','CHN','Guizhou',363954),(1985,'Panjin','CHN','Liaoning',362773),(1986,'Yangquan','CHN','Shanxi',362268),(1987,'Jinxi','CHN','Liaoning',357052),(1988,'Liaoyuan','CHN','Jilin',354141),(1989,'Lianyungang','CHN','Jiangsu',354139),(1990,'Xianyang','CHN','Shaanxi',352125),(1991,'Tai´an','CHN','Shandong',350696),(1992,'Chifeng','CHN','Inner Mongolia',350077),(1993,'Shaoguan','CHN','Guangdong',350043),(1994,'Nantong','CHN','Jiangsu',343341),(1995,'Leshan','CHN','Sichuan',341128),(1996,'Baoji','CHN','Shaanxi',337765),(1997,'Linyi','CHN','Shandong',324720),(1998,'Tonghua','CHN','Jilin',324600),(1999,'Siping','CHN','Jilin',317223),(2000,'Changzhi','CHN','Shanxi',317144),(2001,'Tengzhou','CHN','Shandong',315083),(2002,'Chaozhou','CHN','Guangdong',313469),(2003,'Yangzhou','CHN','Jiangsu',312892),(2004,'Dongwan','CHN','Guangdong',308669),(2005,'Ma´anshan','CHN','Anhui',305421),(2006,'Foshan','CHN','Guangdong',303160),(2007,'Yueyang','CHN','Hunan',302800),(2008,'Xingtai','CHN','Hebei',302789),(2009,'Changde','CHN','Hunan',301276),(2010,'Shihezi','CHN','Xinxiang',299676),(2011,'Yancheng','CHN','Jiangsu',296831),(2012,'Jiujiang','CHN','Jiangxi',291187),(2013,'Dongying','CHN','Shandong',281728),(2014,'Shashi','CHN','Hubei',281352),(2015,'Xintai','CHN','Shandong',281248),(2016,'Jingdezhen','CHN','Jiangxi',281183),(2017,'Tongchuan','CHN','Shaanxi',280657),(2018,'Zhongshan','CHN','Guangdong',278829),(2019,'Shiyan','CHN','Hubei',273786),(2020,'Tieli','CHN','Heilongjiang',265683),(2021,'Jining','CHN','Shandong',265248),(2022,'Wuhai','CHN','Inner Mongolia',264081),(2023,'Mianyang','CHN','Sichuan',262947),(2024,'Luzhou','CHN','Sichuan',262892),(2025,'Zunyi','CHN','Guizhou',261862),(2026,'Shizuishan','CHN','Ningxia',257862),(2027,'Neijiang','CHN','Sichuan',256012),(2028,'Tongliao','CHN','Inner Mongolia',255129),(2029,'Tieling','CHN','Liaoning',254842),(2030,'Wafangdian','CHN','Liaoning',251733),(2031,'Anqing','CHN','Anhui',250718),(2032,'Shaoyang','CHN','Hunan',247227),(2033,'Laiwu','CHN','Shandong',246833),(2034,'Chengde','CHN','Hebei',246799),(2035,'Tianshui','CHN','Gansu',244974),(2036,'Nanyang','CHN','Henan',243303),(2037,'Cangzhou','CHN','Hebei',242708),(2038,'Yibin','CHN','Sichuan',241019),(2039,'Huaiyin','CHN','Jiangsu',239675),(2040,'Dunhua','CHN','Jilin',235100),(2041,'Yanji','CHN','Jilin',230892),(2042,'Jiangmen','CHN','Guangdong',230587),(2043,'Tongling','CHN','Anhui',228017),(2044,'Suihua','CHN','Heilongjiang',227881),(2045,'Gongziling','CHN','Jilin',226569),(2046,'Xiantao','CHN','Hubei',222884),(2047,'Chaoyang','CHN','Liaoning',222394),(2048,'Ganzhou','CHN','Jiangxi',220129),(2049,'Huzhou','CHN','Zhejiang',218071),(2050,'Baicheng','CHN','Jilin',217987),(2051,'Shangzi','CHN','Heilongjiang',215373),(2052,'Yangjiang','CHN','Guangdong',215196),(2053,'Qitaihe','CHN','Heilongjiang',214957),(2054,'Gejiu','CHN','Yunnan',214294),(2055,'Jiangyin','CHN','Jiangsu',213659),(2056,'Hebi','CHN','Henan',212976),(2057,'Jiaxing','CHN','Zhejiang',211526),(2058,'Wuzhou','CHN','Guangxi',210452),(2059,'Meihekou','CHN','Jilin',209038),(2060,'Xuchang','CHN','Henan',208815),(2061,'Liaocheng','CHN','Shandong',207844),(2062,'Haicheng','CHN','Liaoning',205560),(2063,'Qianjiang','CHN','Hubei',205504),(2064,'Baiyin','CHN','Gansu',204970),(2065,'Bei´an','CHN','Heilongjiang',204899),(2066,'Yixing','CHN','Jiangsu',200824),(2067,'Laizhou','CHN','Shandong',198664),(2068,'Qaramay','CHN','Xinxiang',197602),(2069,'Acheng','CHN','Heilongjiang',197595),(2070,'Dezhou','CHN','Shandong',195485),(2071,'Nanping','CHN','Fujian',195064),(2072,'Zhaoqing','CHN','Guangdong',194784),(2073,'Beipiao','CHN','Liaoning',194301),(2074,'Fengcheng','CHN','Jiangxi',193784),(2075,'Fuyu','CHN','Jilin',192981),(2076,'Xinyang','CHN','Henan',192509),(2077,'Dongtai','CHN','Jiangsu',192247),(2078,'Yuci','CHN','Shanxi',191356),(2079,'Honghu','CHN','Hubei',190772),(2080,'Ezhou','CHN','Hubei',190123),(2081,'Heze','CHN','Shandong',189293),(2082,'Daxian','CHN','Sichuan',188101),(2083,'Linfen','CHN','Shanxi',187309),(2084,'Tianmen','CHN','Hubei',186332),(2085,'Yiyang','CHN','Hunan',185818),(2086,'Quanzhou','CHN','Fujian',185154),(2087,'Rizhao','CHN','Shandong',185048),(2088,'Deyang','CHN','Sichuan',182488),(2089,'Guangyuan','CHN','Sichuan',182241),(2090,'Changshu','CHN','Jiangsu',181805),(2091,'Zhangzhou','CHN','Fujian',181424),(2092,'Hailar','CHN','Inner Mongolia',180650),(2093,'Nanchong','CHN','Sichuan',180273),(2094,'Jiutai','CHN','Jilin',180130),(2095,'Zhaodong','CHN','Heilongjiang',179976),(2096,'Shaoxing','CHN','Zhejiang',179818),(2097,'Fuyang','CHN','Anhui',179572),(2098,'Maoming','CHN','Guangdong',178683),(2099,'Qujing','CHN','Yunnan',178669),(2100,'Ghulja','CHN','Xinxiang',177193),(2101,'Jiaohe','CHN','Jilin',176367),(2102,'Puyang','CHN','Henan',175988),(2103,'Huadian','CHN','Jilin',175873),(2104,'Jiangyou','CHN','Sichuan',175753),(2105,'Qashqar','CHN','Xinxiang',174570),(2106,'Anshun','CHN','Guizhou',174142),(2107,'Fuling','CHN','Sichuan',173878),(2108,'Xinyu','CHN','Jiangxi',173524),(2109,'Hanzhong','CHN','Shaanxi',169930),(2110,'Danyang','CHN','Jiangsu',169603),(2111,'Chenzhou','CHN','Hunan',169400),(2112,'Xiaogan','CHN','Hubei',166280),(2113,'Shangqiu','CHN','Henan',164880),(2114,'Zhuhai','CHN','Guangdong',164747),(2115,'Qingyuan','CHN','Guangdong',164641),(2116,'Aqsu','CHN','Xinxiang',164092),(2117,'Jining','CHN','Inner Mongolia',163552),(2118,'Xiaoshan','CHN','Zhejiang',162930),(2119,'Zaoyang','CHN','Hubei',162198),(2120,'Xinghua','CHN','Jiangsu',161910),(2121,'Hami','CHN','Xinxiang',161315),(2122,'Huizhou','CHN','Guangdong',161023),(2123,'Jinmen','CHN','Hubei',160794),(2124,'Sanming','CHN','Fujian',160691),(2125,'Ulanhot','CHN','Inner Mongolia',159538),(2126,'Korla','CHN','Xinxiang',159344),(2127,'Wanxian','CHN','Sichuan',156823),(2128,'Rui´an','CHN','Zhejiang',156468),(2129,'Zhoushan','CHN','Zhejiang',156317),(2130,'Liangcheng','CHN','Shandong',156307),(2131,'Jiaozhou','CHN','Shandong',153364),(2132,'Taizhou','CHN','Jiangsu',152442),(2133,'Suzhou','CHN','Anhui',151862),(2134,'Yichun','CHN','Jiangxi',151585),(2135,'Taonan','CHN','Jilin',150168),(2136,'Pingdu','CHN','Shandong',150123),(2137,'Ji´an','CHN','Jiangxi',148583),(2138,'Longkou','CHN','Shandong',148362),(2139,'Langfang','CHN','Hebei',148105),(2140,'Zhoukou','CHN','Henan',146288),(2141,'Suining','CHN','Sichuan',146086),(2142,'Yulin','CHN','Guangxi',144467),(2143,'Jinhua','CHN','Zhejiang',144280),(2144,'Liu´an','CHN','Anhui',144248),(2145,'Shuangcheng','CHN','Heilongjiang',142659),(2146,'Suizhou','CHN','Hubei',142302),(2147,'Ankang','CHN','Shaanxi',142170),(2148,'Weinan','CHN','Shaanxi',140169),(2149,'Longjing','CHN','Jilin',139417),(2150,'Da´an','CHN','Jilin',138963),(2151,'Lengshuijiang','CHN','Hunan',137994),(2152,'Laiyang','CHN','Shandong',137080),(2153,'Xianning','CHN','Hubei',136811),(2154,'Dali','CHN','Yunnan',136554),(2155,'Anda','CHN','Heilongjiang',136446),(2156,'Jincheng','CHN','Shanxi',136396),(2157,'Longyan','CHN','Fujian',134481),(2158,'Xichang','CHN','Sichuan',134419),(2159,'Wendeng','CHN','Shandong',133910),(2160,'Hailun','CHN','Heilongjiang',133565),(2161,'Binzhou','CHN','Shandong',133555),(2162,'Linhe','CHN','Inner Mongolia',133183),(2163,'Wuwei','CHN','Gansu',133101),(2164,'Duyun','CHN','Guizhou',132971),(2165,'Mishan','CHN','Heilongjiang',132744),(2166,'Shangrao','CHN','Jiangxi',132455),(2167,'Changji','CHN','Xinxiang',132260),(2168,'Meixian','CHN','Guangdong',132156),(2169,'Yushu','CHN','Jilin',131861),(2170,'Tiefa','CHN','Liaoning',131807),(2171,'Huai´an','CHN','Jiangsu',131149),(2172,'Leiyang','CHN','Hunan',130115),(2173,'Zalantun','CHN','Inner Mongolia',130031),(2174,'Weihai','CHN','Shandong',128888),(2175,'Loudi','CHN','Hunan',128418),(2176,'Qingzhou','CHN','Shandong',128258),(2177,'Qidong','CHN','Jiangsu',126872),(2178,'Huaihua','CHN','Hunan',126785),(2179,'Luohe','CHN','Henan',126438),(2180,'Chuzhou','CHN','Anhui',125341),(2181,'Kaiyuan','CHN','Liaoning',124219),(2182,'Linqing','CHN','Shandong',123958),(2183,'Chaohu','CHN','Anhui',123676),(2184,'Laohekou','CHN','Hubei',123366),(2185,'Dujiangyan','CHN','Sichuan',123357),(2186,'Zhumadian','CHN','Henan',123232),(2187,'Linchuan','CHN','Jiangxi',121949),(2188,'Jiaonan','CHN','Shandong',121397),(2189,'Sanmenxia','CHN','Henan',120523),(2190,'Heyuan','CHN','Guangdong',120101),(2191,'Manzhouli','CHN','Inner Mongolia',120023),(2192,'Lhasa','CHN','Tibet',120000),(2193,'Lianyuan','CHN','Hunan',118858),(2194,'Kuytun','CHN','Xinxiang',118553),(2195,'Puqi','CHN','Hubei',117264),(2196,'Hongjiang','CHN','Hunan',116188),(2197,'Qinzhou','CHN','Guangxi',114586),(2198,'Renqiu','CHN','Hebei',114256),(2199,'Yuyao','CHN','Zhejiang',114065),(2200,'Guigang','CHN','Guangxi',114025),(2201,'Kaili','CHN','Guizhou',113958),(2202,'Yan´an','CHN','Shaanxi',113277),(2203,'Beihai','CHN','Guangxi',112673),(2204,'Xuangzhou','CHN','Anhui',112673),(2205,'Quzhou','CHN','Zhejiang',112373),(2206,'Yong´an','CHN','Fujian',111762),(2207,'Zixing','CHN','Hunan',110048),(2208,'Liyang','CHN','Jiangsu',109520),(2209,'Yizheng','CHN','Jiangsu',109268),(2210,'Yumen','CHN','Gansu',109234),(2211,'Liling','CHN','Hunan',108504),(2212,'Yuncheng','CHN','Shanxi',108359),(2213,'Shanwei','CHN','Guangdong',107847),(2214,'Cixi','CHN','Zhejiang',107329),(2215,'Yuanjiang','CHN','Hunan',107004),(2216,'Bozhou','CHN','Anhui',106346),(2217,'Jinchang','CHN','Gansu',105287),(2218,'Fu´an','CHN','Fujian',105265),(2219,'Suqian','CHN','Jiangsu',105021),(2220,'Shishou','CHN','Hubei',104571),(2221,'Hengshui','CHN','Hebei',104269),(2222,'Danjiangkou','CHN','Hubei',103211),(2223,'Fujin','CHN','Heilongjiang',103104),(2224,'Sanya','CHN','Hainan',102820),(2225,'Guangshui','CHN','Hubei',102770),(2226,'Huangshan','CHN','Anhui',102628),(2227,'Xingcheng','CHN','Liaoning',102384),(2228,'Zhucheng','CHN','Shandong',102134),(2229,'Kunshan','CHN','Jiangsu',102052),(2230,'Haining','CHN','Zhejiang',100478),(2231,'Pingliang','CHN','Gansu',99265),(2232,'Fuqing','CHN','Fujian',99193),(2233,'Xinzhou','CHN','Shanxi',98667),(2234,'Jieyang','CHN','Guangdong',98531),(2235,'Zhangjiagang','CHN','Jiangsu',97994),(2236,'Tong Xian','CHN','Peking',97168),(2237,'Ya´an','CHN','Sichuan',95900),(2238,'Jinzhou','CHN','Liaoning',95761),(2239,'Emeishan','CHN','Sichuan',94000),(2240,'Enshi','CHN','Hubei',93056),(2241,'Bose','CHN','Guangxi',93009),(2242,'Yuzhou','CHN','Henan',92889),(2243,'Kaiyuan','CHN','Yunnan',91999),(2244,'Tumen','CHN','Jilin',91471),(2245,'Putian','CHN','Fujian',91030),(2246,'Linhai','CHN','Zhejiang',90870),(2247,'Xilin Hot','CHN','Inner Mongolia',90646),(2248,'Shaowu','CHN','Fujian',90286),(2249,'Junan','CHN','Shandong',90222),(2250,'Huaying','CHN','Sichuan',89400),(2251,'Pingyi','CHN','Shandong',89373),(2252,'Huangyan','CHN','Zhejiang',89288),(2253,'Bishkek','KGZ','Bishkek shaary',589400),(2254,'Osh','KGZ','Osh',222700),(2255,'Bikenibeu','KIR','South Tarawa',5055),(2256,'Bairiki','KIR','South Tarawa',2226),(2257,'Santafé de Bogotá','COL','Santafé de Bogotá',6260862),(2258,'Cali','COL','Valle',2077386),(2259,'Medellín','COL','Antioquia',1861265),(2260,'Barranquilla','COL','Atlántico',1223260),(2261,'Cartagena','COL','Bolívar',805757),(2262,'Cúcuta','COL','Norte de Santander',606932),(2263,'Bucaramanga','COL','Santander',515555),(2264,'Ibagué','COL','Tolima',393664),(2265,'Pereira','COL','Risaralda',381725),(2266,'Santa Marta','COL','Magdalena',359147),(2267,'Manizales','COL','Caldas',337580),(2268,'Bello','COL','Antioquia',333470),(2269,'Pasto','COL','Nariño',332396),(2270,'Neiva','COL','Huila',300052),(2271,'Soledad','COL','Atlántico',295058),(2272,'Armenia','COL','Quindío',288977),(2273,'Villavicencio','COL','Meta',273140),(2274,'Soacha','COL','Cundinamarca',272058),(2275,'Valledupar','COL','Cesar',263247),(2276,'Montería','COL','Córdoba',248245),(2277,'Itagüí','COL','Antioquia',228985),(2278,'Palmira','COL','Valle',226509),(2279,'Buenaventura','COL','Valle',224336),(2280,'Floridablanca','COL','Santander',221913),(2281,'Sincelejo','COL','Sucre',220704),(2282,'Popayán','COL','Cauca',200719),(2283,'Barrancabermeja','COL','Santander',178020),(2284,'Dos Quebradas','COL','Risaralda',159363),(2285,'Tuluá','COL','Valle',152488),(2286,'Envigado','COL','Antioquia',135848),(2287,'Cartago','COL','Valle',125884),(2288,'Girardot','COL','Cundinamarca',110963),(2289,'Buga','COL','Valle',110699),(2290,'Tunja','COL','Boyacá',109740),(2291,'Florencia','COL','Caquetá',108574),(2292,'Maicao','COL','La Guajira',108053),(2293,'Sogamoso','COL','Boyacá',107728),(2294,'Giron','COL','Santander',90688),(2295,'Moroni','COM','Njazidja',36000),(2296,'Brazzaville','COG','Brazzaville',950000),(2297,'Pointe-Noire','COG','Kouilou',500000),(2298,'Kinshasa','COD','Kinshasa',5064000),(2299,'Lubumbashi','COD','Shaba',851381),(2300,'Mbuji-Mayi','COD','East Kasai',806475),(2301,'Kolwezi','COD','Shaba',417810),(2302,'Kisangani','COD','Haute-Zaïre',417517),(2303,'Kananga','COD','West Kasai',393030),(2304,'Likasi','COD','Shaba',299118),(2305,'Bukavu','COD','South Kivu',201569),(2306,'Kikwit','COD','Bandundu',182142),(2307,'Tshikapa','COD','West Kasai',180860),(2308,'Matadi','COD','Bas-Zaïre',172730),(2309,'Mbandaka','COD','Equateur',169841),(2310,'Mwene-Ditu','COD','East Kasai',137459),(2311,'Boma','COD','Bas-Zaïre',135284),(2312,'Uvira','COD','South Kivu',115590),(2313,'Butembo','COD','North Kivu',109406),(2314,'Goma','COD','North Kivu',109094),(2315,'Kalemie','COD','Shaba',101309),(2316,'Bantam','CCK','Home Island',503),(2317,'West Island','CCK','West Island',167),(2318,'Pyongyang','PRK','Pyongyang-si',2484000),(2319,'Hamhung','PRK','Hamgyong N',709730),(2320,'Chongjin','PRK','Hamgyong P',582480),(2321,'Nampo','PRK','Nampo-si',566200),(2322,'Sinuiju','PRK','Pyongan P',326011),(2323,'Wonsan','PRK','Kangwon',300148),(2324,'Phyongsong','PRK','Pyongan N',272934),(2325,'Sariwon','PRK','Hwanghae P',254146),(2326,'Haeju','PRK','Hwanghae N',229172),(2327,'Kanggye','PRK','Chagang',223410),(2328,'Kimchaek','PRK','Hamgyong P',179000),(2329,'Hyesan','PRK','Yanggang',178020),(2330,'Kaesong','PRK','Kaesong-si',171500),(2331,'Seoul','KOR','Seoul',9981619),(2332,'Pusan','KOR','Pusan',3804522),(2333,'Inchon','KOR','Inchon',2559424),(2334,'Taegu','KOR','Taegu',2548568),(2335,'Taejon','KOR','Taejon',1425835),(2336,'Kwangju','KOR','Kwangju',1368341),(2337,'Ulsan','KOR','Kyongsangnam',1084891),(2338,'Songnam','KOR','Kyonggi',869094),(2339,'Puchon','KOR','Kyonggi',779412),(2340,'Suwon','KOR','Kyonggi',755550),(2341,'Anyang','KOR','Kyonggi',591106),(2342,'Chonju','KOR','Chollabuk',563153),(2343,'Chongju','KOR','Chungchongbuk',531376),(2344,'Koyang','KOR','Kyonggi',518282),(2345,'Ansan','KOR','Kyonggi',510314),(2346,'Pohang','KOR','Kyongsangbuk',508899),(2347,'Chang-won','KOR','Kyongsangnam',481694),(2348,'Masan','KOR','Kyongsangnam',441242),(2349,'Kwangmyong','KOR','Kyonggi',350914),(2350,'Chonan','KOR','Chungchongnam',330259),(2351,'Chinju','KOR','Kyongsangnam',329886),(2352,'Iksan','KOR','Chollabuk',322685),(2353,'Pyongtaek','KOR','Kyonggi',312927),(2354,'Kumi','KOR','Kyongsangbuk',311431),(2355,'Uijongbu','KOR','Kyonggi',276111),(2356,'Kyongju','KOR','Kyongsangbuk',272968),(2357,'Kunsan','KOR','Chollabuk',266569),(2358,'Cheju','KOR','Cheju',258511),(2359,'Kimhae','KOR','Kyongsangnam',256370),(2360,'Sunchon','KOR','Chollanam',249263),(2361,'Mokpo','KOR','Chollanam',247452),(2362,'Yong-in','KOR','Kyonggi',242643),(2363,'Wonju','KOR','Kang-won',237460),(2364,'Kunpo','KOR','Kyonggi',235233),(2365,'Chunchon','KOR','Kang-won',234528),(2366,'Namyangju','KOR','Kyonggi',229060),(2367,'Kangnung','KOR','Kang-won',220403),(2368,'Chungju','KOR','Chungchongbuk',205206),(2369,'Andong','KOR','Kyongsangbuk',188443),(2370,'Yosu','KOR','Chollanam',183596),(2371,'Kyongsan','KOR','Kyongsangbuk',173746),(2372,'Paju','KOR','Kyonggi',163379),(2373,'Yangsan','KOR','Kyongsangnam',163351),(2374,'Ichon','KOR','Kyonggi',155332),(2375,'Asan','KOR','Chungchongnam',154663),(2376,'Koje','KOR','Kyongsangnam',147562),(2377,'Kimchon','KOR','Kyongsangbuk',147027),(2378,'Nonsan','KOR','Chungchongnam',146619),(2379,'Kuri','KOR','Kyonggi',142173),(2380,'Chong-up','KOR','Chollabuk',139111),(2381,'Chechon','KOR','Chungchongbuk',137070),(2382,'Sosan','KOR','Chungchongnam',134746),(2383,'Shihung','KOR','Kyonggi',133443),(2384,'Tong-yong','KOR','Kyongsangnam',131717),(2385,'Kongju','KOR','Chungchongnam',131229),(2386,'Yongju','KOR','Kyongsangbuk',131097),(2387,'Chinhae','KOR','Kyongsangnam',125997),(2388,'Sangju','KOR','Kyongsangbuk',124116),(2389,'Poryong','KOR','Chungchongnam',122604),(2390,'Kwang-yang','KOR','Chollanam',122052),(2391,'Miryang','KOR','Kyongsangnam',121501),(2392,'Hanam','KOR','Kyonggi',115812),(2393,'Kimje','KOR','Chollabuk',115427),(2394,'Yongchon','KOR','Kyongsangbuk',113511),(2395,'Sachon','KOR','Kyongsangnam',113494),(2396,'Uiwang','KOR','Kyonggi',108788),(2397,'Naju','KOR','Chollanam',107831),(2398,'Namwon','KOR','Chollabuk',103544),(2399,'Tonghae','KOR','Kang-won',95472),(2400,'Mun-gyong','KOR','Kyongsangbuk',92239),(2401,'Athenai','GRC','Attika',772072),(2402,'Thessaloniki','GRC','Central Macedonia',383967),(2403,'Pireus','GRC','Attika',182671),(2404,'Patras','GRC','West Greece',153344),(2405,'Peristerion','GRC','Attika',137288),(2406,'Herakleion','GRC','Crete',116178),(2407,'Kallithea','GRC','Attika',114233),(2408,'Larisa','GRC','Thessalia',113090),(2409,'Zagreb','HRV','Grad Zagreb',706770),(2410,'Split','HRV','Split-Dalmatia',189388),(2411,'Rijeka','HRV','Primorje-Gorski Kota',167964),(2412,'Osijek','HRV','Osijek-Baranja',104761),(2413,'La Habana','CUB','La Habana',2256000),(2414,'Santiago de Cuba','CUB','Santiago de Cuba',433180),(2415,'Camagüey','CUB','Camagüey',298726),(2416,'Holguín','CUB','Holguín',249492),(2417,'Santa Clara','CUB','Villa Clara',207350),(2418,'Guantánamo','CUB','Guantánamo',205078),(2419,'Pinar del Río','CUB','Pinar del Río',142100),(2420,'Bayamo','CUB','Granma',141000),(2421,'Cienfuegos','CUB','Cienfuegos',132770),(2422,'Victoria de las Tunas','CUB','Las Tunas',132350),(2423,'Matanzas','CUB','Matanzas',123273),(2424,'Manzanillo','CUB','Granma',109350),(2425,'Sancti-Spíritus','CUB','Sancti-Spíritus',100751),(2426,'Ciego de Ávila','CUB','Ciego de Ávila',98505),(2427,'al-Salimiya','KWT','Hawalli',130215),(2428,'Jalib al-Shuyukh','KWT','Hawalli',102178),(2429,'Kuwait','KWT','al-Asima',28859),(2430,'Nicosia','CYP','Nicosia',195000),(2431,'Limassol','CYP','Limassol',154400),(2432,'Vientiane','LAO','Viangchan',531800),(2433,'Savannakhet','LAO','Savannakhet',96652),(2434,'Riga','LVA','Riika',764328),(2435,'Daugavpils','LVA','Daugavpils',114829),(2436,'Liepaja','LVA','Liepaja',89439),(2437,'Maseru','LSO','Maseru',297000),(2438,'Beirut','LBN','Beirut',1100000),(2439,'Tripoli','LBN','al-Shamal',240000),(2440,'Monrovia','LBR','Montserrado',850000),(2441,'Tripoli','LBY','Tripoli',1682000),(2442,'Bengasi','LBY','Bengasi',804000),(2443,'Misrata','LBY','Misrata',121669),(2444,'al-Zawiya','LBY','al-Zawiya',89338),(2445,'Schaan','LIE','Schaan',5346),(2446,'Vaduz','LIE','Vaduz',5043),(2447,'Vilnius','LTU','Vilna',577969),(2448,'Kaunas','LTU','Kaunas',412639),(2449,'Klaipeda','LTU','Klaipeda',202451),(2450,'Šiauliai','LTU','Šiauliai',146563),(2451,'Panevezys','LTU','Panevezys',133695),(2452,'Luxembourg [Luxemburg/Lëtzebuerg]','LUX','Luxembourg',80700),(2453,'El-Aaiún','ESH','El-Aaiún',169000),(2454,'Macao','MAC','Macau',437500),(2455,'Antananarivo','MDG','Antananarivo',675669),(2456,'Toamasina','MDG','Toamasina',127441),(2457,'Antsirabé','MDG','Antananarivo',120239),(2458,'Mahajanga','MDG','Mahajanga',100807),(2459,'Fianarantsoa','MDG','Fianarantsoa',99005),(2460,'Skopje','MKD','Skopje',444299),(2461,'Blantyre','MWI','Blantyre',478155),(2462,'Lilongwe','MWI','Lilongwe',435964),(2463,'Male','MDV','Maale',71000),(2464,'Kuala Lumpur','MYS','Wilayah Persekutuan',1297526),(2465,'Ipoh','MYS','Perak',382853),(2466,'Johor Baharu','MYS','Johor',328436),(2467,'Petaling Jaya','MYS','Selangor',254350),(2468,'Kelang','MYS','Selangor',243355),(2469,'Kuala Terengganu','MYS','Terengganu',228119),(2470,'Pinang','MYS','Pulau Pinang',219603),(2471,'Kota Bharu','MYS','Kelantan',219582),(2472,'Kuantan','MYS','Pahang',199484),(2473,'Taiping','MYS','Perak',183261),(2474,'Seremban','MYS','Negeri Sembilan',182869),(2475,'Kuching','MYS','Sarawak',148059),(2476,'Sibu','MYS','Sarawak',126381),(2477,'Sandakan','MYS','Sabah',125841),(2478,'Alor Setar','MYS','Kedah',124412),(2479,'Selayang Baru','MYS','Selangor',124228),(2480,'Sungai Petani','MYS','Kedah',114763),(2481,'Shah Alam','MYS','Selangor',102019),(2482,'Bamako','MLI','Bamako',809552),(2483,'Birkirkara','MLT','Outer Harbour',21445),(2484,'Valletta','MLT','Inner Harbour',7073),(2485,'Casablanca','MAR','Casablanca',2940623),(2486,'Rabat','MAR','Rabat-Salé-Zammour-Z',623457),(2487,'Marrakech','MAR','Marrakech-Tensift-Al',621914),(2488,'Fès','MAR','Fès-Boulemane',541162),(2489,'Tanger','MAR','Tanger-Tétouan',521735),(2490,'Salé','MAR','Rabat-Salé-Zammour-Z',504420),(2491,'Meknès','MAR','Meknès-Tafilalet',460000),(2492,'Oujda','MAR','Oriental',365382),(2493,'Kénitra','MAR','Gharb-Chrarda-Béni H',292600),(2494,'Tétouan','MAR','Tanger-Tétouan',277516),(2495,'Safi','MAR','Doukkala-Abda',262300),(2496,'Agadir','MAR','Souss Massa-Draâ',155244),(2497,'Mohammedia','MAR','Casablanca',154706),(2498,'Khouribga','MAR','Chaouia-Ouardigha',152090),(2499,'Beni-Mellal','MAR','Tadla-Azilal',140212),(2500,'Témara','MAR','Rabat-Salé-Zammour-Z',126303),(2501,'El Jadida','MAR','Doukkala-Abda',119083),(2502,'Nador','MAR','Oriental',112450),(2503,'Ksar el Kebir','MAR','Tanger-Tétouan',107065),(2504,'Settat','MAR','Chaouia-Ouardigha',96200),(2505,'Taza','MAR','Taza-Al Hoceima-Taou',92700),(2506,'El Araich','MAR','Tanger-Tétouan',90400),(2507,'Dalap-Uliga-Darrit','MHL','Majuro',28000),(2508,'Fort-de-France','MTQ','Fort-de-France',94050),(2509,'Nouakchott','MRT','Nouakchott',667300),(2510,'Nouâdhibou','MRT','Dakhlet Nouâdhibou',97600),(2511,'Port-Louis','MUS','Port-Louis',138200),(2512,'Beau Bassin-Rose Hill','MUS','Plaines Wilhelms',100616),(2513,'Vacoas-Phoenix','MUS','Plaines Wilhelms',98464),(2514,'Mamoutzou','MYT','Mamoutzou',12000),(2515,'Ciudad de México','MEX','Distrito Federal',8591309),(2516,'Guadalajara','MEX','Jalisco',1647720),(2517,'Ecatepec de Morelos','MEX','México',1620303),(2518,'Puebla','MEX','Puebla',1346176),(2519,'Nezahualcóyotl','MEX','México',1224924),(2520,'Juárez','MEX','Chihuahua',1217818),(2521,'Tijuana','MEX','Baja California',1212232),(2522,'León','MEX','Guanajuato',1133576),(2523,'Monterrey','MEX','Nuevo León',1108499),(2524,'Zapopan','MEX','Jalisco',1002239),(2525,'Naucalpan de Juárez','MEX','México',857511),(2526,'Mexicali','MEX','Baja California',764902),(2527,'Culiacán','MEX','Sinaloa',744859),(2528,'Acapulco de Juárez','MEX','Guerrero',721011),(2529,'Tlalnepantla de Baz','MEX','México',720755),(2530,'Mérida','MEX','Yucatán',703324),(2531,'Chihuahua','MEX','Chihuahua',670208),(2532,'San Luis Potosí','MEX','San Luis Potosí',669353),(2533,'Guadalupe','MEX','Nuevo León',668780),(2534,'Toluca','MEX','México',665617),(2535,'Aguascalientes','MEX','Aguascalientes',643360),(2536,'Querétaro','MEX','Querétaro de Arteaga',639839),(2537,'Morelia','MEX','Michoacán de Ocampo',619958),(2538,'Hermosillo','MEX','Sonora',608697),(2539,'Saltillo','MEX','Coahuila de Zaragoza',577352),(2540,'Torreón','MEX','Coahuila de Zaragoza',529093),(2541,'Centro (Villahermosa)','MEX','Tabasco',519873),(2542,'San Nicolás de los Garza','MEX','Nuevo León',495540),(2543,'Durango','MEX','Durango',490524),(2544,'Chimalhuacán','MEX','México',490245),(2545,'Tlaquepaque','MEX','Jalisco',475472),(2546,'Atizapán de Zaragoza','MEX','México',467262),(2547,'Veracruz','MEX','Veracruz',457119),(2548,'Cuautitlán Izcalli','MEX','México',452976),(2549,'Irapuato','MEX','Guanajuato',440039),(2550,'Tuxtla Gutiérrez','MEX','Chiapas',433544),(2551,'Tultitlán','MEX','México',432411),(2552,'Reynosa','MEX','Tamaulipas',419776),(2553,'Benito Juárez','MEX','Quintana Roo',419276),(2554,'Matamoros','MEX','Tamaulipas',416428),(2555,'Xalapa','MEX','Veracruz',390058),(2556,'Celaya','MEX','Guanajuato',382140),(2557,'Mazatlán','MEX','Sinaloa',380265),(2558,'Ensenada','MEX','Baja California',369573),(2559,'Ahome','MEX','Sinaloa',358663),(2560,'Cajeme','MEX','Sonora',355679),(2561,'Cuernavaca','MEX','Morelos',337966),(2562,'Tonalá','MEX','Jalisco',336109),(2563,'Valle de Chalco Solidaridad','MEX','México',323113),(2564,'Nuevo Laredo','MEX','Tamaulipas',310277),(2565,'Tepic','MEX','Nayarit',305025),(2566,'Tampico','MEX','Tamaulipas',294789),(2567,'Ixtapaluca','MEX','México',293160),(2568,'Apodaca','MEX','Nuevo León',282941),(2569,'Guasave','MEX','Sinaloa',277201),(2570,'Gómez Palacio','MEX','Durango',272806),(2571,'Tapachula','MEX','Chiapas',271141),(2572,'Nicolás Romero','MEX','México',269393),(2573,'Coatzacoalcos','MEX','Veracruz',267037),(2574,'Uruapan','MEX','Michoacán de Ocampo',265211),(2575,'Victoria','MEX','Tamaulipas',262686),(2576,'Oaxaca de Juárez','MEX','Oaxaca',256848),(2577,'Coacalco de Berriozábal','MEX','México',252270),(2578,'Pachuca de Soto','MEX','Hidalgo',244688),(2579,'General Escobedo','MEX','Nuevo León',232961),(2580,'Salamanca','MEX','Guanajuato',226864),(2581,'Santa Catarina','MEX','Nuevo León',226573),(2582,'Tehuacán','MEX','Puebla',225943),(2583,'Chalco','MEX','México',222201),(2584,'Cárdenas','MEX','Tabasco',216903),(2585,'Campeche','MEX','Campeche',216735),(2586,'La Paz','MEX','México',213045),(2587,'Othón P. Blanco (Chetumal)','MEX','Quintana Roo',208014),(2588,'Texcoco','MEX','México',203681),(2589,'La Paz','MEX','Baja California Sur',196708),(2590,'Metepec','MEX','México',194265),(2591,'Monclova','MEX','Coahuila de Zaragoza',193657),(2592,'Huixquilucan','MEX','México',193156),(2593,'Chilpancingo de los Bravo','MEX','Guerrero',192509),(2594,'Puerto Vallarta','MEX','Jalisco',183741),(2595,'Fresnillo','MEX','Zacatecas',182744),(2596,'Ciudad Madero','MEX','Tamaulipas',182012),(2597,'Soledad de Graciano Sánchez','MEX','San Luis Potosí',179956),(2598,'San Juan del Río','MEX','Querétaro',179300),(2599,'San Felipe del Progreso','MEX','México',177330),(2600,'Córdoba','MEX','Veracruz',176952),(2601,'Tecámac','MEX','México',172410),(2602,'Ocosingo','MEX','Chiapas',171495),(2603,'Carmen','MEX','Campeche',171367),(2604,'Lázaro Cárdenas','MEX','Michoacán de Ocampo',170878),(2605,'Jiutepec','MEX','Morelos',170428),(2606,'Papantla','MEX','Veracruz',170123),(2607,'Comalcalco','MEX','Tabasco',164640),(2608,'Zamora','MEX','Michoacán de Ocampo',161191),(2609,'Nogales','MEX','Sonora',159103),(2610,'Huimanguillo','MEX','Tabasco',158335),(2611,'Cuautla','MEX','Morelos',153132),(2612,'Minatitlán','MEX','Veracruz',152983),(2613,'Poza Rica de Hidalgo','MEX','Veracruz',152678),(2614,'Ciudad Valles','MEX','San Luis Potosí',146411),(2615,'Navolato','MEX','Sinaloa',145396),(2616,'San Luis Río Colorado','MEX','Sonora',145276),(2617,'Pénjamo','MEX','Guanajuato',143927),(2618,'San Andrés Tuxtla','MEX','Veracruz',142251),(2619,'Guanajuato','MEX','Guanajuato',141215),(2620,'Navojoa','MEX','Sonora',140495),(2621,'Zitácuaro','MEX','Michoacán de Ocampo',137970),(2622,'Boca del Río','MEX','Veracruz-Llave',135721),(2623,'Allende','MEX','Guanajuato',134645),(2624,'Silao','MEX','Guanajuato',134037),(2625,'Macuspana','MEX','Tabasco',133795),(2626,'San Juan Bautista Tuxtepec','MEX','Oaxaca',133675),(2627,'San Cristóbal de las Casas','MEX','Chiapas',132317),(2628,'Valle de Santiago','MEX','Guanajuato',130557),(2629,'Guaymas','MEX','Sonora',130108),(2630,'Colima','MEX','Colima',129454),(2631,'Dolores Hidalgo','MEX','Guanajuato',128675),(2632,'Lagos de Moreno','MEX','Jalisco',127949),(2633,'Piedras Negras','MEX','Coahuila de Zaragoza',127898),(2634,'Altamira','MEX','Tamaulipas',127490),(2635,'Túxpam','MEX','Veracruz',126475),(2636,'San Pedro Garza García','MEX','Nuevo León',126147),(2637,'Cuauhtémoc','MEX','Chihuahua',124279),(2638,'Manzanillo','MEX','Colima',124014),(2639,'Iguala de la Independencia','MEX','Guerrero',123883),(2640,'Zacatecas','MEX','Zacatecas',123700),(2641,'Tlajomulco de Zúñiga','MEX','Jalisco',123220),(2642,'Tulancingo de Bravo','MEX','Hidalgo',121946),(2643,'Zinacantepec','MEX','México',121715),(2644,'San Martín Texmelucan','MEX','Puebla',121093),(2645,'Tepatitlán de Morelos','MEX','Jalisco',118948),(2646,'Martínez de la Torre','MEX','Veracruz',118815),(2647,'Orizaba','MEX','Veracruz',118488),(2648,'Apatzingán','MEX','Michoacán de Ocampo',117849),(2649,'Atlixco','MEX','Puebla',117019),(2650,'Delicias','MEX','Chihuahua',116132),(2651,'Ixtlahuaca','MEX','México',115548),(2652,'El Mante','MEX','Tamaulipas',112453),(2653,'Lerdo','MEX','Durango',112272),(2654,'Almoloya de Juárez','MEX','México',110550),(2655,'Acámbaro','MEX','Guanajuato',110487),(2656,'Acuña','MEX','Coahuila de Zaragoza',110388),(2657,'Guadalupe','MEX','Zacatecas',108881),(2658,'Huejutla de Reyes','MEX','Hidalgo',108017),(2659,'Hidalgo','MEX','Michoacán de Ocampo',106198),(2660,'Los Cabos','MEX','Baja California Sur',105199),(2661,'Comitán de Domínguez','MEX','Chiapas',104986),(2662,'Cunduacán','MEX','Tabasco',104164),(2663,'Río Bravo','MEX','Tamaulipas',103901),(2664,'Temapache','MEX','Veracruz',102824),(2665,'Chilapa de Alvarez','MEX','Guerrero',102716),(2666,'Hidalgo del Parral','MEX','Chihuahua',100881),(2667,'San Francisco del Rincón','MEX','Guanajuato',100149),(2668,'Taxco de Alarcón','MEX','Guerrero',99907),(2669,'Zumpango','MEX','México',99781),(2670,'San Pedro Cholula','MEX','Puebla',99734),(2671,'Lerma','MEX','México',99714),(2672,'Tecomán','MEX','Colima',99296),(2673,'Las Margaritas','MEX','Chiapas',97389),(2674,'Cosoleacaque','MEX','Veracruz',97199),(2675,'San Luis de la Paz','MEX','Guanajuato',96763),(2676,'José Azueta','MEX','Guerrero',95448),(2677,'Santiago Ixcuintla','MEX','Nayarit',95311),(2678,'San Felipe','MEX','Guanajuato',95305),(2679,'Tejupilco','MEX','México',94934),(2680,'Tantoyuca','MEX','Veracruz',94709),(2681,'Salvatierra','MEX','Guanajuato',94322),(2682,'Tultepec','MEX','México',93364),(2683,'Temixco','MEX','Morelos',92686),(2684,'Matamoros','MEX','Coahuila de Zaragoza',91858),(2685,'Pánuco','MEX','Veracruz',90551),(2686,'El Fuerte','MEX','Sinaloa',89556),(2687,'Tierra Blanca','MEX','Veracruz',89143),(2688,'Weno','FSM','Chuuk',22000),(2689,'Palikir','FSM','Pohnpei',8600),(2690,'Chisinau','MDA','Chisinau',719900),(2691,'Tiraspol','MDA','Dnjestria',194300),(2692,'Balti','MDA','Balti',153400),(2693,'Bender (Tîghina)','MDA','Bender (Tîghina)',125700),(2694,'Monte-Carlo','MCO','–',13154),(2695,'Monaco-Ville','MCO','–',1234),(2696,'Ulan Bator','MNG','Ulaanbaatar',773700),(2697,'Plymouth','MSR','Plymouth',2000),(2698,'Maputo','MOZ','Maputo',1018938),(2699,'Matola','MOZ','Maputo',424662),(2700,'Beira','MOZ','Sofala',397368),(2701,'Nampula','MOZ','Nampula',303346),(2702,'Chimoio','MOZ','Manica',171056),(2703,'Naçala-Porto','MOZ','Nampula',158248),(2704,'Quelimane','MOZ','Zambézia',150116),(2705,'Mocuba','MOZ','Zambézia',124700),(2706,'Tete','MOZ','Tete',101984),(2707,'Xai-Xai','MOZ','Gaza',99442),(2708,'Gurue','MOZ','Zambézia',99300),(2709,'Maxixe','MOZ','Inhambane',93985),(2710,'Rangoon (Yangon)','MMR','Rangoon [Yangon]',3361700),(2711,'Mandalay','MMR','Mandalay',885300),(2712,'Moulmein (Mawlamyine)','MMR','Mon',307900),(2713,'Pegu (Bago)','MMR','Pegu [Bago]',190900),(2714,'Bassein (Pathein)','MMR','Irrawaddy [Ayeyarwad',183900),(2715,'Monywa','MMR','Sagaing',138600),(2716,'Sittwe (Akyab)','MMR','Rakhine',137600),(2717,'Taunggyi (Taunggye)','MMR','Shan',131500),(2718,'Meikhtila','MMR','Mandalay',129700),(2719,'Mergui (Myeik)','MMR','Tenasserim [Tanintha',122700),(2720,'Lashio (Lasho)','MMR','Shan',107600),(2721,'Prome (Pyay)','MMR','Pegu [Bago]',105700),(2722,'Henzada (Hinthada)','MMR','Irrawaddy [Ayeyarwad',104700),(2723,'Myingyan','MMR','Mandalay',103600),(2724,'Tavoy (Dawei)','MMR','Tenasserim [Tanintha',96800),(2725,'Pagakku (Pakokku)','MMR','Magwe [Magway]',94800),(2726,'Windhoek','NAM','Khomas',169000),(2727,'Yangor','NRU','–',4050),(2728,'Yaren','NRU','–',559),(2729,'Kathmandu','NPL','Central',591835),(2730,'Biratnagar','NPL','Eastern',157764),(2731,'Pokhara','NPL','Western',146318),(2732,'Lalitapur','NPL','Central',145847),(2733,'Birgunj','NPL','Central',90639),(2734,'Managua','NIC','Managua',959000),(2735,'León','NIC','León',123865),(2736,'Chinandega','NIC','Chinandega',97387),(2737,'Masaya','NIC','Masaya',88971),(2738,'Niamey','NER','Niamey',420000),(2739,'Zinder','NER','Zinder',120892),(2740,'Maradi','NER','Maradi',112965),(2741,'Lagos','NGA','Lagos',1518000),(2742,'Ibadan','NGA','Oyo & Osun',1432000),(2743,'Ogbomosho','NGA','Oyo & Osun',730000),(2744,'Kano','NGA','Kano & Jigawa',674100),(2745,'Oshogbo','NGA','Oyo & Osun',476800),(2746,'Ilorin','NGA','Kwara & Kogi',475800),(2747,'Abeokuta','NGA','Ogun',427400),(2748,'Port Harcourt','NGA','Rivers & Bayelsa',410000),(2749,'Zaria','NGA','Kaduna',379200),(2750,'Ilesha','NGA','Oyo & Osun',378400),(2751,'Onitsha','NGA','Anambra & Enugu & Eb',371900),(2752,'Iwo','NGA','Oyo & Osun',362000),(2753,'Ado-Ekiti','NGA','Ondo & Ekiti',359400),(2754,'Abuja','NGA','Federal Capital Dist',350100),(2755,'Kaduna','NGA','Kaduna',342200),(2756,'Mushin','NGA','Lagos',333200),(2757,'Maiduguri','NGA','Borno & Yobe',320000),(2758,'Enugu','NGA','Anambra & Enugu & Eb',316100),(2759,'Ede','NGA','Oyo & Osun',307100),(2760,'Aba','NGA','Imo & Abia',298900),(2761,'Ife','NGA','Oyo & Osun',296800),(2762,'Ila','NGA','Oyo & Osun',264000),(2763,'Oyo','NGA','Oyo & Osun',256400),(2764,'Ikerre','NGA','Ondo & Ekiti',244600),(2765,'Benin City','NGA','Edo & Delta',229400),(2766,'Iseyin','NGA','Oyo & Osun',217300),(2767,'Katsina','NGA','Katsina',206500),(2768,'Jos','NGA','Plateau & Nassarawa',206300),(2769,'Sokoto','NGA','Sokoto & Kebbi & Zam',204900),(2770,'Ilobu','NGA','Oyo & Osun',199000),(2771,'Offa','NGA','Kwara & Kogi',197200),(2772,'Ikorodu','NGA','Lagos',184900),(2773,'Ilawe-Ekiti','NGA','Ondo & Ekiti',184500),(2774,'Owo','NGA','Ondo & Ekiti',183500),(2775,'Ikirun','NGA','Oyo & Osun',181400),(2776,'Shaki','NGA','Oyo & Osun',174500),(2777,'Calabar','NGA','Cross River',174400),(2778,'Ondo','NGA','Ondo & Ekiti',173600),(2779,'Akure','NGA','Ondo & Ekiti',162300),(2780,'Gusau','NGA','Sokoto & Kebbi & Zam',158000),(2781,'Ijebu-Ode','NGA','Ogun',156400),(2782,'Effon-Alaiye','NGA','Oyo & Osun',153100),(2783,'Kumo','NGA','Bauchi & Gombe',148000),(2784,'Shomolu','NGA','Lagos',147700),(2785,'Oka-Akoko','NGA','Ondo & Ekiti',142900),(2786,'Ikare','NGA','Ondo & Ekiti',140800),(2787,'Sapele','NGA','Edo & Delta',139200),(2788,'Deba Habe','NGA','Bauchi & Gombe',138600),(2789,'Minna','NGA','Niger',136900),(2790,'Warri','NGA','Edo & Delta',126100),(2791,'Bida','NGA','Niger',125500),(2792,'Ikire','NGA','Oyo & Osun',123300),(2793,'Makurdi','NGA','Benue',123100),(2794,'Lafia','NGA','Plateau & Nassarawa',122500),(2795,'Inisa','NGA','Oyo & Osun',119800),(2796,'Shagamu','NGA','Ogun',117200),(2797,'Awka','NGA','Anambra & Enugu & Eb',111200),(2798,'Gombe','NGA','Bauchi & Gombe',107800),(2799,'Igboho','NGA','Oyo & Osun',106800),(2800,'Ejigbo','NGA','Oyo & Osun',105900),(2801,'Agege','NGA','Lagos',105000),(2802,'Ise-Ekiti','NGA','Ondo & Ekiti',103400),(2803,'Ugep','NGA','Cross River',102600),(2804,'Epe','NGA','Lagos',101000),(2805,'Alofi','NIU','–',682),(2806,'Kingston','NFK','–',800),(2807,'Oslo','NOR','Oslo',508726),(2808,'Bergen','NOR','Hordaland',230948),(2809,'Trondheim','NOR','Sør-Trøndelag',150166),(2810,'Stavanger','NOR','Rogaland',108848),(2811,'Bærum','NOR','Akershus',101340),(2812,'Abidjan','CIV','Abidjan',2500000),(2813,'Bouaké','CIV','Bouaké',329850),(2814,'Yamoussoukro','CIV','Yamoussoukro',130000),(2815,'Daloa','CIV','Daloa',121842),(2816,'Korhogo','CIV','Korhogo',109445),(2817,'al-Sib','OMN','Masqat',155000),(2818,'Salala','OMN','Zufar',131813),(2819,'Bawshar','OMN','Masqat',107500),(2820,'Suhar','OMN','al-Batina',90814),(2821,'Masqat','OMN','Masqat',51969),(2822,'Karachi','PAK','Sindh',9269265),(2823,'Lahore','PAK','Punjab',5063499),(2824,'Faisalabad','PAK','Punjab',1977246),(2825,'Rawalpindi','PAK','Punjab',1406214),(2826,'Multan','PAK','Punjab',1182441),(2827,'Hyderabad','PAK','Sindh',1151274),(2828,'Gujranwala','PAK','Punjab',1124749),(2829,'Peshawar','PAK','Nothwest Border Prov',988005),(2830,'Quetta','PAK','Baluchistan',560307),(2831,'Islamabad','PAK','Islamabad',524500),(2832,'Sargodha','PAK','Punjab',455360),(2833,'Sialkot','PAK','Punjab',417597),(2834,'Bahawalpur','PAK','Punjab',403408),(2835,'Sukkur','PAK','Sindh',329176),(2836,'Jhang','PAK','Punjab',292214),(2837,'Sheikhupura','PAK','Punjab',271875),(2838,'Larkana','PAK','Sindh',270366),(2839,'Gujrat','PAK','Punjab',250121),(2840,'Mardan','PAK','Nothwest Border Prov',244511),(2841,'Kasur','PAK','Punjab',241649),(2842,'Rahim Yar Khan','PAK','Punjab',228479),(2843,'Sahiwal','PAK','Punjab',207388),(2844,'Okara','PAK','Punjab',200901),(2845,'Wah','PAK','Punjab',198400),(2846,'Dera Ghazi Khan','PAK','Punjab',188100),(2847,'Mirpur Khas','PAK','Sind',184500),(2848,'Nawabshah','PAK','Sind',183100),(2849,'Mingora','PAK','Nothwest Border Prov',174500),(2850,'Chiniot','PAK','Punjab',169300),(2851,'Kamoke','PAK','Punjab',151000),(2852,'Mandi Burewala','PAK','Punjab',149900),(2853,'Jhelum','PAK','Punjab',145800),(2854,'Sadiqabad','PAK','Punjab',141500),(2855,'Jacobabad','PAK','Sind',137700),(2856,'Shikarpur','PAK','Sind',133300),(2857,'Khanewal','PAK','Punjab',133000),(2858,'Hafizabad','PAK','Punjab',130200),(2859,'Kohat','PAK','Nothwest Border Prov',125300),(2860,'Muzaffargarh','PAK','Punjab',121600),(2861,'Khanpur','PAK','Punjab',117800),(2862,'Gojra','PAK','Punjab',115000),(2863,'Bahawalnagar','PAK','Punjab',109600),(2864,'Muridke','PAK','Punjab',108600),(2865,'Pak Pattan','PAK','Punjab',107800),(2866,'Abottabad','PAK','Nothwest Border Prov',106000),(2867,'Tando Adam','PAK','Sind',103400),(2868,'Jaranwala','PAK','Punjab',103300),(2869,'Khairpur','PAK','Sind',102200),(2870,'Chishtian Mandi','PAK','Punjab',101700),(2871,'Daska','PAK','Punjab',101500),(2872,'Dadu','PAK','Sind',98600),(2873,'Mandi Bahauddin','PAK','Punjab',97300),(2874,'Ahmadpur East','PAK','Punjab',96000),(2875,'Kamalia','PAK','Punjab',95300),(2876,'Khuzdar','PAK','Baluchistan',93100),(2877,'Vihari','PAK','Punjab',92300),(2878,'Dera Ismail Khan','PAK','Nothwest Border Prov',90400),(2879,'Wazirabad','PAK','Punjab',89700),(2880,'Nowshera','PAK','Nothwest Border Prov',89400),(2881,'Koror','PLW','Koror',12000),(2882,'Ciudad de Panamá','PAN','Panamá',471373),(2883,'San Miguelito','PAN','San Miguelito',315382),(2884,'Port Moresby','PNG','National Capital Dis',247000),(2885,'Asunción','PRY','Asunción',557776),(2886,'Ciudad del Este','PRY','Alto Paraná',133881),(2887,'San Lorenzo','PRY','Central',133395),(2888,'Lambaré','PRY','Central',99681),(2889,'Fernando de la Mora','PRY','Central',95287),(2890,'Lima','PER','Lima',6464693),(2891,'Arequipa','PER','Arequipa',762000),(2892,'Trujillo','PER','La Libertad',652000),(2893,'Chiclayo','PER','Lambayeque',517000),(2894,'Callao','PER','Callao',424294),(2895,'Iquitos','PER','Loreto',367000),(2896,'Chimbote','PER','Ancash',336000),(2897,'Huancayo','PER','Junín',327000),(2898,'Piura','PER','Piura',325000),(2899,'Cusco','PER','Cusco',291000),(2900,'Pucallpa','PER','Ucayali',220866),(2901,'Tacna','PER','Tacna',215683),(2902,'Ica','PER','Ica',194820),(2903,'Sullana','PER','Piura',147361),(2904,'Juliaca','PER','Puno',142576),(2905,'Huánuco','PER','Huanuco',129688),(2906,'Ayacucho','PER','Ayacucho',118960),(2907,'Chincha Alta','PER','Ica',110016),(2908,'Cajamarca','PER','Cajamarca',108009),(2909,'Puno','PER','Puno',101578),(2910,'Ventanilla','PER','Callao',101056),(2911,'Castilla','PER','Piura',90642),(2912,'Adamstown','PCN','–',42),(2913,'Garapan','MNP','Saipan',9200),(2914,'Lisboa','PRT','Lisboa',563210),(2915,'Porto','PRT','Porto',273060),(2916,'Amadora','PRT','Lisboa',122106),(2917,'Coímbra','PRT','Coímbra',96100),(2918,'Braga','PRT','Braga',90535),(2919,'San Juan','PRI','San Juan',434374),(2920,'Bayamón','PRI','Bayamón',224044),(2921,'Ponce','PRI','Ponce',186475),(2922,'Carolina','PRI','Carolina',186076),(2923,'Caguas','PRI','Caguas',140502),(2924,'Arecibo','PRI','Arecibo',100131),(2925,'Guaynabo','PRI','Guaynabo',100053),(2926,'Mayagüez','PRI','Mayagüez',98434),(2927,'Toa Baja','PRI','Toa Baja',94085),(2928,'Warszawa','POL','Mazowieckie',1615369),(2929,'Lódz','POL','Lodzkie',800110),(2930,'Kraków','POL','Malopolskie',738150),(2931,'Wroclaw','POL','Dolnoslaskie',636765),(2932,'Poznan','POL','Wielkopolskie',576899),(2933,'Gdansk','POL','Pomorskie',458988),(2934,'Szczecin','POL','Zachodnio-Pomorskie',416988),(2935,'Bydgoszcz','POL','Kujawsko-Pomorskie',386855),(2936,'Lublin','POL','Lubelskie',356251),(2937,'Katowice','POL','Slaskie',345934),(2938,'Bialystok','POL','Podlaskie',283937),(2939,'Czestochowa','POL','Slaskie',257812),(2940,'Gdynia','POL','Pomorskie',253521),(2941,'Sosnowiec','POL','Slaskie',244102),(2942,'Radom','POL','Mazowieckie',232262),(2943,'Kielce','POL','Swietokrzyskie',212383),(2944,'Gliwice','POL','Slaskie',212164),(2945,'Torun','POL','Kujawsko-Pomorskie',206158),(2946,'Bytom','POL','Slaskie',205560),(2947,'Zabrze','POL','Slaskie',200177),(2948,'Bielsko-Biala','POL','Slaskie',180307),(2949,'Olsztyn','POL','Warminsko-Mazurskie',170904),(2950,'Rzeszów','POL','Podkarpackie',162049),(2951,'Ruda Slaska','POL','Slaskie',159665),(2952,'Rybnik','POL','Slaskie',144582),(2953,'Walbrzych','POL','Dolnoslaskie',136923),(2954,'Tychy','POL','Slaskie',133178),(2955,'Dabrowa Górnicza','POL','Slaskie',131037),(2956,'Plock','POL','Mazowieckie',131011),(2957,'Elblag','POL','Warminsko-Mazurskie',129782),(2958,'Opole','POL','Opolskie',129553),(2959,'Gorzów Wielkopolski','POL','Lubuskie',126019),(2960,'Wloclawek','POL','Kujawsko-Pomorskie',123373),(2961,'Chorzów','POL','Slaskie',121708),(2962,'Tarnów','POL','Malopolskie',121494),(2963,'Zielona Góra','POL','Lubuskie',118182),(2964,'Koszalin','POL','Zachodnio-Pomorskie',112375),(2965,'Legnica','POL','Dolnoslaskie',109335),(2966,'Kalisz','POL','Wielkopolskie',106641),(2967,'Grudziadz','POL','Kujawsko-Pomorskie',102434),(2968,'Slupsk','POL','Pomorskie',102370),(2969,'Jastrzebie-Zdrój','POL','Slaskie',102294),(2970,'Jaworzno','POL','Slaskie',97929),(2971,'Jelenia Góra','POL','Dolnoslaskie',93901),(2972,'Malabo','GNQ','Bioko',40000),(2973,'Doha','QAT','Doha',355000),(2974,'Paris','FRA','Île-de-France',2125246),(2975,'Marseille','FRA','Provence-Alpes-Côte',798430),(2976,'Lyon','FRA','Rhône-Alpes',445452),(2977,'Toulouse','FRA','Midi-Pyrénées',390350),(2978,'Nice','FRA','Provence-Alpes-Côte',342738),(2979,'Nantes','FRA','Pays de la Loire',270251),(2980,'Strasbourg','FRA','Alsace',264115),(2981,'Montpellier','FRA','Languedoc-Roussillon',225392),(2982,'Bordeaux','FRA','Aquitaine',215363),(2983,'Rennes','FRA','Haute-Normandie',206229),(2984,'Le Havre','FRA','Champagne-Ardenne',190905),(2985,'Reims','FRA','Nord-Pas-de-Calais',187206),(2986,'Lille','FRA','Rhône-Alpes',184657),(2987,'St-Étienne','FRA','Bretagne',180210),(2988,'Toulon','FRA','Provence-Alpes-Côte',160639),(2989,'Grenoble','FRA','Rhône-Alpes',153317),(2990,'Angers','FRA','Pays de la Loire',151279),(2991,'Dijon','FRA','Bourgogne',149867),(2992,'Brest','FRA','Bretagne',149634),(2993,'Le Mans','FRA','Pays de la Loire',146105),(2994,'Clermont-Ferrand','FRA','Auvergne',137140),(2995,'Amiens','FRA','Picardie',135501),(2996,'Aix-en-Provence','FRA','Provence-Alpes-Côte',134222),(2997,'Limoges','FRA','Limousin',133968),(2998,'Nîmes','FRA','Languedoc-Roussillon',133424),(2999,'Tours','FRA','Centre',132820),(3000,'Villeurbanne','FRA','Rhône-Alpes',124215),(3001,'Metz','FRA','Lorraine',123776),(3002,'Besançon','FRA','Franche-Comté',117733),(3003,'Caen','FRA','Basse-Normandie',113987),(3004,'Orléans','FRA','Centre',113126),(3005,'Mulhouse','FRA','Alsace',110359),(3006,'Rouen','FRA','Haute-Normandie',106592),(3007,'Boulogne-Billancourt','FRA','Île-de-France',106367),(3008,'Perpignan','FRA','Languedoc-Roussillon',105115),(3009,'Nancy','FRA','Lorraine',103605),(3010,'Roubaix','FRA','Nord-Pas-de-Calais',96984),(3011,'Argenteuil','FRA','Île-de-France',93961),(3012,'Tourcoing','FRA','Nord-Pas-de-Calais',93540),(3013,'Montreuil','FRA','Île-de-France',90674),(3014,'Cayenne','GUF','Cayenne',50699),(3015,'Faaa','PYF','Tahiti',25888),(3016,'Papeete','PYF','Tahiti',25553),(3017,'Saint-Denis','REU','Saint-Denis',131480),(3018,'Bucuresti','ROM','Bukarest',2016131),(3019,'Iasi','ROM','Iasi',348070),(3020,'Constanta','ROM','Constanta',342264),(3021,'Cluj-Napoca','ROM','Cluj',332498),(3022,'Galati','ROM','Galati',330276),(3023,'Timisoara','ROM','Timis',324304),(3024,'Brasov','ROM','Brasov',314225),(3025,'Craiova','ROM','Dolj',313530),(3026,'Ploiesti','ROM','Prahova',251348),(3027,'Braila','ROM','Braila',233756),(3028,'Oradea','ROM','Bihor',222239),(3029,'Bacau','ROM','Bacau',209235),(3030,'Pitesti','ROM','Arges',187170),(3031,'Arad','ROM','Arad',184408),(3032,'Sibiu','ROM','Sibiu',169611),(3033,'Târgu Mures','ROM','Mures',165153),(3034,'Baia Mare','ROM','Maramures',149665),(3035,'Buzau','ROM','Buzau',148372),(3036,'Satu Mare','ROM','Satu Mare',130059),(3037,'Botosani','ROM','Botosani',128730),(3038,'Piatra Neamt','ROM','Neamt',125070),(3039,'Râmnicu Vâlcea','ROM','Vâlcea',119741),(3040,'Suceava','ROM','Suceava',118549),(3041,'Drobeta-Turnu Severin','ROM','Mehedinti',117865),(3042,'Târgoviste','ROM','Dâmbovita',98980),(3043,'Focsani','ROM','Vrancea',98979),(3044,'Târgu Jiu','ROM','Gorj',98524),(3045,'Tulcea','ROM','Tulcea',96278),(3046,'Resita','ROM','Caras-Severin',93976),(3047,'Kigali','RWA','Kigali',286000),(3048,'Stockholm','SWE','Lisboa',750348),(3049,'Gothenburg [Göteborg]','SWE','West Götanmaan län',466990),(3050,'Malmö','SWE','Skåne län',259579),(3051,'Uppsala','SWE','Uppsala län',189569),(3052,'Linköping','SWE','East Götanmaan län',133168),(3053,'Västerås','SWE','Västmanlands län',126328),(3054,'Örebro','SWE','Örebros län',124207),(3055,'Norrköping','SWE','East Götanmaan län',122199),(3056,'Helsingborg','SWE','Skåne län',117737),(3057,'Jönköping','SWE','Jönköpings län',117095),(3058,'Umeå','SWE','Västerbottens län',104512),(3059,'Lund','SWE','Skåne län',98948),(3060,'Borås','SWE','West Götanmaan län',96883),(3061,'Sundsvall','SWE','Västernorrlands län',93126),(3062,'Gävle','SWE','Gävleborgs län',90742),(3063,'Jamestown','SHN','Saint Helena',1500),(3064,'Basseterre','KNA','St George Basseterre',11600),(3065,'Castries','LCA','Castries',2301),(3066,'Kingstown','VCT','St George',17100),(3067,'Saint-Pierre','SPM','Saint-Pierre',5808),(3068,'Berlin','DEU','Berliini',3386667),(3069,'Hamburg','DEU','Hamburg',1704735),(3070,'Munich [München]','DEU','Baijeri',1194560),(3071,'Köln','DEU','Nordrhein-Westfalen',962507),(3072,'Frankfurt am Main','DEU','Hessen',643821),(3073,'Essen','DEU','Nordrhein-Westfalen',599515),(3074,'Dortmund','DEU','Nordrhein-Westfalen',590213),(3075,'Stuttgart','DEU','Baden-Württemberg',582443),(3076,'Düsseldorf','DEU','Nordrhein-Westfalen',568855),(3077,'Bremen','DEU','Bremen',540330),(3078,'Duisburg','DEU','Nordrhein-Westfalen',519793),(3079,'Hannover','DEU','Niedersachsen',514718),(3080,'Leipzig','DEU','Saksi',489532),(3081,'Nürnberg','DEU','Baijeri',486628),(3082,'Dresden','DEU','Saksi',476668),(3083,'Bochum','DEU','Nordrhein-Westfalen',392830),(3084,'Wuppertal','DEU','Nordrhein-Westfalen',368993),(3085,'Bielefeld','DEU','Nordrhein-Westfalen',321125),(3086,'Mannheim','DEU','Baden-Württemberg',307730),(3087,'Bonn','DEU','Nordrhein-Westfalen',301048),(3088,'Gelsenkirchen','DEU','Nordrhein-Westfalen',281979),(3089,'Karlsruhe','DEU','Baden-Württemberg',277204),(3090,'Wiesbaden','DEU','Hessen',268716),(3091,'Münster','DEU','Nordrhein-Westfalen',264670),(3092,'Mönchengladbach','DEU','Nordrhein-Westfalen',263697),(3093,'Chemnitz','DEU','Saksi',263222),(3094,'Augsburg','DEU','Baijeri',254867),(3095,'Halle/Saale','DEU','Anhalt Sachsen',254360),(3096,'Braunschweig','DEU','Niedersachsen',246322),(3097,'Aachen','DEU','Nordrhein-Westfalen',243825),(3098,'Krefeld','DEU','Nordrhein-Westfalen',241769),(3099,'Magdeburg','DEU','Anhalt Sachsen',235073),(3100,'Kiel','DEU','Schleswig-Holstein',233795),(3101,'Oberhausen','DEU','Nordrhein-Westfalen',222349),(3102,'Lübeck','DEU','Schleswig-Holstein',213326),(3103,'Hagen','DEU','Nordrhein-Westfalen',205201),(3104,'Rostock','DEU','Mecklenburg-Vorpomme',203279),(3105,'Freiburg im Breisgau','DEU','Baden-Württemberg',202455),(3106,'Erfurt','DEU','Thüringen',201267),(3107,'Kassel','DEU','Hessen',196211),(3108,'Saarbrücken','DEU','Saarland',183836),(3109,'Mainz','DEU','Rheinland-Pfalz',183134),(3110,'Hamm','DEU','Nordrhein-Westfalen',181804),(3111,'Herne','DEU','Nordrhein-Westfalen',175661),(3112,'Mülheim an der Ruhr','DEU','Nordrhein-Westfalen',173895),(3113,'Solingen','DEU','Nordrhein-Westfalen',165583),(3114,'Osnabrück','DEU','Niedersachsen',164539),(3115,'Ludwigshafen am Rhein','DEU','Rheinland-Pfalz',163771),(3116,'Leverkusen','DEU','Nordrhein-Westfalen',160841),(3117,'Oldenburg','DEU','Niedersachsen',154125),(3118,'Neuss','DEU','Nordrhein-Westfalen',149702),(3119,'Heidelberg','DEU','Baden-Württemberg',139672),(3120,'Darmstadt','DEU','Hessen',137776),(3121,'Paderborn','DEU','Nordrhein-Westfalen',137647),(3122,'Potsdam','DEU','Brandenburg',128983),(3123,'Würzburg','DEU','Baijeri',127350),(3124,'Regensburg','DEU','Baijeri',125236),(3125,'Recklinghausen','DEU','Nordrhein-Westfalen',125022),(3126,'Göttingen','DEU','Niedersachsen',124775),(3127,'Bremerhaven','DEU','Bremen',122735),(3128,'Wolfsburg','DEU','Niedersachsen',121954),(3129,'Bottrop','DEU','Nordrhein-Westfalen',121097),(3130,'Remscheid','DEU','Nordrhein-Westfalen',120125),(3131,'Heilbronn','DEU','Baden-Württemberg',119526),(3132,'Pforzheim','DEU','Baden-Württemberg',117227),(3133,'Offenbach am Main','DEU','Hessen',116627),(3134,'Ulm','DEU','Baden-Württemberg',116103),(3135,'Ingolstadt','DEU','Baijeri',114826),(3136,'Gera','DEU','Thüringen',114718),(3137,'Salzgitter','DEU','Niedersachsen',112934),(3138,'Cottbus','DEU','Brandenburg',110894),(3139,'Reutlingen','DEU','Baden-Württemberg',110343),(3140,'Fürth','DEU','Baijeri',109771),(3141,'Siegen','DEU','Nordrhein-Westfalen',109225),(3142,'Koblenz','DEU','Rheinland-Pfalz',108003),(3143,'Moers','DEU','Nordrhein-Westfalen',106837),(3144,'Bergisch Gladbach','DEU','Nordrhein-Westfalen',106150),(3145,'Zwickau','DEU','Saksi',104146),(3146,'Hildesheim','DEU','Niedersachsen',104013),(3147,'Witten','DEU','Nordrhein-Westfalen',103384),(3148,'Schwerin','DEU','Mecklenburg-Vorpomme',102878),(3149,'Erlangen','DEU','Baijeri',100750),(3150,'Kaiserslautern','DEU','Rheinland-Pfalz',100025),(3151,'Trier','DEU','Rheinland-Pfalz',99891),(3152,'Jena','DEU','Thüringen',99779),(3153,'Iserlohn','DEU','Nordrhein-Westfalen',99474),(3154,'Gütersloh','DEU','Nordrhein-Westfalen',95028),(3155,'Marl','DEU','Nordrhein-Westfalen',93735),(3156,'Lünen','DEU','Nordrhein-Westfalen',92044),(3157,'Düren','DEU','Nordrhein-Westfalen',91092),(3158,'Ratingen','DEU','Nordrhein-Westfalen',90951),(3159,'Velbert','DEU','Nordrhein-Westfalen',89881),(3160,'Esslingen am Neckar','DEU','Baden-Württemberg',89667),(3161,'Honiara','SLB','Honiara',50100),(3162,'Lusaka','ZMB','Lusaka',1317000),(3163,'Ndola','ZMB','Copperbelt',329200),(3164,'Kitwe','ZMB','Copperbelt',288600),(3165,'Kabwe','ZMB','Central',154300),(3166,'Chingola','ZMB','Copperbelt',142400),(3167,'Mufulira','ZMB','Copperbelt',123900),(3168,'Luanshya','ZMB','Copperbelt',118100),(3169,'Apia','WSM','Upolu',35900),(3170,'Serravalle','SMR','Serravalle/Dogano',4802),(3171,'San Marino','SMR','San Marino',2294),(3172,'São Tomé','STP','Aqua Grande',49541),(3173,'Riyadh','SAU','Riyadh',3324000),(3174,'Jedda','SAU','Mekka',2046300),(3175,'Mekka','SAU','Mekka',965700),(3176,'Medina','SAU','Medina',608300),(3177,'al-Dammam','SAU','al-Sharqiya',482300),(3178,'al-Taif','SAU','Mekka',416100),(3179,'Tabuk','SAU','Tabuk',292600),(3180,'Burayda','SAU','al-Qasim',248600),(3181,'al-Hufuf','SAU','al-Sharqiya',225800),(3182,'al-Mubarraz','SAU','al-Sharqiya',219100),(3183,'Khamis Mushayt','SAU','Asir',217900),(3184,'Hail','SAU','Hail',176800),(3185,'al-Kharj','SAU','Riad',152100),(3186,'al-Khubar','SAU','al-Sharqiya',141700),(3187,'Jubayl','SAU','al-Sharqiya',140800),(3188,'Hafar al-Batin','SAU','al-Sharqiya',137800),(3189,'al-Tuqba','SAU','al-Sharqiya',125700),(3190,'Yanbu','SAU','Medina',119800),(3191,'Abha','SAU','Asir',112300),(3192,'Ara´ar','SAU','al-Khudud al-Samaliy',108100),(3193,'al-Qatif','SAU','al-Sharqiya',98900),(3194,'al-Hawiya','SAU','Mekka',93900),(3195,'Unayza','SAU','Qasim',91100),(3196,'Najran','SAU','Najran',91000),(3197,'Pikine','SEN','Cap-Vert',855287),(3198,'Dakar','SEN','Cap-Vert',785071),(3199,'Thiès','SEN','Thiès',248000),(3200,'Kaolack','SEN','Kaolack',199000),(3201,'Ziguinchor','SEN','Ziguinchor',192000),(3202,'Rufisque','SEN','Cap-Vert',150000),(3203,'Saint-Louis','SEN','Saint-Louis',132400),(3204,'Mbour','SEN','Thiès',109300),(3205,'Diourbel','SEN','Diourbel',99400),(3206,'Victoria','SYC','Mahé',41000),(3207,'Freetown','SLE','Western',850000),(3208,'Singapore','SGP','–',4017733),(3209,'Bratislava','SVK','Bratislava',448292),(3210,'Košice','SVK','Východné Slovensko',241874),(3211,'Prešov','SVK','Východné Slovensko',93977),(3212,'Ljubljana','SVN','Osrednjeslovenska',270986),(3213,'Maribor','SVN','Podravska',115532),(3214,'Mogadishu','SOM','Banaadir',997000),(3215,'Hargeysa','SOM','Woqooyi Galbeed',90000),(3216,'Kismaayo','SOM','Jubbada Hoose',90000),(3217,'Colombo','LKA','Western',645000),(3218,'Dehiwala','LKA','Western',203000),(3219,'Moratuwa','LKA','Western',190000),(3220,'Jaffna','LKA','Northern',149000),(3221,'Kandy','LKA','Central',140000),(3222,'Sri Jayawardenepura Kotte','LKA','Western',118000),(3223,'Negombo','LKA','Western',100000),(3224,'Omdurman','SDN','Khartum',1271403),(3225,'Khartum','SDN','Khartum',947483),(3226,'Sharq al-Nil','SDN','Khartum',700887),(3227,'Port Sudan','SDN','al-Bahr al-Ahmar',308195),(3228,'Kassala','SDN','Kassala',234622),(3229,'Obeid','SDN','Kurdufan al-Shamaliy',229425),(3230,'Nyala','SDN','Darfur al-Janubiya',227183),(3231,'Wad Madani','SDN','al-Jazira',211362),(3232,'al-Qadarif','SDN','al-Qadarif',191164),(3233,'Kusti','SDN','al-Bahr al-Abyad',173599),(3234,'al-Fashir','SDN','Darfur al-Shamaliya',141884),(3235,'Juba','SDN','Bahr al-Jabal',114980),(3236,'Helsinki [Helsingfors]','FIN','Newmaa',555474),(3237,'Espoo','FIN','Newmaa',213271),(3238,'Tampere','FIN','Pirkanmaa',195468),(3239,'Vantaa','FIN','Newmaa',178471),(3240,'Turku [Åbo]','FIN','Varsinais-Suomi',172561),(3241,'Oulu','FIN','Pohjois-Pohjanmaa',120753),(3242,'Lahti','FIN','Päijät-Häme',96921),(3243,'Paramaribo','SUR','Paramaribo',112000),(3244,'Mbabane','SWZ','Hhohho',61000),(3245,'Zürich','CHE','Zürich',336800),(3246,'Geneve','CHE','Geneve',173500),(3247,'Basel','CHE','Basel-Stadt',166700),(3248,'Bern','CHE','Bern',122700),(3249,'Lausanne','CHE','Vaud',114500),(3250,'Damascus','SYR','Damascus',1347000),(3251,'Aleppo','SYR','Aleppo',1261983),(3252,'Hims','SYR','Hims',507404),(3253,'Hama','SYR','Hama',343361),(3254,'Latakia','SYR','Latakia',264563),(3255,'al-Qamishliya','SYR','al-Hasaka',144286),(3256,'Dayr al-Zawr','SYR','Dayr al-Zawr',140459),(3257,'Jaramana','SYR','Damaskos',138469),(3258,'Duma','SYR','Damaskos',131158),(3259,'al-Raqqa','SYR','al-Raqqa',108020),(3260,'Idlib','SYR','Idlib',91081),(3261,'Dushanbe','TJK','Karotegin',524000),(3262,'Khujand','TJK','Khujand',161500),(3263,'Taipei','TWN','Taipei',2641312),(3264,'Kaohsiung','TWN','Kaohsiung',1475505),(3265,'Taichung','TWN','Taichung',940589),(3266,'Tainan','TWN','Tainan',728060),(3267,'Panchiao','TWN','Taipei',523850),(3268,'Chungho','TWN','Taipei',392176),(3269,'Keelung (Chilung)','TWN','Keelung',385201),(3270,'Sanchung','TWN','Taipei',380084),(3271,'Hsinchuang','TWN','Taipei',365048),(3272,'Hsinchu','TWN','Hsinchu',361958),(3273,'Chungli','TWN','Taoyuan',318649),(3274,'Fengshan','TWN','Kaohsiung',318562),(3275,'Taoyuan','TWN','Taoyuan',316438),(3276,'Chiayi','TWN','Chiayi',265109),(3277,'Hsintien','TWN','Taipei',263603),(3278,'Changhwa','TWN','Changhwa',227715),(3279,'Yungho','TWN','Taipei',227700),(3280,'Tucheng','TWN','Taipei',224897),(3281,'Pingtung','TWN','Pingtung',214727),(3282,'Yungkang','TWN','Tainan',193005),(3283,'Pingchen','TWN','Taoyuan',188344),(3284,'Tali','TWN','Taichung',171940),(3285,'Taiping','TWN','',165524),(3286,'Pate','TWN','Taoyuan',161700),(3287,'Fengyuan','TWN','Taichung',161032),(3288,'Luchou','TWN','Taipei',160516),(3289,'Hsichuh','TWN','Taipei',154976),(3290,'Shulin','TWN','Taipei',151260),(3291,'Yuanlin','TWN','Changhwa',126402),(3292,'Yangmei','TWN','Taoyuan',126323),(3293,'Taliao','TWN','',115897),(3294,'Kueishan','TWN','',112195),(3295,'Tanshui','TWN','Taipei',111882),(3296,'Taitung','TWN','Taitung',111039),(3297,'Hualien','TWN','Hualien',108407),(3298,'Nantou','TWN','Nantou',104723),(3299,'Lungtan','TWN','Taipei',103088),(3300,'Touliu','TWN','Yünlin',98900),(3301,'Tsaotun','TWN','Nantou',96800),(3302,'Kangshan','TWN','Kaohsiung',92200),(3303,'Ilan','TWN','Ilan',92000),(3304,'Miaoli','TWN','Miaoli',90000),(3305,'Dar es Salaam','TZA','Dar es Salaam',1747000),(3306,'Dodoma','TZA','Dodoma',189000),(3307,'Mwanza','TZA','Mwanza',172300),(3308,'Zanzibar','TZA','Zanzibar West',157634),(3309,'Tanga','TZA','Tanga',137400),(3310,'Mbeya','TZA','Mbeya',130800),(3311,'Morogoro','TZA','Morogoro',117800),(3312,'Arusha','TZA','Arusha',102500),(3313,'Moshi','TZA','Kilimanjaro',96800),(3314,'Tabora','TZA','Tabora',92800),(3315,'København','DNK','København',495699),(3316,'Århus','DNK','Århus',284846),(3317,'Odense','DNK','Fyn',183912),(3318,'Aalborg','DNK','Nordjylland',161161),(3319,'Frederiksberg','DNK','Frederiksberg',90327),(3320,'Bangkok','THA','Bangkok',6320174),(3321,'Nonthaburi','THA','Nonthaburi',292100),(3322,'Nakhon Ratchasima','THA','Nakhon Ratchasima',181400),(3323,'Chiang Mai','THA','Chiang Mai',171100),(3324,'Udon Thani','THA','Udon Thani',158100),(3325,'Hat Yai','THA','Songkhla',148632),(3326,'Khon Kaen','THA','Khon Kaen',126500),(3327,'Pak Kret','THA','Nonthaburi',126055),(3328,'Nakhon Sawan','THA','Nakhon Sawan',123800),(3329,'Ubon Ratchathani','THA','Ubon Ratchathani',116300),(3330,'Songkhla','THA','Songkhla',94900),(3331,'Nakhon Pathom','THA','Nakhon Pathom',94100),(3332,'Lomé','TGO','Maritime',375000),(3333,'Fakaofo','TKL','Fakaofo',300),(3334,'Nuku´alofa','TON','Tongatapu',22400),(3335,'Chaguanas','TTO','Caroni',56601),(3336,'Port-of-Spain','TTO','Port-of-Spain',43396),(3337,'N´Djaména','TCD','Chari-Baguirmi',530965),(3338,'Moundou','TCD','Logone Occidental',99500),(3339,'Praha','CZE','Hlavní mesto Praha',1181126),(3340,'Brno','CZE','Jizní Morava',381862),(3341,'Ostrava','CZE','Severní Morava',320041),(3342,'Plzen','CZE','Zapadní Cechy',166759),(3343,'Olomouc','CZE','Severní Morava',102702),(3344,'Liberec','CZE','Severní Cechy',99155),(3345,'Ceské Budejovice','CZE','Jizní Cechy',98186),(3346,'Hradec Králové','CZE','Východní Cechy',98080),(3347,'Ústí nad Labem','CZE','Severní Cechy',95491),(3348,'Pardubice','CZE','Východní Cechy',91309),(3349,'Tunis','TUN','Tunis',690600),(3350,'Sfax','TUN','Sfax',257800),(3351,'Ariana','TUN','Ariana',197000),(3352,'Ettadhamen','TUN','Ariana',178600),(3353,'Sousse','TUN','Sousse',145900),(3354,'Kairouan','TUN','Kairouan',113100),(3355,'Biserta','TUN','Biserta',108900),(3356,'Gabès','TUN','Gabès',106600),(3357,'Istanbul','TUR','Istanbul',8787958),(3358,'Ankara','TUR','Ankara',3038159),(3359,'Izmir','TUR','Izmir',2130359),(3360,'Adana','TUR','Adana',1131198),(3361,'Bursa','TUR','Bursa',1095842),(3362,'Gaziantep','TUR','Gaziantep',789056),(3363,'Konya','TUR','Konya',628364),(3364,'Mersin (Içel)','TUR','Içel',587212),(3365,'Antalya','TUR','Antalya',564914),(3366,'Diyarbakir','TUR','Diyarbakir',479884),(3367,'Kayseri','TUR','Kayseri',475657),(3368,'Eskisehir','TUR','Eskisehir',470781),(3369,'Sanliurfa','TUR','Sanliurfa',405905),(3370,'Samsun','TUR','Samsun',339871),(3371,'Malatya','TUR','Malatya',330312),(3372,'Gebze','TUR','Kocaeli',264170),(3373,'Denizli','TUR','Denizli',253848),(3374,'Sivas','TUR','Sivas',246642),(3375,'Erzurum','TUR','Erzurum',246535),(3376,'Tarsus','TUR','Adana',246206),(3377,'Kahramanmaras','TUR','Kahramanmaras',245772),(3378,'Elâzig','TUR','Elâzig',228815),(3379,'Van','TUR','Van',219319),(3380,'Sultanbeyli','TUR','Istanbul',211068),(3381,'Izmit (Kocaeli)','TUR','Kocaeli',210068),(3382,'Manisa','TUR','Manisa',207148),(3383,'Batman','TUR','Batman',203793),(3384,'Balikesir','TUR','Balikesir',196382),(3385,'Sakarya (Adapazari)','TUR','Sakarya',190641),(3386,'Iskenderun','TUR','Hatay',153022),(3387,'Osmaniye','TUR','Osmaniye',146003),(3388,'Çorum','TUR','Çorum',145495),(3389,'Kütahya','TUR','Kütahya',144761),(3390,'Hatay (Antakya)','TUR','Hatay',143982),(3391,'Kirikkale','TUR','Kirikkale',142044),(3392,'Adiyaman','TUR','Adiyaman',141529),(3393,'Trabzon','TUR','Trabzon',138234),(3394,'Ordu','TUR','Ordu',133642),(3395,'Aydin','TUR','Aydin',128651),(3396,'Usak','TUR','Usak',128162),(3397,'Edirne','TUR','Edirne',123383),(3398,'Çorlu','TUR','Tekirdag',123300),(3399,'Isparta','TUR','Isparta',121911),(3400,'Karabük','TUR','Karabük',118285),(3401,'Kilis','TUR','Kilis',118245),(3402,'Alanya','TUR','Antalya',117300),(3403,'Kiziltepe','TUR','Mardin',112000),(3404,'Zonguldak','TUR','Zonguldak',111542),(3405,'Siirt','TUR','Siirt',107100),(3406,'Viransehir','TUR','Sanliurfa',106400),(3407,'Tekirdag','TUR','Tekirdag',106077),(3408,'Karaman','TUR','Karaman',104200),(3409,'Afyon','TUR','Afyon',103984),(3410,'Aksaray','TUR','Aksaray',102681),(3411,'Ceyhan','TUR','Adana',102412),(3412,'Erzincan','TUR','Erzincan',102304),(3413,'Bismil','TUR','Diyarbakir',101400),(3414,'Nazilli','TUR','Aydin',99900),(3415,'Tokat','TUR','Tokat',99500),(3416,'Kars','TUR','Kars',93000),(3417,'Inegöl','TUR','Bursa',90500),(3418,'Bandirma','TUR','Balikesir',90200),(3419,'Ashgabat','TKM','Ahal',540600),(3420,'Chärjew','TKM','Lebap',189200),(3421,'Dashhowuz','TKM','Dashhowuz',141800),(3422,'Mary','TKM','Mary',101000),(3423,'Cockburn Town','TCA','Grand Turk',4800),(3424,'Funafuti','TUV','Funafuti',4600),(3425,'Kampala','UGA','Central',890800),(3426,'Kyiv','UKR','Kiova',2624000),(3427,'Harkova [Harkiv]','UKR','Harkova',1500000),(3428,'Dnipropetrovsk','UKR','Dnipropetrovsk',1103000),(3429,'Donetsk','UKR','Donetsk',1050000),(3430,'Odesa','UKR','Odesa',1011000),(3431,'Zaporizzja','UKR','Zaporizzja',848000),(3432,'Lviv','UKR','Lviv',788000),(3433,'Kryvyi Rig','UKR','Dnipropetrovsk',703000),(3434,'Mykolajiv','UKR','Mykolajiv',508000),(3435,'Mariupol','UKR','Donetsk',490000),(3436,'Lugansk','UKR','Lugansk',469000),(3437,'Vinnytsja','UKR','Vinnytsja',391000),(3438,'Makijivka','UKR','Donetsk',384000),(3439,'Herson','UKR','Herson',353000),(3440,'Sevastopol','UKR','Krim',348000),(3441,'Simferopol','UKR','Krim',339000),(3442,'Pultava [Poltava]','UKR','Pultava',313000),(3443,'Tšernigiv','UKR','Tšernigiv',313000),(3444,'Tšerkasy','UKR','Tšerkasy',309000),(3445,'Gorlivka','UKR','Donetsk',299000),(3446,'Zytomyr','UKR','Zytomyr',297000),(3447,'Sumy','UKR','Sumy',294000),(3448,'Dniprodzerzynsk','UKR','Dnipropetrovsk',270000),(3449,'Kirovograd','UKR','Kirovograd',265000),(3450,'Hmelnytskyi','UKR','Hmelnytskyi',262000),(3451,'Tšernivtsi','UKR','Tšernivtsi',259000),(3452,'Rivne','UKR','Rivne',245000),(3453,'Krementšuk','UKR','Pultava',239000),(3454,'Ivano-Frankivsk','UKR','Ivano-Frankivsk',237000),(3455,'Ternopil','UKR','Ternopil',236000),(3456,'Lutsk','UKR','Volynia',217000),(3457,'Bila Tserkva','UKR','Kiova',215000),(3458,'Kramatorsk','UKR','Donetsk',186000),(3459,'Melitopol','UKR','Zaporizzja',169000),(3460,'Kertš','UKR','Krim',162000),(3461,'Nikopol','UKR','Dnipropetrovsk',149000),(3462,'Berdjansk','UKR','Zaporizzja',130000),(3463,'Pavlograd','UKR','Dnipropetrovsk',127000),(3464,'Sjeverodonetsk','UKR','Lugansk',127000),(3465,'Slovjansk','UKR','Donetsk',127000),(3466,'Uzgorod','UKR','Taka-Karpatia',127000),(3467,'Altševsk','UKR','Lugansk',119000),(3468,'Lysytšansk','UKR','Lugansk',116000),(3469,'Jevpatorija','UKR','Krim',112000),(3470,'Kamjanets-Podilskyi','UKR','Hmelnytskyi',109000),(3471,'Jenakijeve','UKR','Donetsk',105000),(3472,'Krasnyi Lutš','UKR','Lugansk',101000),(3473,'Stahanov','UKR','Lugansk',101000),(3474,'Oleksandrija','UKR','Kirovograd',99000),(3475,'Konotop','UKR','Sumy',96000),(3476,'Kostjantynivka','UKR','Donetsk',95000),(3477,'Berdytšiv','UKR','Zytomyr',90000),(3478,'Izmajil','UKR','Odesa',90000),(3479,'Šostka','UKR','Sumy',90000),(3480,'Uman','UKR','Tšerkasy',90000),(3481,'Brovary','UKR','Kiova',89000),(3482,'Mukatševe','UKR','Taka-Karpatia',89000),(3483,'Budapest','HUN','Budapest',1811552),(3484,'Debrecen','HUN','Hajdú-Bihar',203648),(3485,'Miskolc','HUN','Borsod-Abaúj-Zemplén',172357),(3486,'Szeged','HUN','Csongrád',158158),(3487,'Pécs','HUN','Baranya',157332),(3488,'Györ','HUN','Györ-Moson-Sopron',127119),(3489,'Nyiregyháza','HUN','Szabolcs-Szatmár-Ber',112419),(3490,'Kecskemét','HUN','Bács-Kiskun',105606),(3491,'Székesfehérvár','HUN','Fejér',105119),(3492,'Montevideo','URY','Montevideo',1236000),(3493,'Nouméa','NCL','–',76293),(3494,'Auckland','NZL','Auckland',381800),(3495,'Christchurch','NZL','Canterbury',324200),(3496,'Manukau','NZL','Auckland',281800),(3497,'North Shore','NZL','Auckland',187700),(3498,'Waitakere','NZL','Auckland',170600),(3499,'Wellington','NZL','Wellington',166700),(3500,'Dunedin','NZL','Dunedin',119600),(3501,'Hamilton','NZL','Hamilton',117100),(3502,'Lower Hutt','NZL','Wellington',98100),(3503,'Toskent','UZB','Toskent Shahri',2117500),(3504,'Namangan','UZB','Namangan',370500),(3505,'Samarkand','UZB','Samarkand',361800),(3506,'Andijon','UZB','Andijon',318600),(3507,'Buhoro','UZB','Buhoro',237100),(3508,'Karsi','UZB','Qashqadaryo',194100),(3509,'Nukus','UZB','Karakalpakistan',194100),(3510,'Kükon','UZB','Fargona',190100),(3511,'Fargona','UZB','Fargona',180500),(3512,'Circik','UZB','Toskent',146400),(3513,'Margilon','UZB','Fargona',140800),(3514,'Ürgenc','UZB','Khorazm',138900),(3515,'Angren','UZB','Toskent',128000),(3516,'Cizah','UZB','Cizah',124800),(3517,'Navoi','UZB','Navoi',116300),(3518,'Olmalik','UZB','Toskent',114900),(3519,'Termiz','UZB','Surkhondaryo',109500),(3520,'Minsk','BLR','Horad Minsk',1674000),(3521,'Gomel','BLR','Gomel',475000),(3522,'Mogiljov','BLR','Mogiljov',356000),(3523,'Vitebsk','BLR','Vitebsk',340000),(3524,'Grodno','BLR','Grodno',302000),(3525,'Brest','BLR','Brest',286000),(3526,'Bobruisk','BLR','Mogiljov',221000),(3527,'Baranovitši','BLR','Brest',167000),(3528,'Borisov','BLR','Minsk',151000),(3529,'Pinsk','BLR','Brest',130000),(3530,'Orša','BLR','Vitebsk',124000),(3531,'Mozyr','BLR','Gomel',110000),(3532,'Novopolotsk','BLR','Vitebsk',106000),(3533,'Lida','BLR','Grodno',101000),(3534,'Soligorsk','BLR','Minsk',101000),(3535,'Molodetšno','BLR','Minsk',97000),(3536,'Mata-Utu','WLF','Wallis',1137),(3537,'Port-Vila','VUT','Shefa',33700),(3538,'Città del Vaticano','VAT','–',455),(3539,'Caracas','VEN','Distrito Federal',1975294),(3540,'Maracaíbo','VEN','Zulia',1304776),(3541,'Barquisimeto','VEN','Lara',877239),(3542,'Valencia','VEN','Carabobo',794246),(3543,'Ciudad Guayana','VEN','Bolívar',663713),(3544,'Petare','VEN','Miranda',488868),(3545,'Maracay','VEN','Aragua',444443),(3546,'Barcelona','VEN','Anzoátegui',322267),(3547,'Maturín','VEN','Monagas',319726),(3548,'San Cristóbal','VEN','Táchira',319373),(3549,'Ciudad Bolívar','VEN','Bolívar',301107),(3550,'Cumaná','VEN','Sucre',293105),(3551,'Mérida','VEN','Mérida',224887),(3552,'Cabimas','VEN','Zulia',221329),(3553,'Barinas','VEN','Barinas',217831),(3554,'Turmero','VEN','Aragua',217499),(3555,'Baruta','VEN','Miranda',207290),(3556,'Puerto Cabello','VEN','Carabobo',187722),(3557,'Santa Ana de Coro','VEN','Falcón',185766),(3558,'Los Teques','VEN','Miranda',178784),(3559,'Punto Fijo','VEN','Falcón',167215),(3560,'Guarenas','VEN','Miranda',165889),(3561,'Acarigua','VEN','Portuguesa',158954),(3562,'Puerto La Cruz','VEN','Anzoátegui',155700),(3563,'Ciudad Losada','VEN','',134501),(3564,'Guacara','VEN','Carabobo',131334),(3565,'Valera','VEN','Trujillo',130281),(3566,'Guanare','VEN','Portuguesa',125621),(3567,'Carúpano','VEN','Sucre',119639),(3568,'Catia La Mar','VEN','Distrito Federal',117012),(3569,'El Tigre','VEN','Anzoátegui',116256),(3570,'Guatire','VEN','Miranda',109121),(3571,'Calabozo','VEN','Guárico',107146),(3572,'Pozuelos','VEN','Anzoátegui',105690),(3573,'Ciudad Ojeda','VEN','Zulia',99354),(3574,'Ocumare del Tuy','VEN','Miranda',97168),(3575,'Valle de la Pascua','VEN','Guárico',95927),(3576,'Araure','VEN','Portuguesa',94269),(3577,'San Fernando de Apure','VEN','Apure',93809),(3578,'San Felipe','VEN','Yaracuy',90940),(3579,'El Limón','VEN','Aragua',90000),(3580,'Moscow','RUS','Moscow (City)',8389200),(3581,'St Petersburg','RUS','Pietari',4694000),(3582,'Novosibirsk','RUS','Novosibirsk',1398800),(3583,'Nizni Novgorod','RUS','Nizni Novgorod',1357000),(3584,'Jekaterinburg','RUS','Sverdlovsk',1266300),(3585,'Samara','RUS','Samara',1156100),(3586,'Omsk','RUS','Omsk',1148900),(3587,'Kazan','RUS','Tatarstan',1101000),(3588,'Ufa','RUS','Baškortostan',1091200),(3589,'Tšeljabinsk','RUS','Tšeljabinsk',1083200),(3590,'Rostov-na-Donu','RUS','Rostov-na-Donu',1012700),(3591,'Perm','RUS','Perm',1009700),(3592,'Volgograd','RUS','Volgograd',993400),(3593,'Voronez','RUS','Voronez',907700),(3594,'Krasnojarsk','RUS','Krasnojarsk',875500),(3595,'Saratov','RUS','Saratov',874000),(3596,'Toljatti','RUS','Samara',722900),(3597,'Uljanovsk','RUS','Uljanovsk',667400),(3598,'Izevsk','RUS','Udmurtia',652800),(3599,'Krasnodar','RUS','Krasnodar',639000),(3600,'Jaroslavl','RUS','Jaroslavl',616700),(3601,'Habarovsk','RUS','Habarovsk',609400),(3602,'Vladivostok','RUS','Primorje',606200),(3603,'Irkutsk','RUS','Irkutsk',593700),(3604,'Barnaul','RUS','Altai',580100),(3605,'Novokuznetsk','RUS','Kemerovo',561600),(3606,'Penza','RUS','Penza',532200),(3607,'Rjazan','RUS','Rjazan',529900),(3608,'Orenburg','RUS','Orenburg',523600),(3609,'Lipetsk','RUS','Lipetsk',521000),(3610,'Nabereznyje Tšelny','RUS','Tatarstan',514700),(3611,'Tula','RUS','Tula',506100),(3612,'Tjumen','RUS','Tjumen',503400),(3613,'Kemerovo','RUS','Kemerovo',492700),(3614,'Astrahan','RUS','Astrahan',486100),(3615,'Tomsk','RUS','Tomsk',482100),(3616,'Kirov','RUS','Kirov',466200),(3617,'Ivanovo','RUS','Ivanovo',459200),(3618,'Tšeboksary','RUS','Tšuvassia',459200),(3619,'Brjansk','RUS','Brjansk',457400),(3620,'Tver','RUS','Tver',454900),(3621,'Kursk','RUS','Kursk',443500),(3622,'Magnitogorsk','RUS','Tšeljabinsk',427900),(3623,'Kaliningrad','RUS','Kaliningrad',424400),(3624,'Nizni Tagil','RUS','Sverdlovsk',390900),(3625,'Murmansk','RUS','Murmansk',376300),(3626,'Ulan-Ude','RUS','Burjatia',370400),(3627,'Kurgan','RUS','Kurgan',364700),(3628,'Arkangeli','RUS','Arkangeli',361800),(3629,'Sotši','RUS','Krasnodar',358600),(3630,'Smolensk','RUS','Smolensk',353400),(3631,'Orjol','RUS','Orjol',344500),(3632,'Stavropol','RUS','Stavropol',343300),(3633,'Belgorod','RUS','Belgorod',342000),(3634,'Kaluga','RUS','Kaluga',339300),(3635,'Vladimir','RUS','Vladimir',337100),(3636,'Mahatškala','RUS','Dagestan',332800),(3637,'Tšerepovets','RUS','Vologda',324400),(3638,'Saransk','RUS','Mordva',314800),(3639,'Tambov','RUS','Tambov',312000),(3640,'Vladikavkaz','RUS','North Ossetia-Alania',310100),(3641,'Tšita','RUS','Tšita',309900),(3642,'Vologda','RUS','Vologda',302500),(3643,'Veliki Novgorod','RUS','Novgorod',299500),(3644,'Komsomolsk-na-Amure','RUS','Habarovsk',291600),(3645,'Kostroma','RUS','Kostroma',288100),(3646,'Volzski','RUS','Volgograd',286900),(3647,'Taganrog','RUS','Rostov-na-Donu',284400),(3648,'Petroskoi','RUS','Karjala',282100),(3649,'Bratsk','RUS','Irkutsk',277600),(3650,'Dzerzinsk','RUS','Nizni Novgorod',277100),(3651,'Surgut','RUS','Hanti-Mansia',274900),(3652,'Orsk','RUS','Orenburg',273900),(3653,'Sterlitamak','RUS','Baškortostan',265200),(3654,'Angarsk','RUS','Irkutsk',264700),(3655,'Joškar-Ola','RUS','Marinmaa',249200),(3656,'Rybinsk','RUS','Jaroslavl',239600),(3657,'Prokopjevsk','RUS','Kemerovo',237300),(3658,'Niznevartovsk','RUS','Hanti-Mansia',233900),(3659,'Naltšik','RUS','Kabardi-Balkaria',233400),(3660,'Syktyvkar','RUS','Komi',229700),(3661,'Severodvinsk','RUS','Arkangeli',229300),(3662,'Bijsk','RUS','Altai',225000),(3663,'Niznekamsk','RUS','Tatarstan',223400),(3664,'Blagoveštšensk','RUS','Amur',222000),(3665,'Šahty','RUS','Rostov-na-Donu',221800),(3666,'Staryi Oskol','RUS','Belgorod',213800),(3667,'Zelenograd','RUS','Moscow (City)',207100),(3668,'Balakovo','RUS','Saratov',206000),(3669,'Novorossijsk','RUS','Krasnodar',203300),(3670,'Pihkova','RUS','Pihkova',201500),(3671,'Zlatoust','RUS','Tšeljabinsk',196900),(3672,'Jakutsk','RUS','Saha (Jakutia)',195400),(3673,'Podolsk','RUS','Moskova',194300),(3674,'Petropavlovsk-Kamtšatski','RUS','Kamtšatka',194100),(3675,'Kamensk-Uralski','RUS','Sverdlovsk',190600),(3676,'Engels','RUS','Saratov',189000),(3677,'Syzran','RUS','Samara',186900),(3678,'Grozny','RUS','Tšetšenia',186000),(3679,'Novotšerkassk','RUS','Rostov-na-Donu',184400),(3680,'Berezniki','RUS','Perm',181900),(3681,'Juzno-Sahalinsk','RUS','Sahalin',179200),(3682,'Volgodonsk','RUS','Rostov-na-Donu',178200),(3683,'Abakan','RUS','Hakassia',169200),(3684,'Maikop','RUS','Adygea',167300),(3685,'Miass','RUS','Tšeljabinsk',166200),(3686,'Armavir','RUS','Krasnodar',164900),(3687,'Ljubertsy','RUS','Moskova',163900),(3688,'Rubtsovsk','RUS','Altai',162600),(3689,'Kovrov','RUS','Vladimir',159900),(3690,'Nahodka','RUS','Primorje',157700),(3691,'Ussurijsk','RUS','Primorje',157300),(3692,'Salavat','RUS','Baškortostan',156800),(3693,'Mytištši','RUS','Moskova',155700),(3694,'Kolomna','RUS','Moskova',150700),(3695,'Elektrostal','RUS','Moskova',147000),(3696,'Murom','RUS','Vladimir',142400),(3697,'Kolpino','RUS','Pietari',141200),(3698,'Norilsk','RUS','Krasnojarsk',140800),(3699,'Almetjevsk','RUS','Tatarstan',140700),(3700,'Novomoskovsk','RUS','Tula',138100),(3701,'Dimitrovgrad','RUS','Uljanovsk',137000),(3702,'Pervouralsk','RUS','Sverdlovsk',136100),(3703,'Himki','RUS','Moskova',133700),(3704,'Balašiha','RUS','Moskova',132900),(3705,'Nevinnomyssk','RUS','Stavropol',132600),(3706,'Pjatigorsk','RUS','Stavropol',132500),(3707,'Korolev','RUS','Moskova',132400),(3708,'Serpuhov','RUS','Moskova',132000),(3709,'Odintsovo','RUS','Moskova',127400),(3710,'Orehovo-Zujevo','RUS','Moskova',124900),(3711,'Kamyšin','RUS','Volgograd',124600),(3712,'Novotšeboksarsk','RUS','Tšuvassia',123400),(3713,'Tšerkessk','RUS','Karatšai-Tšerkessia',121700),(3714,'Atšinsk','RUS','Krasnojarsk',121600),(3715,'Magadan','RUS','Magadan',121000),(3716,'Mitšurinsk','RUS','Tambov',120700),(3717,'Kislovodsk','RUS','Stavropol',120400),(3718,'Jelets','RUS','Lipetsk',119400),(3719,'Seversk','RUS','Tomsk',118600),(3720,'Noginsk','RUS','Moskova',117200),(3721,'Velikije Luki','RUS','Pihkova',116300),(3722,'Novokuibyševsk','RUS','Samara',116200),(3723,'Neftekamsk','RUS','Baškortostan',115700),(3724,'Leninsk-Kuznetski','RUS','Kemerovo',113800),(3725,'Oktjabrski','RUS','Baškortostan',111500),(3726,'Sergijev Posad','RUS','Moskova',111100),(3727,'Arzamas','RUS','Nizni Novgorod',110700),(3728,'Kiseljovsk','RUS','Kemerovo',110000),(3729,'Novotroitsk','RUS','Orenburg',109600),(3730,'Obninsk','RUS','Kaluga',108300),(3731,'Kansk','RUS','Krasnojarsk',107400),(3732,'Glazov','RUS','Udmurtia',106300),(3733,'Solikamsk','RUS','Perm',106000),(3734,'Sarapul','RUS','Udmurtia',105700),(3735,'Ust-Ilimsk','RUS','Irkutsk',105200),(3736,'Štšolkovo','RUS','Moskova',104900),(3737,'Mezduretšensk','RUS','Kemerovo',104400),(3738,'Usolje-Sibirskoje','RUS','Irkutsk',103500),(3739,'Elista','RUS','Kalmykia',103300),(3740,'Novošahtinsk','RUS','Rostov-na-Donu',101900),(3741,'Votkinsk','RUS','Udmurtia',101700),(3742,'Kyzyl','RUS','Tyva',101100),(3743,'Serov','RUS','Sverdlovsk',100400),(3744,'Zelenodolsk','RUS','Tatarstan',100200),(3745,'Zeleznodoroznyi','RUS','Moskova',100100),(3746,'Kinešma','RUS','Ivanovo',100000),(3747,'Kuznetsk','RUS','Penza',98200),(3748,'Uhta','RUS','Komi',98000),(3749,'Jessentuki','RUS','Stavropol',97900),(3750,'Tobolsk','RUS','Tjumen',97600),(3751,'Neftejugansk','RUS','Hanti-Mansia',97400),(3752,'Bataisk','RUS','Rostov-na-Donu',97300),(3753,'Nojabrsk','RUS','Yamalin Nenetsia',97300),(3754,'Balašov','RUS','Saratov',97100),(3755,'Zeleznogorsk','RUS','Kursk',96900),(3756,'Zukovski','RUS','Moskova',96500),(3757,'Anzero-Sudzensk','RUS','Kemerovo',96100),(3758,'Bugulma','RUS','Tatarstan',94100),(3759,'Zeleznogorsk','RUS','Krasnojarsk',94000),(3760,'Novouralsk','RUS','Sverdlovsk',93300),(3761,'Puškin','RUS','Pietari',92900),(3762,'Vorkuta','RUS','Komi',92600),(3763,'Derbent','RUS','Dagestan',92300),(3764,'Kirovo-Tšepetsk','RUS','Kirov',91600),(3765,'Krasnogorsk','RUS','Moskova',91000),(3766,'Klin','RUS','Moskova',90000),(3767,'Tšaikovski','RUS','Perm',90000),(3768,'Novyi Urengoi','RUS','Yamalin Nenetsia',89800),(3769,'Ho Chi Minh City','VNM','Ho Chi Minh City',3980000),(3770,'Hanoi','VNM','Hanoi',1410000),(3771,'Haiphong','VNM','Haiphong',783133),(3772,'Da Nang','VNM','Quang Nam-Da Nang',382674),(3773,'Biên Hoa','VNM','Dong Nai',282095),(3774,'Nha Trang','VNM','Khanh Hoa',221331),(3775,'Hue','VNM','Thua Thien-Hue',219149),(3776,'Can Tho','VNM','Can Tho',215587),(3777,'Cam Pha','VNM','Quang Binh',209086),(3778,'Nam Dinh','VNM','Nam Ha',171699),(3779,'Quy Nhon','VNM','Binh Dinh',163385),(3780,'Vung Tau','VNM','Ba Ria-Vung Tau',145145),(3781,'Rach Gia','VNM','Kien Giang',141132),(3782,'Long Xuyen','VNM','An Giang',132681),(3783,'Thai Nguyen','VNM','Bac Thai',127643),(3784,'Hong Gai','VNM','Quang Ninh',127484),(3785,'Phan Thiêt','VNM','Binh Thuan',114236),(3786,'Cam Ranh','VNM','Khanh Hoa',114041),(3787,'Vinh','VNM','Nghe An',112455),(3788,'My Tho','VNM','Tien Giang',108404),(3789,'Da Lat','VNM','Lam Dong',106409),(3790,'Buon Ma Thuot','VNM','Dac Lac',97044),(3791,'Tallinn','EST','Harjumaa',403981),(3792,'Tartu','EST','Tartumaa',101246),(3793,'New York','USA','New York',8008278),(3794,'Los Angeles','USA','California',3694820),(3795,'Chicago','USA','Illinois',2896016),(3796,'Houston','USA','Texas',1953631),(3797,'Philadelphia','USA','Pennsylvania',1517550),(3798,'Phoenix','USA','Arizona',1321045),(3799,'San Diego','USA','California',1223400),(3800,'Dallas','USA','Texas',1188580),(3801,'San Antonio','USA','Texas',1144646),(3802,'Detroit','USA','Michigan',951270),(3803,'San Jose','USA','California',894943),(3804,'Indianapolis','USA','Indiana',791926),(3805,'San Francisco','USA','California',776733),(3806,'Jacksonville','USA','Florida',735167),(3807,'Columbus','USA','Ohio',711470),(3808,'Austin','USA','Texas',656562),(3809,'Baltimore','USA','Maryland',651154),(3810,'Memphis','USA','Tennessee',650100),(3811,'Milwaukee','USA','Wisconsin',596974),(3812,'Boston','USA','Massachusetts',589141),(3813,'Washington','USA','District of Columbia',572059),(3814,'Nashville-Davidson','USA','Tennessee',569891),(3815,'El Paso','USA','Texas',563662),(3816,'Seattle','USA','Washington',563374),(3817,'Denver','USA','Colorado',554636),(3818,'Charlotte','USA','North Carolina',540828),(3819,'Fort Worth','USA','Texas',534694),(3820,'Portland','USA','Oregon',529121),(3821,'Oklahoma City','USA','Oklahoma',506132),(3822,'Tucson','USA','Arizona',486699),(3823,'New Orleans','USA','Louisiana',484674),(3824,'Las Vegas','USA','Nevada',478434),(3825,'Cleveland','USA','Ohio',478403),(3826,'Long Beach','USA','California',461522),(3827,'Albuquerque','USA','New Mexico',448607),(3828,'Kansas City','USA','Missouri',441545),(3829,'Fresno','USA','California',427652),(3830,'Virginia Beach','USA','Virginia',425257),(3831,'Atlanta','USA','Georgia',416474),(3832,'Sacramento','USA','California',407018),(3833,'Oakland','USA','California',399484),(3834,'Mesa','USA','Arizona',396375),(3835,'Tulsa','USA','Oklahoma',393049),(3836,'Omaha','USA','Nebraska',390007),(3837,'Minneapolis','USA','Minnesota',382618),(3838,'Honolulu','USA','Hawaii',371657),(3839,'Miami','USA','Florida',362470),(3840,'Colorado Springs','USA','Colorado',360890),(3841,'Saint Louis','USA','Missouri',348189),(3842,'Wichita','USA','Kansas',344284),(3843,'Santa Ana','USA','California',337977),(3844,'Pittsburgh','USA','Pennsylvania',334563),(3845,'Arlington','USA','Texas',332969),(3846,'Cincinnati','USA','Ohio',331285),(3847,'Anaheim','USA','California',328014),(3848,'Toledo','USA','Ohio',313619),(3849,'Tampa','USA','Florida',303447),(3850,'Buffalo','USA','New York',292648),(3851,'Saint Paul','USA','Minnesota',287151),(3852,'Corpus Christi','USA','Texas',277454),(3853,'Aurora','USA','Colorado',276393),(3854,'Raleigh','USA','North Carolina',276093),(3855,'Newark','USA','New Jersey',273546),(3856,'Lexington-Fayette','USA','Kentucky',260512),(3857,'Anchorage','USA','Alaska',260283),(3858,'Louisville','USA','Kentucky',256231),(3859,'Riverside','USA','California',255166),(3860,'Saint Petersburg','USA','Florida',248232),(3861,'Bakersfield','USA','California',247057),(3862,'Stockton','USA','California',243771),(3863,'Birmingham','USA','Alabama',242820),(3864,'Jersey City','USA','New Jersey',240055),(3865,'Norfolk','USA','Virginia',234403),(3866,'Baton Rouge','USA','Louisiana',227818),(3867,'Hialeah','USA','Florida',226419),(3868,'Lincoln','USA','Nebraska',225581),(3869,'Greensboro','USA','North Carolina',223891),(3870,'Plano','USA','Texas',222030),(3871,'Rochester','USA','New York',219773),(3872,'Glendale','USA','Arizona',218812),(3873,'Akron','USA','Ohio',217074),(3874,'Garland','USA','Texas',215768),(3875,'Madison','USA','Wisconsin',208054),(3876,'Fort Wayne','USA','Indiana',205727),(3877,'Fremont','USA','California',203413),(3878,'Scottsdale','USA','Arizona',202705),(3879,'Montgomery','USA','Alabama',201568),(3880,'Shreveport','USA','Louisiana',200145),(3881,'Augusta-Richmond County','USA','Georgia',199775),(3882,'Lubbock','USA','Texas',199564),(3883,'Chesapeake','USA','Virginia',199184),(3884,'Mobile','USA','Alabama',198915),(3885,'Des Moines','USA','Iowa',198682),(3886,'Grand Rapids','USA','Michigan',197800),(3887,'Richmond','USA','Virginia',197790),(3888,'Yonkers','USA','New York',196086),(3889,'Spokane','USA','Washington',195629),(3890,'Glendale','USA','California',194973),(3891,'Tacoma','USA','Washington',193556),(3892,'Irving','USA','Texas',191615),(3893,'Huntington Beach','USA','California',189594),(3894,'Modesto','USA','California',188856),(3895,'Durham','USA','North Carolina',187035),(3896,'Columbus','USA','Georgia',186291),(3897,'Orlando','USA','Florida',185951),(3898,'Boise City','USA','Idaho',185787),(3899,'Winston-Salem','USA','North Carolina',185776),(3900,'San Bernardino','USA','California',185401),(3901,'Jackson','USA','Mississippi',184256),(3902,'Little Rock','USA','Arkansas',183133),(3903,'Salt Lake City','USA','Utah',181743),(3904,'Reno','USA','Nevada',180480),(3905,'Newport News','USA','Virginia',180150),(3906,'Chandler','USA','Arizona',176581),(3907,'Laredo','USA','Texas',176576),(3908,'Henderson','USA','Nevada',175381),(3909,'Arlington','USA','Virginia',174838),(3910,'Knoxville','USA','Tennessee',173890),(3911,'Amarillo','USA','Texas',173627),(3912,'Providence','USA','Rhode Island',173618),(3913,'Chula Vista','USA','California',173556),(3914,'Worcester','USA','Massachusetts',172648),(3915,'Oxnard','USA','California',170358),(3916,'Dayton','USA','Ohio',166179),(3917,'Garden Grove','USA','California',165196),(3918,'Oceanside','USA','California',161029),(3919,'Tempe','USA','Arizona',158625),(3920,'Huntsville','USA','Alabama',158216),(3921,'Ontario','USA','California',158007),(3922,'Chattanooga','USA','Tennessee',155554),(3923,'Fort Lauderdale','USA','Florida',152397),(3924,'Springfield','USA','Massachusetts',152082),(3925,'Springfield','USA','Missouri',151580),(3926,'Santa Clarita','USA','California',151088),(3927,'Salinas','USA','California',151060),(3928,'Tallahassee','USA','Florida',150624),(3929,'Rockford','USA','Illinois',150115),(3930,'Pomona','USA','California',149473),(3931,'Metairie','USA','Louisiana',149428),(3932,'Paterson','USA','New Jersey',149222),(3933,'Overland Park','USA','Kansas',149080),(3934,'Santa Rosa','USA','California',147595),(3935,'Syracuse','USA','New York',147306),(3936,'Kansas City','USA','Kansas',146866),(3937,'Hampton','USA','Virginia',146437),(3938,'Lakewood','USA','Colorado',144126),(3939,'Vancouver','USA','Washington',143560),(3940,'Irvine','USA','California',143072),(3941,'Aurora','USA','Illinois',142990),(3942,'Moreno Valley','USA','California',142381),(3943,'Pasadena','USA','California',141674),(3944,'Hayward','USA','California',140030),(3945,'Brownsville','USA','Texas',139722),(3946,'Bridgeport','USA','Connecticut',139529),(3947,'Hollywood','USA','Florida',139357),(3948,'Warren','USA','Michigan',138247),(3949,'Torrance','USA','California',137946),(3950,'Eugene','USA','Oregon',137893),(3951,'Pembroke Pines','USA','Florida',137427),(3952,'Salem','USA','Oregon',136924),(3953,'Pasadena','USA','Texas',133936),(3954,'Escondido','USA','California',133559),(3955,'Sunnyvale','USA','California',131760),(3956,'Savannah','USA','Georgia',131510),(3957,'Fontana','USA','California',128929),(3958,'Orange','USA','California',128821),(3959,'Naperville','USA','Illinois',128358),(3960,'Alexandria','USA','Virginia',128283),(3961,'Rancho Cucamonga','USA','California',127743),(3962,'Grand Prairie','USA','Texas',127427),(3963,'East Los Angeles','USA','California',126379),(3964,'Fullerton','USA','California',126003),(3965,'Corona','USA','California',124966),(3966,'Flint','USA','Michigan',124943),(3967,'Paradise','USA','Nevada',124682),(3968,'Mesquite','USA','Texas',124523),(3969,'Sterling Heights','USA','Michigan',124471),(3970,'Sioux Falls','USA','South Dakota',123975),(3971,'New Haven','USA','Connecticut',123626),(3972,'Topeka','USA','Kansas',122377),(3973,'Concord','USA','California',121780),(3974,'Evansville','USA','Indiana',121582),(3975,'Hartford','USA','Connecticut',121578),(3976,'Fayetteville','USA','North Carolina',121015),(3977,'Cedar Rapids','USA','Iowa',120758),(3978,'Elizabeth','USA','New Jersey',120568),(3979,'Lansing','USA','Michigan',119128),(3980,'Lancaster','USA','California',118718),(3981,'Fort Collins','USA','Colorado',118652),(3982,'Coral Springs','USA','Florida',117549),(3983,'Stamford','USA','Connecticut',117083),(3984,'Thousand Oaks','USA','California',117005),(3985,'Vallejo','USA','California',116760),(3986,'Palmdale','USA','California',116670),(3987,'Columbia','USA','South Carolina',116278),(3988,'El Monte','USA','California',115965),(3989,'Abilene','USA','Texas',115930),(3990,'North Las Vegas','USA','Nevada',115488),(3991,'Ann Arbor','USA','Michigan',114024),(3992,'Beaumont','USA','Texas',113866),(3993,'Waco','USA','Texas',113726),(3994,'Macon','USA','Georgia',113336),(3995,'Independence','USA','Missouri',113288),(3996,'Peoria','USA','Illinois',112936),(3997,'Inglewood','USA','California',112580),(3998,'Springfield','USA','Illinois',111454),(3999,'Simi Valley','USA','California',111351),(4000,'Lafayette','USA','Louisiana',110257),(4001,'Gilbert','USA','Arizona',109697),(4002,'Carrollton','USA','Texas',109576),(4003,'Bellevue','USA','Washington',109569),(4004,'West Valley City','USA','Utah',108896),(4005,'Clarksville','USA','Tennessee',108787),(4006,'Costa Mesa','USA','California',108724),(4007,'Peoria','USA','Arizona',108364),(4008,'South Bend','USA','Indiana',107789),(4009,'Downey','USA','California',107323),(4010,'Waterbury','USA','Connecticut',107271),(4011,'Manchester','USA','New Hampshire',107006),(4012,'Allentown','USA','Pennsylvania',106632),(4013,'McAllen','USA','Texas',106414),(4014,'Joliet','USA','Illinois',106221),(4015,'Lowell','USA','Massachusetts',105167),(4016,'Provo','USA','Utah',105166),(4017,'West Covina','USA','California',105080),(4018,'Wichita Falls','USA','Texas',104197),(4019,'Erie','USA','Pennsylvania',103717),(4020,'Daly City','USA','California',103621),(4021,'Citrus Heights','USA','California',103455),(4022,'Norwalk','USA','California',103298),(4023,'Gary','USA','Indiana',102746),(4024,'Berkeley','USA','California',102743),(4025,'Santa Clara','USA','California',102361),(4026,'Green Bay','USA','Wisconsin',102313),(4027,'Cape Coral','USA','Florida',102286),(4028,'Arvada','USA','Colorado',102153),(4029,'Pueblo','USA','Colorado',102121),(4030,'Sandy','USA','Utah',101853),(4031,'Athens-Clarke County','USA','Georgia',101489),(4032,'Cambridge','USA','Massachusetts',101355),(4033,'Westminster','USA','Colorado',100940),(4034,'San Buenaventura','USA','California',100916),(4035,'Portsmouth','USA','Virginia',100565),(4036,'Livonia','USA','Michigan',100545),(4037,'Burbank','USA','California',100316),(4038,'Clearwater','USA','Florida',99936),(4039,'Midland','USA','Texas',98293),(4040,'Davenport','USA','Iowa',98256),(4041,'Mission Viejo','USA','California',98049),(4042,'Miami Beach','USA','Florida',97855),(4043,'Sunrise Manor','USA','Nevada',95362),(4044,'New Bedford','USA','Massachusetts',94780),(4045,'El Cajon','USA','California',94578),(4046,'Norman','USA','Oklahoma',94193),(4047,'Richmond','USA','California',94100),(4048,'Albany','USA','New York',93994),(4049,'Brockton','USA','Massachusetts',93653),(4050,'Roanoke','USA','Virginia',93357),(4051,'Billings','USA','Montana',92988),(4052,'Compton','USA','California',92864),(4053,'Gainesville','USA','Florida',92291),(4054,'Fairfield','USA','California',92256),(4055,'Arden-Arcade','USA','California',92040),(4056,'San Mateo','USA','California',91799),(4057,'Visalia','USA','California',91762),(4058,'Boulder','USA','Colorado',91238),(4059,'Cary','USA','North Carolina',91213),(4060,'Santa Monica','USA','California',91084),(4061,'Fall River','USA','Massachusetts',90555),(4062,'Kenosha','USA','Wisconsin',89447),(4063,'Elgin','USA','Illinois',89408),(4064,'Odessa','USA','Texas',89293),(4065,'Carson','USA','California',89089),(4066,'Charleston','USA','South Carolina',89063),(4067,'Charlotte Amalie','VIR','St Thomas',13000),(4068,'Harare','ZWE','Harare',1410000),(4069,'Bulawayo','ZWE','Bulawayo',621742),(4070,'Chitungwiza','ZWE','Harare',274912),(4071,'Mount Darwin','ZWE','Harare',164362),(4072,'Mutare','ZWE','Manicaland',131367),(4073,'Gweru','ZWE','Midlands',128037),(4074,'Gaza','PSE','Gaza',353632),(4075,'Khan Yunis','PSE','Khan Yunis',123175),(4076,'Hebron','PSE','Hebron',119401),(4077,'Jabaliya','PSE','North Gaza',113901),(4078,'Nablus','PSE','Nablus',100231),(4079,'Rafah','PSE','Rafah',92020);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `Code` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Name` char(52) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Continent` text COLLATE utf8mb4_general_ci NOT NULL,
  `Region` char(26) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` int DEFAULT NULL,
  `Population` int NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `GovernmentForm` char(45) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `HeadOfState` char(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Capital` int DEFAULT NULL,
  `Code2` char(2) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('ABW','Aruba','North America','Caribbean',193.00,NULL,103000,78.4,828.00,793.00,'Aruba','Nonmetropolitan Territory of The Netherlands','Beatrix',129,'AW'),('AFG','Afghanistan','Asia','Southern and Central Asia',652090.00,1919,22720000,45.9,5976.00,NULL,'Afganistan/Afqanestan','Islamic Emirate','Mohammad Omar',1,'AF'),('AGO','Angola','Africa','Central Africa',1246700.00,1975,12878000,38.3,6648.00,7984.00,'Angola','Republic','José Eduardo dos Santos',56,'AO'),('AIA','Anguilla','North America','Caribbean',96.00,NULL,8000,76.1,63.20,NULL,'Anguilla','Dependent Territory of the UK','Elisabeth II',62,'AI'),('ALB','Albania','Europe','Southern Europe',28748.00,1912,3401200,71.6,3205.00,2500.00,'Shqipëria','Republic','Rexhep Mejdani',34,'AL'),('AND','Andorra','Europe','Southern Europe',468.00,1278,78000,83.5,1630.00,NULL,'Andorra','Parliamentary Coprincipality','',55,'AD'),('ANT','Netherlands Antilles','North America','Caribbean',800.00,NULL,217000,74.7,1941.00,NULL,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands','Beatrix',33,'AN'),('ARE','United Arab Emirates','Asia','Middle East',83600.00,1971,2441000,74.1,37966.00,36846.00,'Al-Imarat al-´Arabiya al-Muttahida','Emirate Federation','Zayid bin Sultan al-Nahayan',65,'AE'),('ARG','Argentina','South America','South America',2780400.00,1816,37032000,75.1,340238.00,323310.00,'Argentina','Federal Republic','Fernando de la Rúa',69,'AR'),('ARM','Armenia','Asia','Middle East',29800.00,1991,3520000,66.4,1813.00,1627.00,'Hajastan','Republic','Robert Kotšarjan',126,'AM'),('ASM','American Samoa','Oceania','Polynesia',199.00,NULL,68000,75.1,334.00,NULL,'Amerika Samoa','US Territory','George W. Bush',54,'AS'),('ATA','Antarctica','Antarctica','Antarctica',13120000.00,NULL,0,NULL,0.00,NULL,'–','Co-administrated','',NULL,'AQ'),('ATF','French Southern territories','Antarctica','Antarctica',7780.00,NULL,0,NULL,0.00,NULL,'Terres australes françaises','Nonmetropolitan Territory of France','Jacques Chirac',NULL,'TF'),('ATG','Antigua and Barbuda','North America','Caribbean',442.00,1981,68000,70.5,612.00,584.00,'Antigua and Barbuda','Constitutional Monarchy','Elisabeth II',63,'AG'),('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,18886000,79.8,351182.00,392911.00,'Australia','Constitutional Monarchy, Federation','Elisabeth II',135,'AU'),('AUT','Austria','Europe','Western Europe',83859.00,1918,8091800,77.7,211860.00,206025.00,'Österreich','Federal Republic','Thomas Klestil',1523,'AT'),('AZE','Azerbaijan','Asia','Middle East',86600.00,1991,7734000,62.9,4127.00,4100.00,'Azärbaycan','Federal Republic','Heydär Äliyev',144,'AZ'),('BDI','Burundi','Africa','Eastern Africa',27834.00,1962,6695000,46.2,903.00,982.00,'Burundi/Uburundi','Republic','Pierre Buyoya',552,'BI'),('BEL','Belgium','Europe','Western Europe',30518.00,1830,10239000,77.8,249704.00,243948.00,'België/Belgique','Constitutional Monarchy, Federation','Albert II',179,'BE'),('BEN','Benin','Africa','Western Africa',112622.00,1960,6097000,50.2,2357.00,2141.00,'Bénin','Republic','Mathieu Kérékou',187,'BJ'),('BFA','Burkina Faso','Africa','Western Africa',274000.00,1960,11937000,46.7,2425.00,2201.00,'Burkina Faso','Republic','Blaise Compaoré',549,'BF'),('BGD','Bangladesh','Asia','Southern and Central Asia',143998.00,1971,129155000,60.2,32852.00,31966.00,'Bangladesh','Republic','Shahabuddin Ahmad',150,'BD'),('BGR','Bulgaria','Europe','Eastern Europe',110994.00,1908,8190900,70.9,12178.00,10169.00,'Balgarija','Republic','Petar Stojanov',539,'BG'),('BHR','Bahrain','Asia','Middle East',694.00,1971,617000,73.0,6366.00,6097.00,'Al-Bahrayn','Monarchy (Emirate)','Hamad ibn Isa al-Khalifa',149,'BH'),('BHS','Bahamas','North America','Caribbean',13878.00,1973,307000,71.1,3527.00,3347.00,'The Bahamas','Constitutional Monarchy','Elisabeth II',148,'BS'),('BIH','Bosnia and Herzegovina','Europe','Southern Europe',51197.00,1992,3972000,71.5,2841.00,NULL,'Bosna i Hercegovina','Federal Republic','Ante Jelavic',201,'BA'),('BLR','Belarus','Europe','Eastern Europe',207600.00,1991,10236000,68.0,13714.00,NULL,'Belarus','Republic','Aljaksandr Lukašenka',3520,'BY'),('BLZ','Belize','North America','Central America',22696.00,1981,241000,70.9,630.00,616.00,'Belize','Constitutional Monarchy','Elisabeth II',185,'BZ'),('BMU','Bermuda','North America','North America',53.00,NULL,65000,76.9,2328.00,2190.00,'Bermuda','Dependent Territory of the UK','Elisabeth II',191,'BM'),('BOL','Bolivia','South America','South America',1098581.00,1825,8329000,63.7,8571.00,7967.00,'Bolivia','Republic','Hugo Bánzer Suárez',194,'BO'),('BRA','Brazil','South America','South America',8547403.00,1822,170115000,62.9,776739.00,804108.00,'Brasil','Federal Republic','Fernando Henrique Cardoso',211,'BR'),('BRB','Barbados','North America','Caribbean',430.00,1966,270000,73.0,2223.00,2186.00,'Barbados','Constitutional Monarchy','Elisabeth II',174,'BB'),('BRN','Brunei','Asia','Southeast Asia',5765.00,1984,328000,73.6,11705.00,12460.00,'Brunei Darussalam','Monarchy (Sultanate)','Haji Hassan al-Bolkiah',538,'BN'),('BTN','Bhutan','Asia','Southern and Central Asia',47000.00,1910,2124000,52.4,372.00,383.00,'Druk-Yul','Monarchy','Jigme Singye Wangchuk',192,'BT'),('BVT','Bouvet Island','Antarctica','Antarctica',59.00,NULL,0,NULL,0.00,NULL,'Bouvetøya','Dependent Territory of Norway','Harald V',NULL,'BV'),('BWA','Botswana','Africa','Southern Africa',581730.00,1966,1622000,39.3,4834.00,4935.00,'Botswana','Republic','Festus G. Mogae',204,'BW'),('CAF','Central African Republic','Africa','Central Africa',622984.00,1960,3615000,44.0,1054.00,993.00,'Centrafrique/Bê-Afrîka','Republic','Ange-Félix Patassé',1889,'CF'),('CAN','Canada','North America','North America',9970610.00,1867,31147000,79.4,598862.00,625626.00,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA'),('CCK','Cocos (Keeling) Islands','Oceania','Australia and New Zealand',14.00,NULL,600,NULL,0.00,NULL,'Cocos (Keeling) Islands','Territory of Australia','Elisabeth II',2317,'CC'),('CHE','Switzerland','Europe','Western Europe',41284.00,1499,7160400,79.6,264478.00,256092.00,'Schweiz/Suisse/Svizzera/Svizra','Federation','Adolf Ogi',3248,'CH'),('CHL','Chile','South America','South America',756626.00,1810,15211000,75.7,72949.00,75780.00,'Chile','Republic','Ricardo Lagos Escobar',554,'CL'),('CHN','China','Asia','Eastern Asia',9572900.00,-1523,1277558000,71.4,982268.00,917719.00,'Zhongquo','People\'sRepublic','Jiang Zemin',1891,'CN'),('CIV','Côte d’Ivoire','Africa','Western Africa',322463.00,1960,14786000,45.2,11345.00,10285.00,'Côte d’Ivoire','Republic','Laurent Gbagbo',2814,'CI'),('CMR','Cameroon','Africa','Central Africa',475442.00,1960,15085000,54.8,9174.00,8596.00,'Cameroun/Cameroon','Republic','Paul Biya',1804,'CM'),('COD','Congo, The Democratic Republic of the','Africa','Central Africa',2344858.00,1960,51654000,48.8,6964.00,2474.00,'République Démocratique du Congo','Republic','Joseph Kabila',2298,'CD'),('COG','Congo','Africa','Central Africa',342000.00,1960,2943000,47.4,2108.00,2287.00,'Congo','Republic','Denis Sassou-Nguesso',2296,'CG'),('COK','Cook Islands','Oceania','Polynesia',236.00,NULL,20000,71.1,100.00,NULL,'The Cook Islands','Nonmetropolitan Territory of New Zealand','Elisabeth II',583,'CK'),('COL','Colombia','South America','South America',1138914.00,1810,42321000,70.3,102896.00,105116.00,'Colombia','Republic','Andrés Pastrana Arango',2257,'CO'),('COM','Comoros','Africa','Eastern Africa',1862.00,1975,578000,60.0,4401.00,4361.00,'Komori/Comores','Republic','Azali Assoumani',2295,'KM'),('CPV','Cape Verde','Africa','Western Africa',4033.00,1975,428000,68.9,435.00,420.00,'Cabo Verde','Republic','António Mascarenhas Monteiro',1859,'CV'),('CRI','Costa Rica','North America','Central America',51100.00,1821,4023000,75.8,10226.00,9757.00,'Costa Rica','Republic','Miguel Ángel Rodríguez Echeverría',584,'CR'),('CUB','Cuba','North America','Caribbean',110861.00,1902,11201000,76.2,17843.00,18862.00,'Cuba','Socialistic Republic','Fidel Castro Ruz',2413,'CU'),('CXR','Christmas Island','Oceania','Australia and New Zealand',135.00,NULL,2500,NULL,0.00,NULL,'Christmas Island','Territory of Australia','Elisabeth II',1791,'CX'),('CYM','Cayman Islands','North America','Caribbean',264.00,NULL,38000,78.9,1263.00,1186.00,'Cayman Islands','Dependent Territory of the UK','Elisabeth II',553,'KY'),('CYP','Cyprus','Asia','Middle East',9251.00,1960,754700,76.7,9333.00,8246.00,'Kýpros/Kibris','Republic','Glafkos Klerides',2430,'CY'),('CZE','Czech Republic','Europe','Eastern Europe',78866.00,1993,10278100,74.5,55017.00,52037.00,'¸esko','Republic','Václav Havel',3339,'CZ'),('DEU','Germany','Europe','Western Europe',357022.00,1955,82164700,77.4,2133367.00,2102826.00,'Deutschland','Federal Republic','Johannes Rau',3068,'DE'),('DJI','Djibouti','Africa','Eastern Africa',23200.00,1977,638000,50.8,382.00,373.00,'Djibouti/Jibuti','Republic','Ismail Omar Guelleh',585,'DJ'),('DMA','Dominica','North America','Caribbean',751.00,1978,71000,73.4,256.00,243.00,'Dominica','Republic','Vernon Shaw',586,'DM'),('DNK','Denmark','Europe','Nordic Countries',43094.00,800,5330000,76.5,174099.00,169264.00,'Danmark','Constitutional Monarchy','Margrethe II',3315,'DK'),('DOM','Dominican Republic','North America','Caribbean',48511.00,1844,8495000,73.2,15846.00,15076.00,'República Dominicana','Republic','Hipólito Mejía Domínguez',587,'DO'),('DZA','Algeria','Africa','Northern Africa',2381741.00,1962,31471000,69.7,49982.00,46966.00,'Al-Jaza’ir/Algérie','Republic','Abdelaziz Bouteflika',35,'DZ'),('ECU','Ecuador','South America','South America',283561.00,1822,12646000,71.1,19770.00,19769.00,'Ecuador','Republic','Gustavo Noboa Bejarano',594,'EC'),('EGY','Egypt','Africa','Northern Africa',1001449.00,1922,68470000,63.3,82710.00,75617.00,'Misr','Republic','Hosni Mubarak',608,'EG'),('ERI','Eritrea','Africa','Eastern Africa',117600.00,1993,3850000,55.8,650.00,755.00,'Ertra','Republic','Isayas Afewerki [Isaias Afwerki]',652,'ER'),('ESH','Western Sahara','Africa','Northern Africa',266000.00,NULL,293000,49.8,60.00,NULL,'As-Sahrawiya','Occupied by Marocco','Mohammed Abdel Aziz',2453,'EH'),('ESP','Spain','Europe','Southern Europe',505992.00,1492,39441700,78.8,553233.00,532031.00,'España','Constitutional Monarchy','Juan Carlos I',653,'ES'),('EST','Estonia','Europe','Baltic Countries',45227.00,1991,1439200,69.5,5328.00,3371.00,'Eesti','Republic','Lennart Meri',3791,'EE'),('ETH','Ethiopia','Africa','Eastern Africa',1104300.00,-1000,62565000,45.2,6353.00,6180.00,'YeItyop´iya','Republic','Negasso Gidada',756,'ET'),('FIN','Finland','Europe','Nordic Countries',338145.00,1917,5171300,77.4,121914.00,119833.00,'Suomi','Republic','Tarja Halonen',3236,'FI'),('FJI','Fiji Islands','Oceania','Melanesia',18274.00,1970,817000,67.9,1536.00,2149.00,'Fiji Islands','Republic','Josefa Iloilo',764,'FJ'),('FLK','Falkland Islands','South America','South America',12173.00,NULL,2000,NULL,0.00,NULL,'Falkland Islands','Dependent Territory of the UK','Elisabeth II',763,'FK'),('FRA','France','Europe','Western Europe',551500.00,843,59225700,78.8,1424285.00,1392448.00,'France','Republic','Jacques Chirac',2974,'FR'),('FRO','Faroe Islands','Europe','Nordic Countries',1399.00,NULL,43000,78.4,0.00,NULL,'Føroyar','Part of Denmark','Margrethe II',901,'FO'),('FSM','Micronesia, Federated States of','Oceania','Micronesia',702.00,1990,119000,68.6,212.00,NULL,'Micronesia','Federal Republic','Leo A. Falcam',2689,'FM'),('GAB','Gabon','Africa','Central Africa',267668.00,1960,1226000,50.1,5493.00,5279.00,'Le Gabon','Republic','Omar Bongo',902,'GA'),('GBR','United Kingdom','Europe','British Islands',242900.00,1066,59623400,77.7,1378330.00,1296830.00,'United Kingdom','Constitutional Monarchy','Elisabeth II',456,'GB'),('GEO','Georgia','Asia','Middle East',69700.00,1991,4968000,64.5,6064.00,5924.00,'Sakartvelo','Republic','Eduard Ševardnadze',905,'GE'),('GHA','Ghana','Africa','Western Africa',238533.00,1957,20212000,57.4,7137.00,6884.00,'Ghana','Republic','John Kufuor',910,'GH'),('GIB','Gibraltar','Europe','Southern Europe',6.00,NULL,25000,79.0,258.00,NULL,'Gibraltar','Dependent Territory of the UK','Elisabeth II',915,'GI'),('GIN','Guinea','Africa','Western Africa',245857.00,1958,7430000,45.6,2352.00,2383.00,'Guinée','Republic','Lansana Conté',926,'GN'),('GLP','Guadeloupe','North America','Caribbean',1705.00,NULL,456000,77.0,3501.00,NULL,'Guadeloupe','Overseas Department of France','Jacques Chirac',919,'GP'),('GMB','Gambia','Africa','Western Africa',11295.00,1965,1305000,53.2,320.00,325.00,'The Gambia','Republic','Yahya Jammeh',904,'GM'),('GNB','Guinea-Bissau','Africa','Western Africa',36125.00,1974,1213000,49.0,293.00,272.00,'Guiné-Bissau','Republic','Kumba Ialá',927,'GW'),('GNQ','Equatorial Guinea','Africa','Central Africa',28051.00,1968,453000,53.6,283.00,542.00,'Guinea Ecuatorial','Republic','Teodoro Obiang Nguema Mbasogo',2972,'GQ'),('GRC','Greece','Europe','Southern Europe',131626.00,1830,10545700,78.4,120724.00,119946.00,'Elláda','Republic','Kostis Stefanopoulos',2401,'GR'),('GRD','Grenada','North America','Caribbean',344.00,1974,94000,64.5,318.00,NULL,'Grenada','Constitutional Monarchy','Elisabeth II',916,'GD'),('GRL','Greenland','North America','North America',2166090.00,NULL,56000,68.1,0.00,NULL,'Kalaallit Nunaat/Grønland','Part of Denmark','Margrethe II',917,'GL'),('GTM','Guatemala','North America','Central America',108889.00,1821,11385000,66.2,19008.00,17797.00,'Guatemala','Republic','Alfonso Portillo Cabrera',922,'GT'),('GUF','French Guiana','South America','South America',90000.00,NULL,181000,76.1,681.00,NULL,'Guyane française','Overseas Department of France','Jacques Chirac',3014,'GF'),('GUM','Guam','Oceania','Micronesia',549.00,NULL,168000,77.8,1197.00,1136.00,'Guam','US Territory','George W. Bush',921,'GU'),('GUY','Guyana','South America','South America',214969.00,1966,861000,64.0,722.00,743.00,'Guyana','Republic','Bharrat Jagdeo',928,'GY'),('HKG','Hong Kong','Asia','Eastern Asia',1075.00,NULL,6782000,79.5,166448.00,173610.00,'Xianggang/Hong Kong','Special Administrative Region of China','Jiang Zemin',937,'HK'),('HMD','Heard Island and McDonald Islands','Antarctica','Antarctica',359.00,NULL,0,NULL,0.00,NULL,'Heard and McDonald Islands','Territory of Australia','Elisabeth II',NULL,'HM'),('HND','Honduras','North America','Central America',112088.00,1838,6485000,69.9,5333.00,4697.00,'Honduras','Republic','Carlos Roberto Flores Facussé',933,'HN'),('HRV','Croatia','Europe','Southern Europe',56538.00,1991,4473000,73.7,20208.00,19300.00,'Hrvatska','Republic','Štipe Mesic',2409,'HR'),('HTI','Haiti','North America','Caribbean',27750.00,1804,8222000,49.2,3459.00,3107.00,'Haïti/Dayti','Republic','Jean-Bertrand Aristide',929,'HT'),('HUN','Hungary','Europe','Eastern Europe',93030.00,1918,10043200,71.4,48267.00,45914.00,'Magyarország','Republic','Ferenc Mádl',3483,'HU'),('IDN','Indonesia','Asia','Southeast Asia',1904569.00,1945,212107000,68.0,84982.00,215002.00,'Indonesia','Republic','Abdurrahman Wahid',939,'ID'),('IND','India','Asia','Southern and Central Asia',3287263.00,1947,1013662000,62.5,447114.00,430572.00,'Bharat/India','Federal Republic','Kocheril Raman Narayanan',1109,'IN'),('IOT','British Indian Ocean Territory','Africa','Eastern Africa',78.00,NULL,0,NULL,0.00,NULL,'British Indian Ocean Territory','Dependent Territory of the UK','Elisabeth II',NULL,'IO'),('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,76.8,75921.00,73132.00,'Ireland/Éire','Republic','Mary McAleese',1447,'IE'),('IRN','Iran','Asia','Southern and Central Asia',1648195.00,1906,67702000,69.7,195746.00,160151.00,'Iran','Islamic Republic','Ali Mohammad Khatami-Ardakani',1380,'IR'),('IRQ','Iraq','Asia','Middle East',438317.00,1932,23115000,66.5,11500.00,NULL,'Al-´Iraq','Republic','Saddam Hussein al-Takriti',1365,'IQ'),('ISL','Iceland','Europe','Nordic Countries',103000.00,1944,279000,79.4,8255.00,7474.00,'Ísland','Republic','Ólafur Ragnar Grímsson',1449,'IS'),('ISR','Israel','Asia','Middle East',21056.00,1948,6217000,78.6,97477.00,98577.00,'Yisra’el/Isra’il','Republic','Moshe Katzav',1450,'IL'),('ITA','Italy','Europe','Southern Europe',301316.00,1861,57680000,79.0,1161755.00,1145372.00,'Italia','Republic','Carlo Azeglio Ciampi',1464,'IT'),('JAM','Jamaica','North America','Caribbean',10990.00,1962,2583000,75.2,6871.00,6722.00,'Jamaica','Constitutional Monarchy','Elisabeth II',1530,'JM'),('JOR','Jordan','Asia','Middle East',88946.00,1946,5083000,77.4,7526.00,7051.00,'Al-Urdunn','Constitutional Monarchy','Abdullah II',1786,'JO'),('JPN','Japan','Asia','Eastern Asia',377829.00,-660,126714000,80.7,3787042.00,4192638.00,'Nihon/Nippon','Constitutional Monarchy','Akihito',1532,'JP'),('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900.00,1991,16223000,63.2,24375.00,23383.00,'Qazaqstan','Republic','Nursultan Nazarbajev',1864,'KZ'),('KEN','Kenya','Africa','Eastern Africa',580367.00,1963,30080000,48.0,9217.00,10241.00,'Kenya','Republic','Daniel arap Moi',1881,'KE'),('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900.00,1991,4699000,63.4,1626.00,1767.00,'Kyrgyzstan','Republic','Askar Akajev',2253,'KG'),('KHM','Cambodia','Asia','Southeast Asia',181035.00,1953,11168000,56.5,5121.00,5670.00,'Kâmpuchéa','Constitutional Monarchy','Norodom Sihanouk',1800,'KH'),('KIR','Kiribati','Oceania','Micronesia',726.00,1979,83000,59.8,40.70,NULL,'Kiribati','Republic','Teburoro Tito',2256,'KI'),('KNA','Saint Kitts and Nevis','North America','Caribbean',261.00,1983,38000,70.7,299.00,NULL,'Saint Kitts and Nevis','Constitutional Monarchy','Elisabeth II',3064,'KN'),('KOR','South Korea','Asia','Eastern Asia',99434.00,1948,46844000,74.4,320749.00,442544.00,'Taehan Min’guk (Namhan)','Republic','Kim Dae-jung',2331,'KR'),('KWT','Kuwait','Asia','Middle East',17818.00,1961,1972000,76.1,27037.00,30373.00,'Al-Kuwayt','Constitutional Monarchy (Emirate)','Jabir al-Ahmad al-Jabir al-Sabah',2429,'KW'),('LAO','Laos','Asia','Southeast Asia',236800.00,1953,5433000,53.1,1292.00,1746.00,'Lao','Republic','Khamtay Siphandone',2432,'LA'),('LBN','Lebanon','Asia','Middle East',10400.00,1941,3282000,71.3,17121.00,15129.00,'Lubnan','Republic','Émile Lahoud',2438,'LB'),('LBR','Liberia','Africa','Western Africa',111369.00,1847,3154000,51.0,2012.00,NULL,'Liberia','Republic','Charles Taylor',2440,'LR'),('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540.00,1951,5605000,75.5,44806.00,40562.00,'Libiya','Socialistic State','Muammar al-Qadhafi',2441,'LY'),('LCA','Saint Lucia','North America','Caribbean',622.00,1979,154000,72.3,571.00,NULL,'Saint Lucia','Constitutional Monarchy','Elisabeth II',3065,'LC'),('LIE','Liechtenstein','Europe','Western Europe',160.00,1806,32300,78.8,1119.00,1084.00,'Liechtenstein','Constitutional Monarchy','Hans-Adam II',2446,'LI'),('LKA','Sri Lanka','Asia','Southern and Central Asia',65610.00,1948,18827000,71.8,15706.00,15091.00,'Sri Lanka/Ilankai','Republic','Chandrika Kumaratunga',3217,'LK'),('LSO','Lesotho','Africa','Southern Africa',30355.00,1966,2153000,50.8,1061.00,1161.00,'Lesotho','Constitutional Monarchy','Letsie III',2437,'LS'),('LTU','Lithuania','Europe','Baltic Countries',65301.00,1991,3698500,69.1,10692.00,9585.00,'Lietuva','Republic','Valdas Adamkus',2447,'LT'),('LUX','Luxembourg','Europe','Western Europe',2586.00,1867,435700,77.1,16321.00,15519.00,'Luxembourg/Lëtzebuerg','Constitutional Monarchy','Henri',2452,'LU'),('LVA','Latvia','Europe','Baltic Countries',64589.00,1991,2424200,68.4,6398.00,5639.00,'Latvija','Republic','Vaira Vike-Freiberga',2434,'LV'),('MAC','Macao','Asia','Eastern Asia',18.00,NULL,473000,81.6,5749.00,5940.00,'Macau/Aomen','Special Administrative Region of China','Jiang Zemin',2454,'MO'),('MAR','Morocco','Africa','Northern Africa',446550.00,1956,28351000,69.1,36124.00,33514.00,'Al-Maghrib','Constitutional Monarchy','Mohammed VI',2486,'MA'),('MCO','Monaco','Europe','Western Europe',1.50,1861,34000,78.8,776.00,NULL,'Monaco','Constitutional Monarchy','Rainier III',2695,'MC'),('MDA','Moldova','Europe','Eastern Europe',33851.00,1991,4380000,64.5,1579.00,1872.00,'Moldova','Republic','Vladimir Voronin',2690,'MD'),('MDG','Madagascar','Africa','Eastern Africa',587041.00,1960,15942000,55.0,3750.00,3545.00,'Madagasikara/Madagascar','Federal Republic','Didier Ratsiraka',2455,'MG'),('MDV','Maldives','Asia','Southern and Central Asia',298.00,1965,286000,62.2,199.00,NULL,'Dhivehi Raajje/Maldives','Republic','Maumoon Abdul Gayoom',2463,'MV'),('MEX','Mexico','North America','Central America',1958201.00,1810,98881000,71.5,414972.00,401461.00,'México','Federal Republic','Vicente Fox Quesada',2515,'MX'),('MHL','Marshall Islands','Oceania','Micronesia',181.00,1990,64000,65.5,97.00,NULL,'Marshall Islands/Majol','Republic','Kessai Note',2507,'MH'),('MKD','Macedonia','Europe','Southern Europe',25713.00,1991,2024000,73.8,1694.00,1915.00,'Makedonija','Republic','Boris Trajkovski',2460,'MK'),('MLI','Mali','Africa','Western Africa',1240192.00,1960,11234000,46.7,2642.00,2453.00,'Mali','Republic','Alpha Oumar Konaré',2482,'ML'),('MLT','Malta','Europe','Southern Europe',316.00,1964,380200,77.9,3512.00,3338.00,'Malta','Republic','Guido de Marco',2484,'MT'),('MMR','Myanmar','Asia','Southeast Asia',676578.00,1948,45611000,54.9,180375.00,171028.00,'Myanma Pye','Republic','kenraali Than Shwe',2710,'MM'),('MNG','Mongolia','Asia','Eastern Asia',1566500.00,1921,2662000,67.3,1043.00,933.00,'Mongol Uls','Republic','Natsagiin Bagabandi',2696,'MN'),('MNP','Northern Mariana Islands','Oceania','Micronesia',464.00,NULL,78000,75.5,0.00,NULL,'Northern Mariana Islands','Commonwealth of the US','George W. Bush',2913,'MP'),('MOZ','Mozambique','Africa','Eastern Africa',801590.00,1975,19680000,37.5,2891.00,2711.00,'Moçambique','Republic','Joaquím A. Chissano',2698,'MZ'),('MRT','Mauritania','Africa','Western Africa',1025520.00,1960,2670000,50.8,998.00,1081.00,'Muritaniya/Mauritanie','Republic','Maaouiya Ould Sid´Ahmad Taya',2509,'MR'),('MSR','Montserrat','North America','Caribbean',102.00,NULL,11000,78.0,109.00,NULL,'Montserrat','Dependent Territory of the UK','Elisabeth II',2697,'MS'),('MTQ','Martinique','North America','Caribbean',1102.00,NULL,395000,78.3,2731.00,2559.00,'Martinique','Overseas Department of France','Jacques Chirac',2508,'MQ'),('MUS','Mauritius','Africa','Eastern Africa',2040.00,1968,1158000,71.0,4251.00,4186.00,'Mauritius','Republic','Cassam Uteem',2511,'MU'),('MWI','Malawi','Africa','Eastern Africa',118484.00,1964,10925000,37.6,1687.00,2527.00,'Malawi','Republic','Bakili Muluzi',2462,'MW'),('MYS','Malaysia','Asia','Southeast Asia',329758.00,1957,22244000,70.8,69213.00,97884.00,'Malaysia','Constitutional Monarchy, Federation','Salahuddin Abdul Aziz Shah Alhaj',2464,'MY'),('MYT','Mayotte','Africa','Eastern Africa',373.00,NULL,149000,59.5,0.00,NULL,'Mayotte','Territorial Collectivity of France','Jacques Chirac',2514,'YT'),('NAM','Namibia','Africa','Southern Africa',824292.00,1990,1726000,42.5,3101.00,3384.00,'Namibia','Republic','Sam Nujoma',2726,'NA'),('NCL','New Caledonia','Oceania','Melanesia',18575.00,NULL,214000,72.8,3563.00,NULL,'Nouvelle-Calédonie','Nonmetropolitan Territory of France','Jacques Chirac',3493,'NC'),('NER','Niger','Africa','Western Africa',1267000.00,1960,10730000,41.3,1706.00,1580.00,'Niger','Republic','Mamadou Tandja',2738,'NE'),('NFK','Norfolk Island','Oceania','Australia and New Zealand',36.00,NULL,2000,NULL,0.00,NULL,'Norfolk Island','Territory of Australia','Elisabeth II',2806,'NF'),('NGA','Nigeria','Africa','Western Africa',923768.00,1960,111506000,51.6,65707.00,58623.00,'Nigeria','Federal Republic','Olusegun Obasanjo',2754,'NG'),('NIC','Nicaragua','North America','Central America',130000.00,1838,5074000,68.7,1988.00,2023.00,'Nicaragua','Republic','Arnoldo Alemán Lacayo',2734,'NI'),('NIU','Niue','Oceania','Polynesia',260.00,NULL,2000,NULL,0.00,NULL,'Niue','Nonmetropolitan Territory of New Zealand','Elisabeth II',2805,'NU'),('NLD','Netherlands','Europe','Western Europe',41526.00,1581,15864000,78.3,371362.00,360478.00,'Nederland','Constitutional Monarchy','Beatrix',5,'NL'),('NOR','Norway','Europe','Nordic Countries',323877.00,1905,4478500,78.7,145895.00,153370.00,'Norge','Constitutional Monarchy','Harald V',2807,'NO'),('NPL','Nepal','Asia','Southern and Central Asia',147181.00,1769,23930000,57.8,4768.00,4837.00,'Nepal','Constitutional Monarchy','Gyanendra Bir Bikram',2729,'NP'),('NRU','Nauru','Oceania','Micronesia',21.00,1968,12000,60.8,197.00,NULL,'Naoero/Nauru','Republic','Bernard Dowiyogo',2728,'NR'),('NZL','New Zealand','Oceania','Australia and New Zealand',270534.00,1907,3862000,77.8,54669.00,64960.00,'New Zealand/Aotearoa','Constitutional Monarchy','Elisabeth II',3499,'NZ'),('OMN','Oman','Asia','Middle East',309500.00,1951,2542000,71.8,16904.00,16153.00,'´Uman','Monarchy (Sultanate)','Qabus ibn Sa´id',2821,'OM'),('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,156483000,61.1,61289.00,58549.00,'Pakistan','Republic','Mohammad Rafiq Tarar',2831,'PK'),('PAN','Panama','North America','Central America',75517.00,1903,2856000,75.5,9131.00,8700.00,'Panamá','Republic','Mireya Elisa Moscoso Rodríguez',2882,'PA'),('PCN','Pitcairn','Oceania','Polynesia',49.00,NULL,50,NULL,0.00,NULL,'Pitcairn','Dependent Territory of the UK','Elisabeth II',2912,'PN'),('PER','Peru','South America','South America',1285216.00,1821,25662000,70.0,64140.00,65186.00,'Perú/Piruw','Republic','Valentin Paniagua Corazao',2890,'PE'),('PHL','Philippines','Asia','Southeast Asia',300000.00,1946,75967000,67.5,65107.00,82239.00,'Pilipinas','Republic','Gloria Macapagal-Arroyo',766,'PH'),('PLW','Palau','Oceania','Micronesia',459.00,1994,19000,68.6,105.00,NULL,'Belau/Palau','Republic','Kuniwo Nakamura',2881,'PW'),('PNG','Papua New Guinea','Oceania','Melanesia',462840.00,1975,4807000,63.1,4988.00,6328.00,'Papua New Guinea/Papua Niugini','Constitutional Monarchy','Elisabeth II',2884,'PG'),('POL','Poland','Europe','Eastern Europe',323250.00,1918,38653600,73.2,151697.00,135636.00,'Polska','Republic','Aleksander Kwasniewski',2928,'PL'),('PRI','Puerto Rico','North America','Caribbean',8875.00,NULL,3869000,75.6,34100.00,32100.00,'Puerto Rico','Commonwealth of the US','George W. Bush',2919,'PR'),('PRK','North Korea','Asia','Eastern Asia',120538.00,1948,24039000,70.7,5332.00,NULL,'Choson Minjujuui In´min Konghwaguk (Bukhan)','Socialistic Republic','Kim Jong-il',2318,'KP'),('PRT','Portugal','Europe','Southern Europe',91982.00,1143,9997600,75.8,105954.00,102133.00,'Portugal','Republic','Jorge Sampãio',2914,'PT'),('PRY','Paraguay','South America','South America',406752.00,1811,5496000,73.7,8444.00,9555.00,'Paraguay','Republic','Luis Ángel González Macchi',2885,'PY'),('PSE','Palestine','Asia','Middle East',6257.00,NULL,3101000,71.4,4173.00,NULL,'Filastin','Autonomous Area','Yasser (Yasir) Arafat',4074,'PS'),('PYF','French Polynesia','Oceania','Polynesia',4000.00,NULL,235000,74.8,818.00,781.00,'Polynésie française','Nonmetropolitan Territory of France','Jacques Chirac',3016,'PF'),('QAT','Qatar','Asia','Middle East',11000.00,1971,599000,72.4,9472.00,8920.00,'Qatar','Monarchy','Hamad ibn Khalifa al-Thani',2973,'QA'),('REU','Réunion','Africa','Eastern Africa',2510.00,NULL,699000,72.7,8287.00,7988.00,'Réunion','Overseas Department of France','Jacques Chirac',3017,'RE'),('ROM','Romania','Europe','Eastern Europe',238391.00,1878,22455500,69.9,38158.00,34843.00,'România','Republic','Ion Iliescu',3018,'RO'),('RUS','Russian Federation','Europe','Eastern Europe',17075400.00,1991,146934000,67.2,276608.00,442989.00,'Rossija','Federal Republic','Vladimir Putin',3580,'RU'),('RWA','Rwanda','Africa','Eastern Africa',26338.00,1962,7733000,39.3,2036.00,1863.00,'Rwanda/Urwanda','Republic','Paul Kagame',3047,'RW'),('SAU','Saudi Arabia','Asia','Middle East',2149690.00,1932,21607000,67.8,137635.00,146171.00,'Al-´Arabiya as-Sa´udiya','Monarchy','Fahd ibn Abdul-Aziz al-Sa´ud',3173,'SA'),('SDN','Sudan','Africa','Northern Africa',2505813.00,1956,29490000,56.6,10162.00,NULL,'As-Sudan','Islamic Republic','Omar Hassan Ahmad al-Bashir',3225,'SD'),('SEN','Senegal','Africa','Western Africa',196722.00,1960,9481000,62.2,4787.00,4542.00,'Sénégal/Sounougal','Republic','Abdoulaye Wade',3198,'SN'),('SGP','Singapore','Asia','Southeast Asia',618.00,1965,3567000,80.1,86503.00,96318.00,'Singapore/Singapura/Xinjiapo/Singapur','Republic','Sellapan Rama Nathan',3208,'SG'),('SGS','South Georgia and the South Sandwich Islands','Antarctica','Antarctica',3903.00,NULL,0,NULL,0.00,NULL,'South Georgia and the South Sandwich Islands','Dependent Territory of the UK','Elisabeth II',NULL,'GS'),('SHN','Saint Helena','Africa','Western Africa',314.00,NULL,6000,76.8,0.00,NULL,'Saint Helena','Dependent Territory of the UK','Elisabeth II',3063,'SH'),('SJM','Svalbard and Jan Mayen','Europe','Nordic Countries',62422.00,NULL,3200,NULL,0.00,NULL,'Svalbard og Jan Mayen','Dependent Territory of Norway','Harald V',938,'SJ'),('SLB','Solomon Islands','Oceania','Melanesia',28896.00,1978,444000,71.3,182.00,220.00,'Solomon Islands','Constitutional Monarchy','Elisabeth II',3161,'SB'),('SLE','Sierra Leone','Africa','Western Africa',71740.00,1961,4854000,45.3,746.00,858.00,'Sierra Leone','Republic','Ahmed Tejan Kabbah',3207,'SL'),('SLV','El Salvador','North America','Central America',21041.00,1841,6276000,69.7,11863.00,11203.00,'El Salvador','Republic','Francisco Guillermo Flores Pérez',645,'SV'),('SMR','San Marino','Europe','Southern Europe',61.00,885,27000,81.1,510.00,NULL,'San Marino','Republic',NULL,3171,'SM'),('SOM','Somalia','Africa','Eastern Africa',637657.00,1960,10097000,46.2,935.00,NULL,'Soomaaliya','Republic','Abdiqassim Salad Hassan',3214,'SO'),('SPM','Saint Pierre and Miquelon','North America','North America',242.00,NULL,7000,77.6,0.00,NULL,'Saint-Pierre-et-Miquelon','Territorial Collectivity of France','Jacques Chirac',3067,'PM'),('STP','Sao Tome and Principe','Africa','Central Africa',964.00,1975,147000,65.3,6.00,NULL,'São Tomé e Príncipe','Republic','Miguel Trovoada',3172,'ST'),('SUR','Suriname','South America','South America',163265.00,1975,417000,71.4,870.00,706.00,'Suriname','Republic','Ronald Venetiaan',3243,'SR'),('SVK','Slovakia','Europe','Eastern Europe',49012.00,1993,5398700,73.7,20594.00,19452.00,'Slovensko','Republic','Rudolf Schuster',3209,'SK'),('SVN','Slovenia','Europe','Southern Europe',20256.00,1991,1987800,74.9,19756.00,18202.00,'Slovenija','Republic','Milan Kucan',3212,'SI'),('SWE','Sweden','Europe','Nordic Countries',449964.00,836,8861400,79.6,226492.00,227757.00,'Sverige','Constitutional Monarchy','Carl XVI Gustaf',3048,'SE'),('SWZ','Swaziland','Africa','Southern Africa',17364.00,1968,1008000,40.4,1206.00,1312.00,'kaNgwane','Monarchy','Mswati III',3244,'SZ'),('SYC','Seychelles','Africa','Eastern Africa',455.00,1976,77000,70.4,536.00,539.00,'Sesel/Seychelles','Republic','France-Albert René',3206,'SC'),('SYR','Syria','Asia','Middle East',185180.00,1941,16125000,68.5,65984.00,64926.00,'Suriya','Republic','Bashar al-Assad',3250,'SY'),('TCA','Turks and Caicos Islands','North America','Caribbean',430.00,NULL,17000,73.3,96.00,NULL,'The Turks and Caicos Islands','Dependent Territory of the UK','Elisabeth II',3423,'TC'),('TCD','Chad','Africa','Central Africa',1284000.00,1960,7651000,50.5,1208.00,1102.00,'Tchad/Tshad','Republic','Idriss Déby',3337,'TD'),('TGO','Togo','Africa','Western Africa',56785.00,1960,4629000,54.7,1449.00,1400.00,'Togo','Republic','Gnassingbé Eyadéma',3332,'TG'),('THA','Thailand','Asia','Southeast Asia',513115.00,1350,61399000,68.6,116416.00,153907.00,'Prathet Thai','Constitutional Monarchy','Bhumibol Adulyadej',3320,'TH'),('TJK','Tajikistan','Asia','Southern and Central Asia',143100.00,1991,6188000,64.1,1990.00,1056.00,'Toçikiston','Republic','Emomali Rahmonov',3261,'TJ'),('TKL','Tokelau','Oceania','Polynesia',12.00,NULL,2000,NULL,0.00,NULL,'Tokelau','Nonmetropolitan Territory of New Zealand','Elisabeth II',3333,'TK'),('TKM','Turkmenistan','Asia','Southern and Central Asia',488100.00,1991,4459000,60.9,4397.00,2000.00,'Türkmenostan','Republic','Saparmurad Nijazov',3419,'TM'),('TMP','East Timor','Asia','Southeast Asia',14874.00,NULL,885000,46.0,0.00,NULL,'Timor Timur','Administrated by the UN','José Alexandre Gusmão',1522,'TP'),('TON','Tonga','Oceania','Polynesia',650.00,1970,99000,67.9,146.00,170.00,'Tonga','Monarchy','Taufa\'ahau Tupou IV',3334,'TO'),('TTO','Trinidad and Tobago','North America','Caribbean',5130.00,1962,1295000,68.0,6232.00,5867.00,'Trinidad and Tobago','Republic','Arthur N. R. Robinson',3336,'TT'),('TUN','Tunisia','Africa','Northern Africa',163610.00,1956,9586000,73.7,20026.00,18898.00,'Tunis/Tunisie','Republic','Zine al-Abidine Ben Ali',3349,'TN'),('TUR','Turkey','Asia','Middle East',774815.00,1923,66591000,71.0,210721.00,189122.00,'Türkiye','Republic','Ahmet Necdet Sezer',3358,'TR'),('TUV','Tuvalu','Oceania','Polynesia',26.00,1978,12000,66.3,6.00,NULL,'Tuvalu','Constitutional Monarchy','Elisabeth II',3424,'TV'),('TWN','Taiwan','Asia','Eastern Asia',36188.00,1945,22256000,76.4,256254.00,263451.00,'T’ai-wan','Republic','Chen Shui-bian',3263,'TW'),('TZA','Tanzania','Africa','Eastern Africa',883749.00,1961,33517000,52.3,8005.00,7388.00,'Tanzania','Republic','Benjamin William Mkapa',3306,'TZ'),('UGA','Uganda','Africa','Eastern Africa',241038.00,1962,21778000,42.9,6313.00,6887.00,'Uganda','Republic','Yoweri Museveni',3425,'UG'),('UKR','Ukraine','Europe','Eastern Europe',603700.00,1991,50456000,66.0,42168.00,49677.00,'Ukrajina','Republic','Leonid Kutšma',3426,'UA'),('UMI','United States Minor Outlying Islands','Oceania','Micronesia/Caribbean',16.00,NULL,0,NULL,0.00,NULL,'United States Minor Outlying Islands','Dependent Territory of the US','George W. Bush',NULL,'UM'),('URY','Uruguay','South America','South America',175016.00,1828,3337000,75.2,20831.00,19967.00,'Uruguay','Republic','Jorge Batlle Ibáñez',3492,'UY'),('USA','United States','North America','North America',9363520.00,1776,278357000,77.1,8510700.00,8110900.00,'United States','Federal Republic','George W. Bush',3813,'US'),('UZB','Uzbekistan','Asia','Southern and Central Asia',447400.00,1991,24318000,63.7,14194.00,21300.00,'Uzbekiston','Republic','Islam Karimov',3503,'UZ'),('VAT','Holy See (Vatican City State)','Europe','Southern Europe',0.40,1929,1000,NULL,9.00,NULL,'Santa Sede/Città del Vaticano','Independent Church State','Johannes Paavali II',3538,'VA'),('VCT','Saint Vincent and the Grenadines','North America','Caribbean',388.00,1979,114000,72.3,285.00,NULL,'Saint Vincent and the Grenadines','Constitutional Monarchy','Elisabeth II',3066,'VC'),('VEN','Venezuela','South America','South America',912050.00,1811,24170000,73.1,95023.00,88434.00,'Venezuela','Federal Republic','Hugo Chávez Frías',3539,'VE'),('VGB','Virgin Islands, British','North America','Caribbean',151.00,NULL,21000,75.4,612.00,573.00,'British Virgin Islands','Dependent Territory of the UK','Elisabeth II',537,'VG'),('VIR','Virgin Islands, U.S.','North America','Caribbean',347.00,NULL,93000,78.1,0.00,NULL,'Virgin Islands of the United States','US Territory','George W. Bush',4067,'VI'),('VNM','Vietnam','Asia','Southeast Asia',331689.00,1945,79832000,69.3,21929.00,22834.00,'Viêt Nam','Socialistic Republic','Trân Duc Luong',3770,'VN'),('VUT','Vanuatu','Oceania','Melanesia',12189.00,1980,190000,60.6,261.00,246.00,'Vanuatu','Republic','John Bani',3537,'VU'),('WLF','Wallis and Futuna','Oceania','Polynesia',200.00,NULL,15000,NULL,0.00,NULL,'Wallis-et-Futuna','Nonmetropolitan Territory of France','Jacques Chirac',3536,'WF'),('WSM','Samoa','Oceania','Polynesia',2831.00,1962,180000,69.2,141.00,157.00,'Samoa','Parlementary Monarchy','Malietoa Tanumafili II',3169,'WS'),('YEM','Yemen','Asia','Middle East',527968.00,1918,18112000,59.8,6041.00,5729.00,'Al-Yaman','Republic','Ali Abdallah Salih',1780,'YE'),('YUG','Yugoslavia','Europe','Southern Europe',102173.00,1918,10640000,72.4,17000.00,NULL,'Jugoslavija','Federal Republic','Vojislav Koštunica',1792,'YU'),('ZAF','South Africa','Africa','Southern Africa',1221037.00,1910,40377000,51.1,116729.00,129092.00,'South Africa','Republic','Thabo Mbeki',716,'ZA'),('ZMB','Zambia','Africa','Eastern Africa',752618.00,1964,9169000,37.2,3377.00,3922.00,'Zambia','Republic','Frederick Chiluba',3162,'ZM'),('ZWE','Zimbabwe','Africa','Eastern Africa',390757.00,1980,11669000,37.8,5951.00,8670.00,'Zimbabwe','Republic','Robert G. Mugabe',4068,'ZW');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrylanguage`
--

DROP TABLE IF EXISTS `countrylanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `Language` char(30) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `IsOfficial` text COLLATE utf8mb4_general_ci NOT NULL,
  `Percentage` float(4,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`,`Language`),
  CONSTRAINT `countrylanguage_FK_0_0` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrylanguage`
--

LOCK TABLES `countrylanguage` WRITE;
/*!40000 ALTER TABLE `countrylanguage` DISABLE KEYS */;
INSERT INTO `countrylanguage` VALUES ('ABW','Dutch','T',5.3),('ABW','English','F',9.5),('ABW','Papiamento','F',76.7),('ABW','Spanish','F',7.4),('AFG','Balochi','F',0.9),('AFG','Dari','T',32.1),('AFG','Pashto','T',52.4),('AFG','Turkmenian','F',1.9),('AFG','Uzbek','F',8.8),('AGO','Ambo','F',2.4),('AGO','Chokwe','F',4.2),('AGO','Kongo','F',13.2),('AGO','Luchazi','F',2.4),('AGO','Luimbe-nganguela','F',5.4),('AGO','Luvale','F',3.6),('AGO','Mbundu','F',21.6),('AGO','Nyaneka-nkhumbi','F',5.4),('AGO','Ovimbundu','F',37.2),('AIA','English','T',0.0),('ALB','Albaniana','T',97.9),('ALB','Greek','F',1.8),('ALB','Macedonian','F',0.1),('AND','Catalan','T',32.3),('AND','French','F',6.2),('AND','Portuguese','F',10.8),('AND','Spanish','F',44.6),('ANT','Dutch','T',0.0),('ANT','English','F',7.8),('ANT','Papiamento','T',86.2),('ARE','Arabic','T',42.0),('ARE','Hindi','F',0.0),('ARG','Indian Languages','F',0.3),('ARG','Italian','F',1.7),('ARG','Spanish','T',96.8),('ARM','Armenian','T',93.4),('ARM','Azerbaijani','F',2.6),('ASM','English','T',3.1),('ASM','Samoan','T',90.6),('ASM','Tongan','F',3.1),('ATG','Creole English','F',95.7),('ATG','English','T',0.0),('AUS','Arabic','F',1.0),('AUS','Canton Chinese','F',1.1),('AUS','English','T',81.2),('AUS','German','F',0.6),('AUS','Greek','F',1.6),('AUS','Italian','F',2.2),('AUS','Serbo-Croatian','F',0.6),('AUS','Vietnamese','F',0.8),('AUT','Czech','F',0.2),('AUT','German','T',92.0),('AUT','Hungarian','F',0.4),('AUT','Polish','F',0.2),('AUT','Romanian','F',0.2),('AUT','Serbo-Croatian','F',2.2),('AUT','Slovene','F',0.4),('AUT','Turkish','F',1.5),('AZE','Armenian','F',2.0),('AZE','Azerbaijani','T',89.0),('AZE','Lezgian','F',2.3),('AZE','Russian','F',3.0),('BDI','French','T',0.0),('BDI','Kirundi','T',98.1),('BDI','Swahili','F',0.0),('BEL','Arabic','F',1.6),('BEL','Dutch','T',59.2),('BEL','French','T',32.6),('BEL','German','T',1.0),('BEL','Italian','F',2.4),('BEL','Turkish','F',0.9),('BEN','Adja','F',11.1),('BEN','Aizo','F',8.7),('BEN','Bariba','F',8.7),('BEN','Fon','F',39.8),('BEN','Ful','F',5.6),('BEN','Joruba','F',12.2),('BEN','Somba','F',6.7),('BFA','Busansi','F',3.5),('BFA','Dagara','F',3.1),('BFA','Dyula','F',2.6),('BFA','Ful','F',9.7),('BFA','Gurma','F',5.7),('BFA','Mossi','F',50.2),('BGD','Bengali','T',97.7),('BGD','Chakma','F',0.4),('BGD','Garo','F',0.1),('BGD','Khasi','F',0.1),('BGD','Marma','F',0.2),('BGD','Santhali','F',0.1),('BGD','Tripuri','F',0.1),('BGR','Bulgariana','T',83.2),('BGR','Macedonian','F',2.6),('BGR','Romani','F',3.7),('BGR','Turkish','F',9.4),('BHR','Arabic','T',67.7),('BHR','English','F',0.0),('BHS','Creole English','F',89.7),('BHS','Creole French','F',10.3),('BIH','Serbo-Croatian','T',99.2),('BLR','Belorussian','T',65.6),('BLR','Polish','F',0.6),('BLR','Russian','T',32.0),('BLR','Ukrainian','F',1.3),('BLZ','English','T',50.8),('BLZ','Garifuna','F',6.8),('BLZ','Maya Languages','F',9.6),('BLZ','Spanish','F',31.6),('BMU','English','T',100.0),('BOL','Aimará','T',3.2),('BOL','Guaraní','F',0.1),('BOL','Ketšua','T',8.1),('BOL','Spanish','T',87.7),('BRA','German','F',0.5),('BRA','Indian Languages','F',0.2),('BRA','Italian','F',0.4),('BRA','Japanese','F',0.4),('BRA','Portuguese','T',97.5),('BRB','Bajan','F',95.1),('BRB','English','T',0.0),('BRN','Chinese','F',9.3),('BRN','English','F',3.1),('BRN','Malay','T',45.5),('BRN','Malay-English','F',28.8),('BTN','Asami','F',15.2),('BTN','Dzongkha','T',50.0),('BTN','Nepali','F',34.8),('BWA','Khoekhoe','F',2.5),('BWA','Ndebele','F',1.3),('BWA','San','F',3.5),('BWA','Shona','F',12.3),('BWA','Tswana','F',75.5),('CAF','Banda','F',23.5),('CAF','Gbaya','F',23.8),('CAF','Mandjia','F',14.8),('CAF','Mbum','F',6.4),('CAF','Ngbaka','F',7.5),('CAF','Sara','F',6.4),('CAN','Chinese','F',2.5),('CAN','Dutch','F',0.5),('CAN','English','T',60.4),('CAN','Eskimo Languages','F',0.1),('CAN','French','T',23.4),('CAN','German','F',1.6),('CAN','Italian','F',1.7),('CAN','Polish','F',0.7),('CAN','Portuguese','F',0.7),('CAN','Punjabi','F',0.7),('CAN','Spanish','F',0.7),('CAN','Ukrainian','F',0.6),('CCK','English','T',0.0),('CCK','Malay','F',0.0),('CHE','French','T',19.2),('CHE','German','T',63.6),('CHE','Italian','T',7.7),('CHE','Romansh','T',0.6),('CHL','Aimará','F',0.5),('CHL','Araucan','F',9.6),('CHL','Rapa nui','F',0.2),('CHL','Spanish','T',89.7),('CHN','Chinese','T',92.0),('CHN','Dong','F',0.2),('CHN','Hui','F',0.8),('CHN','Mantšu','F',0.9),('CHN','Miao','F',0.7),('CHN','Mongolian','F',0.4),('CHN','Puyi','F',0.2),('CHN','Tibetan','F',0.4),('CHN','Tujia','F',0.5),('CHN','Uighur','F',0.6),('CHN','Yi','F',0.6),('CHN','Zhuang','F',1.4),('CIV','Akan','F',30.0),('CIV','Gur','F',11.7),('CIV','Kru','F',10.5),('CIV','Malinke','F',11.4),('CIV','[South]Mande','F',7.7),('CMR','Bamileke-bamum','F',18.6),('CMR','Duala','F',10.9),('CMR','Fang','F',19.7),('CMR','Ful','F',9.6),('CMR','Maka','F',4.9),('CMR','Mandara','F',5.7),('CMR','Masana','F',3.9),('CMR','Tikar','F',7.4),('COD','Boa','F',2.3),('COD','Chokwe','F',1.8),('COD','Kongo','F',16.0),('COD','Luba','F',18.0),('COD','Mongo','F',13.5),('COD','Ngala and Bangi','F',5.8),('COD','Rundi','F',3.8),('COD','Rwanda','F',10.3),('COD','Teke','F',2.7),('COD','Zande','F',6.1),('COG','Kongo','F',51.5),('COG','Mbete','F',4.8),('COG','Mboshi','F',11.4),('COG','Punu','F',2.9),('COG','Sango','F',2.6),('COG','Teke','F',17.3),('COK','English','F',0.0),('COK','Maori','T',0.0),('COL','Arawakan','F',0.1),('COL','Caribbean','F',0.1),('COL','Chibcha','F',0.4),('COL','Creole English','F',0.1),('COL','Spanish','T',99.0),('COM','Comorian','T',75.0),('COM','Comorian-Arabic','F',1.6),('COM','Comorian-French','F',12.9),('COM','Comorian-madagassi','F',5.5),('COM','Comorian-Swahili','F',0.5),('CPV','Crioulo','F',100.0),('CPV','Portuguese','T',0.0),('CRI','Chibcha','F',0.3),('CRI','Chinese','F',0.2),('CRI','Creole English','F',2.0),('CRI','Spanish','T',97.5),('CUB','Spanish','T',100.0),('CXR','Chinese','F',0.0),('CXR','English','T',0.0),('CYM','English','T',0.0),('CYP','Greek','T',74.1),('CYP','Turkish','T',22.4),('CZE','Czech','T',81.2),('CZE','German','F',0.5),('CZE','Hungarian','F',0.2),('CZE','Moravian','F',12.9),('CZE','Polish','F',0.6),('CZE','Romani','F',0.3),('CZE','Silesiana','F',0.4),('CZE','Slovak','F',3.1),('DEU','German','T',91.3),('DEU','Greek','F',0.4),('DEU','Italian','F',0.7),('DEU','Polish','F',0.3),('DEU','Southern Slavic Languages','F',1.4),('DEU','Turkish','F',2.6),('DJI','Afar','F',34.8),('DJI','Arabic','T',10.6),('DJI','Somali','F',43.9),('DMA','Creole English','F',100.0),('DMA','Creole French','F',0.0),('DNK','Arabic','F',0.7),('DNK','Danish','T',93.5),('DNK','English','F',0.3),('DNK','German','F',0.5),('DNK','Norwegian','F',0.3),('DNK','Swedish','F',0.3),('DNK','Turkish','F',0.8),('DOM','Creole French','F',2.0),('DOM','Spanish','T',98.0),('DZA','Arabic','T',86.0),('DZA','Berberi','F',14.0),('ECU','Ketšua','F',7.0),('ECU','Spanish','T',93.0),('EGY','Arabic','T',98.8),('EGY','Sinaberberi','F',0.0),('ERI','Afar','F',4.3),('ERI','Bilin','F',3.0),('ERI','Hadareb','F',3.8),('ERI','Saho','F',3.0),('ERI','Tigre','F',31.7),('ERI','Tigrinja','T',49.1),('ESH','Arabic','T',100.0),('ESP','Basque','F',1.6),('ESP','Catalan','F',16.9),('ESP','Galecian','F',6.4),('ESP','Spanish','T',74.4),('EST','Belorussian','F',1.4),('EST','Estonian','T',65.3),('EST','Finnish','F',0.7),('EST','Russian','F',27.8),('EST','Ukrainian','F',2.8),('ETH','Amhara','F',30.0),('ETH','Gurage','F',4.7),('ETH','Oromo','F',31.0),('ETH','Sidamo','F',3.2),('ETH','Somali','F',4.1),('ETH','Tigrinja','F',7.2),('ETH','Walaita','F',2.8),('FIN','Estonian','F',0.2),('FIN','Finnish','T',92.7),('FIN','Russian','F',0.4),('FIN','Saame','F',0.0),('FIN','Swedish','T',5.7),('FJI','Fijian','T',50.8),('FJI','Hindi','F',43.7),('FLK','English','T',0.0),('FRA','Arabic','F',2.5),('FRA','French','T',93.6),('FRA','Italian','F',0.4),('FRA','Portuguese','F',1.2),('FRA','Spanish','F',0.4),('FRA','Turkish','F',0.4),('FRO','Danish','T',0.0),('FRO','Faroese','T',100.0),('FSM','Kosrean','F',7.3),('FSM','Mortlock','F',7.6),('FSM','Pohnpei','F',23.8),('FSM','Trukese','F',41.6),('FSM','Wolea','F',3.7),('FSM','Yap','F',5.8),('GAB','Fang','F',35.8),('GAB','Mbete','F',13.8),('GAB','Mpongwe','F',14.6),('GAB','Punu-sira-nzebi','F',17.1),('GBR','English','T',97.3),('GBR','Gaeli','F',0.1),('GBR','Kymri','F',0.9),('GEO','Abhyasi','F',1.7),('GEO','Armenian','F',6.8),('GEO','Azerbaijani','F',5.5),('GEO','Georgiana','T',71.7),('GEO','Osseetti','F',2.4),('GEO','Russian','F',8.8),('GHA','Akan','F',52.4),('GHA','Ewe','F',11.9),('GHA','Ga-adangme','F',7.8),('GHA','Gurma','F',3.3),('GHA','Joruba','F',1.3),('GHA','Mossi','F',15.8),('GIB','Arabic','F',7.4),('GIB','English','T',88.9),('GIN','Ful','F',38.6),('GIN','Kissi','F',6.0),('GIN','Kpelle','F',4.6),('GIN','Loma','F',2.3),('GIN','Malinke','F',23.2),('GIN','Susu','F',11.0),('GIN','Yalunka','F',2.9),('GLP','Creole French','F',95.0),('GLP','French','T',0.0),('GMB','Diola','F',9.2),('GMB','Ful','F',16.2),('GMB','Malinke','F',34.1),('GMB','Soninke','F',7.6),('GMB','Wolof','F',12.6),('GNB','Balante','F',14.6),('GNB','Crioulo','F',36.4),('GNB','Ful','F',16.6),('GNB','Malinke','F',6.9),('GNB','Mandyako','F',4.9),('GNB','Portuguese','T',8.1),('GNQ','Bubi','F',8.7),('GNQ','Fang','F',84.8),('GRC','Greek','T',98.5),('GRC','Turkish','F',0.9),('GRD','Creole English','F',100.0),('GRL','Danish','T',12.5),('GRL','Greenlandic','T',87.5),('GTM','Cakchiquel','F',8.9),('GTM','Kekchí','F',4.9),('GTM','Mam','F',2.7),('GTM','Quiché','F',10.1),('GTM','Spanish','T',64.7),('GUF','Creole French','F',94.3),('GUF','Indian Languages','F',1.9),('GUM','Chamorro','T',29.6),('GUM','English','T',37.5),('GUM','Japanese','F',2.0),('GUM','Korean','F',3.3),('GUM','Philippene Languages','F',19.7),('GUY','Arawakan','F',1.4),('GUY','Caribbean','F',2.2),('GUY','Creole English','F',96.4),('HKG','Canton Chinese','F',88.7),('HKG','Chiu chau','F',1.4),('HKG','English','T',2.2),('HKG','Fukien','F',1.9),('HKG','Hakka','F',1.6),('HND','Creole English','F',0.2),('HND','Garifuna','F',1.3),('HND','Miskito','F',0.2),('HND','Spanish','T',97.2),('HRV','Serbo-Croatian','T',95.9),('HRV','Slovene','F',0.0),('HTI','French','T',0.0),('HTI','Haiti Creole','F',100.0),('HUN','German','F',0.4),('HUN','Hungarian','T',98.5),('HUN','Romani','F',0.5),('HUN','Romanian','F',0.1),('HUN','Serbo-Croatian','F',0.2),('HUN','Slovak','F',0.1),('IDN','Bali','F',1.7),('IDN','Banja','F',1.8),('IDN','Batakki','F',2.2),('IDN','Bugi','F',2.2),('IDN','Javanese','F',39.4),('IDN','Madura','F',4.3),('IDN','Malay','T',12.1),('IDN','Minangkabau','F',2.4),('IDN','Sunda','F',15.8),('IND','Asami','F',1.5),('IND','Bengali','F',8.2),('IND','Gujarati','F',4.8),('IND','Hindi','T',39.9),('IND','Kannada','F',3.9),('IND','Malajalam','F',3.6),('IND','Marathi','F',7.4),('IND','Orija','F',3.3),('IND','Punjabi','F',2.8),('IND','Tamil','F',6.3),('IND','Telugu','F',7.8),('IND','Urdu','F',5.1),('IRL','English','T',98.4),('IRL','Irish','T',1.6),('IRN','Arabic','F',2.2),('IRN','Azerbaijani','F',16.8),('IRN','Bakhtyari','F',1.7),('IRN','Balochi','F',2.3),('IRN','Gilaki','F',5.3),('IRN','Kurdish','F',9.1),('IRN','Luri','F',4.3),('IRN','Mazandarani','F',3.6),('IRN','Persian','T',45.7),('IRN','Turkmenian','F',1.6),('IRQ','Arabic','T',77.2),('IRQ','Assyrian','F',0.8),('IRQ','Azerbaijani','F',1.7),('IRQ','Kurdish','F',19.0),('IRQ','Persian','F',0.8),('ISL','English','F',0.0),('ISL','Icelandic','T',95.7),('ISR','Arabic','T',18.0),('ISR','Hebrew','T',63.1),('ISR','Russian','F',8.9),('ITA','Albaniana','F',0.2),('ITA','French','F',0.5),('ITA','Friuli','F',1.2),('ITA','German','F',0.5),('ITA','Italian','T',94.1),('ITA','Romani','F',0.2),('ITA','Sardinian','F',2.7),('ITA','Slovene','F',0.2),('JAM','Creole English','F',94.2),('JAM','Hindi','F',1.9),('JOR','Arabic','T',97.9),('JOR','Armenian','F',1.0),('JOR','Circassian','F',1.0),('JPN','Ainu','F',0.0),('JPN','Chinese','F',0.2),('JPN','English','F',0.1),('JPN','Japanese','T',99.1),('JPN','Korean','F',0.5),('JPN','Philippene Languages','F',0.1),('KAZ','German','F',3.1),('KAZ','Kazakh','T',46.0),('KAZ','Russian','F',34.7),('KAZ','Tatar','F',2.0),('KAZ','Ukrainian','F',5.0),('KAZ','Uzbek','F',2.3),('KEN','Gusii','F',6.1),('KEN','Kalenjin','F',10.8),('KEN','Kamba','F',11.2),('KEN','Kikuyu','F',20.9),('KEN','Luhya','F',13.8),('KEN','Luo','F',12.8),('KEN','Masai','F',1.6),('KEN','Meru','F',5.5),('KEN','Nyika','F',4.8),('KEN','Turkana','F',1.4),('KGZ','Kazakh','F',0.8),('KGZ','Kirgiz','T',59.7),('KGZ','Russian','T',16.2),('KGZ','Tadzhik','F',0.8),('KGZ','Tatar','F',1.3),('KGZ','Ukrainian','F',1.7),('KGZ','Uzbek','F',14.1),('KHM','Chinese','F',3.1),('KHM','Khmer','T',88.6),('KHM','Tšam','F',2.4),('KHM','Vietnamese','F',5.5),('KIR','Kiribati','T',98.9),('KIR','Tuvalu','F',0.5),('KNA','Creole English','F',100.0),('KNA','English','T',0.0),('KOR','Chinese','F',0.1),('KOR','Korean','T',99.9),('KWT','Arabic','T',78.1),('KWT','English','F',0.0),('LAO','Lao','T',67.2),('LAO','Lao-Soung','F',5.2),('LAO','Mon-khmer','F',16.5),('LAO','Thai','F',7.8),('LBN','Arabic','T',93.0),('LBN','Armenian','F',5.9),('LBN','French','F',0.0),('LBR','Bassa','F',13.7),('LBR','Gio','F',7.9),('LBR','Grebo','F',8.9),('LBR','Kpelle','F',19.5),('LBR','Kru','F',7.2),('LBR','Loma','F',5.8),('LBR','Malinke','F',5.1),('LBR','Mano','F',7.2),('LBY','Arabic','T',96.0),('LBY','Berberi','F',1.0),('LCA','Creole French','F',80.0),('LCA','English','T',20.0),('LIE','German','T',89.0),('LIE','Italian','F',2.5),('LIE','Turkish','F',2.5),('LKA','Mixed Languages','F',19.6),('LKA','Singali','T',60.3),('LKA','Tamil','T',19.6),('LSO','English','T',0.0),('LSO','Sotho','T',85.0),('LSO','Zulu','F',15.0),('LTU','Belorussian','F',1.4),('LTU','Lithuanian','T',81.6),('LTU','Polish','F',7.0),('LTU','Russian','F',8.1),('LTU','Ukrainian','F',1.1),('LUX','French','T',4.2),('LUX','German','T',2.3),('LUX','Italian','F',4.6),('LUX','Luxembourgish','T',64.4),('LUX','Portuguese','F',13.0),('LVA','Belorussian','F',4.1),('LVA','Latvian','T',55.1),('LVA','Lithuanian','F',1.2),('LVA','Polish','F',2.1),('LVA','Russian','F',32.5),('LVA','Ukrainian','F',2.9),('MAC','Canton Chinese','F',85.6),('MAC','English','F',0.5),('MAC','Mandarin Chinese','F',1.2),('MAC','Portuguese','T',2.3),('MAR','Arabic','T',65.0),('MAR','Berberi','F',33.0),('MCO','English','F',6.5),('MCO','French','T',41.9),('MCO','Italian','F',16.1),('MCO','Monegasque','F',16.1),('MDA','Bulgariana','F',1.6),('MDA','Gagauzi','F',3.2),('MDA','Romanian','T',61.9),('MDA','Russian','F',23.2),('MDA','Ukrainian','F',8.6),('MDG','French','T',0.0),('MDG','Malagasy','T',98.9),('MDV','Dhivehi','T',100.0),('MDV','English','F',0.0),('MEX','Mixtec','F',0.6),('MEX','Náhuatl','F',1.8),('MEX','Otomí','F',0.4),('MEX','Spanish','T',92.1),('MEX','Yucatec','F',1.1),('MEX','Zapotec','F',0.6),('MHL','English','T',0.0),('MHL','Marshallese','T',96.8),('MKD','Albaniana','F',22.9),('MKD','Macedonian','T',66.5),('MKD','Romani','F',2.3),('MKD','Serbo-Croatian','F',2.0),('MKD','Turkish','F',4.0),('MLI','Bambara','F',31.8),('MLI','Ful','F',13.9),('MLI','Senufo and Minianka','F',12.0),('MLI','Songhai','F',6.9),('MLI','Soninke','F',8.7),('MLI','Tamashek','F',7.3),('MLT','English','T',2.1),('MLT','Maltese','T',95.8),('MMR','Burmese','T',69.0),('MMR','Chin','F',2.2),('MMR','Kachin','F',1.4),('MMR','Karen','F',6.2),('MMR','Kayah','F',0.4),('MMR','Mon','F',2.4),('MMR','Rakhine','F',4.5),('MMR','Shan','F',8.5),('MNG','Bajad','F',1.9),('MNG','Buryat','F',1.7),('MNG','Dariganga','F',1.4),('MNG','Dorbet','F',2.7),('MNG','Kazakh','F',5.9),('MNG','Mongolian','T',78.8),('MNP','Carolinian','F',4.8),('MNP','Chamorro','F',30.0),('MNP','Chinese','F',7.1),('MNP','English','T',4.8),('MNP','Korean','F',6.5),('MNP','Philippene Languages','F',34.1),('MOZ','Chuabo','F',5.7),('MOZ','Lomwe','F',7.8),('MOZ','Makua','F',27.8),('MOZ','Marendje','F',3.5),('MOZ','Nyanja','F',3.3),('MOZ','Ronga','F',3.7),('MOZ','Sena','F',9.4),('MOZ','Shona','F',6.5),('MOZ','Tsonga','F',12.4),('MOZ','Tswa','F',6.0),('MRT','Ful','F',1.2),('MRT','Hassaniya','F',81.7),('MRT','Soninke','F',2.7),('MRT','Tukulor','F',5.4),('MRT','Wolof','F',6.6),('MRT','Zenaga','F',1.2),('MSR','English','T',0.0),('MTQ','Creole French','F',96.6),('MTQ','French','T',0.0),('MUS','Bhojpuri','F',21.1),('MUS','Creole French','F',70.6),('MUS','French','F',3.4),('MUS','Hindi','F',1.2),('MUS','Marathi','F',0.7),('MUS','Tamil','F',0.8),('MWI','Chichewa','T',58.3),('MWI','Lomwe','F',18.4),('MWI','Ngoni','F',6.7),('MWI','Yao','F',13.2),('MYS','Chinese','F',9.0),('MYS','Dusun','F',1.1),('MYS','English','F',1.6),('MYS','Iban','F',2.8),('MYS','Malay','T',58.4),('MYS','Tamil','F',3.9),('MYT','French','T',20.3),('MYT','Mahoré','F',41.9),('MYT','Malagasy','F',16.1),('NAM','Afrikaans','F',9.5),('NAM','Caprivi','F',4.7),('NAM','German','F',0.9),('NAM','Herero','F',8.0),('NAM','Kavango','F',9.7),('NAM','Nama','F',12.4),('NAM','Ovambo','F',50.7),('NAM','San','F',1.9),('NCL','French','T',34.3),('NCL','Malenasian Languages','F',45.4),('NCL','Polynesian Languages','F',11.6),('NER','Ful','F',9.7),('NER','Hausa','F',53.1),('NER','Kanuri','F',4.4),('NER','Songhai-zerma','F',21.2),('NER','Tamashek','F',10.4),('NFK','English','T',0.0),('NGA','Bura','F',1.6),('NGA','Edo','F',3.3),('NGA','Ful','F',11.3),('NGA','Hausa','F',21.1),('NGA','Ibibio','F',5.6),('NGA','Ibo','F',18.1),('NGA','Ijo','F',1.8),('NGA','Joruba','F',21.4),('NGA','Kanuri','F',4.1),('NGA','Tiv','F',2.3),('NIC','Creole English','F',0.5),('NIC','Miskito','F',1.6),('NIC','Spanish','T',97.6),('NIC','Sumo','F',0.2),('NIU','English','T',0.0),('NIU','Niue','F',0.0),('NLD','Arabic','F',0.9),('NLD','Dutch','T',95.6),('NLD','Fries','F',3.7),('NLD','Turkish','F',0.8),('NOR','Danish','F',0.4),('NOR','English','F',0.5),('NOR','Norwegian','T',96.6),('NOR','Saame','F',0.0),('NOR','Swedish','F',0.3),('NPL','Bhojpuri','F',7.5),('NPL','Hindi','F',3.0),('NPL','Maithili','F',11.9),('NPL','Nepali','T',50.4),('NPL','Newari','F',3.7),('NPL','Tamang','F',4.9),('NPL','Tharu','F',5.4),('NRU','Chinese','F',8.5),('NRU','English','T',7.5),('NRU','Kiribati','F',17.9),('NRU','Nauru','T',57.5),('NRU','Tuvalu','F',8.5),('NZL','English','T',87.0),('NZL','Maori','F',4.3),('OMN','Arabic','T',76.7),('OMN','Balochi','F',0.0),('PAK','Balochi','F',3.0),('PAK','Brahui','F',1.2),('PAK','Hindko','F',2.4),('PAK','Pashto','F',13.1),('PAK','Punjabi','F',48.2),('PAK','Saraiki','F',9.8),('PAK','Sindhi','F',11.8),('PAK','Urdu','T',7.6),('PAN','Arabic','F',0.6),('PAN','Creole English','F',14.0),('PAN','Cuna','F',2.0),('PAN','Embera','F',0.6),('PAN','Guaymí','F',5.3),('PAN','Spanish','T',76.8),('PCN','Pitcairnese','F',0.0),('PER','Aimará','T',2.3),('PER','Ketšua','T',16.4),('PER','Spanish','T',79.8),('PHL','Bicol','F',5.7),('PHL','Cebuano','F',23.3),('PHL','Hiligaynon','F',9.1),('PHL','Ilocano','F',9.3),('PHL','Maguindanao','F',1.4),('PHL','Maranao','F',1.3),('PHL','Pampango','F',3.0),('PHL','Pangasinan','F',1.8),('PHL','Pilipino','T',29.3),('PHL','Waray-waray','F',3.8),('PLW','Chinese','F',1.6),('PLW','English','T',3.2),('PLW','Palau','T',82.2),('PLW','Philippene Languages','F',9.2),('PNG','Malenasian Languages','F',20.0),('PNG','Papuan Languages','F',78.1),('POL','Belorussian','F',0.5),('POL','German','F',1.3),('POL','Polish','T',97.6),('POL','Ukrainian','F',0.6),('PRI','English','F',47.4),('PRI','Spanish','T',51.3),('PRK','Chinese','F',0.1),('PRK','Korean','T',99.9),('PRT','Portuguese','T',99.0),('PRY','German','F',0.9),('PRY','Guaraní','T',40.1),('PRY','Portuguese','F',3.2),('PRY','Spanish','T',55.1),('PSE','Arabic','F',95.9),('PSE','Hebrew','F',4.1),('PYF','Chinese','F',2.9),('PYF','French','T',40.8),('PYF','Tahitian','F',46.4),('QAT','Arabic','T',40.7),('QAT','Urdu','F',0.0),('REU','Chinese','F',2.8),('REU','Comorian','F',2.8),('REU','Creole French','F',91.5),('REU','Malagasy','F',1.4),('REU','Tamil','F',0.0),('ROM','German','F',0.4),('ROM','Hungarian','F',7.2),('ROM','Romani','T',0.7),('ROM','Romanian','T',90.7),('ROM','Serbo-Croatian','F',0.1),('ROM','Ukrainian','F',0.3),('RUS','Avarian','F',0.4),('RUS','Bashkir','F',0.7),('RUS','Belorussian','F',0.3),('RUS','Chechen','F',0.6),('RUS','Chuvash','F',0.9),('RUS','Kazakh','F',0.4),('RUS','Mari','F',0.4),('RUS','Mordva','F',0.5),('RUS','Russian','T',86.6),('RUS','Tatar','F',3.2),('RUS','Udmur','F',0.3),('RUS','Ukrainian','F',1.3),('RWA','French','T',0.0),('RWA','Rwanda','T',100.0),('SAU','Arabic','T',95.0),('SDN','Arabic','T',49.4),('SDN','Bari','F',2.5),('SDN','Beja','F',6.4),('SDN','Chilluk','F',1.7),('SDN','Dinka','F',11.5),('SDN','Fur','F',2.1),('SDN','Lotuko','F',1.5),('SDN','Nubian Languages','F',8.1),('SDN','Nuer','F',4.9),('SDN','Zande','F',2.7),('SEN','Diola','F',5.0),('SEN','Ful','F',21.7),('SEN','Malinke','F',3.8),('SEN','Serer','F',12.5),('SEN','Soninke','F',1.3),('SEN','Wolof','T',48.1),('SGP','Chinese','T',77.1),('SGP','Malay','T',14.1),('SGP','Tamil','T',7.4),('SHN','English','T',0.0),('SJM','Norwegian','T',0.0),('SJM','Russian','F',0.0),('SLB','Malenasian Languages','F',85.6),('SLB','Papuan Languages','F',8.6),('SLB','Polynesian Languages','F',3.8),('SLE','Bullom-sherbro','F',3.8),('SLE','Ful','F',3.8),('SLE','Kono-vai','F',5.1),('SLE','Kuranko','F',3.4),('SLE','Limba','F',8.3),('SLE','Mende','F',34.8),('SLE','Temne','F',31.8),('SLE','Yalunka','F',3.4),('SLV','Nahua','F',0.0),('SLV','Spanish','T',100.0),('SMR','Italian','T',100.0),('SOM','Arabic','T',0.0),('SOM','Somali','T',98.3),('SPM','French','T',0.0),('STP','Crioulo','F',86.3),('STP','French','F',0.7),('SUR','Hindi','F',0.0),('SUR','Sranantonga','F',81.0),('SVK','Czech and Moravian','F',1.1),('SVK','Hungarian','F',10.5),('SVK','Romani','F',1.7),('SVK','Slovak','T',85.6),('SVK','Ukrainian and Russian','F',0.6),('SVN','Hungarian','F',0.5),('SVN','Serbo-Croatian','F',7.9),('SVN','Slovene','T',87.9),('SWE','Arabic','F',0.8),('SWE','Finnish','F',2.4),('SWE','Norwegian','F',0.5),('SWE','Southern Slavic Languages','F',1.3),('SWE','Spanish','F',0.6),('SWE','Swedish','T',89.5),('SWZ','Swazi','T',89.9),('SWZ','Zulu','F',2.0),('SYC','English','T',3.8),('SYC','French','T',1.3),('SYC','Seselwa','F',91.3),('SYR','Arabic','T',90.0),('SYR','Kurdish','F',9.0),('TCA','English','T',0.0),('TCD','Arabic','T',12.3),('TCD','Gorane','F',6.2),('TCD','Hadjarai','F',6.7),('TCD','Kanem-bornu','F',9.0),('TCD','Mayo-kebbi','F',11.5),('TCD','Ouaddai','F',8.7),('TCD','Sara','F',27.7),('TCD','Tandjile','F',6.5),('TGO','Ane','F',5.7),('TGO','Ewe','T',23.2),('TGO','Gurma','F',3.4),('TGO','Kabyé','T',13.8),('TGO','Kotokoli','F',5.7),('TGO','Moba','F',5.4),('TGO','Naudemba','F',4.1),('TGO','Watyi','F',10.3),('THA','Chinese','F',12.1),('THA','Khmer','F',1.3),('THA','Kuy','F',1.1),('THA','Lao','F',26.9),('THA','Malay','F',3.6),('THA','Thai','T',52.6),('TJK','Russian','F',9.7),('TJK','Tadzhik','T',62.2),('TJK','Uzbek','F',23.2),('TKL','English','T',0.0),('TKL','Tokelau','F',0.0),('TKM','Kazakh','F',2.0),('TKM','Russian','F',6.7),('TKM','Turkmenian','T',76.7),('TKM','Uzbek','F',9.2),('TMP','Portuguese','T',0.0),('TMP','Sunda','F',0.0),('TON','English','T',0.0),('TON','Tongan','T',98.3),('TTO','Creole English','F',2.9),('TTO','English','F',93.5),('TTO','Hindi','F',3.4),('TUN','Arabic','T',69.9),('TUN','Arabic-French','F',26.3),('TUN','Arabic-French-English','F',3.2),('TUR','Arabic','F',1.4),('TUR','Kurdish','F',10.6),('TUR','Turkish','T',87.6),('TUV','English','T',0.0),('TUV','Kiribati','F',7.5),('TUV','Tuvalu','T',92.5),('TWN','Ami','F',0.6),('TWN','Atayal','F',0.4),('TWN','Hakka','F',11.0),('TWN','Mandarin Chinese','T',20.1),('TWN','Min','F',66.7),('TWN','Paiwan','F',0.3),('TZA','Chaga and Pare','F',4.9),('TZA','Gogo','F',3.9),('TZA','Ha','F',3.5),('TZA','Haya','F',5.9),('TZA','Hehet','F',6.9),('TZA','Luguru','F',4.9),('TZA','Makonde','F',5.9),('TZA','Nyakusa','F',5.4),('TZA','Nyamwesi','F',21.1),('TZA','Shambala','F',4.3),('TZA','Swahili','T',8.8),('UGA','Acholi','F',4.4),('UGA','Ganda','F',18.1),('UGA','Gisu','F',4.5),('UGA','Kiga','F',8.3),('UGA','Lango','F',5.9),('UGA','Lugbara','F',4.7),('UGA','Nkole','F',10.7),('UGA','Rwanda','F',3.2),('UGA','Soga','F',8.2),('UGA','Teso','F',6.0),('UKR','Belorussian','F',0.3),('UKR','Bulgariana','F',0.3),('UKR','Hungarian','F',0.3),('UKR','Polish','F',0.1),('UKR','Romanian','F',0.7),('UKR','Russian','F',32.9),('UKR','Ukrainian','T',64.7),('UMI','English','T',0.0),('URY','Spanish','T',95.7),('USA','Chinese','F',0.6),('USA','English','T',86.2),('USA','French','F',0.7),('USA','German','F',0.7),('USA','Italian','F',0.6),('USA','Japanese','F',0.2),('USA','Korean','F',0.3),('USA','Polish','F',0.3),('USA','Portuguese','F',0.2),('USA','Spanish','F',7.5),('USA','Tagalog','F',0.4),('USA','Vietnamese','F',0.2),('UZB','Karakalpak','F',2.0),('UZB','Kazakh','F',3.8),('UZB','Russian','F',10.9),('UZB','Tadzhik','F',4.4),('UZB','Tatar','F',1.8),('UZB','Uzbek','T',72.6),('VAT','Italian','T',0.0),('VCT','Creole English','F',99.1),('VCT','English','T',0.0),('VEN','Goajiro','F',0.4),('VEN','Spanish','T',96.9),('VEN','Warrau','F',0.1),('VGB','English','T',0.0),('VIR','English','T',81.7),('VIR','French','F',2.5),('VIR','Spanish','F',13.3),('VNM','Chinese','F',1.4),('VNM','Khmer','F',1.4),('VNM','Man','F',0.7),('VNM','Miao','F',0.9),('VNM','Muong','F',1.5),('VNM','Nung','F',1.1),('VNM','Thai','F',1.6),('VNM','Tho','F',1.8),('VNM','Vietnamese','T',86.8),('VUT','Bislama','T',56.6),('VUT','English','T',28.3),('VUT','French','T',14.2),('WLF','Futuna','F',0.0),('WLF','Wallis','F',0.0),('WSM','English','T',0.6),('WSM','Samoan','T',47.5),('WSM','Samoan-English','F',52.0),('YEM','Arabic','T',99.6),('YEM','Soqutri','F',0.0),('YUG','Albaniana','F',16.5),('YUG','Hungarian','F',3.4),('YUG','Macedonian','F',0.5),('YUG','Romani','F',1.4),('YUG','Serbo-Croatian','T',75.2),('YUG','Slovak','F',0.7),('ZAF','Afrikaans','T',14.3),('ZAF','English','T',8.5),('ZAF','Ndebele','F',1.5),('ZAF','Northsotho','F',9.1),('ZAF','Southsotho','F',7.6),('ZAF','Swazi','F',2.5),('ZAF','Tsonga','F',4.3),('ZAF','Tswana','F',8.1),('ZAF','Venda','F',2.2),('ZAF','Xhosa','T',17.7),('ZAF','Zulu','T',22.7),('ZMB','Bemba','F',29.7),('ZMB','Chewa','F',5.7),('ZMB','Lozi','F',6.4),('ZMB','Nsenga','F',4.3),('ZMB','Nyanja','F',7.8),('ZMB','Tongan','F',11.0),('ZWE','English','T',2.2),('ZWE','Ndebele','F',16.2),('ZWE','Nyanja','F',2.2),('ZWE','Shona','F',72.1);
/*!40000 ALTER TABLE `countrylanguage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:13
CREATE DATABASE  IF NOT EXISTS `student_transcripts_tracking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `student_transcripts_tracking`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: student_transcripts_tracking
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `line_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_postcode` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_province_county` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_address_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,'2294 Grant Square Apt. 235','Apt. 370',NULL,'Port Chelsea','148','Virginia','Iceland',NULL),(2,'3999 Aufderhar Ways Suite 593','Apt. 388',NULL,'Lake Laishafurt','943','Kentucky','Burundi',NULL),(3,'67942 Carlotta Ferry Apt. 686','Apt. 583',NULL,'Goodwinhaven','541','Kansas','Saudi Arabia',NULL),(4,'0144 Lamar Plaza Apt. 346','Suite 703',NULL,'Port Evanston','847','Washington','Angola',NULL),(5,'858 Peggie Bypass Suite 212','Apt. 335',NULL,'Michelleburgh','446','Hawaii','Haiti',NULL),(6,'16998 Mraz Lodge','Apt. 689',NULL,'North Omer','902','Kentucky','Gibraltar',NULL),(7,'193 Marlin Brook','Apt. 406',NULL,'Herzoghaven','068','Arkansas','Cook Islands',NULL),(8,'202 Hessel Views Apt. 468','Apt. 305',NULL,'Mariliehaven','638','Idaho','Croatia',NULL),(9,'0643 Muller Vista','Suite 383',NULL,'Port Elvisfurt','777','NorthCarolina','Gabon',NULL),(10,'7081 Eda Center','Suite 830',NULL,'Rutherfordtown','839','Delaware','Kyrgyz Republic',NULL),(11,'9283 Schulist Falls Apt. 037','Suite 239',NULL,'South Palma','400','WestVirginia','Bermuda',NULL),(12,'979 Haag Shores Suite 656','Apt. 468',NULL,'Prohaskafort','590','SouthDakota','Lesotho',NULL),(13,'492 Wilkinson Route','Suite 865',NULL,'New Clemensburgh','386','Florida','Samoa',NULL),(14,'186 Evan Motorway Apt. 409','Suite 079',NULL,'Lake Careyberg','895','Kentucky','New Caledonia',NULL),(15,'74046 Metz Walk Apt. 113','Suite 674',NULL,'Port Oceane','669','Wyoming','Norfolk Island',NULL);
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `course_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES (1,'ds','p',NULL),(2,'math','q',NULL),(3,'os','v',NULL),(4,'en','k',NULL),(5,'fr','c',NULL),(6,'la','n',NULL),(7,'cal','l',NULL),(8,'nlp','q',NULL),(9,'dl','l',NULL),(10,'ml','b',NULL),(11,'ai','w',NULL),(12,'db','q',NULL),(13,'rs','v',NULL),(14,'pl','p',NULL),(15,'oop','d',NULL);
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Degree_Programs`
--

DROP TABLE IF EXISTS `Degree_Programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Degree_Programs` (
  `degree_program_id` int NOT NULL AUTO_INCREMENT,
  `department_id` int NOT NULL,
  `degree_summary_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `degree_summary_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`degree_program_id`),
  KEY `Degree_Programs_FK_0_0` (`department_id`),
  CONSTRAINT `Degree_Programs_FK_0_0` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Degree_Programs`
--

LOCK TABLES `Degree_Programs` WRITE;
/*!40000 ALTER TABLE `Degree_Programs` DISABLE KEYS */;
INSERT INTO `Degree_Programs` VALUES (1,13,'Master','architecto',NULL),(2,2,'Master','cumque',NULL),(3,13,'Master','placeat',NULL),(4,8,'Bachelor','unde',NULL),(5,11,'Master','officiis',NULL),(6,8,'Bachelor','aperiam',NULL),(7,14,'Bachelor','assumenda',NULL),(8,15,'Master','earum',NULL),(9,3,'Bachelor','voluptas',NULL),(10,8,'Bachelor','aut',NULL),(11,14,'Bachelor','aut',NULL),(12,4,'Master','qui',NULL),(13,7,'Bachelor','quam',NULL),(14,2,'PHD','et',NULL),(15,12,'PHD','esse',NULL);
/*!40000 ALTER TABLE `Degree_Programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'computer science','error',NULL),(2,'history','nostrum',NULL),(3,'art','aliquam',NULL),(4,'linguistic','natus',NULL),(5,'management','nihil',NULL),(6,'engineer','autem',NULL),(7,'math','doloribus',NULL),(8,'statistics','nihil',NULL),(9,'law','dolorem',NULL),(10,'economics','non',NULL),(11,'biology','consequatur',NULL),(12,'medical','ea',NULL),(13,'dance','consequatur',NULL),(14,'drama','in',NULL),(15,'geography','nisi',NULL);
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sections`
--

DROP TABLE IF EXISTS `Sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sections` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `section_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `Sections_FK_0_0` (`course_id`),
  CONSTRAINT `Sections_FK_0_0` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sections`
--

LOCK TABLES `Sections` WRITE;
/*!40000 ALTER TABLE `Sections` DISABLE KEYS */;
INSERT INTO `Sections` VALUES (1,9,'a','non',NULL),(2,2,'b','voluptatem',NULL),(3,8,'c','qui',NULL),(4,1,'d','voluptas',NULL),(5,5,'e','ex',NULL),(6,7,'f','doloremque',NULL),(7,12,'g','provident',NULL),(8,14,'h','et',NULL),(9,8,'j','quis',NULL),(10,14,'k','nesciunt',NULL),(11,1,'l','ad',NULL),(12,4,'o','et',NULL),(13,5,'p','facilis',NULL),(14,6,'u','reprehenderit',NULL),(15,10,'y','qui',NULL);
/*!40000 ALTER TABLE `Sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Semesters`
--

DROP TABLE IF EXISTS `Semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Semesters` (
  `semester_id` int NOT NULL AUTO_INCREMENT,
  `semester_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `semester_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Semesters`
--

LOCK TABLES `Semesters` WRITE;
/*!40000 ALTER TABLE `Semesters` DISABLE KEYS */;
INSERT INTO `Semesters` VALUES (1,'spring 2010','x',NULL),(2,'summer 2010','g',NULL),(3,'fall 2010','w',NULL),(4,'winter 2010','c',NULL),(5,'spring 2018','c',NULL),(6,'spring 2012','l',NULL),(7,'spring 2013','y',NULL),(8,'spring 2014','x',NULL),(9,'spring 2015','x',NULL),(10,'spring 2016','f',NULL),(11,'spring 2017','g',NULL),(12,'spring 2018','m',NULL),(13,'fall 2018','q',NULL),(14,'winter 2018','t',NULL),(15,'spring 2019','o',NULL);
/*!40000 ALTER TABLE `Semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_Enrolment`
--

DROP TABLE IF EXISTS `Student_Enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Enrolment` (
  `student_enrolment_id` int NOT NULL AUTO_INCREMENT,
  `degree_program_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `student_id` int NOT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`student_enrolment_id`),
  KEY `Student_Enrolment_FK_0_0` (`student_id`),
  KEY `Student_Enrolment_FK_1_0` (`semester_id`),
  KEY `Student_Enrolment_FK_2_0` (`degree_program_id`),
  CONSTRAINT `Student_Enrolment_FK_0_0` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `Student_Enrolment_FK_1_0` FOREIGN KEY (`semester_id`) REFERENCES `Semesters` (`semester_id`),
  CONSTRAINT `Student_Enrolment_FK_2_0` FOREIGN KEY (`degree_program_id`) REFERENCES `Degree_Programs` (`degree_program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Enrolment`
--

LOCK TABLES `Student_Enrolment` WRITE;
/*!40000 ALTER TABLE `Student_Enrolment` DISABLE KEYS */;
INSERT INTO `Student_Enrolment` VALUES (1,12,13,14,NULL),(2,4,2,9,NULL),(3,10,2,7,NULL),(4,4,15,9,NULL),(5,5,1,14,NULL),(6,3,13,1,NULL),(7,9,9,4,NULL),(8,8,5,12,NULL),(9,12,6,7,NULL),(10,11,2,7,NULL),(11,10,13,4,NULL),(12,9,2,5,NULL),(13,2,12,6,NULL),(14,9,15,6,NULL),(15,2,4,6,NULL);
/*!40000 ALTER TABLE `Student_Enrolment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_Enrolment_Courses`
--

DROP TABLE IF EXISTS `Student_Enrolment_Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Enrolment_Courses` (
  `student_course_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `student_enrolment_id` int NOT NULL,
  PRIMARY KEY (`student_course_id`),
  KEY `Student_Enrolment_Courses_FK_0_0` (`student_enrolment_id`),
  KEY `Student_Enrolment_Courses_FK_1_0` (`course_id`),
  CONSTRAINT `Student_Enrolment_Courses_FK_0_0` FOREIGN KEY (`student_enrolment_id`) REFERENCES `Student_Enrolment` (`student_enrolment_id`),
  CONSTRAINT `Student_Enrolment_Courses_FK_1_0` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83814226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Enrolment_Courses`
--

LOCK TABLES `Student_Enrolment_Courses` WRITE;
/*!40000 ALTER TABLE `Student_Enrolment_Courses` DISABLE KEYS */;
INSERT INTO `Student_Enrolment_Courses` VALUES (1,6,2),(2,14,5),(7,11,5),(8,2,5),(76,10,13),(96,2,4),(9860,14,10),(438800,3,4),(604750,4,6),(681404,10,4),(28982908,8,9),(45105806,13,14),(70882679,13,9),(83814225,12,14);
/*!40000 ALTER TABLE `Student_Enrolment_Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `current_address_id` int NOT NULL,
  `permanent_address_id` int NOT NULL,
  `first_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cell_mobile_number` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ssn` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_first_registered` datetime DEFAULT NULL,
  `date_left` datetime DEFAULT NULL,
  `other_student_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `Students_FK_0_0` (`permanent_address_id`),
  KEY `Students_FK_1_0` (`current_address_id`),
  CONSTRAINT `Students_FK_0_0` FOREIGN KEY (`permanent_address_id`) REFERENCES `Addresses` (`address_id`),
  CONSTRAINT `Students_FK_1_0` FOREIGN KEY (`current_address_id`) REFERENCES `Addresses` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,10,15,'Timmothy','Anna','Ward','(096)889-8954x524','erwin.zboncak@example.com','965','1971-02-05 07:28:23','1971-05-17 19:28:49','quia'),(2,12,5,'Hobart','Lorenz','Balistreri','1-009-710-5151','swift.kolby@example.com','304246','1976-10-26 02:33:06','2013-10-05 17:41:28','autem'),(3,9,5,'Warren','Violet','Gleichner','07661787471','johns.unique@example.net','3','2007-08-29 23:25:41','2007-03-31 09:53:19','facilis'),(4,7,11,'Jarvis','Aaliyah','Carroll','09700166582','jillian26@example.net','141072406','2014-03-28 05:48:23','2007-08-02 04:12:58','atque'),(5,9,9,'Milton','Vaughn','Christiansen','171-642-5684','lhartmann@example.org','','1973-05-19 19:12:46','2007-11-28 12:50:21','laborum'),(6,6,3,'Stanford','Mona','Rogahn','436.613.7683','skassulke@example.net','248','1997-03-20 16:47:25','2016-04-09 12:27:04','qui'),(7,15,3,'Frida','Aisha','Huel','1-879-796-8987x164','baumbach.lucious@example.org','668','2018-03-13 09:56:22','1997-11-16 08:54:33','dolorum'),(8,1,5,'Delaney','Judd','Ankunding','03174364122','dell43@example.net','402','1982-02-14 08:46:35','2004-12-08 05:29:11','voluptatem'),(9,2,15,'Reva','Golda','Osinski','(507)365-8405','qo\'kon@example.com','39','2017-01-04 08:10:25','1990-09-01 05:03:27','nesciunt'),(10,15,14,'Helga','Cleve','Mohr','677.401.9382','nya.lesch@example.net','43','2009-09-25 00:14:25','2017-07-09 21:38:43','rerum'),(11,14,4,'Gregg','Mossie','Schuppe','(462)246-7921','nbruen@example.org','494','1989-05-24 23:31:29','1975-10-09 00:49:27','omnis'),(12,14,9,'Orrin','Neal','Kemmer','(982)153-1469x1733','beth42@example.org','6274274','2005-12-15 08:42:10','2006-08-04 17:26:49','non'),(13,9,8,'Deon','Brooklyn','Weimann','(213)445-0399x85208','jhuel@example.com','68095','1986-02-24 21:12:23','2014-05-30 23:32:02','assumenda'),(14,12,11,'Jordy','Osborne','Rempel','(605)919-3594x3661','gracie29@example.com','34458427','2004-12-24 12:36:46','1999-08-24 00:07:10','et'),(15,2,9,'Jett','Alberta','Jaskolski','877.549.9067x8723','mya88@example.org','156','1982-06-19 13:15:18','1982-06-11 00:25:39','omnis');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transcript_Contents`
--

DROP TABLE IF EXISTS `Transcript_Contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transcript_Contents` (
  `student_course_id` int NOT NULL,
  `transcript_id` int NOT NULL,
  KEY `Transcript_Contents_FK_0_0` (`transcript_id`),
  KEY `Transcript_Contents_FK_1_0` (`student_course_id`),
  CONSTRAINT `Transcript_Contents_FK_0_0` FOREIGN KEY (`transcript_id`) REFERENCES `Transcripts` (`transcript_id`),
  CONSTRAINT `Transcript_Contents_FK_1_0` FOREIGN KEY (`student_course_id`) REFERENCES `Student_Enrolment_Courses` (`student_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transcript_Contents`
--

LOCK TABLES `Transcript_Contents` WRITE;
/*!40000 ALTER TABLE `Transcript_Contents` DISABLE KEYS */;
INSERT INTO `Transcript_Contents` VALUES (0,2),(96,8),(76,9),(7,4),(0,15),(76,15),(0,6),(96,13),(76,12),(28982908,11),(2,8),(0,5),(8,5),(45105806,8),(70882679,6);
/*!40000 ALTER TABLE `Transcript_Contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transcripts`
--

DROP TABLE IF EXISTS `Transcripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transcripts` (
  `transcript_id` int NOT NULL AUTO_INCREMENT,
  `transcript_date` datetime DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`transcript_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transcripts`
--

LOCK TABLES `Transcripts` WRITE;
/*!40000 ALTER TABLE `Transcripts` DISABLE KEYS */;
INSERT INTO `Transcripts` VALUES (1,'1988-04-30 01:19:47',NULL),(2,'1975-10-28 15:16:51',NULL),(3,'1984-12-19 00:37:21',NULL),(4,'1999-01-06 20:06:46',NULL),(5,'2013-06-30 13:01:40',NULL),(6,'2010-12-13 10:55:15',NULL),(7,'1990-03-05 11:59:41',NULL),(8,'1975-05-06 12:04:47',NULL),(9,'1984-01-18 23:07:07',NULL),(10,'1975-05-20 18:31:21',NULL),(11,'1986-07-12 07:27:29',NULL),(12,'1985-08-21 09:32:39',NULL),(13,'1985-04-29 01:20:20',NULL),(14,'2002-09-24 06:11:49',NULL),(15,'1998-11-22 12:18:29',NULL);
/*!40000 ALTER TABLE `Transcripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `dog_kennels` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dog_kennels`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: dog_kennels
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Breeds`
--

DROP TABLE IF EXISTS `Breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Breeds` (
  `breed_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `breed_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`breed_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Breeds`
--

LOCK TABLES `Breeds` WRITE;
/*!40000 ALTER TABLE `Breeds` DISABLE KEYS */;
INSERT INTO `Breeds` VALUES ('BUL','Bulldog'),('ESK','Eskimo'),('HUS','Husky');
/*!40000 ALTER TABLE `Breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Charges`
--

DROP TABLE IF EXISTS `Charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Charges` (
  `charge_id` int NOT NULL AUTO_INCREMENT,
  `charge_type` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `charge_amount` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`charge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Charges`
--

LOCK TABLES `Charges` WRITE;
/*!40000 ALTER TABLE `Charges` DISABLE KEYS */;
INSERT INTO `Charges` VALUES (1,'Daily Acco',98.0000),(2,'Drugs',322.0000),(3,'Health Che',640.0000);
/*!40000 ALTER TABLE `Charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogs`
--

DROP TABLE IF EXISTS `dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogs` (
  `dog_id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL,
  `abandoned_yn` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `breed_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `size_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_arrived` datetime DEFAULT NULL,
  `date_adopted` datetime DEFAULT NULL,
  `date_departed` datetime DEFAULT NULL,
  PRIMARY KEY (`dog_id`),
  KEY `Dogs_FK_1_0` (`owner_id`),
  KEY `Dogs_FK_2_0` (`size_code`),
  KEY `Dogs_FK_3_0` (`breed_code`),
  CONSTRAINT `Dogs_FK_0_0` FOREIGN KEY (`owner_id`) REFERENCES `Owners` (`owner_id`),
  CONSTRAINT `Dogs_FK_1_0` FOREIGN KEY (`owner_id`) REFERENCES `Owners` (`owner_id`),
  CONSTRAINT `Dogs_FK_2_0` FOREIGN KEY (`size_code`) REFERENCES `Sizes` (`size_code`),
  CONSTRAINT `Dogs_FK_3_0` FOREIGN KEY (`breed_code`) REFERENCES `Breeds` (`breed_code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogs`
--

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` VALUES (1,3,'1','ESK','LGE','Kacey','6','2012-01-27 05:11:53','1','7.57','2017-09-08 20:10:13','2018-03-06 16:32:11','2018-03-25 06:58:44'),(2,11,'0','BUL','LGE','Hipolito','9','2013-02-13 05:15:21','0','1.72','2017-12-22 05:02:02','2018-03-25 08:12:51','2018-03-25 02:11:32'),(3,1,'0','BUL','MED','Mavis','8','2008-05-19 15:54:49','1','8.04','2017-06-25 10:14:05','2018-03-07 21:45:43','2018-03-25 10:25:46'),(4,14,'0','ESK','LGE','Houston','5','2008-10-09 22:38:53','0','2.18','2017-04-20 00:58:55','2018-03-18 15:12:50','2018-03-24 19:12:22'),(5,7,'0','BUL','MED','Jeffrey','4','2018-03-17 04:05:12','0','1.39','2017-10-25 00:55:34','2018-02-27 11:54:35','2018-03-25 04:50:22'),(6,5,'0','HUS','MED','Merritt','9','2015-02-26 21:31:22','1','9.8','2017-04-15 09:25:31','2018-03-08 15:03:00','2018-03-25 13:07:04'),(7,3,'0','BUL','MED','Narciso','2','2017-09-19 05:39:09','1','9.48','2017-05-06 08:03:52','2018-02-27 00:27:57','2018-03-25 06:29:10'),(8,14,'0','ESK','SML','George','2','2013-02-20 14:50:56','0','8.95','2017-10-16 20:06:21','2018-03-23 16:02:04','2018-03-25 02:47:40'),(9,2,'0','BUL','MED','Bessie','4','2012-05-31 08:01:36','1','3.52','2018-01-17 11:44:16','2018-02-25 23:45:30','2018-03-25 06:46:07'),(10,6,'0','HUS','MED','Troy','9','2012-07-11 17:15:10','0','8.96','2017-12-29 06:08:26','2018-03-18 07:47:40','2018-03-25 04:42:14'),(11,13,'0','BUL','LGE','Betty','3','2012-10-14 14:44:37','0','8.16','2017-07-25 15:19:07','2018-03-14 08:05:18','2018-03-25 15:05:16'),(12,12,'0','HUS','MED','Holden','8','2009-04-12 06:02:48','0','6.92','2017-10-24 04:45:13','2018-03-05 06:05:23','2018-03-25 14:15:41'),(13,8,'0','HUS','SML','Jesus','2','2012-05-03 21:42:25','0','5.16','2018-01-02 03:15:29','2018-03-21 10:41:18','2018-03-25 05:07:47'),(14,14,'1','ESK','MED','Lyric','4','2010-11-11 07:11:53','0','4.36','2017-06-18 19:45:38','2018-03-13 12:47:15','2018-03-24 23:48:59'),(15,10,'1','BUL','MED','Evangeline','1','2008-05-30 12:51:34','1','4.01','2017-12-29 23:24:13','2018-03-10 15:06:43','2018-03-24 19:36:59');
/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Owners`
--

DROP TABLE IF EXISTS `Owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Owners` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `home_phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cell_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Owners`
--

LOCK TABLES `Owners` WRITE;
/*!40000 ALTER TABLE `Owners` DISABLE KEYS */;
INSERT INTO `Owners` VALUES (1,'Nora','Haley','0647 Hintz Village Apt. 024','Lake Tia','Wisconsin','93165','lynn81@example.org','1-682-845-0116x63235','478.978.0729'),(2,'Melisa','DuBuque','1204 Mae Highway Apt. 107','Port Reannamouth','Virginia','45244','ykris@example.com','(799)563-0260x454','(722)768-5439x484'),(3,'Jaclyn','Stoltenberg','2635 Caitlyn Plains','Barrettburgh','Vermont','02647','hudson.favian@example.com','916.976.9480x13851','481-483-9083x37986'),(4,'Tre','Hamill','692 Jaskolski Forges','Brakusfurt','Florida','87304','marks.gail@example.org','1-332-849-1908','739-136-7202'),(5,'Johann','Fisher','68118 Daniel Row','Lake Valentin','NorthDakota','61019','zboncak.madonna@example.net','(544)034-1670','1-626-264-7659x1697'),(6,'Kade','Rippin','51934 Treutel Harbor','Lake Carleyborough','Arizona','25609','margaretta.runte@example.net','318-052-6573','+70(4)9217952551'),(7,'Emelie','Mertz','2417 Keara Stravenue Apt. 146','Lake Jennyferfort','NewYork','00589','angeline99@example.com','(058)997-7627','121.381.3316x6535'),(8,'Rolando','Prohaska','57382 Yost Ridges','South Afton','Arkansas','86010','kturner@example.net','01802479758','(783)271-6744x4507'),(9,'Adelle','Ondricka','9212 Rosenbaum Lights','East Hillardberg','Washington','92406','fschoen@example.net','066.264.7885','+00(2)4323592985'),(10,'Lorenz','Nicolas','59509 Mellie Mountain','New Margaretteborough','SouthDakota','78297','ymaggio@example.com','085.557.0379x84348','559.874.3011x989'),(11,'Gay','Feil','60352 Kayleigh Crossing Suite 700','Port Zackery','Indiana','35747','pearlie18@example.com','130-796-4589x05454','762.589.6117x1328'),(12,'Orlando','Price','89011 Kertzmann Spring Suite 642','East Maribelbury','Mississippi','11990','christy49@example.org','363.948.1090','1-739-421-2225x38148'),(13,'Cindy','Schmitt','6950 Katherine Forges Apt. 630','Beerton','NorthDakota','36871','wpfeffer@example.net','(094)747-5094x8134','633.455.3045x85484'),(14,'Rachelle','Funk','15828 Spencer Extensions','West Leonard','Maryland','22731','edythe62@example.org','1-346-655-5842x768','(257)399-3116'),(15,'Heather','Hauck','1858 Jan Park','South Daisyfurt','Pennsylvania','22693','ybergstrom@example.com','893-862-5295x61709','341.667.8085');
/*!40000 ALTER TABLE `Owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionals`
--

DROP TABLE IF EXISTS `professionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professionals` (
  `professional_id` int NOT NULL AUTO_INCREMENT,
  `role_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `home_phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cell_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`professional_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professionals`
--

LOCK TABLES `professionals` WRITE;
/*!40000 ALTER TABLE `professionals` DISABLE KEYS */;
INSERT INTO `professionals` VALUES (1,'Employee','Taryn','6915 Oberbrunner Point Suite 491\nGleasonville, LA ','West Heidi','Indiana','06646','Braun','deanna.schuster@example.com','+71(6)2898266914','(275)939-2435x80863'),(2,'Employee','Jayson','88665 Terence Lodge Apt. 904\nCorneliusfort, NC 194','North Odellfurt','Connecticut','43129','Ullrich','lucile.shanahan@example.org','+02(1)0259033559','889-940-2676'),(3,'Employee','Olaf','68589 Bradly Manor\nNew Audrey, IN 91497','Jaceton','Wisconsin','77129','Watsica','uboehm@example.org','325-155-0801x7005','(369)908-7311x065'),(4,'Veterenari','Vernice','72532 Hane Course\nLake Berylland, ND 95283','Domenickton','Mississippi','02281','Tillman','lourdes.lowe@example.net','312.216.3352','00230569697'),(5,'Veterenari','Danny','188 VonRueden Tunnel Suite 630\nNorth Macibury, NV ','New Laurytown','Hawaii','84515','Considine','mekhi.little@example.org','1-609-566-2752x25197','011.193.9081x3186'),(6,'Veterenari','Ruben','17286 Waters Green\nEast Bernadinefort, CA 89573','Baileymouth','NewMexico','52476','O\'Reilly','jacynthe.mclaughlin@example.net','+43(5)1132733868','139-321-7313'),(7,'Veterenari','Velva','44234 Marvin Shoals Suite 659\nNorth Frances, AL 23','McLaughlinfort','NorthCarolina','67980','Hayes','lambert62@example.org','022.529.0550x1319','499-434-0215x1628'),(8,'Employee','Karley','36895 Eli Ferry\nPort Marcelle, FL 45712','Kirastad','Indiana','33020','Hyatt','goyette.roosevelt@example.net','891.475.2256','328.842.3792'),(9,'Veterenari','Monte','07073 Brenna Ways Suite 089\nLowehaven, KY 93275-96','South Rockyport','SouthCarolina','80775','Kshlerin','schneider.kathryne@example.org','320-508-6023','962-983-8109x3509'),(10,'Employee','Domenica','7284 Torphy Flats Apt. 610\nDiannaburgh, SC 78560','New Maryjane','California','54312','Jacobs','jerrod.bahringer@example.org','(230)338-3342x585','461-801-2600'),(11,'Employee','Brady','09615 McKenzie Stravenue Apt. 128\nWest Elliottview','Raynorfort','Alabama','07412','Pouros','west.eula@example.net','(920)304-4499x59146','609-405-2990'),(12,'Veterenari','Winfield','92912 Langworth Valleys Apt. 743\nThompsonborough, ','Juddton','Utah','34041','Christiansen','marquardt.furman@example.org','246-951-0080x76716','1-181-670-9466'),(13,'Veterenari','Ericka','7783 Abraham Alley\nPort Madelynhaven, KY 59172-273','Borisside','Wyoming','17902','Murazik','delphine29@example.com','346.594.3739','880-659-7577x736'),(14,'Employee','Sigurd','390 Bryce Drive\nNorth Dock, LA 65357-7228','East Ila','Connecticut','41215','Frami','cole.margarita@example.org','971.048.3763x9404','1-185-137-1945x409'),(15,'Employee','Lesly','63949 Keeling Landing Apt. 502\nJohnsview, SD 06780','North Adelberttown','Montana','98844','Walter','jeichmann@example.com','1-138-287-3775','1-258-285-4707x8020');
/*!40000 ALTER TABLE `professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sizes`
--

DROP TABLE IF EXISTS `Sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sizes` (
  `size_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `size_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`size_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sizes`
--

LOCK TABLES `Sizes` WRITE;
/*!40000 ALTER TABLE `Sizes` DISABLE KEYS */;
INSERT INTO `Sizes` VALUES ('LGE','Large'),('MED','Medium'),('SML','Small');
/*!40000 ALTER TABLE `Sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment_types`
--

DROP TABLE IF EXISTS `treatment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_types` (
  `treatment_type_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `treatment_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`treatment_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment_types`
--

LOCK TABLES `treatment_types` WRITE;
/*!40000 ALTER TABLE `treatment_types` DISABLE KEYS */;
INSERT INTO `treatment_types` VALUES ('EXAM','Physical examination'),('VAC','Vaccination'),('WALK','Take for a Walk');
/*!40000 ALTER TABLE `treatment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treatments`
--

DROP TABLE IF EXISTS `Treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treatments` (
  `treatment_id` int NOT NULL AUTO_INCREMENT,
  `dog_id` int NOT NULL,
  `professional_id` int NOT NULL,
  `treatment_type_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_treatment` datetime DEFAULT NULL,
  `cost_of_treatment` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`treatment_id`),
  KEY `Treatments_FK_0_0` (`dog_id`),
  KEY `Treatments_FK_1_0` (`professional_id`),
  KEY `Treatments_FK_2_0` (`treatment_type_code`),
  CONSTRAINT `Treatments_FK_0_0` FOREIGN KEY (`dog_id`) REFERENCES `dogs` (`dog_id`),
  CONSTRAINT `Treatments_FK_1_0` FOREIGN KEY (`professional_id`) REFERENCES `professionals` (`professional_id`),
  CONSTRAINT `Treatments_FK_2_0` FOREIGN KEY (`treatment_type_code`) REFERENCES `treatment_types` (`treatment_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treatments`
--

LOCK TABLES `Treatments` WRITE;
/*!40000 ALTER TABLE `Treatments` DISABLE KEYS */;
INSERT INTO `Treatments` VALUES (1,14,9,'WALK','2018-03-19 04:39:54',567.0000),(2,4,10,'VAC','2018-03-15 20:25:34',147.0000),(3,14,4,'EXAM','2018-03-08 05:26:23',429.0000),(4,2,8,'VAC','2018-03-01 04:14:46',266.0000),(5,12,14,'VAC','2018-03-23 13:52:10',668.0000),(6,10,4,'EXAM','2018-03-11 04:23:15',313.0000),(7,15,14,'EXAM','2018-03-10 11:45:58',852.0000),(8,2,6,'EXAM','2018-03-24 22:25:58',407.0000),(9,14,10,'WALK','2018-03-14 19:10:40',139.0000),(10,10,7,'WALK','2018-02-28 17:09:43',681.0000),(11,15,5,'VAC','2018-03-13 12:22:58',514.0000),(12,13,9,'EXAM','2018-03-16 10:27:36',428.0000),(13,7,8,'VAC','2018-02-26 09:08:53',945.0000),(14,10,9,'WALK','2018-03-04 20:33:43',349.0000),(15,1,6,'WALK','2018-03-15 19:10:02',656.0000);
/*!40000 ALTER TABLE `Treatments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `employee_hire_evaluation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee_hire_evaluation`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: employee_hire_evaluation
-- ------------------------------------------------------
-- Server version	8.0.32

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
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Age` int DEFAULT NULL,
  `City` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'George Chuter',23,'Bristol'),(2,'Lee Mears',29,'Bath'),(3,'Mark Regan',43,'Bristol'),(4,'Jason Hobson',30,'Bristol'),(5,'Tim Payne',29,'Wasps'),(6,'Andrew Sheridan',28,'Sale'),(7,'Matt Stevens',29,'Bath'),(8,'Phil Vickery',40,'Wasps'),(9,'Steve Borthwick',32,'Bath'),(10,'Louis Deacon',36,'Leicester');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `Employee_ID` int NOT NULL,
  `Year_awarded` text COLLATE utf8mb4_general_ci NOT NULL,
  `Bonus` double DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`,`Year_awarded`(255)),
  CONSTRAINT `evaluation_FK_0_0` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,'2011',3000),(1,'2016',2900),(2,'2015',3200),(4,'2017',3200),(7,'2018',3200),(10,'2016',4000);
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hiring`
--

DROP TABLE IF EXISTS `hiring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hiring` (
  `Shop_ID` int DEFAULT NULL,
  `Employee_ID` int NOT NULL AUTO_INCREMENT,
  `Start_from` text COLLATE utf8mb4_general_ci,
  `Is_full_time` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `hiring_FK_1_0` (`Shop_ID`),
  CONSTRAINT `hiring_FK_0_0` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`),
  CONSTRAINT `hiring_FK_1_0` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiring`
--

LOCK TABLES `hiring` WRITE;
/*!40000 ALTER TABLE `hiring` DISABLE KEYS */;
INSERT INTO `hiring` VALUES (1,1,'2009','T'),(1,2,'2003','T'),(8,3,'2011','F'),(4,4,'2012','T'),(5,5,'2013','T'),(2,6,'2010','F'),(6,7,'2008','T');
/*!40000 ALTER TABLE `hiring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `Shop_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Location` text COLLATE utf8mb4_general_ci,
  `District` text COLLATE utf8mb4_general_ci,
  `Number_products` int DEFAULT NULL,
  `Manager_name` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Shop_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'FC Haka','Valkeakoski','Tehtaan kenttä',3516,'Olli Huttunen'),(2,'HJK','Helsinki','Finnair Stadium',10770,'Antti Muurinen'),(3,'FC Honka','Espoo','Tapiolan Urheilupuisto',6000,'Mika Lehkosuo'),(4,'FC Inter','Turku','Veritas Stadion',10000,'Job Dragtsma'),(5,'FF Jaro','Jakobstad','Jakobstads Centralplan',5000,'Mika Laurikainen'),(6,'FC KooTeePee','Kotka','Arto Tolsa Areena',4780,'Tommi Kautonen'),(7,'KuPS','Kuopio','Magnum Areena',3500,'Kai Nyyssönen'),(8,'FC Lahti','Lahti','Lahden Stadion',15000,'Ilkka Mäkelä'),(9,'IFK Mariehamn','Mariehamn','Wiklöf Holding Arena',1600,'Pekka Lyyski');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `car_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `car_1`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: car_1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `CAR_MAKERS`
--

DROP TABLE IF EXISTS `CAR_MAKERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAR_MAKERS` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Maker` text COLLATE utf8mb4_general_ci,
  `FullName` text COLLATE utf8mb4_general_ci,
  `Country` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `car_makers_FK_0_0` (`Country`),
  CONSTRAINT `car_makers_FK_0_0` FOREIGN KEY (`Country`) REFERENCES `COUNTRIES` (`CountryId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR_MAKERS`
--

LOCK TABLES `CAR_MAKERS` WRITE;
/*!40000 ALTER TABLE `CAR_MAKERS` DISABLE KEYS */;
INSERT INTO `CAR_MAKERS` VALUES (1,'amc','American Motor Company',1),(2,'volkswagen','Volkswagen',2),(3,'bmw','BMW',2),(4,'gm','General Motors',1),(5,'ford','Ford Motor Company',1),(6,'chrysler','Chrysler',1),(7,'citroen','Citroen',3),(8,'nissan','Nissan Motors',4),(9,'fiat','Fiat',5),(10,'hi','hi',NULL),(11,'honda','Honda',4),(12,'mazda','Mazda',4),(13,'daimler benz','Daimler Benz',2),(14,'opel','Opel',2),(15,'peugeaut','Peugeaut',3),(16,'renault','Renault',3),(17,'saab','Saab',6),(18,'subaru','Subaru',4),(19,'toyota','Toyota',4),(20,'triumph','Triumph',7),(21,'volvo','Volvo',6),(22,'kia','Kia Motors',8),(23,'hyundai','Hyundai',8);
/*!40000 ALTER TABLE `CAR_MAKERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAR_NAMES`
--

DROP TABLE IF EXISTS `CAR_NAMES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAR_NAMES` (
  `MakeId` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Make` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`MakeId`),
  KEY `car_names_FK_0_0` (`Model`),
  CONSTRAINT `car_names_FK_0_0` FOREIGN KEY (`Model`) REFERENCES `model_list` (`Model`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR_NAMES`
--

LOCK TABLES `CAR_NAMES` WRITE;
/*!40000 ALTER TABLE `CAR_NAMES` DISABLE KEYS */;
INSERT INTO `CAR_NAMES` VALUES (1,'chevrolet','chevrolet chevelle malibu'),(2,'buick','buick skylark 320'),(3,'plymouth','plymouth satellite'),(4,'amc','amc rebel sst'),(5,'ford','ford torino'),(6,'ford','ford galaxie 500'),(7,'chevrolet','chevrolet impala'),(8,'plymouth','plymouth fury iii'),(9,'pontiac','pontiac catalina'),(10,'amc','amc ambassador dpl'),(11,'citroen','citroen ds-21 pallas'),(12,'chevrolet','chevrolet chevelle concours (sw)'),(13,'ford','ford torino (sw)'),(14,'plymouth','plymouth satellite (sw)'),(15,'amc','amc rebel sst (sw)'),(16,'dodge','dodge challenger se'),(17,'plymouth','plymouth cuda 340'),(18,'ford','ford mustang boss 302'),(19,'chevrolet','chevrolet monte carlo'),(20,'buick','buick estate wagon (sw)'),(21,'toyota','toyota corona mark ii'),(22,'plymouth','plymouth duster'),(23,'amc','amc hornet'),(24,'ford','ford maverick'),(25,'datsun','datsun pl510'),(26,'volkswagen','volkswagen 1131 deluxe sedan'),(27,'peugeot','peugeot 504'),(28,'audi','audi 100 ls'),(29,'saab','saab 99e'),(30,'bmw','bmw 2002'),(31,'amc','amc gremlin'),(32,'ford','ford f250'),(33,'chevrolet','chevy c20'),(34,'dodge','dodge d200'),(35,'hi','hi 1200d'),(36,'datsun','datsun pl510'),(37,'chevrolet','chevrolet vega 2300'),(38,'toyota','toyota corona'),(39,'ford','ford pinto'),(40,'volkswagen','volkswagen super beetle 117'),(41,'amc','amc gremlin'),(42,'plymouth','plymouth satellite custom'),(43,'chevrolet','chevrolet chevelle malibu'),(44,'ford','ford torino 500'),(45,'amc','amc matador'),(46,'chevrolet','chevrolet impala'),(47,'pontiac','pontiac catalina brougham'),(48,'ford','ford galaxie 500'),(49,'plymouth','plymouth fury iii'),(50,'dodge','dodge monaco (sw)'),(51,'ford','ford country squire (sw)'),(52,'pontiac','pontiac safari (sw)'),(53,'amc','amc hornet sportabout (sw)'),(54,'chevrolet','chevrolet vega (sw)'),(55,'pontiac','pontiac firebird'),(56,'ford','ford mustang'),(57,'mercury','mercury capri 2000'),(58,'opel','opel 1900'),(59,'peugeot','peugeot 304'),(60,'fiat','fiat 124b'),(61,'toyota','toyota corolla 1200'),(62,'datsun','datsun 1200'),(63,'volkswagen','volkswagen model 111'),(64,'plymouth','plymouth cricket'),(65,'toyota','toyota corona hardtop'),(66,'dodge','dodge colt hardtop'),(67,'volkswagen','volkswagen type 3'),(68,'chevrolet','chevrolet vega'),(69,'ford','ford pinto runabout'),(70,'chevrolet','chevrolet impala'),(71,'pontiac','pontiac catalina'),(72,'plymouth','plymouth fury iii'),(73,'ford','ford galaxie 500'),(74,'amc','amc ambassador sst'),(75,'mercury','mercury marquis'),(76,'buick','buick lesabre custom'),(77,'oldsmobile','oldsmobile delta 88 royale'),(78,'chrysler','chrysler newport royal'),(79,'mazda','mazda rx2 coupe'),(80,'amc','amc matador (sw)'),(81,'chevrolet','chevrolet chevelle concours (sw)'),(82,'ford','ford gran torino (sw)'),(83,'plymouth','plymouth satellite custom (sw)'),(84,'volvo','volvo 145e (sw)'),(85,'volkswagen','volkswagen 411 (sw)'),(86,'peugeot','peugeot 504 (sw)'),(87,'renault','renault 12 (sw)'),(88,'ford','ford pinto (sw)'),(89,'datsun','datsun 510 (sw)'),(90,'toyota','toyota corona mark ii (sw)'),(91,'dodge','dodge colt (sw)'),(92,'toyota','toyota corolla 1600 (sw)'),(93,'buick','buick century 350'),(94,'amc','amc matador'),(95,'chevrolet','chevrolet malibu'),(96,'ford','ford gran torino'),(97,'dodge','dodge coronet custom'),(98,'mercury','mercury marquis brougham'),(99,'chevrolet','chevrolet caprice classic'),(100,'ford','ford ltd'),(101,'plymouth','plymouth fury gran sedan'),(102,'chrysler','chrysler new yorker brougham'),(103,'buick','buick electra 225 custom'),(104,'amc','amc ambassador brougham'),(105,'plymouth','plymouth valiant'),(106,'chevrolet','chevrolet nova custom'),(107,'amc','amc hornet'),(108,'ford','ford maverick'),(109,'plymouth','plymouth duster'),(110,'volkswagen','volkswagen super beetle'),(111,'chevrolet','chevrolet impala'),(112,'ford','ford country'),(113,'plymouth','plymouth custom suburb'),(114,'oldsmobile','oldsmobile vista cruiser'),(115,'amc','amc gremlin'),(116,'toyota','toyota carina'),(117,'chevrolet','chevrolet vega'),(118,'datsun','datsun 610'),(119,'mazda','mazda rx3'),(120,'ford','ford pinto'),(121,'mercury','mercury capri v6'),(122,'fiat','fiat 124 sport coupe'),(123,'chevrolet','chevrolet monte carlo s'),(124,'pontiac','pontiac grand prix'),(125,'fiat','fiat 128'),(126,'opel','opel manta'),(127,'audi','audi 100ls'),(128,'volvo','volvo 144ea'),(129,'dodge','dodge dart custom'),(130,'saab','saab 99le'),(131,'toyota','toyota mark ii'),(132,'oldsmobile','oldsmobile omega'),(133,'plymouth','plymouth duster'),(134,'ford','ford maverick'),(135,'amc','amc hornet'),(136,'chevrolet','chevrolet nova'),(137,'datsun','datsun b210'),(138,'ford','ford pinto'),(139,'toyota','toyota corolla 1200'),(140,'chevrolet','chevrolet vega'),(141,'chevrolet','chevrolet chevelle malibu classic'),(142,'amc','amc matador'),(143,'plymouth','plymouth satellite sebring'),(144,'ford','ford gran torino'),(145,'buick','buick century luxus (sw)'),(146,'dodge','dodge coronet custom (sw)'),(147,'ford','ford gran torino (sw)'),(148,'amc','amc matador (sw)'),(149,'audi','audi fox'),(150,'volkswagen','volkswagen dasher'),(151,'opel','opel manta'),(152,'toyota','toyota corona'),(153,'datsun','datsun 710'),(154,'dodge','dodge colt'),(155,'fiat','fiat 128'),(156,'fiat','fiat 124 tc'),(157,'honda','honda civic'),(158,'subaru','subaru'),(159,'fiat','fiat x1.9'),(160,'plymouth','plymouth valiant custom'),(161,'chevrolet','chevrolet nova'),(162,'mercury','mercury monarch'),(163,'ford','ford maverick'),(164,'pontiac','pontiac catalina'),(165,'chevrolet','chevrolet bel air'),(166,'plymouth','plymouth grand fury'),(167,'ford','ford ltd'),(168,'buick','buick century'),(169,'chevrolet','chevrolet chevelle malibu'),(170,'amc','amc matador'),(171,'plymouth','plymouth fury'),(172,'buick','buick skyhawk'),(173,'chevrolet','chevrolet monza 2+2'),(174,'ford','ford mustang ii'),(175,'toyota','toyota corolla'),(176,'ford','ford pinto'),(177,'amc','amc gremlin'),(178,'pontiac','pontiac astro'),(179,'toyota','toyota corona'),(180,'volkswagen','volkswagen dasher'),(181,'datsun','datsun 710'),(182,'ford','ford pinto'),(183,'volkswagen','volkswagen rabbit'),(184,'amc','amc pacer'),(185,'audi','audi 100ls'),(186,'peugeot','peugeot 504'),(187,'volvo','volvo 244dl'),(188,'saab','saab 99le'),(189,'honda','honda civic cvcc'),(190,'fiat','fiat 131'),(191,'opel','opel 1900'),(192,'capri','capri ii'),(193,'dodge','dodge colt'),(194,'renault','renault 12tl'),(195,'chevrolet','chevrolet chevelle malibu classic'),(196,'dodge','dodge coronet brougham'),(197,'amc','amc matador'),(198,'ford','ford gran torino'),(199,'plymouth','plymouth valiant'),(200,'chevrolet','chevrolet nova'),(201,'ford','ford maverick'),(202,'amc','amc hornet'),(203,'chevrolet','chevrolet chevette'),(204,'chevrolet','chevrolet woody'),(205,'volkswagen','vw rabbit'),(206,'honda','honda civic'),(207,'dodge','dodge aspen se'),(208,'ford','ford granada ghia'),(209,'pontiac','pontiac ventura sj'),(210,'amc','amc pacer d/l'),(211,'volkswagen','volkswagen rabbit'),(212,'datsun','datsun b-210'),(213,'toyota','toyota corolla'),(214,'ford','ford pinto'),(215,'volvo','volvo 245'),(216,'plymouth','plymouth volare premier v8'),(217,'peugeot','peugeot 504'),(218,'toyota','toyota mark ii'),(219,'mercedes-benz','mercedes-benz 280s'),(220,'cadillac','cadillac seville'),(221,'chevrolet','chevy c10'),(222,'ford','ford f108'),(223,'dodge','dodge d100'),(224,'honda','honda accord cvcc'),(225,'buick','buick opel isuzu deluxe'),(226,'renault','renault 5 gtl'),(227,'plymouth','plymouth arrow gs'),(228,'datsun','datsun f-10 hatchback'),(229,'chevrolet','chevrolet caprice classic'),(230,'oldsmobile','oldsmobile cutlass supreme'),(231,'dodge','dodge monaco brougham'),(232,'mercury','mercury cougar brougham'),(233,'chevrolet','chevrolet concours'),(234,'buick','buick skylark'),(235,'plymouth','plymouth volare custom'),(236,'ford','ford granada'),(237,'pontiac','pontiac grand prix lj'),(238,'chevrolet','chevrolet monte carlo landau'),(239,'chrysler','chrysler cordoba'),(240,'ford','ford thunderbird'),(241,'volkswagen','volkswagen rabbit custom'),(242,'pontiac','pontiac sunbird coupe'),(243,'toyota','toyota corolla liftback'),(244,'ford','ford mustang ii 2+2'),(245,'chevrolet','chevrolet chevette'),(246,'dodge','dodge colt m/m'),(247,'subaru','subaru dl'),(248,'volkswagen','volkswagen dasher'),(249,'datsun','datsun 810'),(250,'bmw','bmw 320i'),(251,'mazda','mazda rx-4'),(252,'volkswagen','volkswagen rabbit custom diesel'),(253,'ford','ford fiesta'),(254,'mazda','mazda glc deluxe'),(255,'datsun','datsun b210 gx'),(256,'honda','honda civic cvcc'),(257,'oldsmobile','oldsmobile cutlass salon brougham'),(258,'dodge','dodge diplomat'),(259,'mercury','mercury monarch ghia'),(260,'pontiac','pontiac phoenix lj'),(261,'chevrolet','chevrolet malibu'),(262,'ford','ford fairmont (auto)'),(263,'ford','ford fairmont (man)'),(264,'plymouth','plymouth volare'),(265,'amc','amc concord'),(266,'buick','buick century special'),(267,'mercury','mercury zephyr'),(268,'dodge','dodge aspen'),(269,'amc','amc concord d/l'),(270,'chevrolet','chevrolet monte carlo landau'),(271,'buick','buick regal sport coupe (turbo)'),(272,'ford','ford futura'),(273,'dodge','dodge magnum xe'),(274,'chevrolet','chevrolet chevette'),(275,'toyota','toyota corona'),(276,'datsun','datsun 510'),(277,'dodge','dodge omni'),(278,'toyota','toyota celica gt liftback'),(279,'plymouth','plymouth sapporo'),(280,'oldsmobile','oldsmobile starfire sx'),(281,'datsun','datsun 200-sx'),(282,'audi','audi 5000'),(283,'volvo','volvo 264gl'),(284,'saab','saab 99gle'),(285,'peugeot','peugeot 604sl'),(286,'volkswagen','volkswagen scirocco'),(287,'honda','honda accord lx'),(288,'pontiac','pontiac lemans v6'),(289,'mercury','mercury zephyr 6'),(290,'ford','ford fairmont 4'),(291,'amc','amc concord dl 6'),(292,'dodge','dodge aspen 6'),(293,'chevrolet','chevrolet caprice classic'),(294,'ford','ford ltd landau'),(295,'mercury','mercury grand marquis'),(296,'dodge','dodge st. regis'),(297,'buick','buick estate wagon (sw)'),(298,'ford','ford country squire (sw)'),(299,'chevrolet','chevrolet malibu classic (sw)'),(300,'chrysler','chrysler lebaron town @ country (sw)'),(301,'volkswagen','vw rabbit custom'),(302,'mazda','mazda glc deluxe'),(303,'dodge','dodge colt hatchback custom'),(304,'amc','amc spirit dl'),(305,'mercedes','mercedes benz 300d'),(306,'cadillac','cadillac eldorado'),(307,'peugeot','peugeot 504'),(308,'oldsmobile','oldsmobile cutlass salon brougham'),(309,'plymouth','plymouth horizon'),(310,'plymouth','plymouth horizon tc3'),(311,'datsun','datsun 210'),(312,'fiat','fiat strada custom'),(313,'buick','buick skylark limited'),(314,'chevrolet','chevrolet citation'),(315,'oldsmobile','oldsmobile omega brougham'),(316,'pontiac','pontiac phoenix'),(317,'volkswagen','vw rabbit'),(318,'toyota','toyota corolla tercel'),(319,'chevrolet','chevrolet chevette'),(320,'datsun','datsun 310'),(321,'chevrolet','chevrolet citation'),(322,'ford','ford fairmont'),(323,'amc','amc concord'),(324,'dodge','dodge aspen'),(325,'audi','audi 4000'),(326,'toyota','toyota corona liftback'),(327,'mazda','mazda 626'),(328,'datsun','datsun 510 hatchback'),(329,'toyota','toyota corolla'),(330,'mazda','mazda glc'),(331,'dodge','dodge colt'),(332,'datsun','datsun 210'),(333,'volkswagen','vw rabbit c (diesel)'),(334,'volkswagen','vw dasher (diesel)'),(335,'audi','audi 5000s (diesel)'),(336,'mercedes-benz','mercedes-benz 240d'),(337,'honda','honda civic 1500 gl'),(338,'renault','renault lecar deluxe'),(339,'subaru','subaru dl'),(340,'volkswagen','volkswagen rabbit'),(341,'datsun','datsun 280-zx'),(342,'mazda','mazda rx-7 gs'),(343,'triumph','triumph tr7 coupe'),(344,'ford','ford mustang cobra'),(345,'honda','honda accord'),(346,'plymouth','plymouth reliant'),(347,'buick','buick skylark'),(348,'dodge','dodge aries wagon (sw)'),(349,'chevrolet','chevrolet citation'),(350,'plymouth','plymouth reliant'),(351,'toyota','toyota starlet'),(352,'plymouth','plymouth champ'),(353,'honda','honda civic 1300'),(354,'subaru','subaru'),(355,'datsun','datsun 210 mpg'),(356,'toyota','toyota tercel'),(357,'mazda','mazda glc 4'),(358,'plymouth','plymouth horizon 4'),(359,'ford','ford escort 4w'),(360,'ford','ford escort 2h'),(361,'volkswagen','volkswagen jetta'),(362,'renault','renault 18i'),(363,'honda','honda prelude'),(364,'toyota','toyota corolla'),(365,'datsun','datsun 200sx'),(366,'mazda','mazda 626'),(367,'peugeot','peugeot 505s turbo diesel'),(368,'saab','saab 900s'),(369,'volvo','volvo diesel'),(370,'toyota','toyota cressida'),(371,'datsun','datsun 810 maxima'),(372,'buick','buick century'),(373,'oldsmobile','oldsmobile cutlass ls'),(374,'ford','ford granada gl'),(375,'chrysler','chrysler lebaron salon'),(376,'chevrolet','chevrolet cavalier'),(377,'chevrolet','chevrolet cavalier wagon'),(378,'chevrolet','chevrolet cavalier 2-door'),(379,'pontiac','pontiac j2000 se hatchback'),(380,'dodge','dodge aries se'),(381,'pontiac','pontiac phoenix'),(382,'ford','ford fairmont futura'),(383,'amc','amc concord dl'),(384,'volkswagen','volkswagen rabbit l'),(385,'mazda','mazda glc custom l'),(386,'mazda','mazda glc custom'),(387,'plymouth','plymouth horizon miser'),(388,'mercury','mercury lynx l'),(389,'nissan','nissan stanza xe'),(390,'honda','honda accord'),(391,'toyota','toyota corolla'),(392,'honda','honda civic'),(393,'honda','honda civic (auto)'),(394,'datsun','datsun 310 gx'),(395,'buick','buick century limited'),(396,'oldsmobile','oldsmobile cutlass ciera (diesel)'),(397,'chrysler','chrysler lebaron medallion'),(398,'ford','ford granada l'),(399,'toyota','toyota celica gt'),(400,'dodge','dodge charger 2.2'),(401,'chevrolet','chevrolet camaro'),(402,'ford','ford mustang gl'),(403,'volkswagen','vw pickup'),(404,'dodge','dodge rampage'),(405,'ford','ford ranger'),(406,'chevrolet','chevy s-10');
/*!40000 ALTER TABLE `CAR_NAMES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CARS_DATA`
--

DROP TABLE IF EXISTS `CARS_DATA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CARS_DATA` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MPG` text COLLATE utf8mb4_general_ci,
  `Cylinders` int DEFAULT NULL,
  `Edispl` double DEFAULT NULL,
  `Horsepower` text COLLATE utf8mb4_general_ci,
  `Weight` int DEFAULT NULL,
  `Accelerate` double DEFAULT NULL,
  `Year` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `cars_data_FK_0_0` FOREIGN KEY (`Id`) REFERENCES `CAR_NAMES` (`MakeId`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARS_DATA`
--

LOCK TABLES `CARS_DATA` WRITE;
/*!40000 ALTER TABLE `CARS_DATA` DISABLE KEYS */;
INSERT INTO `CARS_DATA` VALUES (1,'18.0',8,307,'130.0',3504,12,1970),(2,'15.0',8,350,'165.0',3693,11.5,1970),(3,'18.0',8,318,'150.0',3436,11,1970),(4,'16.0',8,304,'150.0',3433,12,1970),(5,'17.0',8,302,'140.0',3449,10.5,1970),(6,'15.0',8,429,'198.0',4341,10,1970),(7,'14.0',8,454,'220.0',4354,9,1970),(8,'14.0',8,440,'215.0',4312,8.5,1970),(9,'14.0',8,455,'225.0',4425,10,1970),(10,'15.0',8,390,'190.0',3850,8.5,1970),(11,NULL,4,133,'115.0',3090,17.5,1970),(12,NULL,8,350,'165.0',4142,11.5,1970),(13,NULL,8,351,'153.0',4034,11,1970),(14,NULL,8,383,'175.0',4166,10.5,1970),(15,NULL,8,360,'175.0',3850,11,1970),(39,'25.0',4,98,NULL,2046,19,1971),(138,'26.0',4,122,'80.0',2451,16.5,1974),(139,'32.0',4,71,'65.0',1836,21,1974),(140,'25.0',4,140,'75.0',2542,17,1974),(141,'16.0',6,250,'100.0',3781,17,1974),(142,'16.0',6,258,'110.0',3632,18,1974),(143,'18.0',6,225,'105.0',3613,16.5,1974),(144,'16.0',8,302,'140.0',4141,14,1974),(145,'13.0',8,350,'150.0',4699,14.5,1974),(146,'14.0',8,318,'150.0',4457,13.5,1974),(147,'14.0',8,302,'140.0',4638,16,1974),(148,'14.0',8,304,'150.0',4257,15.5,1974);
/*!40000 ALTER TABLE `CARS_DATA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTINENTS`
--

DROP TABLE IF EXISTS `CONTINENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTINENTS` (
  `ContId` int NOT NULL AUTO_INCREMENT,
  `Continent` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`ContId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTINENTS`
--

LOCK TABLES `CONTINENTS` WRITE;
/*!40000 ALTER TABLE `CONTINENTS` DISABLE KEYS */;
INSERT INTO `CONTINENTS` VALUES (1,'america'),(2,'europe'),(3,'asia'),(4,'africa'),(5,'australia');
/*!40000 ALTER TABLE `CONTINENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COUNTRIES`
--

DROP TABLE IF EXISTS `COUNTRIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COUNTRIES` (
  `CountryId` int NOT NULL AUTO_INCREMENT,
  `CountryName` text COLLATE utf8mb4_general_ci,
  `Continent` int DEFAULT NULL,
  PRIMARY KEY (`CountryId`),
  KEY `countries_FK_0_0` (`Continent`),
  CONSTRAINT `countries_FK_0_0` FOREIGN KEY (`Continent`) REFERENCES `CONTINENTS` (`ContId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COUNTRIES`
--

LOCK TABLES `COUNTRIES` WRITE;
/*!40000 ALTER TABLE `COUNTRIES` DISABLE KEYS */;
INSERT INTO `COUNTRIES` VALUES (1,'usa',1),(2,'germany',2),(3,'france',2),(4,'japan',3),(5,'italy',2),(6,'sweden',2),(7,'uk',2),(8,'korea',3),(9,'russia',2),(10,'nigeria',4),(11,'australia',5),(12,'new zealand',5),(13,'egypt',4),(14,'mexico',1),(15,'brazil',1);
/*!40000 ALTER TABLE `COUNTRIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_list`
--

DROP TABLE IF EXISTS `model_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_list` (
  `ModelId` int NOT NULL AUTO_INCREMENT,
  `Maker` int DEFAULT NULL,
  `Model` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ModelId`),
  UNIQUE KEY `sqlite_autoindex_model_list_1` (`Model`),
  KEY `model_list_FK_0_0` (`Maker`),
  CONSTRAINT `model_list_FK_0_0` FOREIGN KEY (`Maker`) REFERENCES `CAR_MAKERS` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_list`
--

LOCK TABLES `model_list` WRITE;
/*!40000 ALTER TABLE `model_list` DISABLE KEYS */;
INSERT INTO `model_list` VALUES (1,1,'amc'),(2,2,'audi'),(3,3,'bmw'),(4,4,'buick'),(5,4,'cadillac'),(6,5,'capri'),(7,4,'chevrolet'),(8,6,'chrysler'),(9,7,'citroen'),(10,8,'datsun'),(11,6,'dodge'),(12,9,'fiat'),(13,5,'ford'),(14,10,'hi'),(15,11,'honda'),(16,12,'mazda'),(17,13,'mercedes'),(18,13,'mercedes-benz'),(19,5,'mercury'),(20,8,'nissan'),(21,4,'oldsmobile'),(22,14,'opel'),(23,15,'peugeot'),(24,6,'plymouth'),(25,4,'pontiac'),(26,16,'renault'),(27,17,'saab'),(28,18,'subaru'),(29,19,'toyota'),(30,20,'triumph'),(31,2,'volkswagen'),(32,21,'volvo'),(33,22,'kia'),(34,23,'hyundai'),(35,6,'jeep'),(36,19,'scion');
/*!40000 ALTER TABLE `model_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `battle_death` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `battle_death`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: battle_death
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `battle`
--

DROP TABLE IF EXISTS `battle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `date` text COLLATE utf8mb4_general_ci,
  `bulgarian_commander` text COLLATE utf8mb4_general_ci,
  `latin_commander` text COLLATE utf8mb4_general_ci,
  `result` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battle`
--

LOCK TABLES `battle` WRITE;
/*!40000 ALTER TABLE `battle` DISABLE KEYS */;
INSERT INTO `battle` VALUES (1,'Battle of Adrianople','14 April 1205','Kaloyan','Baldwin I','Bulgarian victory'),(2,'Battle of Serres','June 1205','Kaloyan','Unknown','Bulgarian victory'),(3,'Battle of Rusion','31 January 1206','Kaloyan','Thierry de Termond','Bulgarian victory'),(4,'Battle of Rodosto','February 1206','Kaloyan','Unknown','Bulgarian victory'),(5,'Battle of Messinopolis','4 September 1207','Unknown','Boniface of Montferrat','Bulgarian victory'),(6,'Battle of Boruy','June 1205','Boril','Henry I','Bulgarian victory'),(7,'Battle of Philippopolis','31 June 1208','Boril','Henry I','Latin victory'),(8,'Siege of Constantinople','1235','Ivan Asen II','John of Brienne','Two Year Truce');
/*!40000 ALTER TABLE `battle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death`
--

DROP TABLE IF EXISTS `death`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death` (
  `caused_by_ship_id` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `note` text COLLATE utf8mb4_general_ci,
  `killed` int DEFAULT NULL,
  `injured` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `death_FK_0_0` (`caused_by_ship_id`),
  CONSTRAINT `death_FK_0_0` FOREIGN KEY (`caused_by_ship_id`) REFERENCES `ship` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death`
--

LOCK TABLES `death` WRITE;
/*!40000 ALTER TABLE `death` DISABLE KEYS */;
INSERT INTO `death` VALUES (1,1,'Dantewada, Chhattisgarh',8,0),(2,2,'Dantewada, Chhattisgarh',3,0),(3,3,'East Champaran, Bihar',2,0),(4,4,'Gajapati, Odisha',3,0),(4,5,'Sundargarh, Odisha',0,9),(5,6,'Dantewada, Chhattisgarh',0,0),(5,7,'Dantewada, Chhattisgarh',4,5),(6,8,'Kanker, Chhattisgarh',0,0),(1,9,'Dantewada, Chhattisgarh',29,0),(3,10,'WestMidnapore, West Bengal',0,0),(2,11,'Bastar, Chattisgarh',0,0),(5,12,'Bokaro, Jharkhand',14,0),(3,13,'Erraboru, Chhattisgarh',25,0);
/*!40000 ALTER TABLE `death` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ship` (
  `lost_in_battle` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `tonnage` text COLLATE utf8mb4_general_ci,
  `ship_type` text COLLATE utf8mb4_general_ci,
  `location` text COLLATE utf8mb4_general_ci,
  `disposition_of_ship` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `ship_FK_0_0` (`lost_in_battle`),
  CONSTRAINT `ship_FK_0_0` FOREIGN KEY (`lost_in_battle`) REFERENCES `battle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ship`
--

LOCK TABLES `ship` WRITE;
/*!40000 ALTER TABLE `ship` DISABLE KEYS */;
INSERT INTO `ship` VALUES (8,1,'Lettice','t','Brig','English Channel','Captured'),(7,2,'Bon Accord','t','Brig','English Channel','Captured'),(6,3,'Mary','t','Brig','English Channel','Captured'),(5,4,'HMS Avon','391','18-gun Brig','English Channel','Wrecked'),(5,5,'Three Brothers','t','Brig','SW Approaches','Scuttled'),(4,6,'Bacchus','t','Brig','English Channel','Sank'),(8,7,'HMS Atalanta','225','8 gun Brig','Mid-Atlantic','Captured');
/*!40000 ALTER TABLE `ship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `tvshow` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tvshow`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: tvshow
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cartoon`
--

DROP TABLE IF EXISTS `cartoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartoon` (
  `id` double NOT NULL,
  `Title` text COLLATE utf8mb4_general_ci,
  `Directed_by` text COLLATE utf8mb4_general_ci,
  `Written_by` text COLLATE utf8mb4_general_ci,
  `Original_air_date` text COLLATE utf8mb4_general_ci,
  `Production_code` double DEFAULT NULL,
  `Channel` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Cartoon_FK_0_0` (`Channel`),
  CONSTRAINT `Cartoon_FK_0_0` FOREIGN KEY (`Channel`) REFERENCES `TV_Channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartoon`
--

LOCK TABLES `cartoon` WRITE;
/*!40000 ALTER TABLE `cartoon` DISABLE KEYS */;
INSERT INTO `cartoon` VALUES (1,'The Rise of the Blue Beetle!','Ben Jones','Michael Jelenic','November14,2008',101,'700'),(2,'Terror on Dinosaur Island!','Brandon Vietti','Steven Melching','November21,2008',102,'701'),(3,'Evil Under the Sea!','Michael Chang','Joseph Kuhr','December5,2008',103,'703'),(4,'Day of the Dark Knight!','Ben Jones','J. M. DeMatteis','January2,2009',104,'704'),(5,'Invasion of the Secret Santas!','Brandon Vietti','Adam Beechen','December12,2008',105,'705'),(6,'Enter the Outsiders!','Michael Chang','Todd Casey','January9,2009',106,'706'),(7,'Dawn of the Dead Man!','Ben Jones','Steven Melching','January16,2009',107,'707'),(8,'Fall of the Blue Beetle!','Brandon Vietti','James Krieg','January23,2009',108,'708'),(9,'Journey to the Center of the Bat!','Michael Chang','Matt Wayne','January30,2009',109,'707'),(10,'The Eyes of Despero!','Ben Jones','J. M. DeMatteis','February6,2009',110,'728'),(11,'Return of the Fearsome Fangs!','Brandon Vietti','Todd Casey','February20,2009',111,'700'),(12,'Deep Cover for Batman!','Michael Chang','Joseph Kuhr','February27,2009',112,'707');
/*!40000 ALTER TABLE `cartoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TV_Channel`
--

DROP TABLE IF EXISTS `TV_Channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TV_Channel` (
  `id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `series_name` text COLLATE utf8mb4_general_ci,
  `Country` text COLLATE utf8mb4_general_ci,
  `Language` text COLLATE utf8mb4_general_ci,
  `Content` text COLLATE utf8mb4_general_ci,
  `Pixel_aspect_ratio_PAR` text COLLATE utf8mb4_general_ci,
  `Hight_definition_TV` text COLLATE utf8mb4_general_ci,
  `Pay_per_view_PPV` text COLLATE utf8mb4_general_ci,
  `Package_Option` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TV_Channel`
--

LOCK TABLES `TV_Channel` WRITE;
/*!40000 ALTER TABLE `TV_Channel` DISABLE KEYS */;
INSERT INTO `TV_Channel` VALUES ('700','Sky Radio','Italy','Italian','music','4:3','no','no','Sky Famiglia'),('701','Sky Music','Italy','Italian','music','4:3','no','no','Sky Famiglia'),('703','Music Box Italia','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia'),('704','MTV Hits','Italy','Italian','music','16:9','no','no','Sky Famiglia'),('705','MTV Classic','Italy','Italian','music','4:3','no','no','Sky Famiglia'),('706','MTV Rocks','United Kingdom','English','music','16:9','no','no','Sky Famiglia'),('707','MTV Dance','United Kingdom','English','music','16:9','no','no','Sky Famiglia'),('708','MTV Music','Italy','Italian','music','16:9','no','no','no ( FTV )'),('709','MTV Live HD','Poland','English','music','16:9','yes','no','Sky Famiglia + Sky HD'),('713','Radio Capital TiVù','Italy','Italian','music','4:3','no','no','no ( FTV )'),('714','myDeejay','Italy','Italian','music','16:9','no','no','Sky Famiglia'),('715','Match Music','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia'),('717','Rock TV','Italy','Italian','music','4:3 / 16:9','no','no','Sky Famiglia'),('719','Hip Hop TV','Italy','Italian','music','4:3','no','no','Sky Famiglia'),('728','Classica','Italy','Italian','music','4:3','no','no','Option');
/*!40000 ALTER TABLE `TV_Channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TV_series`
--

DROP TABLE IF EXISTS `TV_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TV_series` (
  `id` double NOT NULL,
  `Episode` text COLLATE utf8mb4_general_ci,
  `Air_Date` text COLLATE utf8mb4_general_ci,
  `Rating` text COLLATE utf8mb4_general_ci,
  `Share` double DEFAULT NULL,
  `18_49_Rating_Share` text COLLATE utf8mb4_general_ci,
  `Viewers_m` text COLLATE utf8mb4_general_ci,
  `Weekly_Rank` double DEFAULT NULL,
  `Channel` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TV_series_FK_0_0` (`Channel`),
  CONSTRAINT `TV_series_FK_0_0` FOREIGN KEY (`Channel`) REFERENCES `TV_Channel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TV_series`
--

LOCK TABLES `TV_series` WRITE;
/*!40000 ALTER TABLE `TV_series` DISABLE KEYS */;
INSERT INTO `TV_series` VALUES (1,'A Love of a Lifetime','September 24, 2007','5.8',9,'3.5/9','9.16',43,'700'),(2,'Friendly Skies','October 1, 2007','5.3',9,'3.2/8','8.23',50,'701'),(3,'Game Three','October 8, 2007','4.4',7,'2.9/7','6.94',61,'707'),(4,'The Year of the Rabbit','October 15, 2007','4.3',7,'2.7/7','6.75',67,'713'),(5,'The Legend of Dylan McCleen','October 22, 2007','3.8',6,'2.4/6','6.06',72,'714'),(6,'Keepers','October 29, 2007','3.7',6,'2.2/6','5.75',71,'700'),(7,'Double Down','November 5, 2007','3.4',6,'2.1/5','5.13',80,'708'),(8,'Winterland','November 12, 2007','4.0',7,'2.4/6','6.09',70,'707'),(9,'Emily','November 19, 2007','3.7',6,'2.2/6','5.61',66,'717'),(10,'Blowback','November 26, 2007','3.7',6,'2.4/6','6.05',68,'719'),(11,'Home By Another Way','December 10, 2007','3.5',6,'1.7/5','5.28',62,'728'),(12,'The Hanged Man','December 17, 2007','3.0',5,'1.5/4','4.24',65,'714');
/*!40000 ALTER TABLE `TV_series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `poker_player` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `poker_player`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: poker_player
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `People_ID` int NOT NULL AUTO_INCREMENT,
  `Nationality` text COLLATE utf8mb4_general_ci,
  `Name` text COLLATE utf8mb4_general_ci,
  `Birth_Date` text COLLATE utf8mb4_general_ci,
  `Height` double DEFAULT NULL,
  PRIMARY KEY (`People_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Russia','Aleksey Ostapenko','May 26, 1986',207),(2,'Bulgaria','Teodor Salparov','August 16, 1982',182),(3,'Russia','Roman Bragin','April 17, 1987',187),(4,'Russia','Sergey Grankin','January 22, 1987',193),(5,'Russia','Yevgeni Sivozhelez','August 8, 1986',196),(6,'Russia','Maksim Botin','July 14, 1983',194),(7,'Russia','Semen Poltavskiy','February 8, 1981',205);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poker_player`
--

DROP TABLE IF EXISTS `poker_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poker_player` (
  `Poker_Player_ID` int NOT NULL AUTO_INCREMENT,
  `People_ID` int DEFAULT NULL,
  `Final_Table_Made` double DEFAULT NULL,
  `Best_Finish` double DEFAULT NULL,
  `Money_Rank` double DEFAULT NULL,
  `Earnings` double DEFAULT NULL,
  PRIMARY KEY (`Poker_Player_ID`),
  KEY `poker_player_FK_0_0` (`People_ID`),
  CONSTRAINT `poker_player_FK_0_0` FOREIGN KEY (`People_ID`) REFERENCES `people` (`People_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poker_player`
--

LOCK TABLES `poker_player` WRITE;
/*!40000 ALTER TABLE `poker_player` DISABLE KEYS */;
INSERT INTO `poker_player` VALUES (1,1,42,1,68,476090),(2,2,10,2,141,189233),(3,5,21,1,166,104871),(4,6,19,2,58,596462),(5,7,26,3,154,142800);
/*!40000 ALTER TABLE `poker_player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE IF NOT EXISTS `cre_Doc_Template_Mgt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cre_Doc_Template_Mgt`;

--
-- Table structure for table `Ref_Template_Types`
--

DROP TABLE IF EXISTS `Ref_Template_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Template_Types` (
  `Template_Type_Code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Template_Type_Description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Template_Type_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ref_Template_Types`
--

LOCK TABLES `Ref_Template_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Template_Types` DISABLE KEYS */;
INSERT INTO `Ref_Template_Types` VALUES ('AD','Advertisement'),('BK','Book'),('CV','CV'),('PP','Paper'),('PPT','Presentation');
/*!40000 ALTER TABLE `Ref_Template_Types` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Templates`
--

DROP TABLE IF EXISTS `Templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Templates` (
  `Template_ID` int NOT NULL AUTO_INCREMENT,
  `Version_Number` int NOT NULL,
  `Template_Type_Code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Date_Effective_From` datetime DEFAULT NULL,
  `Date_Effective_To` datetime DEFAULT NULL,
  `Template_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Template_ID`),
  KEY `Templates_FK_0_0` (`Template_Type_Code`),
  CONSTRAINT `Templates_FK_0_0` FOREIGN KEY (`Template_Type_Code`) REFERENCES `Ref_Template_Types` (`Template_Type_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Templates`
--

LOCK TABLES `Templates` WRITE;
/*!40000 ALTER TABLE `Templates` DISABLE KEYS */;
INSERT INTO `Templates` VALUES (1,5,'PP','2005-11-12 07:09:48','2008-01-05 14:19:28',''),(4,4,'BK','2002-03-02 14:39:49','2001-04-18 09:29:52',''),(6,2,'PPT','1975-05-20 22:51:19','1992-05-02 20:06:11',''),(7,8,'PPT','1993-10-07 02:33:04','1975-07-16 04:52:10',''),(8,3,'BK','1983-07-16 21:16:16','1976-10-28 10:08:50',''),(9,2,'BK','1997-04-17 08:29:44','1994-12-07 13:26:23',''),(10,1,'PPT','2003-06-05 04:03:45','2007-06-06 06:18:53',''),(11,6,'BK','1996-02-04 11:27:24','1995-09-19 22:27:48',''),(14,7,'AD','1975-10-20 02:28:58','1979-11-04 08:58:39',''),(15,9,'CV','1986-12-09 14:51:36','1993-03-24 14:30:23',''),(16,5,'CV','2012-04-05 07:11:42','1980-05-07 12:15:47',''),(18,5,'PP','1984-08-07 13:36:26','1998-05-12 12:51:29',''),(19,7,'AD','1999-06-21 11:10:30','1974-09-14 06:34:39',''),(20,6,'BK','1986-11-14 12:20:18','2008-08-08 18:36:43',''),(21,9,'AD','2002-08-25 13:26:23','2015-09-06 01:08:44',''),(22,0,'PP','2005-02-20 00:31:34','1989-11-24 19:06:06',''),(23,2,'BK','1979-12-24 10:28:16','2000-10-22 11:57:12',''),(24,8,'PP','2008-08-01 13:57:26','1973-01-12 14:13:34',''),(25,5,'PP','1979-10-20 21:23:20','2006-02-06 23:52:04','');
/*!40000 ALTER TABLE `Templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documents` (
  `Document_ID` int NOT NULL AUTO_INCREMENT,
  `Template_ID` int DEFAULT NULL,
  `Document_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Document_Description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Other_Details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Document_ID`),
  KEY `Documents_FK_0_0` (`Template_ID`),
  CONSTRAINT `Documents_FK_0_0` FOREIGN KEY (`Template_ID`) REFERENCES `Templates` (`Template_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=385906527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documents`
--

LOCK TABLES `Documents` WRITE;
/*!40000 ALTER TABLE `Documents` DISABLE KEYS */;
INSERT INTO `Documents` VALUES (1,7,'Introduction of OS','n',NULL),(3,6,'Summer Show','u',NULL),(76,20,'Robbin CV','y',NULL),(80,14,'Welcome to NY','h',NULL),(82,11,'Data base','w',NULL),(2394,10,'Customer reviews','y',NULL),(3830,14,'Do not panic','k',NULL),(33930,1,'How Google people work','z',NULL),(50123,22,'Learning French','r',NULL),(651512,21,'How to write a CV','f',NULL),(801801,4,'How to read a book','w',NULL),(3540024,8,'Palm reading','y',NULL),(16514113,25,'A history of Arts','h',NULL),(385906526,11,'About Korea','b',NULL);
/*!40000 ALTER TABLE `Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paragraphs`
--

DROP TABLE IF EXISTS `Paragraphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paragraphs` (
  `Paragraph_ID` int NOT NULL AUTO_INCREMENT,
  `Document_ID` int NOT NULL,
  `Paragraph_Text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Other_Details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Paragraph_ID`),
  KEY `Paragraphs_FK_0_0` (`Document_ID`),
  CONSTRAINT `Paragraphs_FK_0_0` FOREIGN KEY (`Document_ID`) REFERENCES `Documents` (`Document_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=946335437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paragraphs`
--

LOCK TABLES `Paragraphs` WRITE;
/*!40000 ALTER TABLE `Paragraphs` DISABLE KEYS */;
INSERT INTO `Paragraphs` VALUES (7,2394,'Korea',NULL),(9,3,'Somalia',NULL),(65,50123,'Palestinian Territory',NULL),(241,651512,'Jersey',NULL),(3708,33930,'UK',NULL),(9946,385906526,'Fiji',NULL),(16615,80,'Japan',NULL),(1104059,3830,'Senegal',NULL),(243399026,651512,'Indonesia',NULL),(280120913,2394,'Ukraine',NULL),(510442723,2394,'Korea',NULL),(571212310,16514113,'Brazil',NULL),(608931827,80,'Micronesia',NULL),(765713812,16514113,'Ireland',NULL),(946335436,3540024,'Papua New Guinea',NULL);
/*!40000 ALTER TABLE `Paragraphs` ENABLE KEYS */;
UNLOCK TABLES;




-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: cre_Doc_Template_Mgt
-- ------------------------------------------------------
-- Server version	8.0.32

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
CREATE DATABASE  IF NOT EXISTS `real_estate_properties` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `real_estate_properties`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: real_estate_properties
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Other_Available_Features`
--

DROP TABLE IF EXISTS `Other_Available_Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Other_Available_Features` (
  `feature_id` int NOT NULL AUTO_INCREMENT,
  `feature_type_code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `feature_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feature_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`feature_id`),
  KEY `Other_Available_Features_FK_0_0` (`feature_type_code`),
  CONSTRAINT `Other_Available_Features_FK_0_0` FOREIGN KEY (`feature_type_code`) REFERENCES `Ref_Feature_Types` (`feature_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Other_Available_Features`
--

LOCK TABLES `Other_Available_Features` WRITE;
/*!40000 ALTER TABLE `Other_Available_Features` DISABLE KEYS */;
INSERT INTO `Other_Available_Features` VALUES (2,'Amenity','AirCon','Air Conditioning.'),(3,'Amenity','Pool','Swimming Pool.'),(4,'Security','BurglarAlarm','Burglar Alarm');
/*!40000 ALTER TABLE `Other_Available_Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Other_Property_Features`
--

DROP TABLE IF EXISTS `Other_Property_Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Other_Property_Features` (
  `property_id` int NOT NULL,
  `feature_id` int NOT NULL,
  `property_feature_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `Other_Property_Features_FK_0_0` (`property_id`),
  KEY `Other_Property_Features_FK_1_0` (`feature_id`),
  CONSTRAINT `Other_Property_Features_FK_0_0` FOREIGN KEY (`property_id`) REFERENCES `Properties` (`property_id`),
  CONSTRAINT `Other_Property_Features_FK_1_0` FOREIGN KEY (`feature_id`) REFERENCES `Other_Available_Features` (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Other_Property_Features`
--

LOCK TABLES `Other_Property_Features` WRITE;
/*!40000 ALTER TABLE `Other_Property_Features` DISABLE KEYS */;
INSERT INTO `Other_Property_Features` VALUES (15,3,'dolorem'),(12,4,'earum'),(6,2,'illo'),(7,2,'hic'),(6,3,'et'),(14,4,'quo'),(4,3,'odio'),(1,2,'ad'),(11,4,'vitae'),(9,3,'quo'),(6,3,'corrupti'),(6,3,'doloribus'),(13,2,'autem'),(3,2,'cumque'),(14,4,'modi');
/*!40000 ALTER TABLE `Other_Property_Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Properties`
--

DROP TABLE IF EXISTS `Properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `property_type_code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date_on_market` datetime DEFAULT NULL,
  `date_sold` datetime DEFAULT NULL,
  `property_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `property_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_count` int DEFAULT NULL,
  `vendor_requested_price` decimal(19,4) DEFAULT NULL,
  `buyer_offered_price` decimal(19,4) DEFAULT NULL,
  `agreed_selling_price` decimal(19,4) DEFAULT NULL,
  `apt_feature_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apt_feature_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apt_feature_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fld_feature_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fld_feature_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fld_feature_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hse_feature_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hse_feature_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hse_feature_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oth_feature_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oth_feature_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oth_feature_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shp_feature_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shp_feature_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shp_feature_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_property_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `Properties_FK_0_0` (`property_type_code`),
  CONSTRAINT `Properties_FK_0_0` FOREIGN KEY (`property_type_code`) REFERENCES `Ref_Property_Types` (`property_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Properties`
--

LOCK TABLES `Properties` WRITE;
/*!40000 ALTER TABLE `Properties` DISABLE KEYS */;
INSERT INTO `Properties` VALUES (1,'House','1991-06-21 23:52:10','1979-05-13 16:58:06','park','4745 Emerson Stravenue Suite 829\nSouth Garret, IN 16772-5682',7,372652.2909,1.6800,4201.8000,'aut','suscipit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'House','1990-05-25 23:01:51','1990-11-14 19:16:38','the cole','098 Tremaine Highway Suite 569\nSouth Wilford, NJ 46587-3537',1,661536468.4429,8.7122,21769471.8328,'est','est',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Other','1986-11-26 04:12:18','1981-06-26 21:28:28','prism','062 Micaela Court Apt. 707\nMargretville, WV 51628-3617',8,1337.0000,11375259.5020,5.0000,'ut','et',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Field','2017-09-14 15:49:23','2003-02-27 18:17:11','riverside','49578 Ayden Mountains\nNew Russellhaven, UT 46626',6,192374065.8000,15.1700,4514.8070,'nesciunt','adipisci',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Apartment','2016-05-06 16:53:39','2012-08-19 07:36:57','parc east','2765 Schulist Stream\nLindmouth, UT 03391-3817',5,983.8596,10.1067,1.0012,'quo','sequi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Shop','1994-02-14 02:27:13','1995-01-31 11:18:42','high line','6837 Darien Views Apt. 475\nSouth Maraview, KS 77770',9,2573.0000,0.0000,476919.3000,'sed','culpa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Shop','1996-09-16 22:04:27','1998-09-15 05:26:22','avalon','092 Paucek Highway Apt. 772\nEast Erika, IA 61358',8,150045.7568,296733.0000,2794972.2495,'quos','est',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Apartment','1976-06-10 20:25:38','2001-11-09 04:37:33','vogue','24365 Ulices Run\nHomenicktown, MD 88485-6198',9,13.4715,0.0000,0.0000,'fuga','odio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Apartment','1978-05-15 10:53:37','1971-04-14 03:23:49','longacre','107 Roob Courts\nErdmanburgh, IA 42926-0873',5,2219.6778,3520911.5258,3344706.5755,'enim','sit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Apartment','2003-12-25 16:13:19','1997-01-07 19:52:45','renoir','084 Lakin Vista Apt. 394\nFishertown, MA 16876',9,77172926.3000,1.5509,244353758.1824,'consequatur','vero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Other','1981-08-23 05:40:38','1997-11-07 20:22:05','murray hill','2088 Bashirian Fork Suite 337\nFaustinoport, MT 16771-9320',2,6713620.9000,13991131.4340,170766.4720,'et','est',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Apartment','2016-05-24 09:57:45','1980-07-08 16:13:17','ten tower','743 Ephraim Greens\nAnniemouth, HI 47084-3853',5,305.0000,2.0000,456840888.1600,'qui','autem',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Other','2000-08-07 06:59:14','1973-02-24 02:56:06','chelsea','60845 Else Highway Apt. 826\nSouth Dougfort, CO 43200-4258',2,2198735.0950,0.0000,44132.4621,'fuga','aut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Other','1986-12-31 10:05:32','1987-12-07 07:41:27','wall street','1474 Dibbert Fields Suite 055\nSouth Renee, IN 58286-3097',7,78.7208,2449185.2000,0.0000,'et','eos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Apartment','1993-08-04 10:49:04','1984-02-01 19:54:54','parc coliseum','986 Hagenes Drives\nDraketon, UT 83411-3393',3,331.0000,27537286.0000,2574.0000,'aut','iusto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ref_Feature_Types`
--

DROP TABLE IF EXISTS `Ref_Feature_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Feature_Types` (
  `feature_type_code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `feature_type_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`feature_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ref_Feature_Types`
--

LOCK TABLES `Ref_Feature_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Feature_Types` DISABLE KEYS */;
INSERT INTO `Ref_Feature_Types` VALUES ('Amenity','Amenity, eg Pool.'),('Security','Securiyt, eg Burglar Alarm.');
/*!40000 ALTER TABLE `Ref_Feature_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ref_Property_Types`
--

DROP TABLE IF EXISTS `Ref_Property_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Property_Types` (
  `property_type_code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `property_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`property_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ref_Property_Types`
--

LOCK TABLES `Ref_Property_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Property_Types` DISABLE KEYS */;
INSERT INTO `Ref_Property_Types` VALUES ('Apartment','Apartment, Flat, Condo, etc.'),('Field','Field, Meadow.'),('House','House, Bungalow, etc.'),('Other','Other, to be determined.'),('Shop','Shop, Retail Outlet.');
/*!40000 ALTER TABLE `Ref_Property_Types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  7:04:14
