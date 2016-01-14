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
-- Table structure for table `server_variables`
--

DROP TABLE IF EXISTS `server_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_variables` (
  `name` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_variables`
--

LOCK TABLES `server_variables` WRITE;
/*!40000 ALTER TABLE `server_variables` DISABLE KEYS */;
INSERT INTO `server_variables` VALUES ('[BF]Save_The_Children_record',14),('[BF]The_Holy_Crest_record',600),('[BF]Mission_2-3_Horlais_Peak_record',600),('[BF]Mission_2-3_Balgas_Dais_record',18),('[BF]Mission_2-3_Waughroon_record',600),('[BF]Shattering_Stars_job1_record',600),('[BF]Shattering_Stars_job2_record',600),('[BF]Shattering_Stars_job3_record',600),('[BF]Shattering_Stars_job4_record',600),('[BF]Shattering_Stars_job5_record',600),('[BF]Shattering_Stars_job6_record',600),('[BF]Shattering_Stars_job7_record',600),('[BF]Shattering_Stars_job8_record',600),('[BF]Shattering_Stars_job9_record',600),('[BF]Shattering_Stars_job10_record',600),('[BF]Shattering_Stars_job11_record',600),('[BF]Shattering_Stars_job12_record',600),('[BF]Shattering_Stars_job13_record',600),('[BF]Shattering_Stars_job14_record',600),('[BF]Shattering_Stars_job15_record',600),('[BF]Zilart_Mission_4_record',600),('[CHOCOBO][245]Price',225),('[CHOCOBO][244]Time',1452542072),('[CHOCOBO][244]Price',225),('[CHOCOBO][241]Time',1452490003),('[CHOCOBO][241]Price',100),('[CHOCOBO][234]Time',1452562165),('[CHOCOBO][234]Price',120),('[CHOCOBO][230]Time',1452578688),('[CHOCOBO][230]Price',120),('Bastok8-1LastClear',1452489700),('[TEMP]Respawn_qm1_for_curtana',0),('[TEMP]Respawn_qm1_for_rattle',0),('[TEMP]Respawn_qm2_for_offering',1452402901),('[TEMP]Respawn_qm3_for_whistle',0),('[POP]Beryl-footed_Molberry',0),('[POP]Crimson-toothed_Pawberry',1452397727),('[LANTERN]_rancor_nw_last_lit',0),('[LANTERN]_rancor_ne_last_lit',0),('[LANTERN]_rancor_sw_last_lit',0),('[LANTERN]_rancor_se_last_lit',0),('[ZM4]Fire_Headstone_Active',0),('[ZM4]Wind_Headstone_Active',0),('[ZM4]Lightning_Headstone_Active',0),('[ZM4]Light_Headstone_Active',0),('[BF]Mission_5-1_Enter',0),('[BF]Mission_5-1_QuBia_Arena_record',15),('[GUILD]pattern_update',12),('[GUILD]pattern',3),('Old_Prof_Spawn_Location',5),('Heliodromos_ToD',1452747019),('[SEA]Jailer_of_Temperance_PH',16916525),('[SEA]IxAernDRG_PH',16920785),('[CHOCOBO][245]Time',1452556778),('[CHOCOBO][246]Price',225),('[CHOCOBO][246]Time',1452588209),('[CHOCOBO][250]Price',90),('[CHOCOBO][250]Time',1452490003),('[CHOCOBO][252]Price',100),('[CHOCOBO][252]Time',1452580846),('[CHOCOBO][247]Price',110),('[CHOCOBO][247]Time',1452511206),('[CHOCOBO][102]Price',225),('[CHOCOBO][102]Time',1452551850),('[CHOCOBO][108]Price',225),('[CHOCOBO][108]Time',1452623116),('[CHOCOBO][117]Price',225),('[CHOCOBO][117]Time',1452570555),('[CHOCOBO][114]Price',225),('[CHOCOBO][114]Time',1452547157),('[CHOCOBO][124]Price',200),('[CHOCOBO][124]Time',1452490003),('[CHOCOBO][48]Price',275),('[CHOCOBO][48]Time',1452567005),('[CHOCOBO][51]Price',200),('[CHOCOBO][51]Time',1452490003),('[CHOCOBO][80]Price',150),('[CHOCOBO][80]Time',1452490003),('[CHOCOBO][87]Price',150),('[CHOCOBO][87]Time',1452490003),('[CHOCOBO][94]Price',150),('[CHOCOBO][94]Time',1452490003),('[CHOCOBO][82]Price',200),('[CHOCOBO][82]Time',1452490003),('[CHOCOBO][90]Price',200),('[CHOCOBO][90]Time',1452490003),('[CHOCOBO][97]Price',200),('[CHOCOBO][97]Time',1452490003),('[PH]Aspidochelone',3),('[POP]Za_Dha_Adamantking',1452496558),('[POP]Valkurm_Emperor',1452587926),('[PH]Carnero',17215638),('[POP]Pelican',1452434035),('Rose_Garden_PH',17281356),('[POP]Leaping_Lizzy',1452529143),('[PH]Charybdis',17498518),('[PH]King_Behemoth',2),('[DynaBuburimu]Boss_Trigger',1),('[POP]Quu_Domi_the_Gallant',1452574846),('[PH]Leaping_Lizzy',17215887);
/*!40000 ALTER TABLE `server_variables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-13  9:49:49
