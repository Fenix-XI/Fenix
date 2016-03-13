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
INSERT INTO `server_variables` VALUES ('[BF]Save_The_Children_record',14),('[BF]The_Holy_Crest_record',600),('[BF]Mission_2-3_Horlais_Peak_record',600),('[BF]Mission_2-3_Balgas_Dais_record',18),('[BF]Mission_2-3_Waughroon_record',600),('[BF]Shattering_Stars_job1_record',600),('[BF]Shattering_Stars_job2_record',600),('[BF]Shattering_Stars_job3_record',600),('[BF]Shattering_Stars_job4_record',600),('[BF]Shattering_Stars_job5_record',600),('[BF]Shattering_Stars_job6_record',600),('[BF]Shattering_Stars_job7_record',600),('[BF]Shattering_Stars_job8_record',600),('[BF]Shattering_Stars_job9_record',600),('[BF]Shattering_Stars_job10_record',600),('[BF]Shattering_Stars_job11_record',600),('[BF]Shattering_Stars_job12_record',600),('[BF]Shattering_Stars_job13_record',600),('[BF]Shattering_Stars_job14_record',600),('[BF]Shattering_Stars_job15_record',600),('[BF]Zilart_Mission_4_record',600),('[CHOCOBO][245]Price',200),('[CHOCOBO][244]Time',1457875812),('[CHOCOBO][244]Price',225),('[CHOCOBO][241]Time',1457844204),('[CHOCOBO][241]Price',100),('[CHOCOBO][234]Time',1457844204),('[CHOCOBO][234]Price',100),('[CHOCOBO][230]Time',1457844726),('[CHOCOBO][230]Price',120),('Bastok8-1LastClear',1457843904),('[TEMP]Respawn_qm1_for_curtana',0),('[TEMP]Respawn_qm1_for_rattle',1452950553),('[TEMP]Respawn_qm2_for_offering',1457733042),('[TEMP]Respawn_qm3_for_whistle',1453789241),('[POP]Beryl-footed_Molberry',0),('[POP]Crimson-toothed_Pawberry',1454780175),('[LANTERN]_rancor_nw_last_lit',0),('[LANTERN]_rancor_ne_last_lit',0),('[LANTERN]_rancor_sw_last_lit',0),('[LANTERN]_rancor_se_last_lit',0),('[PH]Dune_Widow',17244397),('[ZM4]Light_Headstone_Active',1456900343),('[BF]Mission_5-1_Enter',0),('[BF]Mission_5-1_QuBia_Arena_record',15),('[GUILD]pattern_update',72),('[GUILD]pattern',1),('Old_Prof_Spawn_Location',3),('Heliodromos_ToD',1457888156),('[SEA]Jailer_of_Temperance_PH',16916560),('[CHOCOBO][245]Time',1457844204),('[CHOCOBO][246]Price',225),('[CHOCOBO][246]Time',1457847104),('[CHOCOBO][250]Price',100),('[CHOCOBO][250]Time',1457844729),('[CHOCOBO][252]Price',90),('[CHOCOBO][252]Time',1457844204),('[CHOCOBO][247]Price',90),('[CHOCOBO][247]Time',1457844204),('[CHOCOBO][102]Price',225),('[CHOCOBO][102]Time',1457848044),('[CHOCOBO][108]Price',200),('[CHOCOBO][108]Time',1457844204),('[CHOCOBO][117]Price',200),('[CHOCOBO][117]Time',1457844204),('[CHOCOBO][114]Price',200),('[CHOCOBO][114]Time',1457844204),('[CHOCOBO][124]Price',200),('[CHOCOBO][124]Time',1457844204),('[CHOCOBO][48]Price',250),('[CHOCOBO][48]Time',1457844204),('[CHOCOBO][51]Price',200),('[CHOCOBO][51]Time',1457844204),('[CHOCOBO][80]Price',150),('[CHOCOBO][80]Time',1457844204),('[CHOCOBO][87]Price',150),('[CHOCOBO][87]Time',1457844204),('[CHOCOBO][94]Price',150),('[CHOCOBO][94]Time',1457844204),('[CHOCOBO][82]Price',200),('[CHOCOBO][82]Time',1457844204),('[CHOCOBO][90]Price',200),('[CHOCOBO][90]Time',1457844204),('[CHOCOBO][97]Price',200),('[CHOCOBO][97]Time',1457844204),('[PH]Amemet',17489934),('[POP]Za_Dha_Adamantking',1456415721),('[POP]Valkurm_Emperor',1457651471),('[POP]Pelican',1452434035),('Rose_Garden_PH',17281356),('[POP]Leaping_Lizzy',1457513422),('[POP]Hoo_Mjuu_the_Torrent',1455777499),('[POP]Quu_Domi_the_Gallant',1457349163),('Colorful_Leshy_PH',16875757),('[MINING]Zone 196',1),('[POP]Nue',1457709181),('[POP]Deadly_Dodo',1457627278),('Voluptuous_Vilma_PH',17281357),('[POP]King_Behemoth',1457503179),('[POP]Thousandarm_Deshglesh',1454560172),('Noble_Mold_PH',17273277),('Chariotbuster_Byakzak',1454343276),('[PH]Aspidochelone',3),('[POP]Charybdis',1456534228),('[POP]Carnero',1456605892),('[POP]Jaggedy_Eared_Jack',1457699415),('[POP]Despot',1457744440),('[POP]Ramponneau',1457715509),('[POP]Aspidochelone',1457496583),('[POP]Sewer_Syrup',1457660176),('[ZM4]Fire_Headstone_Active',1456905210),('[POP]Ungur',1457245588),('[ZM4]Wind_Headstone_Active',1456905971),('[POP]Lord_of_Onzozo',1454110729),('[PH]Demonic_Tiphia',17584395),('[PH]Nidhogg',4),('[POP]Ose',1454954209),('[POP]Shii',1454484647),('[SEA]IxAernDRG_PH',16920787),('[POP]Mee_Deggi_the_Punisher',1457350021),('[POP]Nidhogg',1456467569),('[PH]Tzee_Xicu_the_Manifest',1),('[PH]Ashmaker_Gotblut',17358925),('[POP]Golden_Bat',1457273703),('[POP]Biast',1456869906),('[ZM4]Lightning_Headstone_Active',1456645234),('[EXCAVATION]Zone 198',1),('[POP]Wyvernpoacher_Drachlox',1456475415),('[DynaBuburimu]Boss_Trigger',1),('[POP]Fungus_Beetle',1457442227),('[POP]Voluptuous_Vivian',1456949509),('[PH]Dame_Blanche',17486128),('[POP]Duke_Decapod',1457065196),('[PH]King_Behemoth',2),('[POP]Swamfisk',1457209933),('[POP]Tom_Tit_Tat',1457841942),('[POP]Nunyenunc',1457845239),('[SW_Apollyon]UniqueID',968634),('[SW_Apollyon]ElementalTrigger',8),('[SW_Apollyon]MimicTrigger',1),('[NW_Apollyon]UniqueID',936697);
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

-- Dump completed on 2016-03-13 10:35:56
