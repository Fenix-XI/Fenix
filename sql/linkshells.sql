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
-- Table structure for table `linkshells`
--

DROP TABLE IF EXISTS `linkshells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkshells` (
  `linkshellid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `color` smallint(5) unsigned NOT NULL DEFAULT '61440',
  `poster` varchar(15) NOT NULL DEFAULT '',
  `message` blob,
  `messagetime` int(10) unsigned NOT NULL DEFAULT '0',
  `postrights` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkshellid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkshells`
--

LOCK TABLES `linkshells` WRITE;
/*!40000 ALTER TABLE `linkshells` DISABLE KEYS */;
INSERT INTO `linkshells` VALUES (4,'GMchat',65376,'Fluxion','Aftermath = 30 seconds and JAs reset on zone until we can fix. Make sure no one exploits.',1456794668,0),(3,'Serverwide',61997,'Fluxion','Welcome to Exodus! Please avoid BCNMs until CS issue fixed. Quick reset tonight 3/7 3pmPST/6pmEST.',1457383281,0),(5,'HookersAndBlow',65535,'',NULL,0,0),(6,'TortoiseStomp',62368,'Gavvy','EST: WED2: 7p Kirin, 10p Tiamat ~ SAT5: 7p DBeauc ~ SUN6: 7p Rostrum Pumps, 9:30p Sacrarium ~ MON8: 8p DValkurm',1456915134,0),(7,'LetsFightingLove',61440,'',NULL,0,0),(8,'LimitBreak',65413,'Dave','All day long I dream about Patterpawsk?',1457198408,0),(9,'BrothersofBoredom',64268,'',NULL,0,0),(10,'LostSouls',63548,'Takemysoul','have fun in here!',1456165049,0),(11,'DawnOfEchoes',65439,'',NULL,0,0),(12,'Destiny',65535,'',NULL,0,0),(13,'Prismatic',64955,'Lillyann','Hey everyone :3 Let\'s get back to working on leveling :D ',1456580827,0),(14,'Unity',65392,'Drakon','Welcome to Unity! *insert ý\r…ý here*',1456610698,0),(15,'EbonAskavi',61953,'Nekoduo','LS aka Friendslist =)',1456982662,0),(16,'Derptastic',64277,'',NULL,0,0),(17,'Illuminati',62979,'Tyron','Welcome to IlluminatI! Dyna-Jeuno Thurs @6:30 pm est - Dyna-Beaucedine Fri @6:30pm est -',1457286777,0);
/*!40000 ALTER TABLE `linkshells` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-07 17:35:57
