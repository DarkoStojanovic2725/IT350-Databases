-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteka
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `IDAUTOR` int(11) NOT NULL,
  `IMEAUTOR` varchar(15) DEFAULT NULL,
  `PREZIMEAUTOR` varchar(20) DEFAULT NULL,
  `OPIS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDAUTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Joshua','Bloch','Inzenjer'),(2,'Gijom','Miso','Francuski pisac'),(3,'Dejan','Lucic','s'),(4,'Isidora','Bjelica','d'),(5,'Dositej','Obradovic','s'),(6,'Ivo','Andric','f'),(7,'Jovan','Ducic','w'),(8,'Milos','Crnjanski','g'),(9,'Branko','Copic','i'),(10,'Dobrica','Cosic','l'),(11,'Djura','Jaksic','o'),(12,'Desanka','Maksimovic','y');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorstvo`
--

DROP TABLE IF EXISTS `autorstvo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autorstvo` (
  `IDAUTORSTVO` int(11) NOT NULL,
  `IDAUTOR` int(11) DEFAULT NULL,
  `ISBN` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDAUTORSTVO`),
  KEY `FK_RELATIONSHIP_14` (`IDAUTOR`),
  KEY `FK_RELATIONSHIP_18` (`ISBN`),
  CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`IDAUTOR`) REFERENCES `autor` (`IDAUTOR`),
  CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`ISBN`) REFERENCES `knjiga` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorstvo`
--

LOCK TABLES `autorstvo` WRITE;
/*!40000 ALTER TABLE `autorstvo` DISABLE KEYS */;
INSERT INTO `autorstvo` VALUES (0,2,261),(1,2,280),(2,2,283),(3,2,288),(4,2,296),(5,2,302),(6,2,304),(7,2,313),(8,2,319),(9,2,342),(10,1,358),(11,1,400),(12,3,100),(13,3,101),(14,3,102),(15,3,103),(16,4,104),(17,4,105),(18,4,106),(19,4,107),(20,5,108),(21,6,109),(22,6,110),(23,6,111),(24,7,112),(25,7,113),(26,8,114),(27,8,115),(28,8,116),(29,9,117),(30,9,118),(31,10,119),(32,10,120),(33,11,121),(34,11,122),(35,12,123),(36,12,124),(37,1,401),(38,1,402),(39,1,403),(40,2,404),(41,2,405),(42,1,100),(43,2,100),(44,4,100);
/*!40000 ALTER TABLE `autorstvo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteka`
--

DROP TABLE IF EXISTS `biblioteka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteka` (
  `IDBIBLIOTEKA` int(11) NOT NULL,
  `IDOPSTINA` int(11) NOT NULL,
  `NAZIVBIBLIOTEKA` varchar(50) DEFAULT NULL,
  `BROJZGRADEBIBLIOTEKA` varchar(50) DEFAULT NULL,
  `IMEULICEBIBLIOTEKE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDBIBLIOTEKA`),
  KEY `FK_RELATIONSHIP_8` (`IDOPSTINA`),
  CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`IDOPSTINA`) REFERENCES `opstina` (`IDOPSTINA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteka`
--

LOCK TABLES `biblioteka` WRITE;
/*!40000 ALTER TABLE `biblioteka` DISABLE KEYS */;
INSERT INTO `biblioteka` VALUES (1,24000,'Gradska Bibl. Subotica','1','Cara Dusana'),(2,24300,'Erzebet Juhas','16','Glavna'),(3,23300,'Jovan Popovic','25','Kralja Petra I'),(4,23000,'Zarko Zrenjanin','2','Trg Slobode'),(5,22400,'Atanasije Stojkovic','131','Glavna'),(6,22000,'Gligorije Vozarovic','1','Vuka Karadzica'),(7,22300,'Dositej Obradovic','1','Trg dr Zorana Djindjica'),(8,11103,'Biblioteka grada Beograda','56','Kneza Mihaila'),(9,11070,'DK Studentski grad','179','Bulevar Zorana Djindjica'),(10,11080,'Sveti Sava','8','Petra Zrinjskog'),(11,11104,'Bora Stankovic','40','Gavrila Principa'),(12,11300,'Narodna bibl. Smederevo','5','Karadjordjeva');
/*!40000 ALTER TABLE `biblioteka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evidencijaiznajmljivanja`
--

DROP TABLE IF EXISTS `evidencijaiznajmljivanja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evidencijaiznajmljivanja` (
  `IDEVIDENCIJA` int(11) NOT NULL,
  `IDSTANJA` int(11) NOT NULL,
  `IDPRIMERAK` int(11) NOT NULL,
  `IDKORISNIK` int(11) DEFAULT NULL,
  `DATUMEVIDENCIJA` date DEFAULT NULL,
  PRIMARY KEY (`IDEVIDENCIJA`),
  KEY `FK_RELATIONSHIP_15` (`IDPRIMERAK`),
  KEY `FK_RELATIONSHIP_16` (`IDKORISNIK`),
  KEY `FK_RELATIONSHIP_17` (`IDSTANJA`),
  CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`IDPRIMERAK`) REFERENCES `primerak` (`IDPRIMERAK`),
  CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`IDKORISNIK`) REFERENCES `korisnici` (`IDKORISNIK`),
  CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`IDSTANJA`) REFERENCES `stanjeiznajmljivanja` (`IDSTANJA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evidencijaiznajmljivanja`
--

LOCK TABLES `evidencijaiznajmljivanja` WRITE;
/*!40000 ALTER TABLE `evidencijaiznajmljivanja` DISABLE KEYS */;
INSERT INTO `evidencijaiznajmljivanja` VALUES (1,1,11,1,'2017-01-14'),(2,1,16,2,'2017-01-14'),(3,1,31,3,'2017-01-14'),(4,2,37,4,'2017-01-14'),(5,2,41,5,'2017-01-14'),(6,2,44,6,'2017-01-14'),(7,1,48,7,'2017-01-14'),(8,2,52,8,'2017-01-14'),(9,1,56,9,'2017-01-14'),(10,2,61,10,'2017-01-14'),(11,1,65,11,'2017-01-14'),(12,2,70,12,'2017-01-14'),(13,2,6,1,'2017-01-14'),(14,1,71,2,'2017-01-14'),(15,2,4,3,'2017-01-14');
/*!40000 ALTER TABLE `evidencijaiznajmljivanja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knjiga`
--

DROP TABLE IF EXISTS `knjiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knjiga` (
  `GODINAIZDANJAKNJIGA` int(11) DEFAULT NULL,
  `ISBN` int(11) NOT NULL,
  `IMEKNJIGA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knjiga`
--

LOCK TABLES `knjiga` WRITE;
/*!40000 ALTER TABLE `knjiga` DISABLE KEYS */;
INSERT INTO `knjiga` VALUES (2011,100,'Kineska osveta'),(1999,101,'Vladari iz senke'),(2012,102,'Strahovi mocnika'),(2012,103,'Britanski pecat'),(2016,104,'Miris neba'),(2013,105,'Spas'),(2008,106,'Tajna knjiga'),(2016,107,'Voleti i umreti na Karibima'),(1783,108,'Pismo Haralampiju'),(2016,109,'Price o gradovima'),(2011,110,'Price o moru'),(2010,111,'Beogradske price'),(2009,112,'Sa Mediterana'),(2004,113,'Staza pored puta'),(2008,114,'Knjiga o Mikelandjelu'),(2012,115,'Seobe'),(2004,116,'Antologija kineske lirike'),(2015,117,'Magarece godine'),(1970,118,'Basta sljezove boje'),(2015,119,'Koreni'),(2012,120,'Bosanski rat'),(2010,121,'Izabrana dela'),(1867,122,'Na Liparu'),(2005,123,'Trazim pomilovanje'),(2015,124,'Mace u dzepu'),(2013,261,'Mozda nebo zna'),(2014,280,'Central park'),(2012,283,'Sedam godina kasnije'),(2016,288,'Devojka iz Bruklina'),(2015,296,'U jednom trenu'),(2014,302,'Ako sutra ne postoji'),(2012,304,'Zov andjela'),(2011,313,'Vrati mi se'),(2013,319,'Devojka od papira'),(2009,342,'Samo budi ovde'),(2004,358,'Efikasno programiranje na javi'),(2005,400,'Java Puzzlers'),(2006,401,'Konkurentnost Jave u praksi'),(1990,402,'Prak. prilaz repl. aps. pod.'),(2004,403,'Java dnevnik'),(2013,404,'Ostani kraj mene'),(2014,405,'Zato sto te volim');
/*!40000 ALTER TABLE `knjiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `korisnici` (
  `IDKORISNIK` int(11) NOT NULL,
  `KORISNICKOIME` varchar(20) DEFAULT NULL,
  `KORISNICKASIFRA` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDKORISNIK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnici`
--

LOCK TABLES `korisnici` WRITE;
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
INSERT INTO `korisnici` VALUES (1,'Milos','Komlenic'),(2,'Marijana','Nikitovic'),(3,'Darko','Stojanovic'),(4,'Ivan','Petrovic'),(5,'Marko','Markovic'),(6,'Pera','Peric'),(7,'Rade','Radic'),(8,'Milan','Milic'),(9,'Dusan','Dukic'),(10,'Milica','Micic'),(11,'Jana','Janic'),(12,'Jovana','Jovanovic');
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opstina`
--

DROP TABLE IF EXISTS `opstina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opstina` (
  `IDOPSTINA` int(11) NOT NULL,
  `IDREGION` int(11) NOT NULL,
  `NAZIVOPSTINA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDOPSTINA`),
  KEY `FK_RELATIONSHIP_4` (`IDREGION`),
  CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`IDREGION`) REFERENCES `region` (`IDREGION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opstina`
--

LOCK TABLES `opstina` WRITE;
/*!40000 ALTER TABLE `opstina` DISABLE KEYS */;
INSERT INTO `opstina` VALUES (11070,4,'Novi Beograd'),(11080,4,'Zemun'),(11103,4,'Stari grad'),(11104,4,'Savski venac'),(11105,4,'Vracar'),(11300,5,'Smederevo'),(11320,5,'Velika Plana'),(11420,5,'Smederevska Palanka'),(18000,6,'Nis'),(18220,6,'Aleksinac'),(22000,3,'Sremska Mitrovica'),(22300,3,'Stara Pazova'),(22400,3,'Ruma'),(23000,2,'Zrenjanin'),(23300,2,'Kikinda'),(24000,1,'Subotica'),(24300,1,'Backa Topola');
/*!40000 ALTER TABLE `opstina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pozicija`
--

DROP TABLE IF EXISTS `pozicija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pozicija` (
  `IDPOZICIJA` int(11) NOT NULL,
  `NAZIVPOZICIJE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDPOZICIJA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozicija`
--

LOCK TABLES `pozicija` WRITE;
/*!40000 ALTER TABLE `pozicija` DISABLE KEYS */;
INSERT INTO `pozicija` VALUES (1,'Direktor'),(2,'Bibliotekar'),(3,'Cistac');
/*!40000 ALTER TABLE `pozicija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primerak`
--

DROP TABLE IF EXISTS `primerak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primerak` (
  `IDPRIMERAK` int(11) NOT NULL,
  `IDBIBLIOTEKA` int(11) DEFAULT NULL,
  `IDAUTORSTVO` int(11) DEFAULT NULL,
  `datumPrimerak` date NOT NULL,
  PRIMARY KEY (`IDPRIMERAK`),
  KEY `FK_RELATIONSHIP_11` (`IDBIBLIOTEKA`),
  KEY `FK_RELATIONSHIP_19` (`IDAUTORSTVO`),
  CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`IDBIBLIOTEKA`) REFERENCES `biblioteka` (`IDBIBLIOTEKA`),
  CONSTRAINT `FK_RELATIONSHIP_19` FOREIGN KEY (`IDAUTORSTVO`) REFERENCES `autorstvo` (`IDAUTORSTVO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primerak`
--

LOCK TABLES `primerak` WRITE;
/*!40000 ALTER TABLE `primerak` DISABLE KEYS */;
INSERT INTO `primerak` VALUES (1,1,0,'2017-01-18'),(2,1,1,'2017-04-06'),(3,1,2,'2017-04-11'),(4,1,3,'2016-08-17'),(5,1,4,'2016-05-25'),(6,1,5,'2017-05-12'),(7,1,6,'2015-11-19'),(8,1,7,'2016-11-18'),(9,1,8,'2016-06-08'),(10,1,9,'2016-07-21'),(11,1,10,'2017-04-07'),(12,1,11,'2016-08-23'),(13,1,37,'2016-04-14'),(14,1,38,'2017-01-14'),(15,1,39,'2017-01-16'),(16,2,16,'2017-01-09'),(17,2,17,'2016-12-03'),(18,2,18,'2017-05-12'),(19,2,19,'2016-10-19'),(20,2,20,'2016-10-31'),(21,2,21,'2016-09-02'),(22,2,22,'2017-10-19'),(23,2,23,'2016-04-20'),(24,2,24,'2016-06-27'),(25,2,25,'2016-04-26'),(26,2,26,'0000-00-00'),(27,2,27,'0000-00-00'),(28,2,28,'0000-00-00'),(29,2,29,'0000-00-00'),(30,2,30,'0000-00-00'),(31,3,0,'0000-00-00'),(32,3,1,'0000-00-00'),(33,3,2,'0000-00-00'),(34,3,3,'0000-00-00'),(35,3,4,'0000-00-00'),(36,4,5,'0000-00-00'),(37,4,6,'0000-00-00'),(38,4,7,'0000-00-00'),(39,4,8,'0000-00-00'),(40,4,9,'0000-00-00'),(41,5,10,'0000-00-00'),(42,5,11,'0000-00-00'),(43,5,12,'0000-00-00'),(44,6,13,'0000-00-00'),(45,6,14,'0000-00-00'),(46,6,15,'0000-00-00'),(47,6,16,'0000-00-00'),(48,7,17,'0000-00-00'),(49,7,18,'0000-00-00'),(50,7,19,'0000-00-00'),(51,7,20,'0000-00-00'),(52,8,21,'0000-00-00'),(53,8,22,'0000-00-00'),(54,8,23,'0000-00-00'),(55,8,24,'0000-00-00'),(56,9,25,'0000-00-00'),(57,9,26,'0000-00-00'),(58,9,27,'0000-00-00'),(59,9,28,'0000-00-00'),(60,9,29,'0000-00-00'),(61,10,30,'0000-00-00'),(62,10,31,'0000-00-00'),(63,10,32,'0000-00-00'),(64,10,33,'0000-00-00'),(65,11,34,'0000-00-00'),(66,11,35,'0000-00-00'),(67,11,36,'0000-00-00'),(68,11,37,'0000-00-00'),(69,11,38,'0000-00-00'),(70,12,39,'0000-00-00'),(71,12,0,'0000-00-00'),(72,12,1,'0000-00-00'),(73,12,2,'0000-00-00'),(74,12,3,'0000-00-00'),(75,12,10,'0000-00-00'),(76,12,11,'0000-00-00'),(77,12,37,'0000-00-00'),(78,12,38,'0000-00-00'),(79,12,39,'0000-00-00'),(80,1,12,'0000-00-00'),(81,1,13,'0000-00-00'),(82,1,14,'0000-00-00'),(83,1,15,'0000-00-00'),(84,1,16,'0000-00-00'),(85,1,17,'0000-00-00'),(86,1,18,'0000-00-00'),(87,1,19,'0000-00-00'),(88,1,20,'0000-00-00'),(89,1,21,'0000-00-00'),(92,1,22,'0000-00-00'),(93,5,42,'0000-00-00'),(94,5,43,'0000-00-00'),(95,5,44,'0000-00-00'),(96,5,10,'0000-00-00'),(97,5,11,'0000-00-00'),(98,5,12,'0000-00-00'),(99,5,13,'0000-00-00'),(100,6,13,'0000-00-00');
/*!40000 ALTER TABLE `primerak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radni_odnos`
--

DROP TABLE IF EXISTS `radni_odnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radni_odnos` (
  `IDRADNOGODNOSA` int(11) NOT NULL,
  `IDZAPOSLENI` int(11) NOT NULL,
  `IDPOZICIJA` int(11) NOT NULL,
  `IDBIBLIOTEKA` int(11) NOT NULL,
  PRIMARY KEY (`IDRADNOGODNOSA`),
  KEY `FK_RELATIONSHIP_10` (`IDZAPOSLENI`),
  KEY `FK_RELATIONSHIP_12` (`IDBIBLIOTEKA`),
  KEY `FK_RELATIONSHIP_13` (`IDPOZICIJA`),
  CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`IDZAPOSLENI`) REFERENCES `zaposleni` (`IDZAPOSLENI`),
  CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`IDBIBLIOTEKA`) REFERENCES `biblioteka` (`IDBIBLIOTEKA`),
  CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`IDPOZICIJA`) REFERENCES `pozicija` (`IDPOZICIJA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radni_odnos`
--

LOCK TABLES `radni_odnos` WRITE;
/*!40000 ALTER TABLE `radni_odnos` DISABLE KEYS */;
INSERT INTO `radni_odnos` VALUES (1,1,1,1),(2,2,1,2),(3,3,1,3),(4,4,1,4),(5,5,1,5),(6,6,1,6),(7,7,1,7),(8,8,1,8),(9,9,1,9),(10,10,1,10),(11,11,1,11),(12,12,1,12),(13,13,2,1),(14,14,3,1),(15,15,2,2),(16,16,3,2),(17,17,2,3),(18,18,3,3),(19,19,2,4),(20,20,3,4),(21,21,2,5),(22,22,3,5),(23,23,2,6),(24,24,3,6),(25,25,2,7),(26,26,3,7),(27,27,2,8),(28,28,3,8),(29,29,2,9),(30,30,3,9),(31,31,2,10);
/*!40000 ALTER TABLE `radni_odnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `IDREGION` int(11) NOT NULL,
  `NAZIVREGIONA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDREGION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Backi'),(2,'Banatski'),(3,'Sremski'),(4,'Grad  Beograd'),(5,'Podunavski'),(6,'Nisavski'),(7,'Zlatiborski'),(8,'Zajecarski');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stanjeiznajmljivanja`
--

DROP TABLE IF EXISTS `stanjeiznajmljivanja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stanjeiznajmljivanja` (
  `IDSTANJA` int(11) NOT NULL,
  `NAZIVSTANJA` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDSTANJA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stanjeiznajmljivanja`
--

LOCK TABLES `stanjeiznajmljivanja` WRITE;
/*!40000 ALTER TABLE `stanjeiznajmljivanja` DISABLE KEYS */;
INSERT INTO `stanjeiznajmljivanja` VALUES (1,'Iznajmljeno'),(2,'Vraceno');
/*!40000 ALTER TABLE `stanjeiznajmljivanja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaposleni`
--

DROP TABLE IF EXISTS `zaposleni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaposleni` (
  `IDZAPOSLENI` int(11) NOT NULL,
  `IMEZAPOSLENOG` varchar(15) DEFAULT NULL,
  `PREZIMEZAPOSLENOG` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDZAPOSLENI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposleni`
--

LOCK TABLES `zaposleni` WRITE;
/*!40000 ALTER TABLE `zaposleni` DISABLE KEYS */;
INSERT INTO `zaposleni` VALUES (1,'Petar','Petrovic'),(2,'Marko','Markovic'),(3,'Janko','Jankovic'),(4,'Ana','Anic'),(5,'Milan','Milankovic'),(6,'Milan','Miljkovic'),(7,'Milos','Milosevic'),(8,'Jelena','Jelic'),(9,'Branka','Branic'),(10,'Milica','Milinovic'),(11,'Ivan','Ivanovic'),(12,'Djuka','Djukic'),(13,'Mirko','Mirkovic'),(14,'Pero','Perovic'),(15,'Smiljan','Smiljkovic'),(16,'Dusan','Dusanovic'),(17,'Branko','Brankovic'),(18,'Miladin','Miljkovic'),(19,'Petar','Peric'),(20,'Stojan','Stojanovic'),(21,'Biljana','Biljic'),(22,'Milos','Milic'),(23,'Sandra','Savic'),(24,'Svetlana','Savicic'),(25,'Aleksandar','Aleksic'),(26,'Aleksandar','Filipovic'),(27,'Mitar','Mirkovic'),(28,'Nenad','Nedic'),(29,'Nenad','Miscevic'),(30,'Zlatko','Zlatic'),(31,'Sale','Salic');
/*!40000 ALTER TABLE `zaposleni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-14 20:44:07
