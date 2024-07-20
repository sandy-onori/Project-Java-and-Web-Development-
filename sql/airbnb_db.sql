-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airbnb_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(512) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `creation_date` date NOT NULL DEFAULT (curdate()),
  `hosting_start_date` date DEFAULT NULL,
  `instant_booking` tinyint(1) NOT NULL DEFAULT '0',
  `superhost_status` tinyint(1) NOT NULL DEFAULT '0',
  `balance` decimal(16,4) NOT NULL DEFAULT '0.0000',
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `account_chk_1` CHECK ((`hosting_start_date` >= `creation_date`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Marco','Polo','marco.polo@gmail.com','592c101ce4ddf4e4f4379a3660efa3fb23648b06766cae623e1b0f2b15e7b3dd3a69cb9a4dbb5f20c43ee761154fe7203c60c0da9ee6b05182d9a1eccfed6fd9','+393200416439','2023-05-20',NULL,0,0,0.0000,0),(2,'Marcus','Polus','marcus.polus@gmail.com','99547a0eae725437074780ddd473acdf345c3ba76db66118c89d40256845d379d67a25c4336a486d5db77e8c85b1dff09bea065e53ab9166cf875389f1131c1e','+393200416431','2023-05-21',NULL,0,0,0.0000,0),(3,'George','Weah','george.weah@gmail.com','db9ce584f3a236319df90dfa209798818bb5fedd12e03f4bd94ab87e6c61ec68ce5c2266efca6e248c12b579bd49aaf5f3714a616b8b0b5bc38980bbf3704691','+393200416432','2023-05-22',NULL,0,0,0.0000,0),(4,'Frank','Frink','frank.frink@gmail.com','babd53e92e0a12ba61cbce8abc9c0ef2f6244e075887bff570e99151b317f477af38db6b7cc538da02d5cb033b07cd63e71d28e8070a31ff625585e810585f3d','+393200416433','2023-05-23',NULL,0,0,0.0000,0),(5,'Jesus','Benedectus','jesus.benedectus@gmail.com','5a286f421013c3ff1784894a12f184d019d393f2cab361d526d3a53e9aa928be8a0b1013c15621e5e63e1b326f5c61256fadcc755eda8b6f998a9227369c4c17','+393200416434','2023-05-24',NULL,0,0,0.0000,0),(6,'Pio','Padre','pio.padre@gmail.com','181a82d8ca4896bef2bec6f40e8ae75c84c21a9600b720c81cbc7aa964467e6afe03c9fe599bb52fde934c5b6627322751c9a1b9e390d0ed9d9098d4910ec34c','+393200416435','2024-05-25',NULL,0,0,0.0000,0),(7,'Mark','Dabol','mark.dabol@gmail.com','58d27f5e4e3a5ee19432f43f7bdd06fba467f96870dd2497cade8072f5b982f393e5316b4e0ceaa307e6d8b7f57e94b5a742551564cd8bad7df76c3e054d955e','+493200416410','2000-05-26','2001-05-26',1,1,10000.0000,0),(8,'Pedro','Polo','pedro.polo@gmail.com','14dc6b7d33f43d7522b0bd97b30591a7bc12903b8bfa2dd825f76112050d1a68375520817736a77d30299deb72a5d6ff4ecf70a7ca05a5319a2fec00f8d00ac6','+393200416420','2001-05-26','2001-05-26',1,1,5000.0000,0),(9,'Elisa','Delafuente','elisa.delafuente@gmail.com','cf02a22776ace2e1eccfde5007937d0144a0cf9a5c076d38f9aa0dce40a2e967c4d915e1ac056c6895c5ec7acf90b2118a87318030aa23406bf692591b9b8c19','+493207416430','2002-05-26','2002-06-26',1,1,15000.0000,0),(10,'Pierre','Barracus','pierre.barracus@gmail.com','fc78ea822df08e37e7853e0d661cc267cc19828e3590ba925305d84c1e69bc31e85a867b3e9623d9f5cebd7a57a05fc6fd8c22cb44d4c86946892bd28df3a66a','+493200916440','2003-05-26','2004-05-20',0,0,4000.0000,0),(11,'Zinedine','Zidane','zinedine.zidane@gmail.com','9ab5b5c6e72bcecc2fbabfe603d7e611d706a46cd47bbeb44721c21b821c2abfe920237fa8b4587eb894ac598696473b8494e0d174a4e0d8fd0bfa0508ba14d4','+393200456450','2006-05-26','2007-08-26',1,1,1500.5500,0),(12,'Justine','Bilè','justine.bilè@gmail.com','2ffbc89293ff6cd8886160993b4875427e230f403d043e76723bb23c41c744899c30a8b3e53d0634f605f7fe3de5a3a50b019485ca5e27b9c1c11f240a1141ec','+493206656450','2008-05-26','2009-08-26',1,1,2500.5500,0),(13,'Fred','Flintstone','fred.flintstone@gmail.com','6535a42d84eff5065c4195b9d76419d3a6798bb8111ecfec68547a10d0e07814ee6c919f2fbd8640496b5905824fc50749f0a719d5be81380ddebf2739eba20d','+413200456450','2010-05-26','2011-09-22',1,1,11500.5500,0),(14,'Wilma','Flintstone','wilma.flintstone@gmail.com','14a1241a7a720218cbb597cecf95983bf29d194235aecc86cf99d4eac578be8f852afe3c9615d330f46af79a97e53c8e99886d4e986a799f70ad0c5c998654c5','+413200786450','2011-09-16','2020-08-26',1,1,7800.3200,0),(15,'Jasmine','Forin','jasmine.forin@gmail.com','52e8269620c899715ea8fce9665af67c7536836a56c883bdf113d23320bb60d692358d02d8924ed4147c4ea4478b74d321300d0eb5bc8c435ac1d94344a5c23e','+493200746437','2024-05-26','2024-05-27',0,0,100.0000,1),(16,'Marie','Sponge','marie.sponge@gmail.com','cff27e65c1684c0ef3b54d0aa71461e5f8e0d4557d24e735b4b3f7186ac50794ee289ceb1090b0809c6c2fd39caa2e2dd59c019301ad0b7060b44b68a1a222fb','+493200416785','2023-01-01',NULL,0,0,0.0000,0),(17,'Marzia','Marziale','marzia.marziale@gmail.com','91ac52aa410fb90da09f11502a1572abec3bc25eeaf99157c0de979391cf5400a73a7c078c8aaa23992d479ab302f4faff905cd20213f045d1dd22bbf0e93892','+393200411254','2020-01-27',NULL,0,0,0.0000,1),(18,'Gianni','sperti','gianni.sperti@gmail.com','40b4b03e81fb0841377319ecf68174e784c37c17e3b4e4b11bbdfde2c87cf9dc2154257f363a36258e1f7e8fb6b6f83de689a517b3bf8d15a6539b96842ede95','+393200874439','2022-08-25',NULL,0,0,0.0000,1),(19,'Clark','Kent','clark.kent@gmail.com','a8e136d4b5657de6860bfcabde0e8b6c439c8d134446e819d304cf0e800ce1b50729d2747ca20ca98826869651a7ce3a877bd3dcdb446f0f4339430112429611','+413200416439','2020-01-01',NULL,0,0,0.0000,0),(20,'Berry','Allen','berry.allen@gmail.com','3f0d105fa890ba59eedd31825fe06e1288b7979e2fbb00f9f5ac0de19481e0d2be550ce213c1cc5b299e512eab36626cc17bd00a9b9c8e9c0e5831aa0d317926','+413200416439','2014-05-16',NULL,0,0,0.0000,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_language`
--

DROP TABLE IF EXISTS `account_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_language` (
  `account_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`account_id`,`language_id`),
  KEY `fk__account_language__language__language_id` (`language_id`),
  CONSTRAINT `fk__account_language__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__account_language__language__language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_language`
--

LOCK TABLES `account_language` WRITE;
/*!40000 ALTER TABLE `account_language` DISABLE KEYS */;
INSERT INTO `account_language` VALUES (1,1),(2,1),(17,1),(1,2),(10,2),(16,2),(17,2),(1,3),(5,3),(10,3),(11,3),(13,3),(3,4),(13,4),(4,5),(5,6),(6,8),(7,9),(19,13),(11,19);
/*!40000 ALTER TABLE `account_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_social`
--

DROP TABLE IF EXISTS `account_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_social` (
  `account_id` int NOT NULL,
  `social_id` int NOT NULL,
  `url` varchar(2048) NOT NULL,
  PRIMARY KEY (`account_id`,`social_id`),
  KEY `fk__account_social__social__social_id` (`social_id`),
  CONSTRAINT `fk__account_social__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__account_social__social__social_id` FOREIGN KEY (`social_id`) REFERENCES `social` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_social`
--

LOCK TABLES `account_social` WRITE;
/*!40000 ALTER TABLE `account_social` DISABLE KEYS */;
INSERT INTO `account_social` VALUES (1,1,'https://www.facebook.com/USER-ID?access_token=...'),(1,2,'https://www.instagram.com/USER-ID?access_token=...'),(1,4,'https://www.tiktok.com/USER-ID?access_token=...'),(1,7,'https://www.linkedin.com/USER-ID?access_token=...'),(2,1,'https://www.facebook.com/USER-ID?access_token=...'),(2,4,'https://www.tiktok.com/USER-ID?access_token=...'),(3,1,'https://www.facebook.com/USER-ID?access_token=...'),(3,7,'https://www.linkedin.com/USER-ID?access_token=...'),(4,1,'https://www.facebook.com/USER-ID?access_token=...'),(4,5,'https://www.twitter.com/USER-ID?access_token=...'),(5,2,'https://www.instagram.com/USER-ID?access_token=...'),(6,2,'https://www.instagram.com/USER-ID?access_token=...'),(7,2,'https://www.instagram.com/USER-ID?access_token=...'),(7,5,'https://www.twitter.com/USER-ID?access_token=...'),(8,4,'https://www.tiktok.com/USER-ID?access_token=...'),(9,4,'https://www.tiktok.com/USER-ID?access_token=...'),(10,7,'https://www.linkedin.com/USER-ID?access_token=...'),(11,7,'https://www.linkedin.com/USER-ID?access_token=...'),(12,5,'https://www.twitter.com/USER-ID?access_token=...'),(13,5,'https://www.twitter.com/USER-ID?access_token=...');
/*!40000 ALTER TABLE `account_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `city_id` int NOT NULL,
  `street` varchar(500) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__address__account__account_id` (`account_id`),
  KEY `fk__address__city__city_id` (`city_id`),
  CONSTRAINT `fk__address__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__address__city__city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,1,'Musterstr. 14',NULL),(2,1,2,'Musterstr. 15',NULL),(3,2,3,'Musterstr. 16',NULL),(4,3,4,'Musterstr. 17',NULL),(5,1,6,'Via Feltre, 32',NULL),(6,4,5,'Via della stazione, 01','Sottoscala B'),(7,5,5,'Via Feltre, 32',NULL),(8,6,6,'Via della Madonna, 55','Appartamento C'),(9,7,6,'Via Giustina, 11',NULL),(10,8,7,'Via della felicità, 666',NULL),(11,8,7,'Via da qui, 12',NULL),(12,9,8,'Piazza della libertà, 12',NULL),(13,10,10,'Las Ramblas, 51',NULL),(14,11,10,'Las Ramblas, 52',NULL),(15,11,10,'Las Ramblas, 53',NULL),(16,12,10,'Las Ramblas, 58',NULL),(17,13,17,'Da Xin Xin Jia Yuan C19-302',NULL),(18,14,17,'Chong He Hua Yuan 10dong 908',NULL),(19,14,17,'Bei Lu Yuan 5-1-203',NULL),(20,14,17,'Da Xin Xin Jia Yuan C19-302',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__city__country__country_id` (`country_id`),
  CONSTRAINT `fk__city__country__country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,1,'Berlin','10115'),(2,1,'Frankfurt ','60437'),(3,1,'Hamburg','20251'),(4,1,'Munich','80331'),(5,2,'Belluno','32100'),(6,2,'Rome','00100'),(7,2,'Milan','20100'),(8,2,'Garda','37016'),(9,4,'Madrid','28001'),(10,4,'Barcelona','08001'),(11,4,'Valencia','46001'),(12,4,'Seville','41001'),(13,17,'Casablanca','20000'),(14,17,'Fes','30000'),(15,17,'Rabat','10000'),(16,17,'Tangier','90000'),(17,6,'Beijing','065001'),(18,6,'Shanghai','200001'),(19,6,'Wuhan','430000'),(20,10,'Toronto','M3C 0C1');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `continent`
--

DROP TABLE IF EXISTS `continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `continent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `continent_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continent`
--

LOCK TABLES `continent` WRITE;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;
INSERT INTO `continent` VALUES (1,'Europe'),(2,'Asia'),(3,'North America'),(4,'South America'),(5,'Africa'),(6,'Oceania'),(7,'Antartica');
/*!40000 ALTER TABLE `continent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `continent_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__country__continent__continent_id` (`continent_id`),
  CONSTRAINT `fk__country__continent__continent_id` FOREIGN KEY (`continent_id`) REFERENCES `continent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Germany',1),(2,'Italy',1),(3,'France',1),(4,'Spain',1),(5,'Portugal',1),(6,'China',2),(7,'Japan',2),(8,'India',2),(9,'Iran',2),(10,'Canada',3),(11,'United States',3),(12,'Mexico',3),(13,'Brazil',4),(14,'Peru',4),(15,'Argentina',4),(16,'Nigeria',5),(17,'Marocco',5),(18,'Kenya',5),(19,'Australia',5),(20,'Russia',6);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(512) NOT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Sandy','Onori','sandy.onori@iu-study.org','502562c25a17f9c558a374e86cd7fd5279e9253e4850e439ae3a43253dfd167e',0),(2,'Christian','Remfert','christian.remfert@iu.org','f3496c445981d6b9d9688fa9e0726cfc3b9ef21c1da6f3f811ee1fa54131e1f2',0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `account_id` int NOT NULL,
  `property_id` int NOT NULL,
  `favourite_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`property_id`),
  KEY `fk__favourite__property__favourite_property` (`property_id`),
  CONSTRAINT `fk__favourite__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__favourite__property__favourite_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
INSERT INTO `favourite` VALUES (1,1,'Next trip house'),(1,2,NULL),(1,3,'Sally love this one'),(1,4,'Summer vacation option 2'),(2,17,'Budget option 4'),(2,18,NULL),(2,19,'Budget option 2'),(2,20,'Budget option 1'),(4,3,'Amazing house to try'),(5,3,'Amazing house for winter'),(6,3,'Amazing house for romance'),(7,3,'Beautyful house to try'),(8,11,'Amazing apartment for next vacation'),(9,11,NULL),(10,11,'Amazing apartment for Bob'),(11,11,'Summer trip'),(11,14,'Cozy guest house'),(12,14,'+1 guest house'),(13,14,'Meh guest house'),(14,14,'ok guest house');
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_group_id` int NOT NULL,
  `feature_name` varchar(50) NOT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__feature__feature_group__feature_group_id` (`feature_group_id`),
  CONSTRAINT `fk__feature__feature_group__feature_group_id` FOREIGN KEY (`feature_group_id`) REFERENCES `feature_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (1,1,'Wi-fi','Availablity of Wi-fi service for the host'),(2,1,'TV','At least one television is available for the host'),(3,9,'Fridge and Freezer','Refrigerator and freeze is available for the host'),(4,9,'Electric kettle','At least one Electric kettle is available for the host'),(5,9,'Room service','Room service is available...'),(6,2,'Hairdryer','An hairdryer is available for the host'),(7,2,'Bath towels','At least 3 bath towels are available for the host that must be changed daily'),(8,3,'Two pillows per guest','Two pillows are available per guest (ideally one firm, one soft)'),(9,3,'Bedside table and lamp','Bedside table and lamp, available per guest'),(10,6,'Air conditioning','Air conditioning is available'),(11,7,'Exterior security cameras on property','CCTV system, at least one camera installed outside'),(12,7,'Carbon monoxide alarm installed','CO detector sensor plus allarm installed in the host room'),(13,7,'Smoke alarm installed','Smoke detector and alaram are installed in the host room'),(14,10,'Pool','Pool available for the guests...'),(15,20,'Amazing view','The property offers an amazing view'),(16,20,'Castle','The property is a castle'),(17,20,'Vineyard','The property is a vineyard'),(18,20,'Lake','The property is near a lake'),(19,20,'Beachfront','The property is within 300 meters from the beach'),(20,20,'Countryside','The property is surrounded by nature or situated in a rural area');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_group`
--

DROP TABLE IF EXISTS `feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_group`
--

LOCK TABLES `feature_group` WRITE;
/*!40000 ALTER TABLE `feature_group` DISABLE KEYS */;
INSERT INTO `feature_group` VALUES (1,'Basics'),(2,'Bathroom'),(3,'Beedrom and Laundry'),(4,'Family'),(5,'Entertainment'),(6,'Heating and cooling'),(7,'Home safety'),(8,'Internet and office'),(9,'Kitchen and dining'),(10,'Outdoor'),(11,'Facilities'),(12,'Living area'),(13,'Beach'),(14,'Garden'),(15,'Transportation'),(16,'Attic'),(17,'Relax'),(18,'Beauty'),(19,'For the couple'),(20,'Property highlight');
/*!40000 ALTER TABLE `feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_property`
--

DROP TABLE IF EXISTS `feature_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_property` (
  `property_id` int NOT NULL,
  `feature_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`feature_id`),
  KEY `fk__feature_property__feature__feature_id` (`feature_id`),
  CONSTRAINT `fk__feature_property__feature__feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__feature_property__property__property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_property`
--

LOCK TABLES `feature_property` WRITE;
/*!40000 ALTER TABLE `feature_property` DISABLE KEYS */;
INSERT INTO `feature_property` VALUES (1,1),(2,1),(1,2),(2,2),(20,2),(1,3),(1,9),(1,10),(5,10),(18,10),(5,11),(18,12),(20,13),(3,15),(4,15),(5,15),(15,15),(3,16),(3,17),(7,20);
/*!40000 ALTER TABLE `feature_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_information`
--

DROP TABLE IF EXISTS `fee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fee_name` varchar(50) NOT NULL,
  `short_description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_information`
--

LOCK TABLES `fee_information` WRITE;
/*!40000 ALTER TABLE `fee_information` DISABLE KEYS */;
INSERT INTO `fee_information` VALUES (1,'Platform service fee','Guest service fee charged by the platform to...'),(2,'Cleaning fee','Charged by some Hosts to cover the cost of cleaning'),(3,'Extra guest fee','Charged by some Hosts for each additional guest'),(4,'Pet fee','Additional charge which separate from cleaning fees'),(5,'Security deposit','It may be requested from hosts that use software to manage listings'),(6,'Value Added Tax','Charged to guests who live in certain countries'),(7,'Local taxes','Charged based on the location of the Host place');
/*!40000 ALTER TABLE `fee_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_type`
--

DROP TABLE IF EXISTS `guest_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guest_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_type`
--

LOCK TABLES `guest_type` WRITE;
/*!40000 ALTER TABLE `guest_type` DISABLE KEYS */;
INSERT INTO `guest_type` VALUES (1,'Adults'),(2,'Infants'),(3,'Childeren'),(4,'Pets');
/*!40000 ALTER TABLE `guest_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `url` varchar(2048) NOT NULL,
  `image_order` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__image__property__property_id` (`property_id`),
  KEY `fk__image__account__account_id` (`account_id`),
  CONSTRAINT `fk__image__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__image__property__property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,1,NULL,'https://www.hostingservice...',1),(2,1,NULL,'https://www.hostingservice...',3),(3,1,NULL,'https://www.hostingservice...',2),(4,2,NULL,'https://www.hostingservice...',2),(5,2,NULL,'https://www.hostingservice...',1),(6,3,NULL,'https://www.hostingservice...',1),(7,3,NULL,'https://www.hostingservice...',2),(8,5,NULL,'https://www.hostingservice...',1),(9,6,NULL,'https://www.hostingservice...',1),(10,7,NULL,'https://www.hostingservice...',1),(11,20,NULL,'https://www.hostingservice...',1),(12,18,NULL,'https://www.hostingservice...',1),(13,NULL,7,'https://www.hostingservice...',1),(14,NULL,8,'https://www.hostingservice...',1),(15,NULL,8,'https://www.hostingservice...',2),(16,NULL,10,'https://www.hostingservice...',1),(17,NULL,11,'https://www.hostingservice...',1),(18,NULL,1,'https://www.hostingservice...',1),(19,NULL,1,'https://www.hostingservice...',2),(20,18,NULL,'https://www.hostingservice...',2);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'German'),(2,'Italian'),(3,'English'),(4,'Chinese'),(5,'Spanish'),(6,'Portoguese'),(7,'Russian'),(8,'Japanese'),(9,'Hindi'),(10,'Bengali'),(11,'Turkish'),(12,'Korean'),(13,'Vietnamese'),(14,'French'),(15,'Tamil'),(16,'Urdu'),(17,'Housa'),(18,'Iranian'),(19,'Arabic'),(20,'Telugu');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `payment_method_id` int NOT NULL,
  `reservation_id` int DEFAULT NULL,
  `amount` decimal(9,2) NOT NULL,
  `transaction_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__payment__account__account_id` (`account_id`),
  KEY `fk__payment__payment_method__payment_method_id` (`payment_method_id`),
  KEY `fk__payment__reservation__reservation_id` (`reservation_id`),
  CONSTRAINT `fk__payment__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__payment__payment_method__payment_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__payment__reservation__reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,1,1,1380.00,'2024-05-28'),(2,1,3,2,2716.00,'2024-05-26'),(3,3,4,4,3522.00,'2024-05-26'),(4,3,4,4,2000.00,'2023-05-07'),(5,4,1,5,2002.50,'2024-05-25'),(6,4,1,5,2000.00,'2024-05-26'),(7,4,1,5,2000.00,'2024-05-27'),(8,4,1,5,900.00,'2024-05-28'),(9,19,1,16,300.00,'2024-04-20'),(10,20,2,18,120.00,'2024-04-10'),(11,20,2,19,180.00,'2015-04-19'),(12,16,7,8,3100.00,'2023-03-01'),(13,18,7,11,650.00,'2023-07-27'),(14,18,7,12,350.00,'2023-07-29'),(15,16,1,10,600.00,'2023-04-01'),(16,7,1,NULL,-1000.18,'2024-05-26'),(17,8,2,NULL,-520.00,'2024-05-27'),(18,9,3,NULL,-770.00,'2024-05-28'),(19,10,4,NULL,-3002.78,'2024-05-29'),(20,11,1,NULL,-80.17,'2024-05-30');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_method_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Credit card'),(2,'Apple pay'),(3,'Google pay'),(4,'Paypal'),(5,'Aura (Brazil only)'),(6,'Alipay (China only)'),(7,'Postepay (Italy only)'),(8,'Sofort Überweisung (Germany only)'),(9,'iDEAL for (Netherlands only)'),(10,'Bank account'),(11,'GoPay'),(12,'Gcash'),(13,'FPX');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `policy_group_id` int NOT NULL,
  `policy_name` varchar(50) NOT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__policy__policy_group__policy_group_id` (`policy_group_id`),
  CONSTRAINT `fk__policy__policy_group__policy_group_id` FOREIGN KEY (`policy_group_id`) REFERENCES `policy_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,17,'No parties or events','It is forbitted to host parties and events'),(2,1,'No smoking','It not allowed to smoke inside and directly under the premisies'),(3,11,'Quite hours','Respect the quiet hours during the night'),(4,18,'No pet allowed','No pet are allwed'),(5,18,'Only small pet','Only small pet like.... are allowed'),(6,18,'Big pet allowed','Elephants allowed in the room'),(7,19,'Children never alone','Childeren should be always in presence of a parent/tutor'),(8,19,'Children free roam','Safe space for children to roam alone'),(9,3,'7 days notice','At least a 7 days notice is required to cancel the reservation'),(10,3,'5 days notice','At least a 5 days notice is required to cancel the reservation'),(11,3,'2 days notice','At least a 2 days notice is required to cancel the reservation'),(12,3,'1 days notice','At least a 1 days notice is required to cancel the reservation'),(13,1,'Smoking allowed','Smoking allowed in defined zones'),(14,2,'Unprotected heights','Access to an area or structure higher than 1.4 meters...'),(15,2,'Climbing or play structure','Unrestricted access to a playset, swing, slide, ropes, etc.'),(16,2,'Water','Unrestricted access to an ocean, pond, creek, etc. on or near the property'),(17,2,'Pool/hot tub','Direct access to a swimming pool or hot tub protected by a gate or lock'),(18,20,'Parking 1','1 vehicle allowed on the property...'),(19,20,'Parking 2','2 vehicles allowed on the property...'),(20,20,'Parking 3','3 vehicles allowed on the property...');
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_group`
--

DROP TABLE IF EXISTS `policy_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `policy_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_group`
--

LOCK TABLES `policy_group` WRITE;
/*!40000 ALTER TABLE `policy_group` DISABLE KEYS */;
INSERT INTO `policy_group` VALUES (1,'House Rules'),(2,'Safety and property'),(3,'Cancellation policies'),(4,'Community policies'),(5,'Emergency policies'),(6,'COVID policies'),(7,'Reservation policies'),(8,'Extenuating Circumstances Policies'),(9,'Ground rules'),(10,'Outdoor rules'),(11,'Night rules'),(12,'Day rules'),(13,'Weekend rules'),(14,'Holiday rules'),(15,'Common rules'),(16,'Community rules'),(17,'Party rules'),(18,'Pet rules'),(19,'Children rules'),(20,'Courtyard rules');
/*!40000 ALTER TABLE `policy_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_property`
--

DROP TABLE IF EXISTS `policy_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy_property` (
  `property_id` int NOT NULL,
  `policy_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`policy_id`),
  KEY `fk__policy_property__policy__policy_id` (`policy_id`),
  CONSTRAINT `fk__policy_property__policy__policy_id` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__policy_property__property__property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_property`
--

LOCK TABLES `policy_property` WRITE;
/*!40000 ALTER TABLE `policy_property` DISABLE KEYS */;
INSERT INTO `policy_property` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(4,7),(15,7),(1,9),(5,10),(18,10),(18,13),(20,13),(3,15),(5,15),(1,16),(3,16),(3,17),(20,17),(5,18),(7,20);
/*!40000 ALTER TABLE `policy_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `address_id` int NOT NULL,
  `property_type_id` int NOT NULL,
  `current_nightly_price` decimal(8,2) NOT NULL,
  `current_cleaning_fee` decimal(6,2) NOT NULL,
  `current_child_rate` int NOT NULL,
  `current_pet_rate` int NOT NULL,
  `property_name` varchar(500) NOT NULL,
  `is_room_only` tinyint(1) NOT NULL,
  `guests_number` int NOT NULL,
  `beds_number` int NOT NULL,
  `bedrooms_number` int NOT NULL,
  `bathrooms_number` int NOT NULL,
  `favourite_status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `address_id` (`address_id`),
  KEY `fk__property__account__account_id` (`account_id`),
  KEY `fk__property__property_type__property_type_id` (`property_type_id`),
  CONSTRAINT `fk__property__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__property__address__address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__property__property_type__property_type_id` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `property_chk_1` CHECK (((`current_child_rate` <= 50) and (`current_child_rate` >= 0))),
  CONSTRAINT `property_chk_2` CHECK (((`current_pet_rate` <= 30) and (`current_pet_rate` >= 0)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,7,1,1,1000.00,100.00,50,20,'Beautiful house on the hill',0,5,5,3,2,0,'Amazing house on a hill, many trees, many good things...'),(2,7,2,1,2000.00,200.00,50,20,'Magnificient house on a tree',0,6,5,3,2,0,'Amazing house on a tree, many trees, many good things...'),(3,7,3,1,3000.00,300.00,40,20,'Beautiful house on a rock',0,7,6,4,3,1,'Amazing house on a rock, many many good things...'),(4,8,4,1,4000.00,400.00,50,10,'Beautiful house on a lake',0,8,5,5,1,0,'Amazing house on a lake, many boats...'),(5,9,5,2,500.00,50.00,50,20,'Gorgeous apartment located...',0,4,2,4,1,0,'Amazing apartment blablabla, many trees, many good things...'),(6,10,6,2,600.00,60.00,40,30,'Beautiful apartment yadayadayada',0,4,2,4,2,0,'Amazing apartment, many trees, many good things...'),(7,11,7,2,400.00,40.00,50,15,'Beautiful apartment blablabla',0,4,2,4,1,1,'Amazing apartment blablabla, many trees, many good things...'),(8,12,8,2,730.00,100.00,50,10,'Beautiful apartment yadayadayada',0,4,2,4,1,1,'Amazing apartment, good people blablabla, many trees, many good things...'),(9,13,9,3,800.00,80.00,40,30,'Beautiful guest house on the hill',0,3,3,2,1,0,'Amazing house on a hill, many trees, many good things...'),(10,14,10,3,1000.00,110.00,40,10,'Beautiful guest house on the rock',0,3,2,3,1,1,'Amazing house on a rock, many trees, many good things...'),(11,8,11,3,400.00,50.00,50,30,'Beautiful guest house on the sea',0,3,3,2,1,0,'Amazing house on a sea, many trees, many good things...'),(12,8,12,3,200.00,40.00,50,20,'Beautiful guest house on the lake',0,3,3,2,1,0,'Amazing house on a lake, many trees, many good things...'),(13,9,13,4,20.00,10.00,50,20,'Beautiful hotel room at the center of...',1,2,2,1,1,1,'Amazing house on a hill, many trees, many good things...'),(14,9,14,4,80.00,40.00,50,20,'Beautiful hotel room at the center of...',1,3,3,1,1,0,'Amazing house on a hill, many trees, many good things...'),(15,10,15,4,120.00,60.00,50,10,'Beautiful hotel room near...',1,2,2,1,1,0,'Amazing house on a hill, many trees, many good things...'),(16,10,16,4,200.00,20.00,50,15,'Beautiful hotel room on the famous...',1,1,1,1,1,0,'So many satisfied guest from the many trees, many good things...'),(17,11,17,5,20.00,20.00,45,25,'Great shared room inside a prestigeous...',1,2,2,1,1,0,'So many satisfied guest from the many trees, many good things...'),(18,11,18,5,40.00,20.00,50,20,'Great shared room under the...',1,3,3,1,1,0,'So many satisfied guest from the many trees, many good things...'),(19,12,19,5,60.00,30.00,30,10,'Great shared room near the...',1,1,1,1,1,0,'So many satisfied guest from the many trees, many good things...'),(20,12,20,5,120.00,15.00,35,25,'Great shared room next to...',1,5,5,1,1,0,'Best shared room in the world, it has many many good things...');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_type`
--

DROP TABLE IF EXISTS `property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_type`
--

LOCK TABLES `property_type` WRITE;
/*!40000 ALTER TABLE `property_type` DISABLE KEYS */;
INSERT INTO `property_type` VALUES (1,'House'),(2,'Apartment'),(3,'Guest House'),(4,'Hotel room'),(5,'Shared room');
/*!40000 ALTER TABLE `property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating_name` varchar(50) NOT NULL,
  `short_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'Overall experience','How was it?'),(2,'Cleanliness','Did the place meet our standards?'),(3,'Accuracy','Was it accurately represented with up-to-date photos and info?'),(4,'Check-in','Was it easy?'),(5,'Communication','Did the Host respond to messages promptly?'),(6,'Location','Transportation...?'),(7,'Value','Was it worth the price?'),(8,'Amenities','Was everything promised in the listing available?'),(9,'Easy to find','How easy was to find this place?'),(10,'Safety','Did I feel safe during the staying?'),(11,'Guest behaviour','Was the guest behaviour fair?'),(12,'Guest cordiality','Was the guest cordial?'),(13,'Guest punctuality','Was the guest on time?'),(14,'Guest space respectness','Did the guest leave the place in the same conditions?'),(15,'Guest reservation respectness','Did the guest respect the reservation agreement?'),(16,'Guest community respectness','Did the guest respect nearby communities?'),(17,'Guest tampering with devices','Did the guest tamper with devices?'),(18,'Guest access to private property','Did the guest access to forbidden locations?'),(19,'Guest neighbor respectness','Did the guest respect nearby neighbor?'),(20,'Guest parking behaviour','Did the guest parked outside his reserved slot?');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `property_id` int NOT NULL,
  `status_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `nightly_price` decimal(7,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `is_fully_paid` tinyint(1) NOT NULL DEFAULT '0',
  `arrival` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__reservation__account__account_id` (`account_id`),
  KEY `fk__reservation__property__property_id` (`property_id`),
  KEY `fk__reservation__status__status_id` (`status_id`),
  CONSTRAINT `fk__reservation__account__account_id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__reservation__property__property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__reservation__status__status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservation_chk_1` CHECK ((`checkout_date` >= `checkin_date`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,1,'2024-05-30','2024-05-31',1000.00,1380.50,1,NULL),(2,1,2,6,'2024-05-28','2024-05-29',2000.00,2716.00,1,NULL),(3,2,3,2,'2024-05-30','2024-05-31',3000.00,4141.50,1,NULL),(4,3,4,1,'2024-05-29','2024-05-30',4000.00,5522.00,1,NULL),(5,4,5,6,'2024-05-20','2024-05-30',500.00,6902.50,1,NULL),(6,16,1,9,'2023-04-01','2023-04-02',900.00,1100.00,1,'2023-04-01 12:00:00'),(7,16,2,9,'2023-04-02','2023-04-03',1800.00,2100.00,1,'2023-04-02 13:00:00'),(8,16,3,9,'2023-04-03','2023-04-04',2700.00,3100.00,1,'2023-04-03 12:00:00'),(9,16,4,9,'2023-04-04','2023-04-05',3600.00,4200.00,1,'2023-04-04 14:00:00'),(10,16,5,9,'2023-04-05','2023-04-06',400.00,600.00,1,'2023-04-05 15:00:00'),(11,18,11,9,'2023-08-01','2023-08-02',350.00,650.00,1,'2023-08-01 11:00:00'),(12,18,12,9,'2023-08-02','2023-08-03',200.00,350.00,1,'2023-08-02 12:00:00'),(13,18,13,9,'2023-08-03','2023-08-04',20.00,70.00,1,'2023-08-03 13:00:00'),(14,18,14,9,'2023-08-04','2023-08-05',80.00,150.00,1,'2023-08-04 10:00:00'),(15,18,15,9,'2023-08-05','2023-08-06',120.00,200.00,1,'2023-08-05 11:00:00'),(16,19,16,6,'2024-01-05','2024-01-06',200.00,300.00,0,NULL),(17,19,17,4,'2024-01-05','2024-01-06',20.00,80.00,0,NULL),(18,20,18,6,'2024-01-05','2024-01-06',40.00,120.00,0,NULL),(19,20,19,6,'2024-01-05','2024-01-06',60.00,180.00,0,NULL),(20,13,20,4,'2024-01-05','2024-01-06',130.00,230.00,0,NULL);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_fee_information`
--

DROP TABLE IF EXISTS `reservation_fee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_fee_information` (
  `reservation_id` int NOT NULL,
  `fee_information_id` int NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  PRIMARY KEY (`reservation_id`,`fee_information_id`),
  KEY `fk__reservation_fee_i__fee_i__fee_information_id` (`fee_information_id`),
  CONSTRAINT `fk__reservation_fee_i__fee_i__fee_information_id` FOREIGN KEY (`fee_information_id`) REFERENCES `fee_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__reservation_fee_i__reservation__reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_fee_information`
--

LOCK TABLES `reservation_fee_information` WRITE;
/*!40000 ALTER TABLE `reservation_fee_information` DISABLE KEYS */;
INSERT INTO `reservation_fee_information` VALUES (1,1,100.00),(1,2,50.00),(1,4,30.50),(1,6,200.00),(2,1,200.00),(2,2,100.00),(2,4,61.00),(2,6,400.00),(3,1,300.00),(3,2,150.00),(3,4,91.50),(3,6,600.00),(4,1,400.00),(4,2,200.00),(4,4,122.00),(4,6,800.00),(5,1,500.00),(5,2,250.00),(5,4,155.50),(5,6,1000.00);
/*!40000 ALTER TABLE `reservation_fee_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_guest_type`
--

DROP TABLE IF EXISTS `reservation_guest_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_guest_type` (
  `reservation_id` int NOT NULL,
  `guest_type_id` int NOT NULL,
  `guests_number` int NOT NULL,
  PRIMARY KEY (`reservation_id`,`guest_type_id`),
  KEY `fk__reservation_guest_type__guest_type__guest_type_id` (`guest_type_id`),
  CONSTRAINT `fk__reservation_guest_type__guest_type__guest_type_id` FOREIGN KEY (`guest_type_id`) REFERENCES `guest_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__reservation_guest_type__reservation__reservation_id` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_guest_type`
--

LOCK TABLES `reservation_guest_type` WRITE;
/*!40000 ALTER TABLE `reservation_guest_type` DISABLE KEYS */;
INSERT INTO `reservation_guest_type` VALUES (1,1,2),(1,2,1),(1,3,1),(2,1,1),(2,2,2),(2,4,2),(3,1,3),(3,3,1),(3,4,1),(4,1,2),(4,2,1),(5,1,2),(5,2,1),(6,1,2),(7,1,2),(8,1,1),(9,1,3),(9,2,1),(9,4,1),(15,1,1);
/*!40000 ALTER TABLE `reservation_guest_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `property_id` int DEFAULT NULL,
  `other_account_id` int DEFAULT NULL,
  `description` text,
  `overall_rating` decimal(3,2) NOT NULL,
  `review_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk__review__account__account_Id` (`account_id`),
  KEY `fk__review__property__property_id` (`property_id`),
  KEY `fk__review__account__other_account_id` (`other_account_id`),
  CONSTRAINT `fk__review__account__account_Id` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__review__account__other_account_id` FOREIGN KEY (`other_account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__review__property__property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_chk_1` CHECK (((`overall_rating` >= 0) and (`overall_rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,NULL,'The experience was...',4.00,'2024-05-28 06:00:00'),(2,1,1,NULL,'Much better this time',4.50,'2024-06-01 07:00:00'),(3,1,2,NULL,'Bad place',1.00,'2024-06-28 16:00:00'),(4,2,1,NULL,'Good place',4.10,'2024-05-29 12:00:00'),(5,2,1,NULL,'Even better, this time...',5.00,'2024-06-02 07:00:00'),(6,3,11,NULL,NULL,4.50,'2024-05-29 03:00:00'),(7,4,11,NULL,NULL,4.60,'2024-05-30 04:00:00'),(8,5,11,NULL,NULL,4.70,'2024-06-09 09:20:58'),(9,6,14,NULL,'Amazing place...',4.80,'2024-06-09 09:20:58'),(10,7,14,NULL,'Comfortable place, it was a...',4.90,'2024-05-02 07:00:00'),(11,7,NULL,1,NULL,5.00,'2024-04-29 06:00:00'),(12,7,NULL,1,'I also became friends with this guy',5.00,'2024-04-30 05:00:00'),(13,14,NULL,3,NULL,5.00,'2024-05-27 07:00:00'),(14,8,NULL,15,'Rude, destroyed eveything',1.00,'2024-05-29 05:00:00'),(15,8,NULL,18,'Great guy!',5.00,'2024-03-27 17:00:00'),(16,9,NULL,17,NULL,5.00,'2024-06-09 09:20:58'),(17,10,NULL,4,NULL,4.00,'2024-05-28 06:00:00'),(18,11,NULL,5,NULL,4.50,'2024-04-23 13:00:00'),(19,12,NULL,6,NULL,4.60,'2024-03-24 15:00:00'),(20,13,NULL,7,NULL,5.00,'2024-02-28 08:00:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_rating`
--

DROP TABLE IF EXISTS `review_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_rating` (
  `review_id` int NOT NULL,
  `rating_id` int NOT NULL,
  `rating_value` decimal(3,2) NOT NULL,
  PRIMARY KEY (`review_id`,`rating_id`),
  KEY `fk__review_rating__rating__rating_id` (`rating_id`),
  CONSTRAINT `fk__review_rating__rating__rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk__review_rating__review__review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_rating_chk_1` CHECK (((`rating_value` >= 0) and (`rating_value` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_rating`
--

LOCK TABLES `review_rating` WRITE;
/*!40000 ALTER TABLE `review_rating` DISABLE KEYS */;
INSERT INTO `review_rating` VALUES (1,1,4.10),(1,2,4.20),(1,3,4.90),(1,5,5.00),(2,1,3.90),(2,3,3.80),(3,1,5.00),(4,7,3.90),(5,6,3.80),(6,5,4.10),(11,11,4.20),(11,12,4.30),(11,13,4.20),(12,11,4.20),(12,14,5.00),(13,11,3.90),(13,12,4.10),(15,19,3.50),(16,20,1.00),(17,18,1.00);
/*!40000 ALTER TABLE `review_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social` (
  `id` int NOT NULL AUTO_INCREMENT,
  `social_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social`
--

LOCK TABLES `social` WRITE;
/*!40000 ALTER TABLE `social` DISABLE KEYS */;
INSERT INTO `social` VALUES (1,'Facebook'),(2,'Instagram'),(3,'Youtube'),(4,'TikTok'),(5,'Twitter'),(6,'Pinterest'),(7,'LinkedIn'),(8,'Reddit'),(9,'Snapchat'),(10,'Quora'),(11,'WeChat'),(12,'Messenger'),(13,'Twitch'),(14,'WhatsApp'),(15,'Tumblr'),(16,'Qzone'),(17,'QQ'),(18,'beBee'),(19,'Flickr'),(20,'Telegram');
/*!40000 ALTER TABLE `social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) NOT NULL,
  `short_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Arriving today','The guest will arrive within 24 hours.'),(2,'Awaiting guest ID','The guest need to verify identity '),(3,'Awaiting payment','Trip request was accepted, payment pending'),(4,'Canceled','The reservation was cancelled because...'),(5,'Checking out today','The guest will check out within 24 hours.'),(6,'Confirmed','The trip request was accepted and payment confirmed'),(7,'Not possible','The requested dates are no longer available.'),(8,'Offer expired','The special offer from the Host expired'),(9,'Past guest','The guest as completed their trip.'),(10,'Request declined','The Host declined the guest’s trip request'),(11,'Review guest','The trip is over, and the Host has 14 days to leave a review'),(12,'Trip change declined','The Host has declined the guest’s request to change details'),(13,'Trip change requested','The guest has requested to change trip details'),(14,'Trip change sent','The Host has requested to change details about their trip.'),(15,'Trip declined','Guest asked a trip question and the Host declined it'),(16,'Inquiry','The guest has asked a question about specific dates but...'),(17,'Request withdrawn','The guest sent a trip request but then decided to cancel it.'),(18,'Request expired','Either the Host or the guest took longer than 24 hours to...'),(19,'Invite expired','The guest did not accept their pre-approved invitation to book... '),(20,'Invite sent','The Host has invited the guest to book the dates...');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 10:30:16
