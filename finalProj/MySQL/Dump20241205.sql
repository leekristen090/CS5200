CREATE DATABASE  IF NOT EXISTS `team_sabrina` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_sabrina`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: team_sabrina
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_name` varchar(64) NOT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Short n Sweet','2024-08-23'),(2,'emails I cant send fwd:','2023-03-17'),(3,'EVOlution','2016-10-14'),(4,'Eyes Wide Open','2015-04-10'),(5,'Smoke and Fire-Single','2016-02-19'),(6,'Your Favorite Songs from 100 Disney Channel Original Movies','2016-05-20'),(7,'Night & Day','2017-07-14'),(8,'Why-Single','2017-07-07'),(9,'Alien-Single','2018-03-16'),(10,'Honeymoon Fades-Single','2020-02-14'),(11,'Singular Act I','2018-11-09'),(12,'Singular Act II','2019-07-19'),(13,'Dangerous Woman','2016-05-20'),(14,'The Carter V','2018-09-28'),(15,'Unapologetic (Deluxe Version)','2012-11-19'),(16,'Suicide Squad: The Album','2016-08-05'),(17,'Views','2016-04-29'),(18,'Rumours','1977-02-04'),(19,'The Secret of Us','2024-10-18'),(20,'The Stranger','1997-09-29'),(21,'on to better things','2022-01-20'),(27,'The Fake','2024-09-23');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Kristen','Lee','716-341-4340','lee.kri@northeastern.edu'),(2,'Madison','Aldrich','317-500-0220','maldrich@gmail.com'),(3,'Grace','Carra','716-479-6459','ggcarra@mail.com'),(4,'Kelsey','Schmid','859-308-7359','kschmid@yahoo.com'),(5,'Louise','Carlson','716-341-5964','weezbad@roadrunner.com'),(6,'Kelvin','Lee','716-939-0552','kplee@gmail.com'),(7,'Aidan','Molinaro','847-531-3293','amolinarno@yahoo.com'),(8,'Natasha','Nicholas','617-959-2378','nicholas.n@northeastern.edu'),(9,'Anna','Childers','765-617-9358','achilders@gmail.com'),(10,'Haley','Cera','614-424-9926','hcera@butler.edu'),(11,'Sophie','Ludolph','894-282-3845','sludy@gmail.com'),(12,'Cate','Petterson','847-085-3921','cpetter@butler.edu'),(13,'Riley','Iria','317-320-4854','riria@butler.edu'),(14,'Anna','Garfalo','847-478-3195','agarfalo@butler.edu'),(15,'Laurie','Carra','716-481-5893','lbcarra@gmail.com'),(16,'Charles','Carra','716-549-5198','charlescarra2@gmail.com'),(17,'Julia','Fryrear','847-328-8192','jfryrear@butler.edu'),(18,'Brittany','Sirvath','317-758-8421','bsirvath@butler.edu'),(19,'Hiedi','Copple','317-391-6843','hcopple@butler.edu'),(20,'Seley','Booth','821-223-0920','sbooth@gmail.edu'),(21,'Temperance','Brennan','748-202-0452','bones@gmail.com'),(22,'Lance','Sweets','832-992-3326','sweets434@yahoo.com'),(23,'Peter','Rabbit','422-580-2330','carrotlover123@roadrunner.com'),(24,'Pooh','Bear','320-893-6327','honeypot@gmail.com'),(25,'Blair','Waldorf','714-893-0892','bwaldorf@yhoo.com'),(26,'Serena','Vanderwoodsen','714-289-5201','svanderwoodsen@yahoo.com'),(27,'Megan','McFadden','578-430-3932','mmcfad@butler.edu'),(28,'Reagan','Mozal','810-278-4288','raeganmozal@gmail.com'),(35,'Jane','doe','123-234-3452','fakeemail@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(64) NOT NULL,
  `state_region` varchar(64) DEFAULT NULL,
  `country` varchar(64) NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `city` (`city`,`state_region`,`country`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (20,'Albany','New York','United States'),(92,'Amsterdam','North Holland','England'),(48,'Anaheim','California','United States'),(40,'Antwerp','Antwerp Province','Belgium'),(2,'Atlanta','Georgia','United States'),(4,'Austin','Texas','United States'),(25,'Baltimore','Maryland','United States'),(98,'Bangkok','Bangkok Metropolitan Region','Thailand'),(67,'Berkeley','California','United States'),(93,'Berlin','Germany','Germany'),(89,'Birmingham','West Midlands','England'),(61,'Boston','Massachusetts','United States'),(99,'Brooklyn','New York','United States'),(91,'Brussels','Brussels-Capital Region','Belgium'),(19,'Buffalo','New York','United States'),(15,'Burnsville','Minnesota','United States'),(45,'Calgary','Alberta','Canada'),(23,'Cambridge','Massachusetts','United States'),(35,'Charlotte','North Carolina','United States'),(108,'Charlottesville','Virginia','United States'),(82,'Chesterfield','Missouri','United States'),(32,'Chicago','Illinois','United States'),(36,'Cincinnati','Ohio','United States'),(106,'Cleveland','Ohio','United States'),(29,'Cleveland Heights','Ohio','United States'),(41,'Cologne','North Rhine-Westphalia','Germany'),(30,'Columbus','Ohio','United States'),(5,'Dallas','Texas','United States'),(21,'Deer Park','New York','United States'),(12,'Denver','Colorado','United States'),(57,'Detroit','Michigan','United States'),(86,'Dublin',NULL,'Ireland'),(44,'Edmonton','Alberta','Canada'),(37,'Fort Lauderdale','Florida','United States'),(24,'Freehold','New Jersey','United States'),(77,'Garden City','Idaho','United States'),(38,'Glasgow','West Central Scotland','Scotland'),(83,'Gulf Shores','Alabama','United States'),(59,'Hamburg','New York','United States'),(100,'Hartford','Connecticut','United States'),(60,'Hershey','Pennsylvania','United States'),(107,'Hollywood','California','United States'),(52,'Hot Springs','Arkansas','United States'),(53,'Houston','Texas','United States'),(16,'Indianapolis','Indiana','United States'),(105,'Inglewood','California','United States'),(34,'Jacksonville','Florida','United States'),(96,'Jakarta','Jakarta Special Capital Region','Indonesia'),(14,'Kansas City','Missouri','United States'),(95,'Kuala Lumpur','Federal Territory of Kuala Lumpur','Malaysia'),(66,'Las Vegas','Nevada','United States'),(90,'London','Greater London','England'),(49,'Los Angeles','California','United States'),(81,'Madison','Wisconsin','United States'),(87,'Manchester',' Greater Manchester','England'),(73,'Manila','National Capital Region','Philippines'),(65,'Mashantucket','Connecticut','United States'),(79,'Mesa','Arizona','United States'),(54,'Miami Beach','Florida','United States'),(42,'Milan','Lombardy','Italy'),(31,'Milwaukee','Wisconsin','United States'),(80,'Minneapolis','Minnesota','United States'),(62,'Montclair','New Jersey','United States'),(101,'Montreal','Quebec','Canada'),(69,'Nagoya','Aichi Prefecture','Japan'),(1,'Nashville','Tennesse','United States'),(51,'New Orleans','Louisiana','United States'),(22,'New York City','New York','United States'),(88,'Newport',NULL,'England'),(13,'Omaha','Nebraska','United States'),(55,'Orlando','Florida','United States'),(68,'Osaka','Osaka Prefecture','Japan'),(39,'Paris','Île-de-France','France'),(26,'Philadelphia','Pennsylvania','United States'),(50,'Phoenix','Arizona','United States'),(28,'Pittsburg','Pennsylvania','United States'),(17,'Pontiac','Michigan','United States'),(11,'Portland','Oregon','United States'),(97,'Quezon City','Metro Manila','Philippines'),(103,'Raleigh','North Carolina','United States'),(84,'Rio de Janeiro','Rio de Janeiro','Brazil'),(76,'Salt Lake City','Utah','United States'),(3,'San Antonio','Texas','United States'),(47,'San Diego','California','United States'),(8,'San Francisco','California','United States'),(9,'Santa Ana','California','United States'),(7,'Santa Barbra','California','United States'),(46,'Santa Rosa','California','United States'),(85,'São Paulo','São Paulo','Brazil'),(10,'Seattle','Washington','United States'),(71,'Seoul','Seoul Special City','South Korea'),(72,'Singapore',NULL,'Singapore'),(102,'St. Louis','Missouri','United States'),(33,'St. Petersburg','Florida','United States'),(94,'Stockholm','Stockholm County','Sweden'),(104,'Tampa','Florida','United States'),(74,'Tempe','Arizona','United States'),(63,'Timonium','Maryland','United States'),(58,'Tinley Park','Illinois','United States'),(70,'Tokyo','Tokyo Metropolis','Japan'),(18,'Toronto','Ontario','Canada'),(75,'Tulsa','Oklahoma','United States'),(43,'Vancouver','British Columbia','Canada'),(27,'Vienna','Virginia','United States'),(64,'Washinton D.C.','District of Columbia','United States'),(56,'West Allis','Wisconsin','United States'),(6,'West Hollywood','California','United States'),(78,'Wheatland','California','United States');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opening_act`
--

DROP TABLE IF EXISTS `opening_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opening_act` (
  `act_id` int NOT NULL AUTO_INCREMENT,
  `act_name` varchar(64) NOT NULL,
  PRIMARY KEY (`act_id`),
  UNIQUE KEY `act_name` (`act_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opening_act`
--

LOCK TABLES `opening_act` WRITE;
/*!40000 ALTER TABLE `opening_act` DISABLE KEYS */;
INSERT INTO `opening_act` VALUES (1,'Alex Aiono'),(8,'Amaarae'),(7,'Annika Bennett'),(6,'Blue DeTiger'),(10,'Declan McKenna'),(4,'Girlhouse'),(9,'Griff'),(3,'Maggie Lindemann'),(2,'New Hope Club'),(11,'Rachel Chinouriri'),(5,'Spill Tab');
/*!40000 ALTER TABLE `opening_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opening_to_show`
--

DROP TABLE IF EXISTS `opening_to_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opening_to_show` (
  `tour_name` varchar(64) NOT NULL,
  `show_id` int NOT NULL,
  `act_id` int NOT NULL,
  `performance_order` int DEFAULT NULL,
  PRIMARY KEY (`tour_name`,`show_id`,`act_id`),
  KEY `act_id` (`act_id`),
  CONSTRAINT `opening_to_show_ibfk_1` FOREIGN KEY (`tour_name`, `show_id`) REFERENCES `sabrina_show` (`tour_name`, `show_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `opening_to_show_ibfk_2` FOREIGN KEY (`act_id`) REFERENCES `opening_act` (`act_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opening_to_show`
--

LOCK TABLES `opening_to_show` WRITE;
/*!40000 ALTER TABLE `opening_to_show` DISABLE KEYS */;
INSERT INTO `opening_to_show` VALUES ('Emails I Cant Send Tour',100,4,1),('Emails I Cant Send Tour',101,4,1),('Emails I Cant Send Tour',102,4,1),('Emails I Cant Send Tour',103,4,1),('Emails I Cant Send Tour',104,4,1),('Emails I Cant Send Tour',105,4,1),('Emails I Cant Send Tour',106,4,1),('Emails I Cant Send Tour',107,4,1),('Emails I Cant Send Tour',108,4,1),('Emails I Cant Send Tour',109,4,1),('Emails I Cant Send Tour',110,4,1),('Emails I Cant Send Tour',111,4,1),('Emails I Cant Send Tour',112,4,1),('Emails I Cant Send Tour',113,4,1),('Emails I Cant Send Tour',114,5,1),('Emails I Cant Send Tour',115,5,1),('Emails I Cant Send Tour',116,5,1),('Emails I Cant Send Tour',117,5,1),('Emails I Cant Send Tour',118,5,1),('Emails I Cant Send Tour',119,5,1),('Emails I Cant Send Tour',120,5,1),('Emails I Cant Send Tour',121,5,1),('Emails I Cant Send Tour',122,5,1),('Emails I Cant Send Tour',123,5,1),('Emails I Cant Send Tour',124,5,1),('Emails I Cant Send Tour',125,5,1),('Emails I Cant Send Tour',126,5,1),('Emails I Cant Send Tour',127,5,1),('Emails I Cant Send Tour',128,5,1),('Emails I Cant Send Tour',129,5,1),('Emails I Cant Send Tour',130,5,1),('Emails I Cant Send Tour',131,5,1),('Emails I Cant Send Tour',132,5,1),('Emails I Cant Send Tour',133,5,1),('Emails I Cant Send Tour',133,6,2),('Emails I Cant Send Tour',134,6,1),('Emails I Cant Send Tour',135,6,1),('Emails I Cant Send Tour',136,6,1),('Emails I Cant Send Tour',137,6,1),('Emails I Cant Send Tour',138,6,1),('Emails I Cant Send Tour',139,6,1),('Emails I Cant Send Tour',140,6,1),('Emails I Cant Send Tour',141,6,1),('Emails I Cant Send Tour',142,6,1),('Emails I Cant Send Tour',143,6,1),('Emails I Cant Send Tour',144,6,1),('Emails I Cant Send Tour',145,6,1),('Emails I Cant Send Tour',146,6,1),('Emails I Cant Send Tour',147,6,1),('Emails I Cant Send Tour',148,6,1),('Emails I Cant Send Tour',149,6,1),('Emails I Cant Send Tour',150,6,1),('Emails I Cant Send Tour',151,6,1),('Emails I Cant Send Tour',155,7,1),('Emails I Cant Send Tour',156,7,1),('Emails I Cant Send Tour',157,7,1),('Emails I Cant Send Tour',159,7,1),('Emails I Cant Send Tour',160,7,1),('Emails I Cant Send Tour',161,7,1),('Emails I Cant Send Tour',162,7,1),('Emails I Cant Send Tour',163,7,1),('Emails I Cant Send Tour',164,7,1),('Emails I Cant Send Tour',167,7,1),('Short n Sweet Tour',177,8,1),('Short n Sweet Tour',178,8,1),('Short n Sweet Tour',179,8,1),('Short n Sweet Tour',180,8,1),('Short n Sweet Tour',181,8,1),('Short n Sweet Tour',182,8,1),('Short n Sweet Tour',183,8,1),('Short n Sweet Tour',184,8,1),('Short n Sweet Tour',185,8,1),('Short n Sweet Tour',186,8,1),('Short n Sweet Tour',187,8,1),('Short n Sweet Tour',188,8,1),('Short n Sweet Tour',189,8,1),('Short n Sweet Tour',190,9,1),('Short n Sweet Tour',191,9,1),('Short n Sweet Tour',192,9,1),('Short n Sweet Tour',193,9,1),('Short n Sweet Tour',194,9,1),('Short n Sweet Tour',195,9,1),('Short n Sweet Tour',196,9,1),('Short n Sweet Tour',197,9,1),('Short n Sweet Tour',198,9,1),('Short n Sweet Tour',199,10,1),('Short n Sweet Tour',200,10,1),('Short n Sweet Tour',201,10,1),('Short n Sweet Tour',202,10,1),('Short n Sweet Tour',203,10,1),('Short n Sweet Tour',204,10,1),('Short n Sweet Tour',205,10,1),('Short n Sweet Tour',206,10,1),('Short n Sweet Tour',207,10,1),('Short n Sweet Tour',208,10,1),('Short n Sweet Tour',209,10,1),('Short n Sweet Tour',210,11,1),('Short n Sweet Tour',211,11,1),('Short n Sweet Tour',212,11,1),('Short n Sweet Tour',213,11,1),('Short n Sweet Tour',214,11,1),('Short n Sweet Tour',215,11,1),('Short n Sweet Tour',216,11,1),('Short n Sweet Tour',217,11,1),('Short n Sweet Tour',218,11,1),('Short n Sweet Tour',219,11,1),('Short n Sweet Tour',220,11,1),('Short n Sweet Tour',221,11,1),('Short n Sweet Tour',222,11,1),('Short n Sweet Tour',223,11,1),('Singular Tour',79,3,1),('Singular Tour',80,3,1),('Singular Tour',81,3,1),('Singular Tour',82,3,1),('Singular Tour',83,3,1),('Singular Tour',84,3,1),('Singular Tour',85,3,1),('Singular Tour',86,3,1),('Singular Tour',88,3,1),('Singular Tour',89,3,1),('Singular Tour',90,3,1),('Singular Tour',91,3,1),('Singular Tour',92,3,1),('Singular Tour',93,3,1),('The De-Tour',43,1,1),('The De-Tour',43,2,2),('The De-Tour',44,1,1),('The De-Tour',44,2,2),('The De-Tour',45,1,1),('The De-Tour',45,2,2),('The De-Tour',46,1,1),('The De-Tour',46,2,2),('The De-Tour',47,1,1),('The De-Tour',47,2,2),('The De-Tour',48,1,1),('The De-Tour',48,2,2),('The De-Tour',49,1,1),('The De-Tour',49,2,2),('The De-Tour',50,1,1),('The De-Tour',50,2,2),('The De-Tour',51,1,1),('The De-Tour',51,2,2),('The De-Tour',52,1,1),('The De-Tour',52,2,2),('The De-Tour',53,1,1),('The De-Tour',53,2,2),('The De-Tour',54,1,1),('The De-Tour',54,2,2),('The De-Tour',55,1,1),('The De-Tour',55,2,2),('The De-Tour',56,1,1),('The De-Tour',56,2,2),('The De-Tour',57,1,1),('The De-Tour',57,2,2),('The De-Tour',58,1,1),('The De-Tour',58,2,2),('The De-Tour',59,1,1),('The De-Tour',59,2,2),('The De-Tour',60,1,1),('The De-Tour',60,2,2),('The De-Tour',61,1,1),('The De-Tour',61,2,2),('The De-Tour',62,1,1),('The De-Tour',62,2,2),('The De-Tour',63,1,1),('The De-Tour',63,2,2),('The De-Tour',64,1,1),('The De-Tour',64,2,2),('The De-Tour',65,1,1),('The De-Tour',65,2,2),('The De-Tour',66,1,1),('The De-Tour',66,2,2),('The De-Tour',67,1,1),('The De-Tour',67,2,2),('The De-Tour',68,1,1),('The De-Tour',68,2,2),('The De-Tour',69,1,1),('The De-Tour',69,2,2),('The De-Tour',70,1,1),('The De-Tour',70,2,2),('The De-Tour',71,1,1),('The De-Tour',71,2,2),('The De-Tour',72,1,1),('The De-Tour',72,2,2),('The De-Tour',73,1,1),('The De-Tour',73,2,2),('The De-Tour',74,1,1),('The De-Tour',74,2,2),('The De-Tour',75,1,1),('The De-Tour',75,2,2),('The De-Tour',76,1,1),('The De-Tour',76,2,2);
/*!40000 ALTER TABLE `opening_to_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sabrina_show`
--

DROP TABLE IF EXISTS `sabrina_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sabrina_show` (
  `tour_name` varchar(64) NOT NULL,
  `show_id` int NOT NULL,
  `venue_name` varchar(64) NOT NULL,
  `location_id` int NOT NULL,
  `scheduled_date` date NOT NULL,
  `show_status` enum('Upcoming','Cancelled','Completed') NOT NULL,
  PRIMARY KEY (`tour_name`,`show_id`),
  KEY `location_id` (`location_id`,`venue_name`),
  CONSTRAINT `sabrina_show_ibfk_1` FOREIGN KEY (`tour_name`) REFERENCES `tour` (`tour_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sabrina_show_ibfk_2` FOREIGN KEY (`location_id`, `venue_name`) REFERENCES `venue` (`location_id`, `venue_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sabrina_show`
--

LOCK TABLES `sabrina_show` WRITE;
/*!40000 ALTER TABLE `sabrina_show` DISABLE KEYS */;
INSERT INTO `sabrina_show` VALUES ('Emails I Cant Send Tour',100,'Center Stage',2,'2022-09-29','Completed'),('Emails I Cant Send Tour',101,'Rams Head Live!',25,'2022-10-01','Completed'),('Emails I Cant Send Tour',102,'Theatre of Living Arts',26,'2022-10-02','Completed'),('Emails I Cant Send Tour',103,'Big Night Live',61,'2022-10-03','Completed'),('Emails I Cant Send Tour',104,'Webster Hall',22,'2022-10-05','Completed'),('Emails I Cant Send Tour',105,'Webster Hall',22,'2022-10-06','Completed'),('Emails I Cant Send Tour',106,'Lincoln Theatre',64,'2022-10-07','Completed'),('Emails I Cant Send Tour',107,'House of Blues',32,'2022-10-09','Completed'),('Emails I Cant Send Tour',108,'Phoenix Concert Theatre',18,'2022-10-10','Completed'),('Emails I Cant Send Tour',109,'Marquee Theatre',74,'2022-10-12','Completed'),('Emails I Cant Send Tour',110,'Observatory North Park',47,'2022-10-13','Completed'),('Emails I Cant Send Tour',111,'The Wiltern',49,'2022-10-15','Completed'),('Emails I Cant Send Tour',112,'Regency Center',8,'2022-10-16','Completed'),('Emails I Cant Send Tour',113,'Hard Rock Live',55,'2022-10-20','Completed'),('Emails I Cant Send Tour',114,'Hard Rock Live Seminole',107,'2023-03-16','Completed'),('Emails I Cant Send Tour',115,'Jannus Live',33,'2023-03-17','Completed'),('Emails I Cant Send Tour',116,'Orpheum Theater',51,'2023-03-20','Completed'),('Emails I Cant Send Tour',117,'Warehouse Live',53,'2023-03-22','Completed'),('Emails I Cant Send Tour',118,'The Factory in Deep Ellum',5,'2023-03-24','Completed'),('Emails I Cant Send Tour',119,'The Espee',3,'2023-03-25','Completed'),('Emails I Cant Send Tour',120,'Moody Theater',4,'2023-03-26','Completed'),('Emails I Cant Send Tour',121,'Tulsa Theater',75,'2023-03-28','Completed'),('Emails I Cant Send Tour',122,'Mission Ballroom',12,'2023-03-30','Completed'),('Emails I Cant Send Tour',123,'The Union',76,'2023-04-01','Completed'),('Emails I Cant Send Tour',124,'Revolution Concert House',77,'2023-04-02','Completed'),('Emails I Cant Send Tour',125,'Grey Eagle Event Centre',45,'2023-04-05','Completed'),('Emails I Cant Send Tour',126,'Edmonton Convention Centre',44,'2023-04-06','Completed'),('Emails I Cant Send Tour',127,'PNE Forum',43,'2023-04-08','Completed'),('Emails I Cant Send Tour',128,'Paramount Theatre',10,'2023-04-11','Completed'),('Emails I Cant Send Tour',129,'The Warfield',8,'2023-04-14','Completed'),('Emails I Cant Send Tour',130,'The Warfield',8,'2023-04-15','Completed'),('Emails I Cant Send Tour',131,'Hard Rock Live Sacramento',78,'2023-04-16','Completed'),('Emails I Cant Send Tour',132,'Humphreys Concerts By the Bay',47,'2023-04-19','Completed'),('Emails I Cant Send Tour',133,'Greek Theatre',49,'2023-04-20','Completed'),('Emails I Cant Send Tour',134,'The Theatre at Virgin Hotels',66,'2023-04-22','Completed'),('Emails I Cant Send Tour',135,'Mesa Ampitheatre',79,'2023-04-23','Completed'),('Emails I Cant Send Tour',136,'Midland Theatre',14,'2023-04-26','Completed'),('Emails I Cant Send Tour',137,'State Theatre',80,'2023-04-27','Completed'),('Emails I Cant Send Tour',138,'The Sylvee',81,'2023-04-28','Completed'),('Emails I Cant Send Tour',139,'The Factory',82,'2023-04-30','Completed'),('Emails I Cant Send Tour',140,'Ryman Auditorium',1,'2023-05-02','Completed'),('Emails I Cant Send Tour',141,'Murat Theatre',16,'2023-05-03','Completed'),('Emails I Cant Send Tour',142,'Meridian Hall',18,'2023-05-05','Completed'),('Emails I Cant Send Tour',143,'Masonic Temple Theatre',57,'2023-05-06','Completed'),('Emails I Cant Send Tour',144,'Agora Ballroom',106,'2023-05-07','Completed'),('Emails I Cant Send Tour',145,'Roadrunner',61,'2023-05-02','Completed'),('Emails I Cant Send Tour',146,'Terminal 5',22,'2023-05-10','Completed'),('Emails I Cant Send Tour',147,'Terminal 5',22,'2023-05-11','Completed'),('Emails I Cant Send Tour',148,'Franklin Music Hall',26,'2023-05-13','Completed'),('Emails I Cant Send Tour',149,'The Anthem',64,'2023-05-14','Completed'),('Emails I Cant Send Tour',150,'The Ritz',103,'2023-05-16','Completed'),('Emails I Cant Send Tour',151,'The Eastern',2,'2023-05-17','Completed'),('Emails I Cant Send Tour',152,'Gulf Shores Public Beach',83,'2023-05-20','Completed'),('Emails I Cant Send Tour',153,'Jockey Club',84,'2023-05-28','Completed'),('Emails I Cant Send Tour',154,'Anhangabaú River',85,'2023-06-04','Completed'),('Emails I Cant Send Tour',155,'3Olympia Theatre',86,'2023-06-11','Completed'),('Emails I Cant Send Tour',156,'Barrowland Ballroom',38,'2023-06-13','Completed'),('Emails I Cant Send Tour',157,'O2 Apollo Manchester',87,'2023-06-14','Completed'),('Emails I Cant Send Tour',158,'Seaclose Park',88,'2023-06-16','Completed'),('Emails I Cant Send Tour',159,'O2 Academy Birmingham',89,'2023-06-18','Completed'),('Emails I Cant Send Tour',160,'Eventim Apollo',90,'2023-06-19','Completed'),('Emails I Cant Send Tour',161,'Palais 12',91,'2023-06-23','Completed'),('Emails I Cant Send Tour',162,'Palladium',41,'2023-06-24','Completed'),('Emails I Cant Send Tour',163,'Melkweg',92,'2023-06-25','Completed'),('Emails I Cant Send Tour',164,'Astra Kulturhaus',93,'2023-06-27','Completed'),('Emails I Cant Send Tour',165,'Gärdet',94,'2023-06-29','Completed'),('Emails I Cant Send Tour',166,'Hyde Park',90,'2023-07-02','Completed'),('Emails I Cant Send Tour',167,'Zénith Paris',39,'2023-07-03','Completed'),('Emails I Cant Send Tour',168,'Toyosu PIT',70,'2023-07-18','Completed'),('Emails I Cant Send Tour',169,'Zepp Osaka Bayside',68,'2023-07-19','Completed'),('Emails I Cant Send Tour',170,'Sepang International Circuit',95,'2023-07-21','Completed'),('Emails I Cant Send Tour',171,'Gelora Bung Karno Sports Complex',96,'2023-07-22','Completed'),('Emails I Cant Send Tour',172,'New Frontier Theater',97,'2023-07-25','Completed'),('Emails I Cant Send Tour',173,'Sands Expo & Convention Centre',72,'2023-07-27','Completed'),('Emails I Cant Send Tour',174,'Bitec Hall',98,'2023-07-29','Completed'),('Emails I Cant Send Tour',175,'House of Blues',32,'2023-08-03','Completed'),('Emails I Cant Send Tour',176,'Grant Park',32,'2023-08-04','Completed'),('Evolution Tour',1,'Rocketown',1,'2016-10-18','Completed'),('Evolution Tour',2,'The Loft',2,'2016-10-21','Completed'),('Evolution Tour',3,'Studio Theater at The Tobin Center',3,'2016-10-22','Completed'),('Evolution Tour',4,'3Ten',4,'2016-10-23','Completed'),('Evolution Tour',5,'Trees',5,'2016-10-24','Completed'),('Evolution Tour',6,'The Roxy Theatre',6,'2016-10-27','Completed'),('Evolution Tour',7,'Lobero Theatre',7,'2016-10-29','Completed'),('Evolution Tour',8,'Slims',8,'2016-10-30','Completed'),('Evolution Tour',9,'Constellation Room',9,'2016-11-01','Completed'),('Evolution Tour',10,'Nuemos',10,'2016-11-03','Completed'),('Evolution Tour',11,'Hawthorne Theatre',11,'2016-11-05','Completed'),('Evolution Tour',12,'Bluebird Theatre',12,'2016-11-07','Completed'),('Evolution Tour',13,'Slowdown',13,'2016-11-08','Completed'),('Evolution Tour',14,'Recordbar',14,'2016-11-10','Completed'),('Evolution Tour',15,'The Garage',15,'2016-11-11','Completed'),('Evolution Tour',16,'Deluxe at Old National Centre',16,'2016-11-13','Completed'),('Evolution Tour',17,'Pike Room',17,'2016-11-14','Completed'),('Evolution Tour',18,'Mod Club',18,'2016-11-16','Completed'),('Evolution Tour',19,'Buffalo Iron Works',19,'2016-11-17','Completed'),('Evolution Tour',20,'The Hollow',20,'2016-11-18','Completed'),('Evolution Tour',21,'Tanger Outlets',21,'2016-11-19','Completed'),('Evolution Tour',22,'Highline Ballroom',22,'2016-11-21','Completed'),('Evolution Tour',23,'The Sinclair',23,'2016-11-23','Completed'),('Evolution Tour',24,'iPlay America',24,'2016-11-25','Completed'),('Evolution Tour',25,'Soundstage Baltimore',25,'2016-11-26','Completed'),('Evolution Tour',26,'The Foundry at The Filmore Philadelphia',26,'2016-11-27','Completed'),('Evolution Tour',27,'Jammin Java',27,'2016-11-29','Completed'),('Evolution Tour',28,'Stage AE',28,'2016-11-30','Completed'),('Evolution Tour',29,'Grog Shop',29,'2016-12-03','Completed'),('Evolution Tour',30,'A and R Music Bar',30,'2016-12-04','Completed'),('Evolution Tour',31,'Turner Hall Ballroom',31,'2016-12-05','Completed'),('Evolution Tour',32,'Schubas Tavern',32,'2016-12-06','Completed'),('Evolution Tour',33,'State Theatre',33,'2016-12-10','Completed'),('Evolution Tour',34,'Jack Rabbits',34,'2016-12-11','Completed'),('Evolution Tour',35,'McGlohon Theatre at Spirit Square',35,'2016-12-13','Completed'),('Evolution Tour',36,'Twentieth Century Theatre',36,'2016-12-14','Completed'),('Evolution Tour',37,'Parker Playhouse',37,'2016-12-19','Completed'),('Evolution Tour',38,'O2 ABC Glasgow',38,'2017-05-03','Completed'),('Evolution Tour',39,'Les Etoiles',39,'2017-05-12','Completed'),('Evolution Tour',40,'TRUX Music Center',40,'2017-05-20','Completed'),('Evolution Tour',41,'LUXOR',41,'2017-05-21','Completed'),('Evolution Tour',42,'Magazzini Generali',42,'2017-05-22','Completed'),('Short n Sweet Tour',177,'Nationwide Arena',30,'2024-09-23','Completed'),('Short n Sweet Tour',178,'Scotiabank Arena',18,'2024-09-25','Completed'),('Short n Sweet Tour',179,'Little Ceasars Arena',57,'2024-09-26','Completed'),('Short n Sweet Tour',180,'Madison Square Garden',22,'2024-09-29','Completed'),('Short n Sweet Tour',181,'Barclays Center',99,'2024-09-30','Completed'),('Short n Sweet Tour',182,'XL Center',100,'2024-10-02','Completed'),('Short n Sweet Tour',183,'TD Garden',61,'2024-10-03','Completed'),('Short n Sweet Tour',184,'CFG Bank Arena',25,'2024-10-05','Completed'),('Short n Sweet Tour',185,'Wells Fargo Center',26,'2024-10-08','Completed'),('Short n Sweet Tour',186,'Bell Centre',101,'2024-10-11','Completed'),('Short n Sweet Tour',187,'United Center',32,'2024-10-13','Completed'),('Short n Sweet Tour',188,'Target Center',80,'2024-10-14','Completed'),('Short n Sweet Tour',189,'Bridgestone Arena',1,'2024-10-16','Completed'),('Short n Sweet Tour',190,'Chaifetz Arena',102,'2024-10-17','Completed'),('Short n Sweet Tour',191,'Lenovo Center',103,'2024-10-19','Completed'),('Short n Sweet Tour',192,'John Paul Jones Arena',108,'2024-10-20','Completed'),('Short n Sweet Tour',193,'State Farm Arena',2,'2024-10-22','Completed'),('Short n Sweet Tour',194,'Kia Center',55,'2024-10-24','Completed'),('Short n Sweet Tour',195,'Amalie Center',104,'2024-10-25','Completed'),('Short n Sweet Tour',196,'Toyota Center',53,'2024-10-27','Completed'),('Short n Sweet Tour',197,'Moody Center',4,'2024-10-28','Completed'),('Short n Sweet Tour',198,'American Airlines Center',5,'2024-10-30','Completed'),('Short n Sweet Tour',199,'Ball Arena',12,'2024-11-01','Completed'),('Short n Sweet Tour',200,'Delta Center',76,'2024-11-02','Completed'),('Short n Sweet Tour',201,'Pacific Coliseum',43,'2024-11-04','Completed'),('Short n Sweet Tour',202,'Climate Pledge Arena',10,'2024-11-06','Completed'),('Short n Sweet Tour',203,'Moda Center',11,'2024-11-07','Completed'),('Short n Sweet Tour',204,'Chase Center',8,'2024-11-09','Completed'),('Short n Sweet Tour',205,'Pechanga Arena',47,'2024-11-10','Completed'),('Short n Sweet Tour',206,'Footprint Center',50,'2024-11-13','Completed'),('Short n Sweet Tour',207,'Crypto.com Arena',50,'2024-11-15','Completed'),('Short n Sweet Tour',208,'Kia Forum',105,'2024-11-17','Completed'),('Short n Sweet Tour',209,'Kia Forum',105,'2024-11-18','Completed'),('Short n Sweet Tour',210,'3Arena',86,'2025-03-03','Upcoming'),('Short n Sweet Tour',211,'3Arena',86,'2025-03-04','Upcoming'),('Short n Sweet Tour',212,'Utilita Arena',89,'2025-03-06','Upcoming'),('Short n Sweet Tour',213,'The O2 Arena',90,'2025-03-08','Upcoming'),('Short n Sweet Tour',214,'The O2 Arena',90,'2025-03-09','Upcoming'),('Short n Sweet Tour',215,'OVO Hydro',38,'2025-03-11','Upcoming'),('Short n Sweet Tour',216,'Co-op Live',87,'2025-03-13','Upcoming'),('Short n Sweet Tour',217,'Co-op Live',87,'2025-03-14','Upcoming'),('Short n Sweet Tour',218,'Accor Arena',39,'2025-03-16','Upcoming'),('Short n Sweet Tour',219,'Accor Arena',39,'2025-03-17','Upcoming'),('Short n Sweet Tour',220,'Uber Arena',93,'2025-03-19','Upcoming'),('Short n Sweet Tour',221,'ING Arena',91,'2025-03-22','Upcoming'),('Short n Sweet Tour',222,'Ziggo Dome',92,'2025-03-23','Upcoming'),('Short n Sweet Tour',223,'Unipol Forum',42,'2025-03-26','Upcoming'),('Singular Tour',78,'Universal Studios Florida',55,'2019-03-02','Completed'),('Singular Tour',79,'Buckhead Theatre',2,'2019-03-03','Completed'),('Singular Tour',80,'The Filmore',35,'2019-03-04','Completed'),('Singular Tour',81,'Theatre of Living Arts',26,'2019-03-06','Completed'),('Singular Tour',82,'Paradise Rock Club',61,'2019-03-07','Completed'),('Singular Tour',83,'Welmont Theater',62,'2019-03-09','Completed'),('Singular Tour',84,'9:30 Club',64,'2019-03-10','Completed'),('Singular Tour',85,'Irving Plaza',22,'2019-03-12','Completed'),('Singular Tour',86,'The Opera House',18,'2019-03-14','Completed'),('Singular Tour',87,'Grand Theater at Foxwoods',65,'2019-03-15','Completed'),('Singular Tour',88,'St. Andrews Hall',57,'2019-03-17','Completed'),('Singular Tour',89,'House of Blues',32,'2019-03-18','Completed'),('Singular Tour',90,'House of Blues',66,'2019-03-21','Completed'),('Singular Tour',91,'House of Blues',47,'2019-03-22','Completed'),('Singular Tour',92,'UC Theatre',67,'2019-03-24','Completed'),('Singular Tour',93,'Henry Fonda Theatre',49,'2019-03-25','Completed'),('Singular Tour',94,'Namba Hatch',68,'2019-04-01','Completed'),('Singular Tour',95,'Diamond Hall',69,'2019-04-02','Completed'),('Singular Tour',96,'EX Theater Roppongi',70,'2019-04-04','Completed'),('Singular Tour',97,'Yes24 Live Hall',71,'2019-04-06','Completed'),('Singular Tour',98,'New Frontier Theater',73,'2019-04-09','Cancelled'),('Singular Tour',99,'Kalland Theater',72,'2019-04-11','Completed'),('The De-Tour',43,'Vogue Theatre',43,'2017-07-06','Completed'),('The De-Tour',44,'Winspear Centre',44,'2017-07-08','Completed'),('The De-Tour',45,'Calgary Stampede',45,'2017-07-09','Completed'),('The De-Tour',46,'Neptune Theatre',10,'2017-07-11','Completed'),('The De-Tour',47,'Crystal Ballroom',11,'2017-07-13','Completed'),('The De-Tour',48,'The Masonic',8,'2017-07-15','Completed'),('The De-Tour',49,'Ruth Finley Person Theatre',46,'2017-07-16','Completed'),('The De-Tour',50,'Balboa Theatre',47,'2017-07-18','Completed'),('The De-Tour',51,'House of Blues',48,'2017-07-19','Completed'),('The De-Tour',52,'The Wiltern',49,'2017-07-21','Completed'),('The De-Tour',53,'Comerica Theatre',50,'2017-07-22','Completed'),('The De-Tour',54,'Paramount Theatre',12,'2017-07-24','Completed'),('The De-Tour',55,'Majestic Theatre',5,'2017-07-26','Completed'),('The De-Tour',56,'Saenger Theatre',51,'2017-07-28','Completed'),('The De-Tour',57,'Timberwood Ampitheater',52,'2017-07-29','Completed'),('The De-Tour',58,'Revention Music Center',53,'2017-07-30','Completed'),('The De-Tour',59,'Florida Theatre',34,'2017-08-02','Completed'),('The De-Tour',60,'The Filmore Miami Beach',54,'2017-08-04','Completed'),('The De-Tour',61,'Walt Disney Theatre',55,'2017-08-05','Completed'),('The De-Tour',62,'The Tabernacle',2,'2017-08-06','Completed'),('The De-Tour',63,'Ryman Auditorium',1,'2017-08-08','Completed'),('The De-Tour',64,'Murat Theatre',16,'2017-08-09','Completed'),('The De-Tour',65,'Wisconsin State Fair',56,'2017-08-11','Completed'),('The De-Tour',66,'The Filmore',57,'2017-08-12','Completed'),('The De-Tour',67,'Hollywood Casino Ampitheatre',58,'2017-08-13','Completed'),('The De-Tour',68,'Erie County Fair',59,'2017-08-15','Completed'),('The De-Tour',69,'Byham Theatre',28,'2017-08-16','Completed'),('The De-Tour',70,'Connor Palace',106,'2017-08-17','Completed'),('The De-Tour',71,'Hersheypark Stadium',60,'2017-08-19','Completed'),('The De-Tour',72,'House of Blues',61,'2017-08-20','Completed'),('The De-Tour',73,'Welmont Theater',62,'2017-08-22','Completed'),('The De-Tour',74,'The Foundry at The Filmore Philadelphia',26,'2017-08-23','Completed'),('The De-Tour',75,'Belk Theater',35,'2017-08-25','Completed'),('The De-Tour',76,'Maryland State Fair',63,'2017-08-26','Completed'),('The De-Tour',77,'Budweiser Stage',18,'2017-08-27','Completed');
/*!40000 ALTER TABLE `sabrina_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_name` varchar(64) NOT NULL,
  `album_id` int NOT NULL,
  `tour_name` varchar(64) DEFAULT NULL,
  `order_played` int NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album_id` (`album_id`),
  KEY `tour_name` (`tour_name`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `song_ibfk_2` FOREIGN KEY (`tour_name`) REFERENCES `tour` (`tour_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Smoke and Fire',5,'Evolution Tour',1),(2,'Feels Like Loneliness',3,'Evolution Tour',2),(3,'No Words',3,'Evolution Tour',3),(4,'Heathens',16,'Evolution Tour',4),(5,'Wildside',6,'Evolution Tour',5),(6,'Cant Blame a Girl For Trying',4,'Evolution Tour',6),(7,'Run and Hide',3,'Evolution Tour',7),(8,'Well Be the Stars',4,'Evolution Tour',8),(9,'Thumbs',3,'Evolution Tour',9),(10,'Mirage',3,'Evolution Tour',10),(11,'Dont Want It Back',3,'Evolution Tour',11),(12,'Hotline Bling',17,'Evolution Tour',12),(13,'All We Have Is Love',3,'Evolution Tour',13),(14,'Space',3,'Evolution Tour',14),(15,'Eyes Wide Open',4,'Evolution Tour',15),(16,'On Purpose',3,'Evolution Tour',16),(17,'Shadows',3,'Evolution Tour',17),(18,'Feels Like Loneliness',3,'The De-Tour',1),(19,'Smoke and Fire',5,'The De-Tour',2),(20,'No Words',3,'The De-Tour',3),(21,'Hands',7,'The De-Tour',4),(22,'Run and Hide',3,'The De-Tour',5),(23,'Space',3,'The De-Tour',6),(24,'Mirage',3,'The De-Tour',7),(25,'Thumbs',3,'The De-Tour',8),(26,'All We Have Is Love',3,'The De-Tour',9),(27,'Into You',13,'The De-Tour',10),(28,'Cant Blame a Girl For Trying',4,'The De-Tour',11),(29,'Well Be the Stars',4,'The De-Tour',12),(30,'Eyes Wide Open',4,'The De-Tour',13),(31,'Shadows',3,'The De-Tour',14),(32,'Wildside',6,'The De-Tour',15),(33,'Why',8,'The De-Tour',16),(34,'On Purpose',3,'The De-Tour',17),(35,'Almost Love',11,'Singular Tour',1),(36,'Bad Time',11,'Singular Tour',2),(37,'Alien',9,'Singular Tour',3),(38,'Mona Lisa',14,'Singular Tour',4),(39,'Diamonds',15,'Singular Tour',5),(40,'Thumbs',3,'Singular Tour',6),(41,'On Purpose',3,'Singular Tour',7),(42,'Pushing 20',12,'Singular Tour',8),(43,'All We Have Is Love',3,'Singular Tour',9),(44,'Why',8,'Singular Tour',10),(45,'prfct',11,'Singular Tour',11),(46,'Paris',11,'Singular Tour',12),(47,'Hold Tight',11,'Singular Tour',13),(48,'Sue Me',11,'Singular Tour',14),(49,'Exhale',12,'Singular Tour',15),(50,'Emails I Cant Send',2,'Emails I Cant Send Tour',1),(51,'Read your Mind',2,'Emails I Cant Send Tour',2),(52,'Feather',2,'Emails I Cant Send Tour',3),(53,'Vicious',2,'Emails I Cant Send Tour',4),(54,'Already Over',2,'Emails I Cant Send Tour',5),(55,'Bad for Business',2,'Emails I Cant Send Tour',6),(56,'skinny dipping',2,'Emails I Cant Send Tour',7),(57,'Tornado Warnings',2,'Emails I Cant Send Tour',8),(58,'opposite',2,'Emails I Cant Send Tour',9),(59,'bet u wanna',2,'Emails I Cant Send Tour',10),(60,'Dreams',18,'Emails I Cant Send Tour',11),(61,'how many things',2,'Emails I Cant Send Tour',12),(62,'Fast Times',2,'Emails I Cant Send Tour',13),(63,'Paris',11,'Emails I Cant Send Tour',14),(64,'Honeymoon Fades',10,'Emails I Cant Send Tour',15),(65,'Sue Me',11,'Emails I Cant Send Tour',16),(66,'decode',2,'Emails I Cant Send Tour',17),(67,'Nonsense',2,'Emails I Cant Send Tour',18),(68,'because i liked a boy',2,'Emails I Cant Send Tour',19),(69,'Taste',1,'Short n Sweet Tour',1),(70,'Good Graces',1,'Short n Sweet Tour',2),(71,'Slim Pickins',1,'Short n Sweet Tour',3),(72,'Tornado Warnings',2,'Short n Sweet Tour',4),(73,'decode',2,'Short n Sweet Tour',5),(74,'Bad Chem',1,'Short n Sweet Tour',6),(75,'Feather',2,'Short n Sweet Tour',7),(76,'Fast Times',2,'Short n Sweet Tour',8),(77,'Read Your Mind',2,'Short n Sweet Tour',9),(78,'opposite',2,'Short n Sweet Tour',10),(79,'because i liked a boy',2,'Short n Sweet Tour',11),(80,'Coincidence',1,'Short n Sweet Tour',12),(81,'Nonsense',2,'Short n Sweet Tour',13),(82,'Dumb & Poetic',1,'Short n Sweet Tour',14),(83,'Juno',1,'Short n Sweet Tour',15),(84,'Please Please Please',1,'Short n Sweet Tour',16),(85,'Dont Smile',1,'Short n Sweet Tour',17),(86,'Espresso',1,'Short n Sweet Tour',18);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_sales`
--

DROP TABLE IF EXISTS `ticket_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_sales` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `ticket_quantity` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `tour_name` varchar(64) DEFAULT NULL,
  `show_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `tour_name` (`tour_name`,`show_id`),
  CONSTRAINT `ticket_sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_sales_ibfk_2` FOREIGN KEY (`tour_name`, `show_id`) REFERENCES `sabrina_show` (`tour_name`, `show_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_sales`
--

LOCK TABLES `ticket_sales` WRITE;
/*!40000 ALTER TABLE `ticket_sales` DISABLE KEYS */;
INSERT INTO `ticket_sales` VALUES (1,'2016-06-01',198.34,2,4,'Evolution Tour',1),(2,'2016-05-01',107.61,1,14,'Evolution Tour',1),(3,'2016-06-01',3085.79,20,9,'Evolution Tour',1),(4,'2016-06-17',753.10,7,8,'Evolution Tour',2),(5,'2016-05-19',142.67,1,4,'Evolution Tour',2),(6,'2016-06-13',782.75,5,3,'Evolution Tour',5),(7,'2016-06-03',5983.40,22,11,'Evolution Tour',5),(8,'2016-06-03',231.69,2,12,'Evolution Tour',5),(9,'2016-08-03',396.32,3,5,'Evolution Tour',10),(10,'2016-07-14',1247.48,10,6,'Evolution Tour',10),(11,'2016-07-17',7095.81,50,2,'Evolution Tour',16),(12,'2016-07-02',504.30,3,4,'Evolution Tour',16),(13,'2016-07-26',9832.54,62,9,'Evolution Tour',16),(14,'2016-07-11',738.02,5,1,'Evolution Tour',16),(15,'2016-07-09',209.51,1,7,'Evolution Tour',16),(16,'2016-07-16',679.03,4,10,'Evolution Tour',16),(17,'2016-07-18',2083.49,12,19,'Evolution Tour',16),(18,'2016-08-20',597.12,98,3,'Evolution Tour',18),(19,'2016-08-20',11038.38,98,1,'Evolution Tour',19),(20,'2016-09-16',476.49,3,3,'Evolution Tour',19),(21,'2016-10-19',7583.74,9,6,'Evolution Tour',19),(22,'2016-09-06',685.20,5,7,'Evolution Tour',19),(23,'2016-08-26',20093.33,73,24,'Evolution Tour',19),(24,'2016-08-29',298.35,2,15,'Evolution Tour',19),(25,'2016-08-29',176.54,1,16,'Evolution Tour',19),(26,'2016-08-26',3890.48,21,24,'Evolution Tour',20),(27,'2016-09-08',8958.19,60,25,'Evolution Tour',22),(28,'2016-09-04',22190.19,99,26,'Evolution Tour',22),(29,'2016-10-04',7381.89,59,8,'Evolution Tour',23),(30,'2016-10-02',8320.46,59,1,'Evolution Tour',23),(31,'2016-09-15',2432.87,3,20,'Evolution Tour',25),(32,'2016-09-15',3482.43,6,21,'Evolution Tour',25),(33,'2016-09-13',232.83,3,22,'Evolution Tour',25),(34,'2016-10-06',213.55,1,23,'Evolution Tour',25),(35,'2016-10-23',4390.43,28,23,'Evolution Tour',28),(36,'2016-10-23',6894.65,51,24,'Evolution Tour',28),(37,'2016-11-18',108.53,1,10,'Evolution Tour',30),(38,'2016-10-28',3298.13,19,18,'Evolution Tour',30),(39,'2016-11-18',2108.73,11,19,'Evolution Tour',30),(40,'2016-09-12',302.75,2,13,'Evolution Tour',32),(41,'2016-08-22',583.22,4,11,'Evolution Tour',32),(42,'2016-08-23',1582.92,9,12,'Evolution Tour',32),(43,'2016-08-27',554.23,3,14,'Evolution Tour',32),(44,'2016-08-07',4938.63,39,17,'Evolution Tour',32),(45,'2016-10-26',7433.44,52,27,'Evolution Tour',35),(46,'2016-09-13',2196.54,12,25,'Evolution Tour',39),(47,'2016-09-13',1583.18,10,26,'Evolution Tour',39),(48,'2016-09-15',3689.54,19,25,'Evolution Tour',42),(49,'2016-09-15',2093.18,10,26,'Evolution Tour',42),(50,'2017-04-16',598.42,5,20,'The De-Tour',44),(51,'2017-05-06',2908.61,12,21,'The De-Tour',44),(52,'2017-04-28',341.58,2,23,'The De-Tour',44),(53,'2017-05-06',2039.73,13,24,'The De-Tour',44),(54,'2017-05-06',6932.02,50,5,'The De-Tour',46),(55,'2017-05-06',2910.31,10,6,'The De-Tour',46),(56,'2017-05-13',202.62,1,24,'The De-Tour',52),(57,'2017-05-13',427.87,3,26,'The De-Tour',52),(58,'2017-04-22',6932.02,6,27,'The De-Tour',52),(59,'2017-04-27',311.12,2,19,'The De-Tour',52),(60,'2017-04-27',200.92,1,19,'The De-Tour',52),(61,'2017-05-17',572.51,4,17,'The De-Tour',52),(62,'2017-05-14',225.40,1,13,'The De-Tour',55),(63,'2017-05-19',427.68,2,11,'The De-Tour',55),(64,'2017-05-21',7325.60,61,1,'The De-Tour',55),(65,'2017-05-02',863.35,6,17,'The De-Tour',56),(66,'2017-05-23',209.54,1,15,'The De-Tour',58),(67,'2017-05-23',215.42,1,16,'The De-Tour',58),(68,'2017-05-23',201.83,1,3,'The De-Tour',58),(69,'2017-06-21',405.39,2,19,'The De-Tour',63),(70,'2017-06-19',3000.23,20,1,'The De-Tour',63),(71,'2017-06-16',809.09,5,2,'The De-Tour',64),(72,'2017-07-08',542.87,2,1,'The De-Tour',64),(73,'2017-07-09',113.63,1,4,'The De-Tour',64),(74,'2017-06-20',4328.81,23,9,'The De-Tour',64),(75,'2017-07-01',781.70,4,14,'The De-Tour',64),(76,'2017-07-18',291.02,1,10,'The De-Tour',64),(77,'2017-05-06',1000.80,9,12,'The De-Tour',64),(78,'2017-06-28',904.42,7,23,'The De-Tour',64),(79,'2017-05-02',749.83,6,27,'The De-Tour',64),(80,'2017-07-29',4000.31,1,26,'The De-Tour',64),(81,'2017-07-09',342.87,2,17,'The De-Tour',66),(82,'2017-06-05',872.87,4,18,'The De-Tour',66),(83,'2017-05-16',5009.62,20,3,'The De-Tour',66),(84,'2017-06-12',891.22,7,2,'The De-Tour',68),(85,'2017-06-13',293.65,1,15,'The De-Tour',68),(86,'2017-06-13',794.72,5,16,'The De-Tour',68),(87,'2017-05-01',391.22,2,22,'The De-Tour',68),(88,'2017-05-07',890.56,7,1,'The De-Tour',69),(89,'2017-05-03',390.92,4,2,'The De-Tour',68),(90,'2017-03-21',2397.24,20,8,'The De-Tour',72),(91,'2017-03-29',309.74,1,1,'The De-Tour',72),(92,'2017-04-22',582.02,3,4,'The De-Tour',72),(93,'2017-02-13',9000.14,73,3,'The De-Tour',77),(94,'2017-02-14',322.75,3,15,'The De-Tour',77),(95,'2017-02-14',190.43,1,16,'The De-Tour',77),(96,'2018-08-13',809.59,7,27,'Singular Tour',80),(97,'2018-08-10',219.31,1,4,'Singular Tour',80),(98,'2018-08-15',1801.50,9,2,'Singular Tour',80),(99,'2018-08-11',100.79,1,1,'Singular Tour',80),(100,'2018-07-29',6075.38,43,8,'Singular Tour',82),(101,'2018-08-13',809.59,7,27,'Singular Tour',82),(102,'2018-10-24',694.42,5,20,'Singular Tour',82),(103,'2018-08-19',234.73,1,21,'Singular Tour',84),(104,'2018-08-19',421.15,2,22,'Singular Tour',84),(105,'2018-09-14',437.66,3,1,'Singular Tour',84),(106,'2018-11-19',9029.42,8,2,'Singular Tour',84),(107,'2018-10-12',221.76,1,4,'Singular Tour',84),(108,'2019-01-02',339.65,2,7,'Singular Tour',84),(109,'2018-08-19',210.10,1,18,'Singular Tour',84),(110,'2018-12-21',5401.36,29,25,'Singular Tour',85),(111,'2018-12-21',3661.71,20,26,'Singular Tour',85),(112,'2018-08-28',306.94,2,3,'Singular Tour',86),(113,'2018-08-26',810.54,6,15,'Singular Tour',86),(114,'2018-08-26',483.10,3,16,'Singular Tour',86),(115,'2018-09-20',684.24,5,17,'Singular Tour',89),(116,'2018-08-28',232.65,1,10,'Singular Tour',89),(117,'2018-08-12',439.74,2,11,'Singular Tour',89),(118,'2018-08-28',684.24,5,12,'Singular Tour',89),(119,'2018-08-30',2093.11,10,13,'Singular Tour',89),(120,'2018-09-21',584.92,4,18,'Singular Tour',89),(121,'2018-07-18',220.41,1,19,'Singular Tour',89),(122,'2018-06-29',392.55,1,19,'Singular Tour',90),(123,'2018-11-20',124.64,1,19,'Singular Tour',93),(124,'2018-11-02',1004.06,10,25,'Singular Tour',93),(125,'2018-11-03',763.13,5,26,'Singular Tour',93),(126,'2018-12-23',90.77,1,24,'Singular Tour',93),(127,'2018-12-29',431.99,2,8,'Singular Tour',93),(128,'2018-12-30',3009.89,20,25,'Singular Tour',96),(129,'2018-12-28',2293.67,10,26,'Singular Tour',96),(130,'2018-01-03',303.54,1,25,'Singular Tour',97),(131,'2018-01-03',293.48,1,26,'Singular Tour',97),(132,'2018-01-04',286.12,1,25,'Singular Tour',98),(133,'2018-01-02',322.88,1,26,'Singular Tour',98),(134,'2022-02-22',393.44,2,20,'Emails I Cant Send Tour',101),(135,'2022-03-02',254.92,1,21,'Emails I Cant Send Tour',101),(136,'2022-03-10',326.86,2,22,'Emails I Cant Send Tour',101),(137,'2022-03-22',246.86,1,20,'Emails I Cant Send Tour',102),(138,'2022-03-22',189.34,1,21,'Emails I Cant Send Tour',102),(139,'2022-03-22',231.52,1,22,'Emails I Cant Send Tour',102),(140,'2022-04-18',93.37,1,1,'Emails I Cant Send Tour',103),(141,'2022-04-28',2351.56,10,8,'Emails I Cant Send Tour',103),(142,'2022-06-19',212.75,1,25,'Emails I Cant Send Tour',104),(143,'2022-06-19',241.32,1,26,'Emails I Cant Send Tour',104),(144,'2022-07-29',103.12,1,23,'Emails I Cant Send Tour',104),(145,'2022-06-09',394.23,2,9,'Emails I Cant Send Tour',104),(146,'2022-08-11',475.28,2,6,'Emails I Cant Send Tour',104),(147,'2022-06-19',232.24,1,25,'Emails I Cant Send Tour',105),(148,'2022-06-19',211.55,1,26,'Emails I Cant Send Tour',105),(149,'2022-05-01',647.14,4,1,'Emails I Cant Send Tour',105),(150,'2022-06-05',2453.17,12,2,'Emails I Cant Send Tour',105),(151,'2022-06-06',439.13,3,4,'Emails I Cant Send Tour',105),(152,'2022-06-05',152.74,1,5,'Emails I Cant Send Tour',105),(153,'2022-06-07',369.95,2,27,'Emails I Cant Send Tour',105),(154,'2022-07-23',438.81,3,20,'Emails I Cant Send Tour',106),(155,'2022-06-25',286.35,2,21,'Emails I Cant Send Tour',106),(156,'2022-07-01',841.99,6,22,'Emails I Cant Send Tour',106),(157,'2022-06-02',307.64,2,13,'Emails I Cant Send Tour',107),(158,'2022-03-21',4398.23,29,17,'Emails I Cant Send Tour',107),(159,'2022-07-02',422.74,2,3,'Emails I Cant Send Tour',108),(160,'2022-07-02',682.43,5,15,'Emails I Cant Send Tour',108),(161,'2022-07-02',213.64,1,16,'Emails I Cant Send Tour',108),(162,'2022-05-05',235.53,2,18,'Emails I Cant Send Tour',113),(163,'2022-06-03',6254.87,50,6,'Emails I Cant Send Tour',113),(164,'2022-03-16',5357.48,34,2,'Emails I Cant Send Tour',117),(165,'2022-09-19',426.71,3,12,'Emails I Cant Send Tour',117),(166,'2022-04-06',557.77,4,9,'Emails I Cant Send Tour',117),(167,'2022-05-08',89.99,1,1,'Emails I Cant Send Tour',117),(168,'2022-11-11',395.51,2,11,'Emails I Cant Send Tour',117),(169,'2022-10-03',892.72,7,7,'Emails I Cant Send Tour',117),(170,'2022-12-02',219.44,1,20,'Emails I Cant Send Tour',117),(171,'2022-08-24',444.61,3,27,'Emails I Cant Send Tour',117),(172,'2022-03-16',99.74,1,21,'Emails I Cant Send Tour',117),(173,'2022-05-29',457.33,3,1,'Emails I Cant Send Tour',128),(174,'2022-05-08',384.13,2,2,'Emails I Cant Send Tour',128),(175,'2022-05-27',786.66,5,10,'Emails I Cant Send Tour',128),(176,'2022-09-14',122.68,1,13,'Emails I Cant Send Tour',129),(177,'2022-08-06',554.90,3,19,'Emails I Cant Send Tour',131),(178,'2022-11-23',999.53,8,22,'Emails I Cant Send Tour',131),(179,'2022-08-18',457.97,3,3,'Emails I Cant Send Tour',132),(180,'2022-12-04',789.12,6,9,'Emails I Cant Send Tour',135),(181,'2022-12-12',349.55,2,5,'Emails I Cant Send Tour',136),(182,'2022-12-12',89.65,1,6,'Emails I Cant Send Tour',136),(183,'2022-12-13',492.66,3,6,'Emails I Cant Send Tour',136),(184,'2022-12-30',154.88,1,8,'Emails I Cant Send Tour',137),(185,'2022-11-01',490.09,3,1,'Emails I Cant Send Tour',137),(186,'2022-11-02',97.49,1,1,'Emails I Cant Send Tour',137),(187,'2022-11-12',544.65,4,12,'Emails I Cant Send Tour',137),(188,'2022-09-13',199.56,1,14,'Emails I Cant Send Tour',140),(189,'2022-09-27',560.33,1,23,'Emails I Cant Send Tour',140),(190,'2022-11-02',1077.56,2,14,'Emails I Cant Send Tour',140),(191,'2022-12-17',4009.66,3,1,'Emails I Cant Send Tour',140),(192,'2023-01-22',468.88,1,4,'Emails I Cant Send Tour',140),(193,'2023-01-02',334.79,2,24,'Emails I Cant Send Tour',140),(194,'2022-06-11',468.88,1,4,'Emails I Cant Send Tour',140),(195,'2023-01-22',397.63,1,27,'Emails I Cant Send Tour',140),(196,'2023-03-12',7893.92,7,5,'Emails I Cant Send Tour',141),(197,'2023-04-11',126.83,1,7,'Emails I Cant Send Tour',141),(198,'2023-04-05',126.83,4,10,'Emails I Cant Send Tour',141),(199,'2023-03-26',687.45,2,2,'Emails I Cant Send Tour',141),(200,'2023-04-07',2209.06,5,9,'Emails I Cant Send Tour',141),(201,'2023-03-28',7609.92,33,1,'Emails I Cant Send Tour',141),(202,'2023-02-17',782.10,2,3,'Emails I Cant Send Tour',144),(203,'2023-02-17',531.29,1,1,'Emails I Cant Send Tour',144),(204,'2023-02-18',394.38,1,2,'Emails I Cant Send Tour',144),(205,'2023-01-10',540.06,1,15,'Emails I Cant Send Tour',144),(206,'2023-01-11',893.55,2,16,'Emails I Cant Send Tour',144),(207,'2023-01-05',397.24,1,1,'Emails I Cant Send Tour',144),(208,'2023-03-02',2003.76,2,23,'Emails I Cant Send Tour',144),(209,'2023-02-15',6776.44,5,27,'Emails I Cant Send Tour',144),(210,'2023-02-04',311.21,1,12,'Emails I Cant Send Tour',144),(211,'2023-03-27',329.44,1,1,'Emails I Cant Send Tour',145),(212,'2023-03-29',762.39,4,8,'Emails I Cant Send Tour',145),(213,'2023-03-01',485.13,1,18,'Emails I Cant Send Tour',145),(214,'2023-03-27',4031.65,1,25,'Emails I Cant Send Tour',146),(215,'2023-03-27',5101.32,1,26,'Emails I Cant Send Tour',146),(216,'2023-03-27',8752.65,1,25,'Emails I Cant Send Tour',147),(217,'2023-03-27',7614.86,1,26,'Emails I Cant Send Tour',147),(218,'2023-01-07',5381.85,2,21,'Emails I Cant Send Tour',149),(219,'2023-01-07',3033.53,1,20,'Emails I Cant Send Tour',149),(220,'2023-01-08',7541.13,4,22,'Emails I Cant Send Tour',149),(221,'2023-02-25',2313.33,1,27,'Emails I Cant Send Tour',150),(222,'2023-01-11',8774.34,1,25,'Emails I Cant Send Tour',160),(223,'2023-01-11',6785.12,1,26,'Emails I Cant Send Tour',160),(224,'2023-04-23',332.43,1,13,'Emails I Cant Send Tour',175),(225,'2023-03-03',6565.33,3,17,'Emails I Cant Send Tour',175),(226,'2023-02-09',794.21,1,1,'Emails I Cant Send Tour',175),(227,'2023-02-02',802.58,1,2,'Emails I Cant Send Tour',175),(228,'2023-02-04',646.43,1,4,'Emails I Cant Send Tour',175),(229,'2023-03-01',963.24,2,10,'Emails I Cant Send Tour',175),(230,'2023-02-20',740.42,3,14,'Emails I Cant Send Tour',175),(231,'2023-03-21',563.97,2,7,'Emails I Cant Send Tour',175),(232,'2023-04-24',561.45,1,13,'Emails I Cant Send Tour',176),(233,'2023-06-04',8429.12,3,17,'Emails I Cant Send Tour',176),(234,'2023-02-10',335.76,1,1,'Emails I Cant Send Tour',176),(235,'2023-02-22',1638.39,5,2,'Emails I Cant Send Tour',176),(236,'2023-03-24',494.84,2,4,'Emails I Cant Send Tour',176),(237,'2023-02-28',2109.54,2,10,'Emails I Cant Send Tour',176),(238,'2023-02-26',6853.63,1,14,'Emails I Cant Send Tour',176),(239,'2023-04-20',473.63,2,7,'Emails I Cant Send Tour',176),(240,'2024-06-23',598.31,3,10,'Short n Sweet Tour',177),(241,'2024-06-24',201.27,1,11,'Short n Sweet Tour',177),(242,'2024-06-24',202.49,1,12,'Short n Sweet Tour',177),(243,'2024-06-22',379.67,2,14,'Short n Sweet Tour',177),(244,'2024-01-22',427.14,2,15,'Short n Sweet Tour',178),(245,'2024-01-22',286.39,1,16,'Short n Sweet Tour',178),(246,'2024-01-23',260.51,1,16,'Short n Sweet Tour',178),(247,'2024-03-14',2693.52,2,25,'Short n Sweet Tour',180),(248,'2024-03-14',2091.52,1,26,'Short n Sweet Tour',180),(249,'2024-03-14',5263.52,3,25,'Short n Sweet Tour',181),(250,'2024-03-14',4764.13,2,26,'Short n Sweet Tour',181),(251,'2024-08-04',1053.84,4,8,'Short n Sweet Tour',183),(252,'2024-07-24',10082.55,47,1,'Short n Sweet Tour',183),(253,'2024-05-25',182.76,1,5,'Short n Sweet Tour',183),(254,'2024-06-06',209.38,1,20,'Short n Sweet Tour',184),(255,'2024-06-06',374.09,2,21,'Short n Sweet Tour',184),(256,'2024-06-11',190.23,1,22,'Short n Sweet Tour',184),(257,'2024-03-17',4300.76,2,20,'Short n Sweet Tour',185),(258,'2024-03-29',3001.53,4,17,'Short n Sweet Tour',187),(259,'2024-02-01',222.79,1,11,'Short n Sweet Tour',187),(260,'2024-04-11',328.61,2,12,'Short n Sweet Tour',187),(261,'2024-04-04',289.44,2,13,'Short n Sweet Tour',187),(262,'2024-01-18',203957.01,10,14,'Short n Sweet Tour',187),(263,'2024-02-09',293.72,1,24,'Short n Sweet Tour',187),(264,'2024-07-23',377.39,1,7,'Short n Sweet Tour',187),(265,'2024-04-07',252.18,1,13,'Short n Sweet Tour',187),(266,'2024-03-26',4591.84,2,19,'Short n Sweet Tour',189),(267,'2024-03-21',474.60,1,2,'Short n Sweet Tour',189),(268,'2024-03-20',5030.16,3,4,'Short n Sweet Tour',189),(269,'2024-01-02',30578.20,20,1,'Short n Sweet Tour',189),(270,'2024-03-27',261.74,1,19,'Short n Sweet Tour',190),(271,'2024-02-24',683.62,4,27,'Short n Sweet Tour',191),(272,'2024-06-15',357.83,1,23,'Short n Sweet Tour',191),(273,'2024-08-11',295.38,1,18,'Short n Sweet Tour',191),(274,'2024-06-20',373.77,2,13,'Short n Sweet Tour',196),(275,'2024-06-20',203.90,1,13,'Short n Sweet Tour',197),(276,'2024-07-19',109.64,1,5,'Short n Sweet Tour',202),(277,'2024-07-19',153.72,1,6,'Short n Sweet Tour',202),(278,'2024-07-20',135.59,1,5,'Short n Sweet Tour',203),(279,'2024-07-20',215.85,1,6,'Short n Sweet Tour',203),(280,'2024-07-20',396.74,2,1,'Short n Sweet Tour',203),(281,'2024-05-02',536.86,1,13,'Short n Sweet Tour',204),(282,'2024-03-23',793.68,3,10,'Short n Sweet Tour',204),(283,'2024-09-12',481.29,1,11,'Short n Sweet Tour',204),(284,'2024-03-13',347.64,2,7,'Short n Sweet Tour',204),(285,'2024-01-17',2385.75,7,8,'Short n Sweet Tour',204),(286,'2024-01-11',3442.86,10,9,'Short n Sweet Tour',204),(287,'2024-03-23',385.47,1,12,'Short n Sweet Tour',204),(288,'2024-03-20',392.86,1,14,'Short n Sweet Tour',204),(289,'2024-02-25',7802.53,5,23,'Short n Sweet Tour',204),(290,'2024-06-12',584.86,1,25,'Short n Sweet Tour',210),(291,'2024-06-12',672.24,1,26,'Short n Sweet Tour',210),(292,'2024-06-13',537.34,1,25,'Short n Sweet Tour',211),(293,'2024-06-13',698.75,1,26,'Short n Sweet Tour',211),(294,'2024-06-13',633.33,1,25,'Short n Sweet Tour',212),(295,'2024-06-13',754.56,1,26,'Short n Sweet Tour',212),(296,'2024-06-12',244.34,1,25,'Short n Sweet Tour',214),(297,'2024-06-12',212.53,1,26,'Short n Sweet Tour',214),(298,'2024-07-27',324.66,1,25,'Short n Sweet Tour',215),(299,'2024-07-27',319.25,1,26,'Short n Sweet Tour',215),(300,'2024-05-18',298.35,1,25,'Short n Sweet Tour',216),(301,'2024-05-18',247.74,1,26,'Short n Sweet Tour',216),(302,'2024-03-20',587.01,1,25,'Short n Sweet Tour',218),(303,'2024-03-21',533.90,1,26,'Short n Sweet Tour',218),(304,'2024-02-03',982.24,2,25,'Short n Sweet Tour',223),(305,'2024-02-01',899.76,3,26,'Short n Sweet Tour',223),(306,'2024-02-02',298.89,1,1,'Short n Sweet Tour',223);
/*!40000 ALTER TABLE `ticket_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `tour_name` varchar(64) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `tour_status` enum('Upcoming','Ongoing','Ended') NOT NULL,
  PRIMARY KEY (`tour_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES ('Emails I Cant Send Tour','2022-09-29','2023-08-04','Ended'),('Evolution Tour','2016-10-18','2017-05-22','Ended'),('Short n Sweet Tour','2024-09-23','2025-03-26','Ongoing'),('Singular Tour','2019-03-02','2019-04-11','Ended'),('The De-Tour','2017-06-06','2017-08-27','Ended'),('The Fake Tour','2029-01-20','2029-12-22','Upcoming');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `location_id` int NOT NULL,
  `venue_name` varchar(64) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`location_id`,`venue_name`),
  CONSTRAINT `venue_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'Bridgestone Arena',19891),(1,'Rocketown',1500),(1,'Ryman Auditorium',2632),(2,'Buckhead Theatre',1800),(2,'Center Stage',1050),(2,'State Farm Arena',21000),(2,'The Eastern',2200),(2,'The Loft',650),(2,'The Tabernacle',2600),(3,'Studio Theater at The Tobin Center',300),(3,'The Espee',3175),(4,'3Ten',350),(4,'Moody Center',16223),(4,'Moody Theater',2750),(5,'American Airlines Center',21000),(5,'Majestic Theatre',1704),(5,'The Factory in Deep Ellum',4300),(5,'Trees',600),(6,'The Roxy Theatre',500),(7,'Lobero Theatre',604),(8,'Chase Center',19500),(8,'Regency Center',1423),(8,'Slims',500),(8,'The Masonic',3481),(8,'The Warfield',2300),(9,'Constellation Room',250),(10,'Climate Pledge Arena',17200),(10,'Neptune Theatre',100),(10,'Nuemos',750),(10,'Paramount Theatre',2807),(11,'Crystal Ballroom',1500),(11,'Hawthorne Theatre',550),(11,'Moda Center',20500),(12,'Ball Arena',18000),(12,'Bluebird Theatre',550),(12,'Mission Ballroom',3950),(12,'Paramount Theatre',1870),(13,'Slowdown',750),(14,'Midland Theatre',3200),(14,'Recordbar',550),(15,'The Garage',600),(16,'Deluxe at Old National Centre',750),(16,'Murat Theatre',2500),(17,'Pike Room',250),(18,'Budweiser Stage',16100),(18,'Meridian Hall',3191),(18,'Mod Club',618),(18,'Phoenix Concert Theatre',1350),(18,'Scotiabank Arena',19800),(18,'The Opera House',950),(19,'Buffalo Iron Works',500),(20,'The Hollow',350),(21,'Tanger Outlets',500),(22,'Highline Ballroom',700),(22,'Irving Plaza',1200),(22,'Madison Square Garden',20000),(22,'Terminal 5',3000),(22,'Webster Hall',1500),(23,'The Sinclair',525),(24,'iPlay America',3000),(25,'CFG Bank Arena',13300),(25,'Rams Head Live!',1500),(25,'Soundstage Baltimore',1000),(26,'Franklin Music Hall',3000),(26,'The Foundry at The Filmore Philadelphia',450),(26,'Theatre of Living Arts',1000),(26,'Wells Fargo Center',21000),(27,'Jammin Java',200),(28,'Byham Theatre',1300),(28,'Stage AE',5500),(29,'Grog Shop',400),(30,'A and R Music Bar',400),(30,'Nationwide Arena',20000),(31,'Turner Hall Ballroom',987),(32,'Grant Park',30000),(32,'House of Blues',1800),(32,'Schubas Tavern',400),(32,'United Center',23500),(33,'Jannus Live',2000),(33,'State Theatre',800),(34,'Florida Theatre',1900),(34,'Jack Rabbits',300),(35,'Belk Theater',2097),(35,'McGlohon Theatre at Spirit Square',716),(35,'The Filmore',2000),(36,'Twentieth Century Theatre',500),(37,'Parker Playhouse',1191),(38,'Barrowland Ballroom',1900),(38,'O2 ABC Glasgow',1300),(38,'OVO Hydro',14500),(39,'Accor Arena',20300),(39,'Les Etoiles',550),(39,'Zénith Paris',9000),(40,'TRUX Music Center',1100),(41,'LUXOR',500),(41,'Palladium',4000),(42,'Magazzini Generali',1000),(42,'Unipol Forum',12800),(43,'Pacific Coliseum',17500),(43,'PNE Forum',3950),(43,'Vogue Theatre',1280),(44,'Edmonton Convention Centre',5000),(44,'Winspear Centre',1716),(45,'Calgary Stampede',8000),(45,'Grey Eagle Event Centre',2952),(46,'Ruth Finley Person Theatre',1612),(47,'Balboa Theatre',1339),(47,'House of Blues',1500),(47,'Humphreys Concerts By the Bay',1400),(47,'Observatory North Park',1100),(47,'Pechanga Arena',16000),(48,'House of Blues',2200),(49,'Greek Theatre',5500),(49,'Henry Fonda Theatre',1200),(49,'The Wiltern',1850),(50,'Comerica Theatre',5000),(50,'Crypto.com Arena',20000),(50,'Footprint Center',17716),(51,'Orpheum Theater',1500),(51,'Saenger Theatre',2600),(52,'Timberwood Ampitheater',5000),(53,'Revention Music Center',3464),(53,'Toyota Center',19300),(53,'Warehouse Live',1300),(54,'The Filmore Miami Beach',3230),(55,'Hard Rock Live',3000),(55,'Kia Center',117030),(55,'Universal Studios Florida',8000),(55,'Walt Disney Theatre',2731),(56,'Wisconsin State Fair',2000),(57,'Little Ceasars Arena',22000),(57,'Masonic Temple Theatre',4650),(57,'St. Andrews Hall',1000),(57,'The Filmore',2900),(58,'Hollywood Casino Ampitheatre',28739),(59,'Erie County Fair',3000),(60,'Hersheypark Stadium',30000),(61,'Big Night Live',2000),(61,'Fake Venue',20),(61,'House of Blues',2200),(61,'Paradise Rock Club',933),(61,'Roadrunner',3500),(61,'TD Garden',20000),(62,'Welmont Theater',2500),(63,'Maryland State Fair',1896),(64,'9:30 Club',1200),(64,'Lincoln Theatre',1225),(64,'The Anthem',6000),(65,'Grand Theater at Foxwoods',4000),(66,'House of Blues',3000),(66,'The Theatre at Virgin Hotels',4500),(67,'UC Theatre',1400),(68,'Namba Hatch',1500),(68,'Zepp Osaka Bayside',2801),(69,'Diamond Hall',1014),(70,'EX Theater Roppongi',1746),(70,'Toyosu PIT',3000),(71,'Yes24 Live Hall',2500),(72,'Kalland Theater',1744),(72,'Sands Expo & Convention Centre',8000),(73,'New Frontier Theater',2385),(74,'Marquee Theatre',1500),(75,'Tulsa Theater',2800),(76,'Delta Center',20000),(76,'The Union',550),(77,'Revolution Concert House',2200),(78,'Hard Rock Live Sacramento',2500),(79,'Mesa Ampitheatre',4950),(80,'State Theatre',2181),(80,'Target Center',20500),(81,'The Sylvee',2500),(82,'The Factory',3400),(83,'Gulf Shores Public Beach',10000),(84,'Jockey Club',4000),(85,'Anhangabaú River',3000),(86,'3Arena',13000),(86,'3Olympia Theatre',1621),(87,'Co-op Live',23500),(87,'O2 Apollo Manchester',3500),(88,'Seaclose Park',50000),(89,'O2 Academy Birmingham',3009),(89,'Utilita Arena',15800),(90,'Eventim Apollo',5039),(90,'Hyde Park',65000),(90,'The O2 Arena',20000),(91,'ING Arena',15000),(91,'Palais 12',15000),(92,'Melkweg',1500),(92,'Ziggo Dome',17000),(93,'Astra Kulturhaus',2000),(93,'Uber Arena',17000),(94,'Gärdet',10000),(95,'Sepang International Circuit',130000),(96,'Gelora Bung Karno Sports Complex',77193),(97,'New Frontier Theater',2385),(98,'Bitec Hall',20000),(99,'Barclays Center',17000),(100,'XL Center',20500),(101,'Bell Centre',19200),(102,'Chaifetz Arena',10600),(103,'Lenovo Center',21000),(103,'The Ritz',1400),(104,'Amalie Center',21500),(105,'Kia Forum',17500),(106,'Agora Ballroom',2000),(106,'Connor Palace',2714),(107,'Hard Rock Live Seminole',7000),(108,'John Paul Jones Arena',15405);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'team_sabrina'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `update_sabrina_show_status` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `update_sabrina_show_status` ON SCHEDULE EVERY 1 DAY STARTS '2024-12-04 23:10:22' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	-- past shows as 'Completed'
    UPDATE sabrina_show
    SET show_status = 'Completed'
    WHERE scheduled_date < CURDATE() AND show_status != 'Cancelled';

    -- Mark shows scheduled for today or later as 'Upcoming' if not 'Cancelled'
    UPDATE sabrina_show
    SET show_status = 'Upcoming'
    WHERE scheduled_date >= CURDATE() AND show_status != 'Cancelled';
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'team_sabrina'
--
/*!50003 DROP PROCEDURE IF EXISTS `addAblumTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAblumTuple`(
	p_album_name VARCHAR(64),
    p_release_date DATE
)
BEGIN 
	INSERT INTO album (album_name, release_date) VALUES (p_album_name, p_release_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addAlbumTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addAlbumTuple`(
	p_album_name VARCHAR(64),
    p_release_date DATE
)
BEGIN 
	INSERT INTO album (album_name, release_date) VALUES (p_album_name, p_release_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCustomerTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCustomerTuple`(
	first_name VARCHAR(256), 
	last_name VARCHAR(256), 
	phone VARCHAR(15),
	email VARCHAR(256)
)
BEGIN
	INSERT INTO customer (first_name, last_name, phone, email) VALUES (first_name, last_name, phone, email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addLocationTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addLocationTuple`(
	city VARCHAR(64),
	state_region VARCHAR(64),
	country VARCHAR(64)
)
BEGIN 
	INSERT INTO location (city, state_region, country) VALUES (city, state_region, country);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addOpeningActTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOpeningActTuple`(
	act_name VARCHAR(64)
)
BEGIN 
	INSERT INTO opening_act (act_name) VALUES (act_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addOpenToShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOpenToShowTuple`(
	tour_name VARCHAR(64),
	show_id INT,
	act_id INT,
	performance_order INT
)
BEGIN 
	INSERT INTO opening_to_show VALUES (tour_name, show_id, act_id, performance_order);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addShowTuple`(
	p_tour_name VARCHAR(64), 
	p_show_id INT,
	p_venue_name VARCHAR(64),
	p_location_id INT,
	p_scheduled_date DATE, 
	p_show_status ENUM('Upcoming', 'Cancelled', 'Completed')
)
BEGIN 
	DECLARE tourStart DATE;
    DECLARE tourEnd DATE;
    DECLARE tourExists INT;
    
    SELECT COUNT(*), start_date, start_date
    INTO tourExists, tourStart, tourEnd
    FROM tour
    WHERE tour_name = p_tour_name;
    
    IF tourExists = 0 THEN 
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Tour does not exist.';
    END IF;
    IF p_scheduled_date < tourStart OR (tourEnd IS NOT NULL AND p_scheduled_date > tourEnd) THEN 
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Scheduled date must fall within the tour dates.';
    END IF;
    
	INSERT INTO sabrina_show VALUES(p_tour_name, p_show_id, p_venue_name, p_location_id, p_scheduled_date, p_show_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addSongTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addSongTuple`(
	song_name VARCHAR(64),  
	album_id INT,
	tour_name VARCHAR(64),
	order_played INT
)
BEGIN 
INSERT INTO song (song_name, album_id, tour_name, order_played) VALUES (song_name, album_id, tour_name, order_played);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addTicketSaleTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTicketSaleTuple`(
	purchase_date DATE, 
	total_cost DECIMAL(10,2), 
	ticket_quantity INT,
	customer_id INT,
	tour_name VARCHAR(64), 
	show_id INT
)
BEGIN 
	INSERT INTO ticket_sales (purchase_date, total_cost, ticket_quantity, customer_id,tour_name,show_id) VALUES (purchase_date, total_cost, ticket_quantity, customer_id,tour_name,show_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addTourTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addTourTuple`(
	tour_name VARCHAR(64),
	start_date DATE, 
	end_date DATE, 
	tour_status ENUM('Upcoming','Ongoing', 'Ended')
)
BEGIN 
	INSERT INTO tour VALUES (tour_name, start_date, end_date, tour_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addVenueTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addVenueTuple`(
	location_id INT,
	venue_name VARCHAR(64), 
	capacity INT
)
BEGIN 
	INSERT INTO venue VALUES(location_id, venue_name, capacity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkRowCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkRowCount`(message_success VARCHAR(255), message_failure VARCHAR(255))
BEGIN
    IF ROW_COUNT() = 0 THEN
        SELECT message_failure AS Message;
    ELSE
        SELECT message_success AS Message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteAlbumTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteAlbumTuple`(
	a_id INT
)
BEGIN 
	DELETE FROM album 
    WHERE album_id = a_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given album_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteCustomerTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCustomerTuple`(
	c_id INT
)
BEGIN 
	DELETE FROM customer
    WHERE customer_id = c_id;
    IF ROW_COUNT() = 0 THEN
        SELECT 'No rows found with the given customer_id.' AS Message;
    ELSE
        SELECT 'Row successfully deleted.' AS Message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteLocationTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteLocationTuple`(
	l_id INT
)
BEGIN 
	DELETE FROM location 
    WHERE location_id = l_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given location_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteOpeningActTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOpeningActTuple`(
	a_id INT 
)
BEGIN
	DELETE FROM opening_act
    WHERE act_id = a_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given act_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteOpenToShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOpenToShowTuple`(
	tour_name VARCHAR(64),
	show_id INT,
	act_id INT
)
BEGIN 
	DELETE FROM opening_to_show
    WHERE tour_name = tour_name AND show_id = show_id AND act_id = act_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteShowTuple`(
	tour_name VARCHAR(64), 
	show_id INT
)
BEGIN 
	DELETE FROM sabrina_show
    WHERE tour_name = tour_name AND show_id = show_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteSongTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteSongTuple`(
	song_id INT
)
BEGIN 
	DELETE FROM song 
    WHERE song_id = song_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given song_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteTicketTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTicketTuple`(
	transaction_id INT 
)
BEGIN 
	DELETE FROM ticket_sales
    WHERE transaction_id = transaction_id;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteTourTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTourTuple`(
	tour_name VARCHAR(64)
)
BEGIN 
	DELETE FROM tour 
    WHERE tour_name= tour_name;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given tour_name.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteVenueTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteVenueTuple`(
	location_id INT,
	venue_name VARCHAR(64)
)
BEGIN 
	DELETE FROM venue 
    WHERE location_id = location_id AND venue_name = venue_name;
    CALL checkRowCount(
        'Row successfully deleted.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllShowsVenueLocationSeats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllShowsVenueLocationSeats`()
BEGIN 
SELECT ss.tour_name,ss.show_id,ss.venue_name,city, country,scheduled_date, IFNULL(SUM(ticket_quantity),0) AS sold, v.capacity, (capacity - IFNULL(SUM(ticket_quantity), 0)) AS available 
FROM sabrina_show AS ss LEFT JOIN ticket_sales AS ts ON ss.show_id = ts.show_id AND ss.tour_name = ts.tour_name
	JOIN venue AS v ON ss.venue_name = v.venue_name AND ss.location_id = v.location_id
    JOIN location AS l ON v.location_id = l.location_id
GROUP BY ss.show_id, v.capacity,ss.venue_name,ss.tour_name
ORDER BY ss.show_id
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_future_show` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_future_show`()
BEGIN
	SELECT *
	FROM sabrina_show
    WHERE scheduled_date > NOW()
    ORDER BY scheduled_date
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_future_show_with_available_seats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_future_show_with_available_seats`()
BEGIN 
SELECT ss.tour_name,ss.show_id,ss.venue_name,city, country,scheduled_date, IFNULL(SUM(ticket_quantity),0) AS sold, v.capacity, (capacity - IFNULL(SUM(ticket_quantity), 0)) AS available 
FROM sabrina_show AS ss LEFT JOIN ticket_sales AS ts ON ss.show_id = ts.show_id AND ss.tour_name = ts.tour_name
	JOIN venue AS v ON ss.venue_name = v.venue_name AND ss.location_id = v.location_id
    JOIN location AS l ON v.location_id = l.location_id
WHERE scheduled_date > NOW()
GROUP BY ss.show_id, v.capacity,ss.venue_name,ss.tour_name
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAlbumTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAlbumTuple`(
    IN chosen_album_id INT,
    IN new_album_name VARCHAR(64),
    IN new_release_date DATE
)
BEGIN
    UPDATE album
    SET 
        album_name = COALESCE(new_album_name, album_name),
        release_date = COALESCE(new_release_date, release_date)
    WHERE album_id = chosen_album_id;

    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given album_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCustomerTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCustomerTuple`(
	p_customer_id INT,
	p_first_name VARCHAR(256), 
	p_last_name VARCHAR(256), 
	p_phone VARCHAR(15),
	p_email VARCHAR(256)
)
BEGIN 
	UPDATE customer
    SET 
    first_name = COALESCE(p_first_name,first_name),
    last_name = COALESCE(p_last_name,last_name),
    phone = COALESCE(p_phone,phone),
    email = COALESCE(p_email,email)
    WHERE customer_id = p_customer_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given customer_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateLocationTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateLocationTuple`(
	p_location_id INT,
	p_city VARCHAR(64),
	p_state_region VARCHAR(64),
	p_country VARCHAR(64)
)
BEGIN 
	UPDATE location
    SET 
		location_id = COALESCE(p_city,location_id),
        state_region = COALESCE(p_state_region,state_region),
        country = COALESCE(p_country,country)
    WHERE location_id = p_location_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given location_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateOpeningActTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOpeningActTuple`(
	p_act_id INT,
	p_act_name VARCHAR(64)
)
BEGIN
	UPDATE opening_act
    SET 
		act_name = COALESCE(p_act_name,act_name)
	WHERE act_id = p_act_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given act_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateOpenToShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOpenToShowTuple`(
	p_tour_name VARCHAR(64),
	p_show_id INT,
	p_act_id INT,
	p_performance_order INT
)
BEGIN 
	UPDATE opening_to_show
    SET 
		act_id = COALESCE(p_act_id,act_id),
        performance_order = COALESCE(p_performance_order,performance_order)
    WHERE tour_name = p_tour_name AND show_id = p_show_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateShowTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateShowTuple`(
	p_tour_name VARCHAR(64), 
	p_show_id INT,
	p_venue_name VARCHAR(64),
	p_location_id INT,
	p_scheduled_date DATE, 
	p_show_status ENUM('Upcoming', 'Cancelled', 'Completed')
)
BEGIN 
	UPDATE sabrina_show
    SET 
		venue_name = COALESCE(p_venue_name,venue_name),
        location_id = COALESCE(p_location_id,location_id),
        scheduled_date = COALESCE(p_scheduled_date,scheduled_date),
        show_status = COALESCE(p_show_status,show_status)
    WHERE tour_name = p_tour_name AND show_id = p_show_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateSongTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSongTuple`(
	p_song_id INT,
	p_song_name VARCHAR(64),  
	p_album_id INT,
	p_tour_name VARCHAR(64),
	p_order_played INT
)
BEGIN 
	UPDATE song
    SET 
		song_name = COALESCE(p_song_name,song_name),
        album_id = COALESCE(p_album_id,album_id),
        tour_name = COALESCE(p_tour_name,tour_name),
        order_played = COALESCE(p_order_played,order_played)
    WHERE song_id = p_song_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given song_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTicketTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTicketTuple`(
	p_transaction_id INT, 
	p_purchase_date DATE, 
	p_total_cost DECIMAL(10,2), 
	p_ticket_quantity INT,
	p_customer_id INT,
	p_tour_name VARCHAR(64), 
	p_show_id INT
)
BEGIN 
	UPDATE ticket_sales
    SET 
		purchase_date = COALESCE(p_purchase_date,purchase_date),
        total_cost = COALESCE(p_total_cost,total_cost),
        ticket_quantity = COALESCE(p_ticket_quantity,ticket_quantity),
        customer_id = COALESCE(p_customer_id,customer_id),
        tour_name = COALESCE(p_tour_name,tour_name),
        show_id = COALESCE(p_show_id,show_id)
    WHERE transaction_id = p_transaction_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given transaction_id.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTourTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTourTuple`(
	p_tour_name VARCHAR(64),
	p_start_date DATE, 
	p_end_date DATE, 
	p_tour_status ENUM('Upcoming','Ongoing', 'Ended') 
)
BEGIN
	UPDATE tour
    SET 
		start_date = COALESCE(p_start_date,start_date),
        end_date = COALESCE(p_end_date,end_date),
        tour_status = COALESCE(p_tour_status,tour_status)
    WHERE tour_name = p_tour_name;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given tour_name.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateVenueTuple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateVenueTuple`(
	p_location_id INT,
	p_venue_name VARCHAR(64), 
	p_capacity INT
)
BEGIN 
	UPDATE venue
    SET 
		capacity = COALESCE(p_capacity,capacity)
    WHERE location_id = p_location_id AND venue_name = p_venue_name;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 21:35:18
