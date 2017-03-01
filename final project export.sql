-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `idBill` int(11) NOT NULL AUTO_INCREMENT,
  `Status` enum('C','I') DEFAULT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `AmountPaid` decimal(10,2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`idBill`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'C',23.00,23.00,'2016-01-01'),(2,'C',83.00,44.00,'2006-01-15'),(3,'I',103.00,13.00,'2016-02-01'),(4,'C',151.00,92.00,'2016-02-15'),(5,'I',83.00,24.00,'2016-03-01'),(6,'C',23.00,23.00,'2016-03-15'),(7,'C',23.00,23.00,'2016-04-01'),(8,'C',89.00,39.00,'2016-04-15'),(9,'I',63.00,43.00,'2016-05-01'),(10,'C',23.00,23.00,'2016-05-15'),(11,'I',47.00,27.00,'2016-06-01'),(12,'C',23.00,23.00,'2016-06-15'),(13,'C',47.00,47.00,'2016-07-01'),(14,'C',47.00,47.00,'2016-07-15'),(15,'I',91.00,80.00,'2016-08-01'),(16,'C',280.00,280.00,'2016-01-15'),(17,'C',100.00,100.00,'2016-01-20'),(18,'I',100.00,80.00,'2016-01-30'),(19,'C',280.00,280.00,'2016-02-16'),(20,'C',280.00,280.00,'2016-02-16'),(21,'I',140.00,120.00,'2016-02-11'),(22,'C',200.00,200.00,'2016-02-20'),(23,'C',280.00,280.00,'2016-02-29'),(24,'I',280.00,260.00,'2016-02-29'),(25,'I',280.00,260.00,'2016-03-20'),(26,'C',100.00,100.00,'2016-03-17'),(27,'C',100.00,100.00,'2016-03-25'),(28,'C',20.00,20.00,'2016-04-02'),(29,'C',100.00,100.00,'2016-04-15'),(30,'I',100.00,80.00,'2016-05-15'),(31,'I',100.00,80.00,'2016-05-15');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardingvisit`
--

DROP TABLE IF EXISTS `boardingvisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardingvisit` (
  `idBoardingVisit` int(11) NOT NULL AUTO_INCREMENT,
  `Rate` decimal(10,2) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `DaysStayed` int(11) NOT NULL,
  `idPet` int(11) DEFAULT NULL,
  `idBill` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBoardingVisit`),
  KEY `idBill` (`idBill`),
  KEY `boardingvisit_ibfk_1` (`idPet`),
  CONSTRAINT `boardingvisit_ibfk_1` FOREIGN KEY (`idPet`) REFERENCES `pet` (`idPet`),
  CONSTRAINT `boardingvisit_ibfk_2` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`)
) ENGINE=InnoDB AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardingvisit`
--

