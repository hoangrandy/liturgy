-- MySQL dump 10.13  Distrib 5.5.37, for Linux (x86_64)
--
-- Host: localhost    Database: bluepego_faith
-- ------------------------------------------------------
-- Server version	5.5.37-log

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
-- Table structure for table `authorizations`
--

DROP TABLE IF EXISTS `authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorizations` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` smallint(6) NOT NULL,
  `activity` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `writable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorizations`
--

LOCK TABLES `authorizations` WRITE;
/*!40000 ALTER TABLE `authorizations` DISABLE KEYS */;
INSERT INTO `authorizations` VALUES (5,1,'calendar:list',1),(4,1,'liturgy:list',1),(3,1,'liturgy:save',1),(2,1,'liturgy:delete',1),(1,1,'song:list',1),(6,1,'song:edit',1),(7,1,'composer:edit',1);
/*!40000 ALTER TABLE `authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liturgies`
--

DROP TABLE IF EXISTS `liturgies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liturgies` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(64) CHARACTER SET utf16 NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liturgies`
--

LOCK TABLES `liturgies` WRITE;
/*!40000 ALTER TABLE `liturgies` DISABLE KEYS */;
INSERT INTO `liturgies` VALUES (1,'Thirty-Third Sunday in Ordinary Time','2013-11-17 09:30:00','St. Elizabeth',1),(2,'Our Lord Jesus Christ, King of the Universe','2013-11-24 09:30:00','St. Elizabeth',0),(3,'Fourth Sunday of Advent','2013-12-22 09:30:00','',1),(4,'Third Sunday of Advent','2013-12-15 09:30:00','',1),(5,'Solemnity of the Nativity of the Lord','2013-12-25 09:30:00','',1),(6,'Feast of the Holy Family','2013-12-29 09:30:00','',1),(7,'Third Sunday In Ordinary Time','2014-01-26 09:30:00','',1),(8,'Seventh Sunday In Ordinary Time','2014-02-23 09:30:00','',1),(9,'Second Sunday of Lent','2014-03-16 09:30:00','',1),(10,'Third Sunday of Lent','2014-03-23 09:30:00','',1),(11,'Fourth Sunday of Lent','2014-03-30 09:30:00','',1),(12,'The Resurrection of the Lord','2014-04-20 09:30:00','',1),(13,'Second Sunday of Easter','2014-04-27 09:30:00','',1),(14,'Sixth Sunday of Easter','2014-05-25 09:30:00','',1),(15,'The Most Holy Body and Blood of Christ','2014-06-22 09:30:00','',1),(16,'Solemnity of Saints Peter and Paul, Apostles','2014-06-29 09:30:00','',1);
/*!40000 ALTER TABLE `liturgies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liturgy_part`
--

DROP TABLE IF EXISTS `liturgy_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liturgy_part` (
  `liturgy_id` smallint(6) NOT NULL,
  `part_id` smallint(6) NOT NULL,
  `song_id` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liturgy_part`
--

LOCK TABLES `liturgy_part` WRITE;
/*!40000 ALTER TABLE `liturgy_part` DISABLE KEYS */;
INSERT INTO `liturgy_part` VALUES (1,15,14),(1,13,521),(1,12,561),(1,11,561),(1,10,561),(1,9,561),(1,8,1),(1,6,561),(1,5,130),(1,4,561),(1,2,81),(2,2,131),(2,15,536),(2,13,329),(2,12,561),(2,11,561),(2,10,561),(2,9,561),(2,8,521),(2,6,561),(2,5,305),(2,4,561),(4,15,27),(4,13,409),(4,12,561),(4,11,561),(4,10,561),(4,9,561),(4,8,30),(4,6,561),(4,5,532),(4,3,561),(4,2,81),(3,15,397),(3,13,31),(3,12,561),(3,11,561),(3,10,561),(3,9,561),(3,8,580),(3,6,561),(3,5,301),(3,3,561),(3,2,217),(5,15,226),(5,13,45),(5,12,561),(5,11,561),(5,10,561),(5,9,561),(5,8,311),(5,6,561),(5,5,34),(5,4,561),(5,2,32),(6,2,44),(6,4,561),(6,5,171),(6,6,561),(6,8,223),(6,9,561),(6,10,561),(6,11,561),(6,12,561),(6,13,311),(6,15,51),(7,15,363),(7,13,475),(7,12,561),(7,11,561),(7,10,561),(7,9,561),(7,8,13),(7,6,561),(7,5,481),(7,4,561),(7,2,355),(8,15,96),(8,13,172),(8,12,561),(8,11,561),(8,10,561),(8,9,561),(8,8,440),(8,6,561),(8,5,80),(8,4,561),(8,2,4),(9,2,426),(9,3,561),(9,5,205),(9,6,561),(9,8,436),(9,9,561),(9,10,561),(9,11,561),(9,12,561),(9,13,476),(9,15,18),(10,15,287),(10,13,103),(10,12,561),(10,11,561),(10,10,561),(10,9,561),(10,8,231),(10,6,561),(10,5,64),(10,3,561),(10,2,92),(11,2,582),(11,3,561),(11,5,342),(11,6,561),(11,8,108),(11,9,561),(11,10,561),(11,11,561),(11,12,561),(11,13,126),(11,15,84),(12,15,586),(12,18,367),(12,13,156),(12,12,561),(12,11,561),(12,10,561),(12,9,561),(12,8,113),(12,6,561),(12,16,542),(12,5,515),(12,4,561),(12,19,446),(13,2,3),(13,4,561),(13,5,515),(13,6,561),(13,8,440),(13,9,561),(13,10,561),(13,11,561),(13,12,561),(13,13,153),(13,15,135),(12,2,134),(14,2,138),(14,4,561),(14,5,124),(14,6,561),(14,8,13),(14,9,561),(14,10,561),(14,11,561),(14,12,561),(14,13,521),(14,15,204),(15,2,288),(15,4,561),(15,5,417),(15,6,561),(15,8,191),(15,9,561),(15,10,561),(15,11,561),(15,12,561),(15,13,367),(15,15,21),(16,2,513),(16,4,561),(16,5,177),(16,6,561),(16,8,533),(16,9,561),(16,10,561),(16,11,561),(16,12,561),(16,13,302),(16,15,165);
/*!40000 ALTER TABLE `liturgy_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `fbid` bigint(20) unsigned NOT NULL,
  `fbname` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,100001375442228,'Joe Tran'),(2,831733193,'Hoan Tran');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-28 12:18:27