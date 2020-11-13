-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: cs_courses
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cs_courses`
--

DROP TABLE IF EXISTS `cs_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_courses` (
  `Id` int NOT NULL,
  `Subject` char(250) DEFAULT NULL,
  `CourseNum` int NOT NULL,
  `CourseName` char(250) DEFAULT NULL,
  `Component` char(250) NOT NULL,
  `Section` char(250) NOT NULL,
  `Days` char(250) NOT NULL,
  `StartTime` char(250) NOT NULL,
  `EndTime` char(250) NOT NULL,
  `StartDate` char(250) NOT NULL,
  `EndDate` char(250) NOT NULL,
  `Duration` int NOT NULL,
  `InstructionMode` char(250) NOT NULL,
  `Building` char(250) NOT NULL,
  `Room` char(250) NOT NULL,
  `Instructor` char(250) DEFAULT NULL,
  `EnrollCap` int NOT NULL,
  `WaitCap` int NOT NULL,
  `CombDesc` char(250) DEFAULT NULL,
  `CombEnrollCap` char(250) NOT NULL DEFAULT 'n/a',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_courses`
--

LOCK TABLES `cs_courses` WRITE;
/*!40000 ALTER TABLE `cs_courses` DISABLE KEYS */;
INSERT INTO `cs_courses` VALUES (1,'CSE',101,'Introduction to Computers','LEC','1','MWF','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','TBA','Kevin McDonnell',210,70,'','\r'),(2,'CSE',101,'Introduction to Computers','LAB','L01','M','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(3,'CSE',101,'Introduction to Computers','LAB','L02','M','1:00 PM','1:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(4,'CSE',101,'Introduction to Computers','LAB','L03','TU','4:00 PM','4:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(5,'CSE',101,'Introduction to Computers','LAB','L04','TU','5:30 PM','6:23 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(6,'CSE',101,'Introduction to Computers','LAB','L05','W','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(7,'CSE',101,'Introduction to Computers','LAB','L06','W','4:00 PM','4:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(8,'CSE',101,'Introduction to Computers','LAB','L07','TH','4:00 PM','4:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Kevin McDonnell',30,10,'',' \r'),(9,'CSE',114,'Introduction to Object-Oriented Programming','LEC','1','TUTH','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Paul Fodor',120,44,'',' \r'),(10,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L01','MW','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Paul Fodor',30,11,'',' \r'),(11,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L02','TUTH','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Paul Fodor',30,11,'',' \r'),(12,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L03','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Paul Fodor',30,11,'',' \r'),(13,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L04','TUTH','5:30 PM','6:50 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Paul Fodor',30,11,'',' \r'),(14,'CSE',114,'Introduction to Object-Oriented Programming','LEC','2','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Praveen Tripathi',120,33,'',' \r'),(15,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L07','MW','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Praveen Tripathi',30,11,'',' \r'),(16,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L08','MW','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Praveen Tripathi',30,11,'',' \r'),(17,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L09','MW','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Praveen Tripathi',30,11,'',' \r'),(18,'CSE',114,'Introduction to Object-Oriented Programming','LAB','L10','MW','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2116','Praveen Tripathi',30,0,'',' \r'),(19,'CSE',160,'Computer Science A: Honors','LEC','1','MW','5:30 PM','6:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Paul Fodor',50,0,'',' \r'),(20,'CSE',161,'Laboratory for Computer Science A: Honors','LAB','L01','MW','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2129','Paul Fodor',35,0,'',' \r'),(21,'CSE',214,'Data Structures','LEC','1','TUTH','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Ahmad Esmaili',120,30,'',' \r'),(22,'CSE',214,'Data Structures','REC','R01','RETH','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Ahmad Esmaili',30,5,'',' \r'),(23,'CSE',214,'Data Structures','REC','R02','RETU','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Ahmad Esmaili',30,5,'',' \r'),(24,'CSE',214,'Data Structures','REC','R03','RETU','4:00 PM','4:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Ahmad Esmaili',30,5,'',' \r'),(25,'CSE',214,'Data Structures','REC','R04','RETH','4:00 PM','4:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Ahmad Esmaili',30,5,'',' \r'),(26,'CSE',214,'Data Structures','LEC','2','MWF','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','TBA','Pramod Ganapathi',120,0,'',' \r'),(27,'CSE',214,'Data Structures','REC','R06','RECF','2:30 PM','3:23 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',0,0,'',' \r'),(28,'CSE',214,'Data Structures','REC','R07','RECM','2:30 PM','3:23 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',30,5,'',' \r'),(29,'CSE',214,'Data Structures','REC','R08','RECW','2:30 PM','3:23 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',30,5,'',' \r'),(30,'CSE',214,'Data Structures','REC','R09','RECM','3:30 PM','4:23 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',30,5,'',' \r'),(31,'CSE',215,'Foundations of Computer Science','LEC','1','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Christopher Kane',120,40,'',' \r'),(32,'CSE',215,'Foundations of Computer Science','REC','R01','RECM','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Christopher Kane',30,10,'',' \r'),(33,'CSE',215,'Foundations of Computer Science','REC','R02','RECW','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Christopher Kane',30,10,'',' \r'),(34,'CSE',215,'Foundations of Computer Science','REC','R03','RECM','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Christopher Kane',30,10,'',' \r'),(35,'CSE',215,'Foundations of Computer Science','REC','R04','RECW','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Christopher Kane',30,10,'',' \r'),(36,'CSE',215,'Foundations of Computer Science','LEC','2','MW','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Pramod Ganapathi',120,40,'',' \r'),(37,'CSE',215,'Foundations of Computer Science','REC','R06','RECW','1:00 PM','1:53 PM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',30,10,'',' \r'),(38,'CSE',215,'Foundations of Computer Science','REC','R07','RECM','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2129','Pramod Ganapathi',30,10,'',' \r'),(39,'CSE',215,'Foundations of Computer Science','REC','R08','RECW','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',30,10,'',' \r'),(40,'CSE',215,'Foundations of Computer Science','REC','R09','RECF','9:00 AM','9:53 AM','25-Jan-21','19-May-21',53,'In Person','COMPUTER SCI','2114','Pramod Ganapathi',0,0,'',' \r'),(41,'CSE',216,'Programming Abstractions','LEC','1','MW','5:30 PM','6:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Ritwik Banerjee',180,25,'',' \r'),(42,'CSE',216,'Programming Abstractions','REC','R01','RETU','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(43,'CSE',216,'Programming Abstractions','REC','R02','RETH','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(44,'CSE',216,'Programming Abstractions','REC','R03','RETU','9:00 AM','9:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(45,'CSE',216,'Programming Abstractions','REC','R04','RETU','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(46,'CSE',216,'Programming Abstractions','REC','R05','RETH','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(47,'CSE',216,'Programming Abstractions','REC','R06','RETU','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Ritwik Banerjee',30,10,'',' \r'),(48,'CSE',220,'Systems Fundamentals I','LEC','1','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Joydeep Mitra',180,48,'',' \r'),(49,'CSE',220,'Systems Fundamentals I','REC','R01','RECM','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(50,'CSE',220,'Systems Fundamentals I','REC','R02','RECW','10:00 AM','10:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(51,'CSE',220,'Systems Fundamentals I','REC','R03','RECM','11:00 AM','11:53 AM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(52,'CSE',220,'Systems Fundamentals I','REC','R05','RECM','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(53,'CSE',220,'Systems Fundamentals I','REC','R06','RECW','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(54,'CSE',220,'Systems Fundamentals I','REC','R07','RECM','2:30 PM','3:23 PM','25-Jan-21','19-May-21',53,'In Person','TBA','115','Joydeep Mitra',30,8,'',' \r'),(55,'CSE',300,'Technical Communications','LEC','1','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'CSE300.01/ISE300.01','35\r'),(56,'CSE',300,'Technical Communications','LEC','2','TUTH','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'CSE300.02/ISE300.02','35\r'),(57,'CSE',300,'Technical Communications','LEC','3','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'CSE300.03/ISE300.03','35\r'),(58,'CSE',300,'Technical Communications','LEC','4','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'CSE300.04/ISE300.04','35\r'),(59,'CSE',300,'Technical Communications','LEC','5','TUTH','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'CSE300.05/ISE300.05','35\r'),(60,'CSE',300,'Technical Communications','LEC','6','MW','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','TBA',35,0,'',' \r'),(61,'CSE',303,'Introduction to the Theory of Computation','LEC','1','MWF','12:00 PM','12:53 PM','25-Jan-21','19-May-21',53,'In Person','TBA','TBA','Pramod Ganapathi',250,30,'',' \r'),(62,'CSE',306,'Operating Systems','LEC','1','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Eugene Stark',150,20,'',' \r'),(63,'CSE',307,'Principles of Programming Languages','LEC','1','TUTH','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Joydeep Mitra',80,15,'',' \r'),(64,'CSE',310,'Computer Networks','LEC','1','MW','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Aruna Balasubramanian',200,50,'',' \r'),(65,'CSE',311,'Systems Administration','LEC','1','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2120','Ahmad Esmaili',25,0,'CSE311.01/ISE311.01','75\r'),(66,'CSE',312,'Legal, Social, and Ethical Issues in Information Systems','LEC','1','MW','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Anthony Scarlatos',120,0,'CSE312.01/ISE312.01','120\r'),(67,'CSE',312,'Legal, Social, and Ethical Issues in Information Systems','LEC','2','MW','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Michael Tashbook',120,0,'CSE312.02/ISE312.02','120\r'),(68,'CSE',316,'Fundamentals of Software Development','LEC','1','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Richard McKenna',120,20,'',' \r'),(69,'CSE',320,'Systems Fundamentals II','LEC','1','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Eugene Stark',250,30,'',' \r'),(70,'CSE',327,'Fundamentals of Computer Vision','LEC','1','TUTH','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Dimitrios Samaras',40,10,'',' \r'),(71,'CSE',334,'Introduction to Multimedia Systems','LEC','1','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','COMPUTER SCI','2205','Anthony Scarlatos',11,0,'CSE334.01/ISE334.01','40\r'),(72,'CSE',337,'Scripting Languages','LEC','1','TUTH','5:30 PM','6:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Michael Tashbook',100,0,'CSE337.01/ISE337.01','100\r'),(73,'CSE',351,' Introduction to Data Science','LEC','1','TUTH','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Praveen Tripathi',100,0,'',' \r'),(74,'CSE',352,'Artificial Intelligence','LEC','1','HTBA','1:00 AM','1:00 AM','25-Jan-21','19-May-21',0,'In Person','TBA','TBA','Niranjan Balasubramanian',100,0,'',' \r'),(75,'CSE',354,'Natural Language Processing','LEC','1','MW','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Hansen Schwartz',100,20,'',' \r'),(76,'CSE',371,'Logic','LEC','1','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Anita Wasilewska',60,0,'CSE/MAT371.01','60\r'),(77,'CSE',373,'Analysis of Algorithms','LEC','1','TUTH','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Rezaul Chowdhury',120,0,'CSE373.01/MAT373.01','200\r'),(78,'CSE',376,'Advanced Systems Programming in UNIX/C','LEC','1','MW','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','TBA','120','Erez Zadok',80,0,'',' \r'),(79,'CSE',380,'2D Game Programming','LEC','1','TUTH','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Richard McKenna',100,30,'',' \r'),(80,'CSE',385,'Analysis of Algorithms: Honors','LEC','1','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Michael Bender',60,0,'',' \r'),(81,'CSE',385,'Analysis of Algorithms: Honors','REC','R01','RETH','2:00 PM','2:53 PM','25-Jan-21','19-May-21',53,'In Person','TBA','TBA','Michael Bender',60,0,'',' \r'),(82,'CSE',416,'Software Engineering','LEC','1','TUTH','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Robert Kelly',70,10,'',' \r'),(83,'CSE',416,'Software Engineering','LEC','2','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Scott Stoller',70,10,'',' \r'),(84,'CSE',506,'Operating Systems','LEC','1','TUTH','8:30 AM','9:50 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Dongyoon Lee',150,0,'',' \r'),(85,'CSE',512,'Machine Learning','LEC','1','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Minh Hoai Nguyen',150,0,'',' \r'),(86,'CSE',526,'Principles of Programming Languages','LEC','1','MF','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Yanhong Liu',100,10,'',' \r'),(87,'CSE',527,'Introduction to Computer Vision','LEC','1','MW','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Haibin Ling',120,0,'',' \r'),(88,'CSE',532,'Theory of Database Systems','LEC','1','TUTH','5:30 PM','6:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Michael Kifer',150,34,'',' \r'),(89,'CSE',540,'Theory of Computation','LEC','1','TUTH','2:30 PM','3:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Omkant Pandey',150,0,'',' \r'),(90,'CSE',541,'Logic in Computer Science','LEC','1','TUTH','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Anita Wasilewska',120,15,'',' \r'),(91,'CSE',544,'Prob/Stat for Data Scientists','LEC','1','TUTH','1:00 PM','2:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Anshul Gandhi',100,0,'',' \r'),(92,'CSE',545,'Big Data Analytics','LEC','1','TUTH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Hansen Schwartz',150,28,'',' \r'),(93,'CSE',548,'Analysis of Algorithms','LEC','1','MW','4:00 PM','5:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Rezaul Chowdhury',180,0,'CSE548.01/AMS542.01','180\r'),(94,'CSE',550,'Quantum Computing and App','SEM','S01','TU','10:31 AM','11:30 AM','25-Jan-21','19-May-21',59,'In Person','TBA','120','Predrag Krstic',20,0,'DCS501.R01/ESE523.R01/CSE550.S','20\r'),(95,'CSE',550,'Quantum Computing and App','LEC','1','TU','9:30 AM','10:30 AM','25-Jan-21','19-May-21',60,'In Person','TBA','120','Predrag Krstic',20,0,'DCS501.01/ESE523.01/CSE550.01','20\r'),(96,'CSE',555,'Computational Geometry','LEC','1','TUTH','10:00 AM','11:20 AM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Joseph Mitchell',60,0,'AMS545.01/CSE555.01','60\r'),(97,'CSE',564,'Visualization','LEC','1','TUTH','7:00 PM','8:20 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Klaus Mueller',250,6,'',' \r'),(98,'CSE',566,'Virtual Reality','LEC','1','W','2:30 PM','5:20 PM','25-Jan-21','19-May-21',170,'In Person','TBA','220','Arie Kaufman',30,0,'',' \r'),(99,'CSE',600,'Research in Modern Computer Science','SEM','S01','F','2:30 PM','3:30 PM','25-Jan-21','19-May-21',60,'In Person','TBA','120','Samir Das',80,10,'',' \r'),(100,'CSE',645,'Seminar in Languages','SEM','S01','TH','11:30 AM','12:50 PM','25-Jan-21','19-May-21',80,'In Person','TBA','TBA','Paul Fodor; Michael Kifer; C Ramakrishnan; Yanhong Liu',30,0,'',' \r');
/*!40000 ALTER TABLE `cs_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved`
--

DROP TABLE IF EXISTS `saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved` (
  `id` int NOT NULL AUTO_INCREMENT,
  `savedId` int DEFAULT NULL,
  `Subject` char(250) DEFAULT NULL,
  `CourseNum` int DEFAULT NULL,
  `CourseName` char(250) DEFAULT NULL,
  `Section` char(250) DEFAULT NULL,
  `Days` char(250) DEFAULT NULL,
  `StartTime` char(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `savedId` (`savedId`),
  CONSTRAINT `saved_ibfk_1` FOREIGN KEY (`savedId`) REFERENCES `cs_courses` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved`
--

LOCK TABLES `saved` WRITE;
/*!40000 ALTER TABLE `saved` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 23:47:44
