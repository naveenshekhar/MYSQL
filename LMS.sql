-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: LMS
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `LMS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `LMS` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `LMS`;

--
-- Table structure for table `Candidate_Bank_Details`
--

DROP TABLE IF EXISTS `Candidate_Bank_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Bank_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_Id` int(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Account_Number` bigint(20) NOT NULL,
  `Is_Account_Num_Verified` tinyint(1) NOT NULL,
  `Ifsc_code` int(15) NOT NULL,
  `is_ifsc_code_verified` tinyint(1) NOT NULL,
  `pan_number` varchar(10) NOT NULL,
  `is_pan_number_verified` tinyint(1) NOT NULL,
  `addhaar_num` bigint(20) NOT NULL,
  `is_addhaar_num_verified` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidate_Id` (`candidate_Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Candidate_Bank_Details_ibfk_1` FOREIGN KEY (`candidate_Id`) REFERENCES `Fellowship_Candidate` (`Id`),
  CONSTRAINT `Candidate_Bank_Details_ibfk_2` FOREIGN KEY (`candidate_Id`) REFERENCES `Fellowship_Candidate` (`Id`),
  CONSTRAINT `Candidate_Bank_Details_ibfk_3` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Bank_Details`
--

LOCK TABLES `Candidate_Bank_Details` WRITE;
/*!40000 ALTER TABLE `Candidate_Bank_Details` DISABLE KEYS */;
INSERT INTO `Candidate_Bank_Details` VALUES (4,2,'amit kumar',78946511594,1,2143,1,'ABCD78899B',1,7894561327351595,1,'2019-12-13 10:22:40',4),(5,2,'pamit kmr',9122457896,1,2144,1,'ABCD78856B',1,78945613273515932,1,'2019-12-14 05:46:15',3),(6,2,'namit kmr',78946511595,1,2145,1,'ABCD78219B',1,7894561327351565,1,'2019-12-14 05:48:07',2),(7,2,'sonu kmr',9122457897,1,2146,1,'ABCD7859B',1,7894561327351465,1,'2019-12-14 05:48:36',1),(8,2,'monu kmr',78946511593,1,2147,1,'ABCD78823B',1,789456132732195,1,'2019-12-14 05:49:12',4),(9,2,'phonu kmr',9122457898,1,2148,1,'ABCD78811B',1,78945613273515124,1,'2019-12-14 05:49:43',4),(10,2,'konu kumar',78946511594,1,2149,1,'ABCD78865B',1,7894561327351123,1,'2019-12-14 05:50:30',1),(11,2,'konu kumar',78946511594,1,2149,1,'ABCD78865B',1,7894561327351123,1,'2019-12-14 05:51:01',1),(12,2,'mahesh kmr',9122457865,1,2155,1,'ABCD8921U',1,7894561327789456,1,'2019-12-14 05:55:10',2),(13,2,'kamal kmr',9122457821,1,2133,1,'ABCD7123J',1,7894561327789456,1,'2019-12-14 05:57:16',2);
/*!40000 ALTER TABLE `Candidate_Bank_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Documents`
--

DROP TABLE IF EXISTS `Candidate_Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Documents` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `doc_path` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(30) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Candidate_Documents_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`Id`),
  CONSTRAINT `Candidate_Documents_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Documents`
--

LOCK TABLES `Candidate_Documents` WRITE;
/*!40000 ALTER TABLE `Candidate_Documents` DISABLE KEYS */;
INSERT INTO `Candidate_Documents` VALUES (1,2,'pdf','/home/user/Desktop/amit.pdf','Approved','2019-12-13 11:26:34',2),(3,2,'docx','/home/user/Desktop/12.docx','Approved','2019-12-14 08:43:36',1),(4,2,'pdf','/home/user/Desktop/15.pdf','Approved','2019-12-14 08:44:00',2),(5,4,'pdf','/home/user/Desktop/20.pdf','Approved','2019-12-14 08:44:24',3),(6,5,'docx','/home/user/Desktop/25.docx','Approved','2019-12-14 08:44:55',4),(7,3,'pdf','/home/user/Desktop/30.pdf','Approved','2019-12-14 08:45:17',1),(8,3,'pdf','/home/user/Desktop/30.pdf','Approved','2019-12-14 08:46:28',1),(9,5,'pdf','/home/user/Desktop/35.pdf','Approved','2019-12-14 08:47:37',2),(10,6,'pdf','/home/user/Desktop/40.pdf','Approved','2019-12-14 08:48:36',3),(11,7,'docx','/home/user/Desktop/45.docx','Approved','2019-12-14 08:50:57',4),(12,8,'pdf','/home/user/Desktop/50.pdf','Approved','2019-12-14 08:53:01',1);
/*!40000 ALTER TABLE `Candidate_Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Qualification`
--

DROP TABLE IF EXISTS `Candidate_Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Qualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(10) NOT NULL,
  `diploma` tinyint(1) NOT NULL,
  `degree_name` varchar(20) NOT NULL,
  `is_degree_name_verified` tinyint(1) NOT NULL,
  `employee_decipline` varchar(10) NOT NULL,
  `is_employee_decipline_verified` tinyint(1) NOT NULL,
  `passing_year` int(10) NOT NULL,
  `is_passing_year_verified` tinyint(1) NOT NULL,
  `aggr_per` decimal(10,0) NOT NULL,
  `final_year_per` decimal(10,0) NOT NULL,
  `is_final_year_per_verified` tinyint(1) NOT NULL,
  `training_institute` varchar(20) NOT NULL,
  `is_training_institute_verified` tinyint(1) NOT NULL,
  `training_duration_month` int(10) NOT NULL,
  `is_training_duration_month_verified` tinyint(1) NOT NULL,
  `other_training` varchar(10) NOT NULL,
  `is_other_training_verified` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Candidate_Qualification_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`Id`),
  CONSTRAINT `Candidate_Qualification_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Qualification`
--

LOCK TABLES `Candidate_Qualification` WRITE;
/*!40000 ALTER TABLE `Candidate_Qualification` DISABLE KEYS */;
INSERT INTO `Candidate_Qualification` VALUES (1,2,1,'B.Tech',1,'ECE',1,2018,1,75,80,1,'JSpiders',1,4,1,'no',0,'2019-12-13 10:56:40',1),(2,2,0,'B.Tech',1,'ECE',1,2018,1,65,80,0,'JSpiders',1,4,1,'no',0,'2019-12-14 06:08:54',1),(3,3,1,'B.Tech',0,'ECE',1,2018,1,75,80,1,'JSpiders',1,4,1,'no',1,'2019-12-14 06:10:01',2),(4,3,1,'B.Tech',0,'ECE',1,2018,1,75,80,1,'JSpiders',1,4,1,'no',1,'2019-12-14 06:10:36',2),(5,4,1,'B.Tech',1,'ECE',0,2018,1,81,71,0,'JSpiders',0,4,1,'no',0,'2019-12-14 06:11:05',3),(6,5,1,'B.Tech',1,'ECE',1,2018,0,75,87,1,'JSpiders',1,4,1,'no',1,'2019-12-14 06:11:44',4),(7,6,1,'B.Tech',0,'ECE',1,2018,1,55,60,0,'JSpiders',1,4,1,'no',1,'2019-12-14 06:12:16',4),(8,7,0,'B.Tech',1,'ECE',1,2018,1,81,80,1,'JSpiders',0,4,1,'no',1,'2019-12-14 06:12:43',4),(9,8,1,'B.Tech',1,'ECE',1,2018,1,75,80,0,'JSpiders',1,4,1,'no',0,'2019-12-14 06:13:08',1),(10,9,1,'B.Tech',0,'ECE',1,2018,1,81,74,1,'JSpiders',1,4,0,'no',1,'2019-12-14 06:13:28',2),(11,9,1,'B.Tech',1,'ECE',0,2018,1,75,80,0,'JSpiders',1,4,1,'no',1,'2019-12-14 06:13:52',3);
/*!40000 ALTER TABLE `Candidate_Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Tech_Stack_Assignment`
--

DROP TABLE IF EXISTS `Candidate_Tech_Stack_Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Tech_Stack_Assignment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `requirement_id` int(10) NOT NULL,
  `candidate_id` int(10) NOT NULL,
  `assign_date` date NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`Id`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `Fellowship_Candidate` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Tech_Stack_Assignment`
--

LOCK TABLES `Candidate_Tech_Stack_Assignment` WRITE;
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` DISABLE KEYS */;
INSERT INTO `Candidate_Tech_Stack_Assignment` VALUES (1,2,2,'2019-09-23',1,'2019-12-14 12:40:17',2),(2,10,10,'2019-11-19',1,'2019-12-14 12:41:14',3),(5,9,9,'2020-01-07',1,'2019-12-14 12:45:28',4),(6,4,4,'2019-09-23',1,'2019-12-14 12:45:51',2),(7,6,6,'2019-11-19',1,'2019-12-14 12:46:07',3),(9,5,5,'2019-12-15',1,'2019-12-14 12:46:43',2),(10,7,7,'2020-01-07',1,'2019-12-14 12:47:05',2),(12,8,8,'2019-12-15',1,'2019-12-14 12:47:48',2),(15,8,8,'2020-01-07',1,'2019-12-14 12:50:06',4),(17,3,3,'2019-12-15',1,'2019-12-14 12:50:31',2);
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `Fellowship_Candidate` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (3,'Microsoft','BTM','India',1,'2019-12-13 11:48:08',2),(4,'Infosys','Bengaluru','India',1,'2019-12-14 09:17:43',2),(5,'Cognizant','New Jersey','USA',1,'2019-12-14 09:18:41',2),(6,'Capgemini','Paris','France',1,'2019-12-14 09:19:00',2),(7,'TCS','Mumbai','India',1,'2019-12-14 09:19:26',2),(8,'Accenture','Dublin','Ireland',1,'2019-12-14 09:19:41',2),(9,'SAP','BTM','Germany',1,'2019-12-14 09:20:09',2),(10,'Oracle','California','USA',1,'2019-12-14 09:20:25',2),(11,'Intel','California','USA',1,'2019-12-14 09:20:50',2),(12,'IBM','London','UK',1,'2019-12-14 09:21:06',2);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Requirement`
--

DROP TABLE IF EXISTS `Company_Requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company_Requirement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) NOT NULL,
  `requested_month` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `is_doc_verifrication` tinyint(1) NOT NULL,
  `requirement_doc_path` varchar(50) NOT NULL,
  `no_of_engg` int(10) NOT NULL,
  `tech_stack_id` int(10) NOT NULL,
  `tech_type_id` int(10) NOT NULL,
  `maker_program_id` int(10) NOT NULL,
  `lead_id` int(10) NOT NULL,
  `ideation_engg_id` int(10) NOT NULL,
  `buddy_engg_id` int(10) NOT NULL,
  `special_remark` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `company_id` (`company_id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `maker_program_id` (`maker_program_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Company_Requirement_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `Company` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_3` FOREIGN KEY (`maker_program_id`) REFERENCES `Maker_Program` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_4` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Requirement`
--

LOCK TABLES `Company_Requirement` WRITE;
/*!40000 ALTER TABLE `Company_Requirement` DISABLE KEYS */;
INSERT INTO `Company_Requirement` VALUES (4,3,'saawan','Banglore',1,'cd:/a/b/exe.exe',12,1,1,4,2,2,2,'good','pending','2019-12-14 11:29:40',4),(5,3,'March','Banglore',1,'cd:/a/b/exe2.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:27:01',1),(6,3,'Feb','mumbai',1,'cd:/a/b/exe1.exe',12,1,1,4,2,2,2,'good','pending','2019-12-14 12:27:25',4),(7,4,'April','Banglore',1,'cd:/a/b/exe3.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:28:21',2),(8,5,'June','mumbai',1,'cd:/a/b/exe4.exe',12,1,1,4,2,2,2,'good','pending','2019-12-14 12:28:42',3),(9,6,'July','Banglore',1,'cd:/a/b/exe5.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:29:03',1),(10,7,'August','Banglore',1,'cd:/a/b/exe6.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:29:25',2),(11,8,'September','mumbai',1,'cd:/a/b/exe7.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:29:44',3),(12,9,'October','Banglore',1,'cd:/a/b/exe8.exe',12,1,1,4,2,2,2,'good','pending','2019-12-14 12:30:07',4),(13,9,'October','Banglore',1,'cd:/a/b/exe8.exe',12,1,1,4,2,2,2,'good','pending','2019-12-14 12:30:17',4),(14,10,'november','mumbai',1,'cd:/a/b/exe9.exe',12,1,1,4,2,2,2,'good','Approved','2019-12-14 12:30:47',4);
/*!40000 ALTER TABLE `Company_Requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fellowship_Candidate`
--

DROP TABLE IF EXISTS `Fellowship_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fellowship_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(10) NOT NULL,
  `Middle_Name` varchar(10) DEFAULT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Degree` varchar(15) NOT NULL,
  `Hired_City` varchar(10) NOT NULL,
  `Hired_Date` date NOT NULL,
  `Mobile_Number` bigint(20) NOT NULL,
  `Permanent_Pincode` int(10) NOT NULL,
  `Hired_Lab` varchar(15) NOT NULL,
  `Attitude` varchar(15) NOT NULL,
  `Communication_Remark` varchar(10) NOT NULL,
  `Knowledge_Remark` varchar(10) NOT NULL,
  `Aggregate_Remark` int(10) NOT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(10) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Is_Birth_Date_Verified` tinyint(1) NOT NULL,
  `Parent_Name` varchar(10) NOT NULL,
  `Parent_Occupation` varchar(10) NOT NULL,
  `Parents_Mobile_Number` bigint(20) NOT NULL,
  `Parents_Annual_Salary` int(10) NOT NULL,
  `Local_Address` varchar(10) NOT NULL,
  `Permanent_Address` varchar(10) NOT NULL,
  `Photo_Path` varchar(50) NOT NULL,
  `Joinig_Date` date NOT NULL,
  `Candidate_Status` varchar(10) NOT NULL,
  `Personal_Information` varchar(50) NOT NULL,
  `Bank_Information` varchar(50) NOT NULL,
  `Educational_Information` varchar(50) NOT NULL,
  `Document_Status` varchar(20) NOT NULL,
  `Remark` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Fellowship_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fellowship_Candidate`
--

LOCK TABLES `Fellowship_Candidate` WRITE;
/*!40000 ALTER TABLE `Fellowship_Candidate` DISABLE KEYS */;
INSERT INTO `Fellowship_Candidate` VALUES (2,'Amit','kumar','mahato','amitlaila@gmail.com','B.tech','Banglore','2019-12-12',7845219865,784556,'BridgeLabz','good','good','good',4,'2019-12-13 06:50:52',2,'1994-11-03',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/amit.pdf','2019-12-13','accepted','amit is good dancer','SBI wasepur','Graduate','verified','good'),(3,'Rahul','kumar','priyank','snapchat@gmail.com','B.tech','Banglore','2015-12-12',9694451246,784556,'BridgeLabz','good','good','good',4,'2019-12-14 04:52:15',2,'1994-11-03',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/Rahul.pdf','2019-12-13','accepted','hari is good dancer','SBI wasepur','Graduate','verified','good'),(4,'Anand','kumar','kamin','pandyabhai@gmail.com','B.tech','Banglore','2015-12-14',9694451289,784509,'BridgeLabz','excellent','good','good',4,'2019-12-14 04:56:37',2,'1994-11-03',1,'Rahul','Farmer',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/Rahul.pdf','2019-12-13','accepted','Anand is good dancer','SBI wasepur','Graduate','verified','good'),(5,'kavya','kumari','Anand','kavya@gmail.com','B.tech','Mumbai','2015-02-14',9694451289,784509,'BridgeLabz','excellent','good','good',4,'2019-12-14 05:14:30',2,'1994-11-03',1,'Rahul','Farmer',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/Rahul.pdf','2019-12-13','accepted','kavya is good Singer','SBI wasepur','Graduate','verified','good'),(6,'Shekhar','kumar','mahato','Shekharlaila@gmail.com','B.tech','Mumbai','2019-12-12',7845219864,784556,'BridgeLabz','good','good','excellent',4,'2019-12-14 05:21:58',2,'1994-11-03',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/amit.pdf','2018-12-13','accepted','Shekhar is good dancer','SBI wasepur','Graduate','verified','good'),(7,'Rahul','kumar','priyank','snapchat@gmail.com','B.tech','Banglore','2015-12-12',9694451246,784556,'BridgeLabz','good','good','good',4,'2019-12-14 05:22:55',2,'1994-11-03',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/Rahul.pdf','2019-12-13','accepted','hari is good dancer','SBI wasepur','Graduate','verified','good'),(8,'kamin','kumar','Anand','kamin@gmail.com','B.tech','Mumbai','2019-12-12',7845219864,784556,'BridgeLabz','good','good','excellent',4,'2019-12-14 05:26:31',2,'1994-11-03',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/amit.pdf','2018-12-13','accepted','kamin is good dancer','SBI Toyra','Graduate','verified','good'),(9,'Shivagami','Pran_Hi','Sapath','kamin@gmail.com','B.tech','Mumbai','2019-12-12',7845219864,784556,'BridgeLabz','good','good','excellent',4,'2019-12-14 05:29:47',2,'1999-11-09',1,'sumit','gangster',9122457896,8794651,'BTM','Wasepur','/home/user/Desktop/amit.pdf','2018-12-13','accepted','Shivagami is good swimmer','SBI Toyra','Graduate','verified','good'),(10,'Priyanka','kumari','chinnur','kavya@gmail.com','B.tech','Mumbai','2015-02-14',9694451289,784509,'BridgeLabz','excellent','good','good',4,'2019-12-14 05:33:52',2,'1994-11-03',1,'Rahul','Farmer',9122457896,8794651,'islamabad','Wasepur','/home/user/Desktop/Rahul.pdf','2019-12-13','accepted','kavya is good in programming','SBI bihar','Graduate','verified','good');
/*!40000 ALTER TABLE `Fellowship_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hired_Candidate`
--

DROP TABLE IF EXISTS `Hired_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hired_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(10) NOT NULL,
  `Middle_Name` varchar(10) DEFAULT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Email_Id` varchar(20) NOT NULL,
  `Hired_City` varchar(10) NOT NULL,
  `Degree` varchar(15) NOT NULL,
  `Hired_Date` date NOT NULL,
  `Mobile_Number` bigint(15) NOT NULL,
  `Permanent_Pin_Code` int(10) NOT NULL,
  `Hired_Lab` varchar(10) NOT NULL,
  `Attitude` varchar(10) NOT NULL,
  `Communication_Remark` varchar(10) DEFAULT NULL,
  `Knowledge_Remark` varchar(10) DEFAULT NULL,
  `Aggregate_Percentage` decimal(10,0) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Creator_Stump` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Hired_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hired_Candidate`
--

LOCK TABLES `Hired_Candidate` WRITE;
/*!40000 ALTER TABLE `Hired_Candidate` DISABLE KEYS */;
INSERT INTO `Hired_Candidate` VALUES (1,'Naveen','Abc','Shekhar','naveenetc@gmail.com','mumbai','B.Tech','2015-12-12',9693254678,723456,'BridgeLabz','Good','Good','Good',76,'Accepted','2019-12-13 05:26:49',1),(2,'Shekhar','Abc','suman','sumanetc@gmail.com','mumbai','B.Tech','2015-11-12',9693254679,723446,'BridgeLabz','Good','Average','Good',76,'Accepted','2019-12-14 04:22:18',2),(3,'Big','c','B','BigB@gmail.com','mumbai','B.ed','2015-11-15',9693254647,723446,'BridgeLabz','Good','Average','excellent',71,'Accepted','2019-12-14 04:24:56',3),(4,'kavya','ch','nani','nani@gmail.com','Bangalore','BCA','2015-01-30',9695554647,724646,'BridgeLabz','Good','good','excellent',71,'Accepted','2019-12-14 04:27:39',4),(5,'Shivagami','g','pandey','shiva@gmail.com','Bangalore','BBA','2016-01-30',9694454647,724677,'BridgeLabz','Good','good','excellent',61,'Pending','2019-12-14 04:30:38',1),(6,'Sudeep','s','panchal','spanchal@gmail.com','Bangalore','B.Tech','2011-12-20',9694451245,726578,'BridgeLabz','Good','good','excellent',51,'Pending','2019-12-14 04:34:52',2),(7,'Amit','l','Bhandari','Amitchal@gmail.com','Mumbai','B.Tech','2019-12-10',9694984532,726565,'BridgeLabz','Excellent','good','excellent',91,'Pending','2019-12-14 04:46:16',2),(8,'Rahul','f','pandya','pandyabhai@gmail.com','Mumbai','BBA','2018-12-25',9694451215,726578,'BridgeLabz','Good','good','excellent',89,'Accepted','2019-12-14 04:47:12',3),(9,'Anand','k','kamin','Anandl@gmail.com','Bangalore','B.Tech','2011-12-20',9694451249,726576,'BridgeLabz','excellent','good','excellent',70,'Accepted','2019-12-14 04:47:44',4),(10,'priyank','n','panchal','snapchat@gmail.com','Bangalore','B.Tech','2011-12-20',9694451246,726345,'BridgeLabz','excellent','good','excellent',81,'Accepted','2019-12-14 04:48:16',4);
/*!40000 ALTER TABLE `Hired_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `Status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES (2,'BridgeLabz','Mumbai','Parel_East_mumbai_ghatkopar','pending','2019-12-13 13:01:03',3),(3,'BridgeLabz','Bangalore','HSR','pending','2019-12-13 13:01:33',3);
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_Threshold`
--

DROP TABLE IF EXISTS `Lab_Threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_Threshold` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(10) NOT NULL,
  `lab_capacity` int(10) NOT NULL,
  `lead_threshold` int(10) NOT NULL,
  `ideation_engg_threshold` int(10) NOT NULL,
  `buddy_engg_threshold` int(10) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Lab_Threshold_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_Threshold`
--

LOCK TABLES `Lab_Threshold` WRITE;
/*!40000 ALTER TABLE `Lab_Threshold` DISABLE KEYS */;
INSERT INTO `Lab_Threshold` VALUES (2,3,100,75,50,45,1,'2019-12-14 11:22:38',1),(3,2,100,75,50,45,1,'2019-12-14 11:23:25',2);
/*!40000 ALTER TABLE `Lab_Threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maker_Program`
--

DROP TABLE IF EXISTS `Maker_Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maker_Program` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(20) NOT NULL,
  `program_type` varchar(10) NOT NULL,
  `program_link` varchar(50) NOT NULL,
  `tech_stack_id` int(10) NOT NULL,
  `tech_type_id` int(10) NOT NULL,
  `is_program_approved` tinyint(1) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `tech_type_id` (`tech_type_id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Maker_Program_ibfk_1` FOREIGN KEY (`tech_stack_id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_2` FOREIGN KEY (`tech_type_id`) REFERENCES `Tech_Type` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_3` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maker_Program`
--

LOCK TABLES `Maker_Program` WRITE;
/*!40000 ALTER TABLE `Maker_Program` DISABLE KEYS */;
INSERT INTO `Maker_Program` VALUES (4,'java','java+DB','cd:/a/b/hello1.java',2,2,1,'OOPs','Approved','2019-12-14 10:50:01',2),(5,'java_backend','java+MySQL','cd:/a/b/hello2.java',3,3,1,'functional programs','Approved','2019-12-14 10:50:34',3),(6,'python','python+DB','cd:/a/b/hello3.java',4,4,1,'Algorithm programs','Approved','2019-12-14 10:55:02',4),(7,'vue','vue+mysql','cd:/a/b/hello4.java',5,5,1,'OOPs','Approved','2019-12-14 10:55:26',1),(8,'xamrin','xamrin+db','cd:/a/b/hello5.java',6,6,1,'OOPs','Approved','2019-12-14 10:56:19',2),(9,'java_frontend','java+react','cd:/a/b/hello6.java',7,7,1,'functional','Approved','2019-12-14 10:56:43',3),(10,'javaScript','JS+reactJS','cd:/a/b/hello7.java',8,8,1,' Algorithm','Approved','2019-12-14 10:57:03',4),(11,'c++','c+sql','cd:/a/b/hello8.java',9,9,1,'OOPs','Approved','2019-12-14 10:57:24',1),(12,'c#','c#+nosql','cd:/a/b/hello9.java',10,10,1,'Algorithm','Approved','2019-12-14 10:57:51',2),(13,'java','java+db','cd:/a/b/hello10.java',10,10,1,'OOPs','Approved','2019-12-14 10:58:09',4);
/*!40000 ALTER TABLE `Maker_Program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mentor_type` varchar(10) NOT NULL,
  `lab_id` int(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `lab_id` (`lab_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`Id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
INSERT INTO `Mentor` VALUES (1,'Amrutha singh','Buddy',2,'Approved','2019-12-13 13:09:13',2),(2,'kalpesh mali','Buddy',3,'Approved','2019-12-14 11:04:26',1),(3,'venkat reddy','Buddy',2,'Approved','2019-12-14 11:04:47',3),(4,'varsha','Buddy',3,'Approved','2019-12-14 11:05:12',4);
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Ideation_Map`
--

DROP TABLE IF EXISTS `Mentor_Ideation_Map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Ideation_Map` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`Id`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_2` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Ideation_Map`
--

LOCK TABLES `Mentor_Ideation_Map` WRITE;
/*!40000 ALTER TABLE `Mentor_Ideation_Map` DISABLE KEYS */;
INSERT INTO `Mentor_Ideation_Map` VALUES (1,1,1,'2019-12-14 12:13:08',1),(2,2,1,'2019-12-14 12:15:11',2),(3,3,1,'2019-12-14 12:16:56',3),(4,4,1,'2019-12-14 12:17:14',4);
/*!40000 ALTER TABLE `Mentor_Ideation_Map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Tech_Stack`
--

DROP TABLE IF EXISTS `Mentor_Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_id` int(10) NOT NULL,
  `tech_stack_id` int(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_3` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Tech_Stack`
--

LOCK TABLES `Mentor_Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Mentor_Tech_Stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mentor_Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Stack`
--

DROP TABLE IF EXISTS `Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(20) DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  `framework` varchar(20) NOT NULL,
  `cur_status` varchar(10) NOT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Tech_Stack_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Stack`
--

LOCK TABLES `Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Tech_Stack` DISABLE KEYS */;
INSERT INTO `Tech_Stack` VALUES (1,'java_backend','cd:/a/b/hello.java','hibernet','pending','2019-12-13 12:36:49',1),(2,'java','cd:/a/b/hello1.java','java_backend+DB','Approved','2019-12-14 09:35:53',2),(3,'java_backend','cd:/a/b/hello2.java','java_backend+DB','Approved','2019-12-14 09:57:06',3),(4,'vue','cd:/a/b/hello3.java','vue+DB','Approved','2019-12-14 09:57:33',4),(5,'javaScript','cd:/a/b/hello4.java','javaScript+DB','Approved','2019-12-14 09:57:57',1),(6,'xamarin','cd:/a/b/hello5.java','xamarin+DB','Approved','2019-12-14 09:58:19',2),(7,'java_Frontend','cd:/a/b/hello6.java','java_Frontend','Approved','2019-12-14 09:58:39',3),(8,'java_backend','cd:/a/b/hello7.java','java_backend+DB','Approved','2019-12-14 09:59:16',4),(9,'java','cd:/a/b/hello8.java','java_backend+DB','Approved','2019-12-14 09:59:44',2),(10,'python','cd:/a/b/hello9.java','python+Mongo_DB','Approved','2019-12-14 10:00:12',4);
/*!40000 ALTER TABLE `Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Type`
--

DROP TABLE IF EXISTS `Tech_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) DEFAULT NULL,
  `cur_status` varchar(50) DEFAULT NULL,
  `creator_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_user` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_user` (`creator_user`),
  CONSTRAINT `Tech_Type_ibfk_1` FOREIGN KEY (`creator_user`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Type`
--

LOCK TABLES `Tech_Type` WRITE;
/*!40000 ALTER TABLE `Tech_Type` DISABLE KEYS */;
INSERT INTO `Tech_Type` VALUES (1,'java_backend','pending','2019-12-13 12:41:43',4),(2,'python','Approved','2019-12-14 09:47:42',1),(3,'vue','Approved','2019-12-14 09:48:05',2),(4,'javaScript','pending','2019-12-14 09:48:36',3),(5,'xamarin','Approved','2019-12-14 09:48:55',4),(6,'java_backend','Approved','2019-12-14 09:49:16',1),(7,'java_Frontend','pending','2019-12-14 09:49:31',4),(8,'java','Approved','2019-12-14 09:49:47',2),(9,'java_Frontend','Approved','2019-12-14 09:50:02',3),(10,'java_backend','Approved','2019-12-14 09:50:18',1);
/*!40000 ALTER TABLE `Tech_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Details`
--

DROP TABLE IF EXISTS `User_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `contact_number` bigint(12) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Details`
--

LOCK TABLES `User_Details` WRITE;
/*!40000 ALTER TABLE `User_Details` DISABLE KEYS */;
INSERT INTO `User_Details` VALUES (1,'kalpesh.mali.sir@gmail.com','Kalpesh','Mali','admin',9897736873,1),(2,'vekatArjunReddy@gmail.com','venkat','reddy','admin',9897736874,1),(3,'Amruthakumar@gmail.com','amrutha','kumar','admin',9897736875,1),(4,'naveenshekhar@gmail.com','naveen','shekhar','admin',9897736876,1);
/*!40000 ALTER TABLE `User_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Roles`
--

DROP TABLE IF EXISTS `User_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Roles` (
  `user_id` int(10) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `User_Roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Roles`
--

LOCK TABLES `User_Roles` WRITE;
/*!40000 ALTER TABLE `User_Roles` DISABLE KEYS */;
INSERT INTO `User_Roles` VALUES (1,'mentor'),(2,'mentor'),(3,'mentor'),(4,'admin');
/*!40000 ALTER TABLE `User_Roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-28 19:22:09
