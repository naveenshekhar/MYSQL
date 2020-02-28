-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: FundooNotes
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `collaborator`
--

DROP TABLE IF EXISTS `collaborator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collaborator` (
  `collaborator_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collaborator_email` varchar(255) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collaborator_id`),
  KEY `FK546yiic20mli2cwnvi3uj8eoj` (`id`),
  CONSTRAINT `FK546yiic20mli2cwnvi3uj8eoj` FOREIGN KEY (`id`) REFERENCES `note` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collaborator`
--

LOCK TABLES `collaborator` WRITE;
/*!40000 ALTER TABLE `collaborator` DISABLE KEYS */;
/*!40000 ALTER TABLE `collaborator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lables`
--

DROP TABLE IF EXISTS `lables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lables` (
  `label_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  KEY `FKtmfc9ydoxg0pm9lonocmpq77g` (`user_id`),
  CONSTRAINT `FKtmfc9ydoxg0pm9lonocmpq77g` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lables`
--

LOCK TABLES `lables` WRITE;
/*!40000 ALTER TABLE `lables` DISABLE KEYS */;
INSERT INTO `lables` VALUES (2,'saregampadanisha',1),(3,'ooolalaooolala..',1),(5,'hello...world',1),(6,'hello...world',1),(7,'hello...world',1),(8,'hello...world',1),(9,'hello...world',1);
/*!40000 ALTER TABLE `lables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `creation_time` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `is_pinned` tinyint(1) DEFAULT '0',
  `is_trashed` tinyint(1) DEFAULT '0',
  `reminder` tinyint(1) DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmoddtnuw3yy6ct34xnw6u0boh` (`user_id`),
  CONSTRAINT `FKmoddtnuw3yy6ct34xnw6u0boh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,NULL,'2020-02-14 11:35:07.178000','choda ye ghar bar sara ooo makhna ve makhna....paagal sa hai pyar mera oooo mkhna ve makhna',0,0,0,0,'ooo makhna',3),(2,NULL,'2020-02-14 11:35:07.178000','Kabhi na kabhi to milogi humko yaqeen hai..',0,0,0,0,'kabhi',3),(3,NULL,'2020-02-14 11:35:07.178000','hai junoon.....na nanannnana nannan nanana ',0,0,0,0,'newyork',3),(4,NULL,'2020-02-14 11:35:07.178000','hai junoon.....na nanannnana nannan nanana ',0,0,0,0,'newyork',3),(5,NULL,'2020-02-14 11:35:07.178000','inkem inkem inkem kawale...chaale ,... ',0,0,0,0,'geetagovindam',3),(6,NULL,'2020-02-14 11:35:07.178000','inkem inkem inkem kawale...chaale ,... ',0,0,0,0,'geetagovindam',3);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_pic`
--

DROP TABLE IF EXISTS `profile_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_pic_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdbp47g424eup38081t3t312xo` (`user_id`),
  CONSTRAINT `FKdbp47g424eup38081t3t312xo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_pic`
--

LOCK TABLES `profile_pic` WRITE;
/*!40000 ALTER TABLE `profile_pic` DISABLE KEYS */;
INSERT INTO `profile_pic` VALUES (1,'profilepic.jpeg',3);
/*!40000 ALTER TABLE `profile_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `is_user_available` tinyint(1) DEFAULT '0',
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'naveen.shekhar624@gmail.com','naveen',0,'shekhar','$2a$10$dvuiISqZyBcLz3pigrKAv.6rWaCKhj4o9JuVMnKZGFCstdmKQmZou','9856326598',1),(3,'naveen.shekharetc@gmail.com','kavya',0,'katiyar','$2a$10$1VtPI83dF4E9fhBIzDFDO.bZ9PGIUGqNhyn6HUcL1KK9FYQsX9/Pm','9878675654',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 11:48:42
