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
INSERT INTO `server_variables` VALUES ('[BF]Save_The_Children_record',14),('[BF]The_Holy_Crest_record',600),('[BF]Mission_2-3_Horlais_Peak_record',600),('[BF]Mission_2-3_Balgas_Dais_record',18),('[BF]Mission_2-3_Waughroon_record',600),('[BF]Shattering_Stars_job1_record',600),('[BF]Shattering_Stars_job2_record',600),('[BF]Shattering_Stars_job3_record',600),('[BF]Shattering_Stars_job4_record',600),('[BF]Shattering_Stars_job5_record',600),('[BF]Shattering_Stars_job6_record',600),('[BF]Shattering_Stars_job7_record',600),('[BF]Shattering_Stars_job8_record',600),('[BF]Shattering_Stars_job9_record',600),('[BF]Shattering_Stars_job10_record',600),('[BF]Shattering_Stars_job11_record',600),('[BF]Shattering_Stars_job12_record',600),('[BF]Shattering_Stars_job13_record',600),('[BF]Shattering_Stars_job14_record',600),('[BF]Shattering_Stars_job15_record',600),('[BF]Zilart_Mission_4_record',600),('[CHOCOBO][245]Price',225),('[CHOCOBO][244]Time',1450760915),('[CHOCOBO][244]Price',250),('[CHOCOBO][241]Time',1450588147),('[CHOCOBO][241]Price',100),('[CHOCOBO][234]Time',1450673844),('[CHOCOBO][234]Price',130),('[CHOCOBO][230]Time',1450799769),('[CHOCOBO][230]Price',120),('Bastok8-1LastClear',1450587844),('[TEMP]Respawn_qm1_for_curtana',0),('[TEMP]Respawn_qm1_for_rattle',1450073028),('[TEMP]Respawn_qm2_for_offering',1450073617),('[TEMP]Respawn_qm3_for_whistle',1447118097),('[POP]Beryl-footed_Molberry',0),('[POP]Crimson-toothed_Pawberry',1450069035),('[LANTERN]_rancor_nw_last_lit',0),('[LANTERN]_rancor_ne_last_lit',0),('[LANTERN]_rancor_sw_last_lit',0),('[LANTERN]_rancor_se_last_lit',0),('[BF]Mission_5-1_Enter',0),('[BF]Mission_5-1_QuBia_Arena_record',15),('[SEA]Jailer_of_Temperance_PH',16916525),('Noble_Mold_PH',17273276),('[PH]Valkurm_Emperor',17199419),('[GUILD]pattern_update',355),('[POP]Valkurm_Emperor',1450556810),('[GUILD]pattern',3),('Old_Prof_Spawn_Location',4),('Heliodromos_ToD',1450634964),('[SEA]IxAernDRG_PH',16920785),('[CHOCOBO][245]Time',1450777201),('[CHOCOBO][246]Price',230),('[CHOCOBO][246]Time',1450770574),('[CHOCOBO][250]Price',90),('[CHOCOBO][250]Time',1450588147),('[CHOCOBO][252]Price',90),('[CHOCOBO][252]Time',1450588147),('[CHOCOBO][247]Price',90),('[CHOCOBO][247]Time',1450588147),('[CHOCOBO][102]Price',225),('[CHOCOBO][102]Time',1450728837),('[CHOCOBO][108]Price',200),('[CHOCOBO][108]Time',1450588147),('[CHOCOBO][117]Price',225),('[CHOCOBO][117]Time',1450750030),('[CHOCOBO][114]Price',200),('[CHOCOBO][114]Time',1450588147),('[CHOCOBO][124]Price',225),('[CHOCOBO][124]Time',1450723698),('[CHOCOBO][48]Price',275),('[CHOCOBO][48]Time',1450689896),('[CHOCOBO][51]Price',200),('[CHOCOBO][51]Time',1450588147),('[CHOCOBO][80]Price',150),('[CHOCOBO][80]Time',1450588147),('[CHOCOBO][87]Price',150),('[CHOCOBO][87]Time',1450588147),('[CHOCOBO][94]Price',150),('[CHOCOBO][94]Time',1450588147),('[CHOCOBO][82]Price',200),('[CHOCOBO][82]Time',1450588147),('[CHOCOBO][90]Price',200),('[CHOCOBO][90]Time',1450588147),('[CHOCOBO][97]Price',200),('[CHOCOBO][97]Time',1450588147),('[PH]Stinging_Sophie',17211532),('[PH]Leaping_Lizzy',17215867),('[POP]Despot',1450709632),('[POP]Quu_Domi_the_Gallant',1450815843),('[POP]Ungur',1449728047),('[PH]Dune_Widow',17244281),('[POP]Charybdis',1449852698),('[ZM4]Lightning_Headstone_Active',1449546993),('[ZM4]Wind_Headstone_Active',1449586377),('[ZM4]Light_Headstone_Active',1449546633),('Rose_Garden_PH',17281356),('[ZM4]Fire_Headstone_Active',1449587944),('[POP]Aspidochelone',1449868408),('[DynaSandoria]Boss_Trigger',4),('Taisaijin_PH',17457213),('[POP]Nis_Puk',1446149593),('[PH]Hoo_Mjuu_the_Torrent',17371486),('[POP]Nidhogg',1446673243),('[POP]King_Behemoth',1450993737),('[DynaSandoria]Already_Received',128),('[POP]Leaping_Lizzy',1450678251),('AV_Regen_Reduction',12),('[POP]Za_Dha_Adamantking',1445218192),('Chariotbuster_Byakzak',1447703702),('Colorful_Leshy_PH',16875759),('[PH]Swamfisk',17191287),('[POP]Fungus_Beetle',1449981303),('[PH]Peg_Powler',17649774),('[PH]Tom_Tit_Tat',17248545),('[PH]Spiny_Spipi',17252656),('[POP]Amemet',1446451418),('[DOOR]Weight_Sensor_11',1),('[POP]Mee_Deggi_the_Punisher',1450396042),('Defoliate_Leshy_PH',16875762),('[POP]Carnero',1447701689),('[PH]Blubbery_Bulge',17387919),('[POP]Frostmane',1447378810),('[PH]Sewer_Syrup',17461294),('[POP]Wyvernpoacher_Drachlox',1447156254),('[POP]Deadly_Dodo',1447465488),('[POP]Nue',1447343600),('[PH]Hellion',17649797),('[POP]Jaggedy_Eared_Jack',1449475332),('[PH]Carnero',17215645),('[PH]Nidhogg',1),('[POP]Mahishasura',1449998652),('[PH]Jaggedy_Eared_Jack',17187108),('[POP]Goblinsavior_Heronox',1450795433),('[DynaBastok]Boss_Trigger',4),('[PH]Aspidochelone',7),('[PH]Amemet',17490003),('[DynaWindurst]Boss_Trigger',16),('[DynaWindurst]Already_Received',1792),('[PH]Ose',17649813),('[DynaBastok]Already_Received',64);
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

-- Dump completed on 2015-12-22 14:21:12
