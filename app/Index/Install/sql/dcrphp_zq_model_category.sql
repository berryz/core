-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: dcrphp
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zq_model_category`
--

DROP TABLE IF EXISTS `zq_model_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zq_model_category` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_add_time` int(11) NOT NULL DEFAULT '0',
  `mc_update_time` int(11) NOT NULL DEFAULT '0',
  `mc_approval_status` tinyint(4) NOT NULL DEFAULT '1',
  `mc_add_user_id` smallint(6) NOT NULL DEFAULT '0',
  `zt_id` smallint(6) NOT NULL DEFAULT '1',
  `mc_model_name` varchar(45) NOT NULL DEFAULT '',
  `mc_name` varchar(45) NOT NULL DEFAULT '',
  `mc_parent_id` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_model_category`
--

LOCK TABLES `zq_model_category` WRITE;
/*!40000 ALTER TABLE `zq_model_category` DISABLE KEYS */;
INSERT INTO `zq_model_category` VALUES (1,1583047244,1583398896,0,1,1,'news','系统说明',0),(3,1583047705,1583047705,0,1,1,'news','跨境电商',0),(8,1583048110,1583048110,0,1,1,'info','基础',0),(9,1583398310,1583398310,0,1,1,'product','模板中心',0),(10,1583398368,1583398368,0,1,1,'product','维护中心',0);
/*!40000 ALTER TABLE `zq_model_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-27 23:08:23
