-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dspdb
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `conquest_system`
--

DROP TABLE IF EXISTS `conquest_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conquest_system` (
  `region_id` tinyint(2) NOT NULL DEFAULT '0',
  `region_control` tinyint(2) NOT NULL DEFAULT '0',
  `region_control_prev` tinyint(2) NOT NULL DEFAULT '0',
  `sandoria_influence` int(10) NOT NULL DEFAULT '0',
  `bastok_influence` int(10) NOT NULL DEFAULT '0',
  `windurst_influence` int(10) NOT NULL DEFAULT '0',
  `beastmen_influence` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conquest_system`
--

LOCK TABLES `conquest_system` WRITE;
/*!40000 ALTER TABLE `conquest_system` DISABLE KEYS */;
INSERT INTO `conquest_system` VALUES (0,0,1,0,5000,0,0),(1,3,1,4000,0,0,0),(2,3,1,0,5000,0,0),(3,0,1,0,4990,0,10),(4,1,0,0,5000,0,0),(5,1,0,0,5000,0,0),(6,1,0,4975,0,23,2),(7,1,0,0,4950,0,50),(8,0,0,5000,0,0,0),(9,1,3,0,0,4700,300),(10,0,3,0,4990,10,0),(11,1,3,4927,75,75,-77),(12,3,3,-314,0,256,5058),(13,3,3,5000,0,0,0),(14,1,3,5000,0,0,0),(15,0,3,5000,0,0,0),(16,3,3,62,-54,32,4960),(17,3,3,589,698,231,3482),(18,3,3,0,13,0,4987);
/*!40000 ALTER TABLE `conquest_system` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-07 22:44:51
