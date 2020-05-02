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
-- Table structure for table `zq_config_table_edit_item`
--

DROP TABLE IF EXISTS `zq_config_table_edit_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zq_config_table_edit_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `is_approval` tinyint(1) NOT NULL DEFAULT '1',
  `add_user_id` smallint(6) NOT NULL DEFAULT '0',
  `zt_id` smallint(6) NOT NULL DEFAULT '1',
  `is_input_hidden` varchar(5) NOT NULL DEFAULT '',
  `default_str` varchar(200) NOT NULL DEFAULT '',
  `is_update_required` varchar(5) NOT NULL DEFAULT '',
  `is_update` varchar(5) NOT NULL DEFAULT '',
  `is_insert_required` varchar(5) NOT NULL DEFAULT '',
  `tip` varchar(200) NOT NULL DEFAULT '',
  `is_insert` varchar(5) NOT NULL DEFAULT '',
  `search_type` varchar(10) NOT NULL DEFAULT '',
  `is_search` varchar(5) NOT NULL DEFAULT '',
  `is_show_list` varchar(5) NOT NULL DEFAULT '',
  `data_type` varchar(45) NOT NULL DEFAULT '',
  `title` varchar(45) NOT NULL DEFAULT '',
  `db_field_name` varchar(45) NOT NULL DEFAULT '',
  `ctel_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_db_ctel_id` (`db_field_name`,`ctel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='单表配置字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_config_table_edit_item`
--

LOCK TABLES `zq_config_table_edit_item` WRITE;
/*!40000 ALTER TABLE `zq_config_table_edit_item` DISABLE KEYS */;
INSERT INTO `zq_config_table_edit_item` VALUES (11,1588232180,1588232469,1,1,1,'','','','','','','','','','是','string','ID','id',2),(17,1588236303,1588236549,1,1,1,'是','','','','','','是','','','是','string','父表ID','ctel_id',2),(18,1588236592,1588236654,1,1,1,'','','是','是','是','小写英文字母开头，只能小写英文及数字','是','like','是','是','string','字段名','db_field_name',2),(19,1588236657,1588236683,1,1,1,'','','是','是','是','','是','like','是','是','string','标题','title',2),(20,1588237014,1588237037,1,1,1,'','','是','是','是','','是','','','是','string','数据类型','data_type',2),(21,1588237039,1588237068,1,1,1,'','是','','是','','','是','','','是','checkbox','列表中显示','is_show_list',2),(22,1588237069,1588237094,1,1,1,'','是','','是','','','是','','','是','checkbox','列表中能搜索','is_search',2),(23,1588237096,1588237115,1,1,1,'','是','','是','','','是','','','是','checkbox','能添加','is_insert',2),(24,1588237120,1588237143,1,1,1,'','是','','是','','','是','','','是','checkbox','添加必填','is_insert_required',2),(25,1588237144,1588237161,1,1,1,'','是','','是','','','是','','','是','checkbox','能更新','is_update',2),(26,1588237178,1588237196,1,1,1,'','是','','是','','','是','','','是','checkbox','更新必填','is_update_required',2),(27,1588237198,1588237245,1,1,1,'','是','','是','','编辑页面类型为hidden','是','','','','checkbox','input hidden','is_input_hidden',2),(28,1588237247,1588237277,1,1,1,'','','','是','','','是','','','是','string','搜索类型','search_type',2),(29,1588237280,1588237294,1,1,1,'','','','是','','','是','','','','string','提示','tip',2),(30,1588237296,1588237316,1,1,1,'','','','是','','','是','','','是','string','默认值','default_str',2),(33,1588240674,1588240698,1,1,1,'','','','','','','','','','是','string','ID','id',1),(34,1588240699,1588240734,1,1,1,'','','是','是','是','','是','','是','是','string','关键字','keyword',1),(35,1588240735,1588240755,1,1,1,'','','是','是','是','','是','','是','是','string','页面标题','page_title',1),(36,1588240758,1588240781,1,1,1,'','','是','是','是','','是','','','是','string','模块名','page_model',1),(37,1588240832,1588240845,1,1,1,'','','是','是','是','','是','','是','是','string','表名','table_name',1),(40,1588241187,1588241210,1,1,1,'','是','','是','','','是','','','是','checkbox','允许删除','is_del',1),(41,1588241211,1588241230,1,1,1,'','是','','是','','','是','','','是','checkbox','允许添加','is_add',1),(42,1588241231,1588241259,1,1,1,'','是','','是','','','是','','','是','checkbox','允许编辑','is_edit',1),(43,1588241274,1588241292,1,1,1,'','','','是','','','是','','','','string','排序','list_order',1),(44,1588241294,1588241307,1,1,1,'','','','是','','','是','','','是','string','where','list_where',1),(45,1588241312,1588241348,1,1,1,'','','','是','','添加或编辑弹出的窗口的宽以px或%结尾','是','','','是','string','编辑窗口宽','edit_window_width',1),(46,1588241356,1588241377,1,1,1,'','','','是','','添加或编辑弹出的窗口的高以px或%结尾	','是','','','是','string','编辑窗口高','edit_window_height',1),(47,1588241386,1588241541,1,1,1,'','','','是','','','是','','','','text','操作列自定义额外html','addition_option_html',1),(48,1588241542,1588241607,1,1,1,'','','','是','','配置字段允许哪些使用可以外部传入的变量，用,分隔字段。比如想通过get post配置list_order额外配置，请访问 ip/admin/tools/table-edit-list-view/zq_user?list_order=u_id,那么实际使用的list_order=list_order配置和get(','是','','','','string','允许使用外部变量','allow_config_from_request',1),(50,0,1588325649,1,1,1,'','','','是','','添加页面form额外的html','是','','','','text','添加页面form额外的html','add_page_addition_html',1),(51,0,1588325635,1,1,1,'','','','是','','编辑页面form额外的html','是','','','','text','编辑页面form额外的html','edit_page_addition_html',1),(52,0,0,1,1,1,'','','','是','','列表里添加按钮拼接html','是','','','','text','列表添加按钮拼接html','add_button_addition_html',1),(53,0,0,1,1,1,'','','','是','','列表里编辑按钮拼接html','是','','','','text','列表里编辑按钮拼接html','edit_button_addition_html',1),(54,0,0,1,1,1,'是','','','','','','','','','是','string','ID','id',3),(55,0,0,1,1,1,'','','','','','','','like','是','是','string','用户名','username',3),(56,0,0,1,1,1,'','','是','是','','','','like','是','是','string','电话','mobile',3),(57,1588325881,1588325881,1,1,1,'','','','是','','列表按钮区额外html','是','','','','text','列表按钮区额外html','button_area_addition_html',1);
/*!40000 ALTER TABLE `zq_config_table_edit_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 23:59:45