LOCK TABLES `boardingvisit` WRITE;
/*!40000 ALTER TABLE `boardingvisit` DISABLE KEYS */;
INSERT INTO `boardingvisit` VALUES (10001,20.00,'2016-01-01','2016-01-15',14,12,16),(10002,20.00,'2016-01-15','2016-01-20',5,21,17),(10003,20.00,'2016-01-25','2016-01-30',5,12,18),(10004,20.00,'2106-02-02','2016-02-16',14,31,19),(10005,20.00,'2016-02-02','2016-02-16',14,32,20),(10006,20.00,'2016-02-04','2016-02-11',7,41,21),(10007,20.00,'2016-02-10','2016-02-20',10,52,22),(10008,20.00,'2016-02-15','2016-02-29',14,31,23),(10009,20.00,'2016-02-15','2016-02-29',14,32,24),(10010,20.00,'2016-03-06','2016-03-20',14,72,25),(10011,20.00,'2016-03-12','2016-03-17',5,82,26),(10012,20.00,'2016-03-20','2016-03-25',5,91,27),(10013,20.00,'2016-04-01','2016-04-02',1,92,28),(10014,20.00,'2016-04-10','2016-04-15',5,21,29),(10015,20.00,'2016-05-10','2016-05-15',5,102,30),(10016,20.00,'2016-05-10','2016-05-15',5,101,31);
/*!40000 ALTER TABLE `boardingvisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `med_office_visit`
--

DROP TABLE IF EXISTS `med_office_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `med_office_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOffice` int(11) DEFAULT NULL,
  `idSnomed` varchar(45) DEFAULT NULL,
  `generic_form` varchar(45) DEFAULT NULL,
  `method_of_application` varchar(45) DEFAULT NULL,
  `dosage` varchar(45) DEFAULT NULL,
  `brand_name` varchar(45) DEFAULT NULL,
  `new_snomed` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `med_office_visit_ibfk_1` (`idOffice`),
  KEY `med_office_visit_ibfk_2` (`idSnomed`),
  CONSTRAINT `med_office_visit_ibfk_1` FOREIGN KEY (`idOffice`) REFERENCES `officevisit` (`idOfficeVisit`),
  CONSTRAINT `med_office_visit_ibfk_2` FOREIGN KEY (`idSnomed`) REFERENCES `medication` (`idSnomed`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_office_visit`
--

LOCK TABLES `med_office_visit` WRITE;
/*!40000 ALTER TABLE `med_office_visit` DISABLE KEYS */;
INSERT INTO `med_office_visit` VALUES (1,8,'10668002','Chloroxine 2% shampoo','Shampoo','Through coat','Malapet medicated shampoo',NULL),(2,5,'17386008','marbofloxacin','pill','50mg','Zeniquin','37084008'),(3,2,'17386008','marbofloxacin','pill','50mg','Zeniquin','37084008'),(4,4,'17386008','marbofloxacin','pill','50mg','Zeniquin','37084008'),(5,4,'22091006','rabies vaccine','syringe','50ml','Nobivac 3-Rabies','376197009'),(6,3,'333606008','thyroid 120mg tablet','pill','120mg','Rx Vetoryl caps 120mg x 30ct','333606008'),(7,15,'86498000','Aminophylline 100mg tablet','pill','100mg','Aminophylline 100mg tablet','320357005');
/*!40000 ALTER TABLE `med_office_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication` (
  `idSnomed` varchar(45) NOT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSnomed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES ('10668002',39.00,'Skin anti-infective (product)'),('17386008',44.00,'Anti-infective agent (product)'),('22091006',48.00,'Hormone preparation (product)'),('333606008',33.00,'Rabies Vaccine '),('337511000009101',45.00,'Avian reovirus vaccine (product)'),('342211000009101',56.00,'Canine distemper - measles - parainfluenza vaccine (product)'),('346661005',27.00,'Rabbit anti-human T-lymphocyte globulin (product)'),('408047005',50.00,'Drugs used in neuropathic pain (product)'),('416897008',59.00,'Anti-tumor necrosis factor alpha drug (product)'),('86498000',33.00,'Respiratory smooth muscle relaxant (product)'),('NONE',0.00,'no medication prescribed');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication_partof_procedure`
--

DROP TABLE IF EXISTS `medication_partof_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication_partof_procedure` (
  `idMed` varchar(45) NOT NULL,
  `idProc` varchar(45) NOT NULL,
  PRIMARY KEY (`idMed`,`idProc`),
  KEY `medication_partof_procedure_ibfk_2` (`idProc`),
  CONSTRAINT `medication_partof_procedure_ibfk_1` FOREIGN KEY (`idMed`) REFERENCES `medication` (`idSnomed`),
  CONSTRAINT `medication_partof_procedure_ibfk_2` FOREIGN KEY (`idProc`) REFERENCES `procedures` (`idSnomed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication_partof_procedure`
--

LOCK TABLES `medication_partof_procedure` WRITE;
/*!40000 ALTER TABLE `medication_partof_procedure` DISABLE KEYS */;
INSERT INTO `medication_partof_procedure` VALUES ('10668002','13059002'),('17386008','234672001'),('17386008','277790009'),('342211000009101','335541000009105'),('342211000009101','345981000009106'),('333606008','34631000'),('17386008','42862001'),('22091006','42862001'),('86498000','444086002');
/*!40000 ALTER TABLE `medication_partof_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officevisit`
--

DROP TABLE IF EXISTS `officevisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officevisit` (
  `idOfficeVisit` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonForVisit` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `idVet` char(11) DEFAULT NULL,
  `idPet` int(11) DEFAULT NULL,
  `idBill` int(11) DEFAULT NULL,
  `scheduledTime` time DEFAULT NULL,
  PRIMARY KEY (`idOfficeVisit`),
  KEY `idBill` (`idBill`),
  KEY `officevisit_ibfk_1` (`idPet`),
  KEY `officevisit_ibfk_2` (`idVet`),
  CONSTRAINT `officevisit_ibfk_1` FOREIGN KEY (`idPet`) REFERENCES `pet` (`idPet`),
  CONSTRAINT `officevisit_ibfk_2` FOREIGN KEY (`idVet`) REFERENCES `veterinarian` (`SSN`),
  CONSTRAINT `officevisit_ibfk_3` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officevisit`
--

LOCK TABLES `officevisit` WRITE;
/*!40000 ALTER TABLE `officevisit` DISABLE KEYS */;
INSERT INTO `officevisit` VALUES (1,'Checkup','2016-01-01','145-334-001',11,1,'08:30:00'),(2,'Ear','2006-01-15','106-435-532',22,2,'09:30:00'),(3,'Shots','2016-02-01','103-247-903',41,3,'10:30:00'),(4,'Reproduction','2016-02-15','104-350-454',51,4,'13:00:00'),(5,'Tooth','2016-02-01','234-341-505',12,5,'09:30:00'),(6,'Checkup','2016-03-15','145-334-001',61,6,'16:00:00'),(7,'Checkup','2016-02-01','106-435-532',62,7,'16:00:00'),(8,'Skin','2016-04-15','103-247-903',71,8,'10:30:00'),(9,'Shots','2016-05-01','104-350-454',21,9,'14:00:00'),(10,'Checkup','2016-05-15','234-341-505',81,10,'14:00:00'),(11,'Test','2016-06-01','145-334-001',91,11,'09:30:00'),(12,'Checkup','2016-06-15','106-435-532',101,12,'10:30:00'),(13,'Test','2016-07-01','103-247-903',102,13,'13:00:00'),(14,'Test','2016-07-15','104-350-454',51,14,'09:30:00'),(15,'Venom','2016-08-01','234-341-505',42,15,'16:00:00');
/*!40000 ALTER TABLE `officevisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `idOwner` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `PhoneNum` char(12) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `ZIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idOwner`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Abe','Ashton','718-847-2837','1234 Addleton St.','Ashland','NY','11348'),(2,'Bill','Bond','707-328-4893','2345 Braceland','Boston','MA','19485'),(3,'Chris','Charleston','929-324-7535','3456 Chancey','Fresh Meadows','NY','11390'),(4,'Dan','Dominique','516-983-3439','4567 Dominion','Jamaica','NY','11432'),(5,'Elaine','Easton','718-897-3435','5678 Easting','Brooklyn','NY','11425'),(6,'Florence','Ferdinand','718-987-3592','6789 Forensic','Manhattan','NY','11948'),(7,'Grace','Goodwin','929-736-0988','7891 Gomer','Woodhaven','NY','12241'),(8,'Hugo','Henley','849-982-9173','8910 Hastings','Houston','NJ','19582'),(9,'Igor','Insalata','849-987-2958','9101 Italy','Horizons','NJ','24123'),(10,'Jack','Jacobs','718-283-5873','1011 Jambalaya','Jackson Heights','NY','11352');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet` (
  `idPet` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Weight` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Species` varchar(45) DEFAULT NULL,
  `Owner_idOwner` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPet`),
  KEY `Owner_idOwner` (`Owner_idOwner`),
  CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`Owner_idOwner`) REFERENCES `owner` (`idOwner`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (11,'brown and white spotted ','2014-05-12','F','2','Adam','American Apple','Rabbit',1),(12,'golden','2009-06-23','M','70','Ace','Golden Retriever','Dog',1),(21,'orange and white','2006-02-10','F','8','Bridget','Tabby','Cat',2),(22,'white','2015-11-21','F','3','Bonsai','Mixed','Dog',2),(31,'black','2011-07-07','F','76','Champ','Bulldog','Dog',3),(32,'brown','2010-09-18','M','75','Chomp','Bulldog','Dog',3),(41,'black','2000-09-18','M','0.02','Draco','Vampire','Bat',4),(42,'purple ','2001-09-18','M','500','Drew','Anaconda','Snake',4),(51,'brown','2015-07-07','M','0.08','Elly','American','Hamster',5),(52,'green','2012-07-07','F','7.5','Ester','boa constrictor','Snake',5),(61,'orange','2000-07-07','F','0.07','Fred','Goldfish','Fish',6),(62,'black','2014-01-01','M','7','Fautine','Piranha','Fish',6),(71,'green','2011-06-23','F','6.6','Gut','bullfrog','Frog',7),(72,'white','2012-06-23','M','40','Gutter','Chiwawa','Dog',7),(81,'brown','2016-06-23','F','0.07','Ham','European','Hamster',8),(82,'white','2013-06-23','F','9','Hillary','Persian','Cat',8),(91,'orange black white','2009-06-23','M','1','Ivon','Toucan','Bird',9),(92,'white and black','2013-06-23','F','80','Iky','Husky','Dog',9),(101,'yellow and green','2004-12-25','M','3','Jabber','Parrot','Bird',10),(102,'Blue','2015-03-25','M','0.18','Jade','Bluejay','Bird',10);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc_office_visit`
--

DROP TABLE IF EXISTS `proc_office_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc_office_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idOffice` int(11) DEFAULT NULL,
  `idSnomed` varchar(45) DEFAULT NULL,
  `Diagnosis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proc_office_visit_ibfk_1` (`idOffice`),
  KEY `proc_office_visit_ibfk_2` (`idSnomed`),
  CONSTRAINT `proc_office_visit_ibfk_1` FOREIGN KEY (`idOffice`) REFERENCES `officevisit` (`idOfficeVisit`),
  CONSTRAINT `proc_office_visit_ibfk_2` FOREIGN KEY (`idSnomed`) REFERENCES `procedures` (`idSnomed`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc_office_visit`
--

LOCK TABLES `proc_office_visit` WRITE;
/*!40000 ALTER TABLE `proc_office_visit` DISABLE KEYS */;
INSERT INTO `proc_office_visit` VALUES (1,1,'185349003','Completed'),(2,2,'277790009','Complete flap loss (disorder) (239199003)'),(4,3,'185349003','Completed'),(5,3,'34631000','Completed - no allergic reaction'),(6,4,'42862001','Administered'),(8,5,'234672001','Success'),(9,6,'185349003','Completed'),(10,7,'185349003','Completed'),(11,8,'13059002','Success'),(12,9,'348691000009108','Completed - no allergic reaction'),(13,10,'185349003','Completed'),(14,11,'315070009','Normal'),(15,12,'185349003','Completed'),(16,13,'315070009','Normal'),(17,14,'315070009','Normal'),(18,15,'444086002','None detected');
/*!40000 ALTER TABLE `proc_office_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedures`
--

DROP TABLE IF EXISTS `procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedures` (
  `idSnomed` varchar(45) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` varchar(200) NOT NULL,
  PRIMARY KEY (`idSnomed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedures`
--

LOCK TABLES `procedures` WRITE;
/*!40000 ALTER TABLE `procedures` DISABLE KEYS */;
INSERT INTO `procedures` VALUES ('13059002',50.00,'Congenital ichthyosis of skin (disorder) ß Frog'),('16443000',52.00,'Repair of lop ear (procedure)'),('185349003',23.00,'Encounter for \"check-up\" (procedure) '),('234672001',39.00,'Surgical removal of non-impacted permanent canine tooth (procedure)'),('243072006',58.00,'Cancer education (procedure)'),('277790009',39.00,'Trimming of dog ears of prepuce (procedure)'),('315070009',47.00,'Avian precipitin test (procedure)'),('335541000009105',56.00,'Immunization for canine distemper (procedure)'),('345981000009106',43.00,'Immunization for canine distemper/hepatitis (procedure)'),('34631000',47.00,'Rabies vaccination (procedure)'),('348691000009108',63.00,'Immunization for feline leukemia (procedure)'),('388702003',38.00,'Oryctolagus spp. specific immunoglobulin E antibody measurement (procedure)'),('392522008',26.00,'Daphnia fish feed specific immunoglobulin E antibody measurement (procedure)'),('42862001',59.00,'Sperm evaluation by hamster penetration test (procedure)'),('444086002',58.00,'Detection of snake venom (procedure) ');
/*!40000 ALTER TABLE `procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinarian`
--

DROP TABLE IF EXISTS `veterinarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veterinarian` (
  `SSN` char(11) NOT NULL,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `PhoneNum` char(12) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `DateHired` date DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinarian`
--

LOCK TABLES `veterinarian` WRITE;
/*!40000 ALTER TABLE `veterinarian` DISABLE KEYS */;
INSERT INTO `veterinarian` VALUES ('103-247-903','Sara','Rodriguez','929-948-1313','65000','2007-07-13','350 South Broad St.','Hightstown','NJ','08520'),('104-350-454','Barak','Obama','718-948-2754','60000','2016-09-27','7045 Morris St.','Astoria','NY','11102'),('106-435-532','Marianne','Chen','718-386-0834','70000','2006-07-10','7592 S. Jennings Street','Sarasota','FL','34231'),('145-334-001','Fred','Spinelli','516-345-9234','85000','2005-08-25','9231 South Pacific Lane','Mount Vernon','NY','10550'),('234-341-505','David','Jones','718-284-9798','64000','2010-06-22','27 Jennings Street','Trenton','NJ','08610');
/*!40000 ALTER TABLE `veterinarian` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-07  8:35:54
