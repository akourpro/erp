-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: erp
-- ------------------------------------------------------
-- Server version 	10.4.32-MariaDB
-- Date: Sat, 16 Mar 2024 14:14:54 +0300

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `admins` VALUES (1,'admin','admin@gmail.com','$2y$10$qlqJZzjReKfZhECLJMXUpOOQmus7YDtaEKc.F45aKt8UXKv9Pxo6S',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `admins` with 1 row(s)
--

--
-- Table structure for table `alerts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `seen` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `alerts` VALUES (1,3,'تم منحك شهادة جديدة: اتقان لغة PHP',0,'2024-03-12 14:19:29'),(2,1,'تم اعطاؤك العقوبة: الخروج قبل انتهاء الدوام',0,'2024-03-12 14:20:59'),(3,1,'تم منحك حافز: مكافأة 100 دينار',0,'2024-03-16 14:14:19');
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `alerts` with 3 row(s)
--

--
-- Table structure for table `degree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `degree` VALUES (3,1,'البكالوريوس','تم منح شهادة البكالوريوس بسبب النجاح في الجامعة','2024-03-12'),(5,3,'اتقان لغة PHP','بسبب اجتيازك لدورة تعلم لغة PHP','2024-03-12');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `degree` with 2 row(s)
--

--
-- Table structure for table `emp_logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `login_info` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_logs`
--

LOCK TABLES `emp_logs` WRITE;
/*!40000 ALTER TABLE `emp_logs` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `emp_logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `emp_logs` with 0 row(s)
--

--
-- Table structure for table `logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `login_info` text DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `logs` VALUES (8,'2024-03-07 17:54:59',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','logout'),(9,'2024-03-07 17:55:14',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','login'),(10,'2024-03-12 13:44:54',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','login'),(11,'2024-03-12 13:45:37',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','logout'),(12,'2024-03-12 13:48:21',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','login'),(13,'2024-03-12 14:05:39',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','logout'),(14,'2024-03-12 14:06:33',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','login'),(15,'2024-03-16 14:06:11',1,'a:3:{s:2:\"ip\";s:3:\"::1\";s:2:\"os\";s:10:\"Windows 10\";s:7:\"browser\";s:6:\"Chrome\";}','login');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `logs` with 8 row(s)
--

--
-- Table structure for table `punish`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `punish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `punish` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punish`
--

LOCK TABLES `punish` WRITE;
/*!40000 ALTER TABLE `punish` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `punish` VALUES (1,4,'عدم تحقيق الاهداف','عدم وصولك لعدد 100 من المبيعات المطلوبة منك','2024-03-07'),(2,1,'الخروج قبل انتهاء الدوام','خروجك قبل انتهاء الدوام بنصف ساعة','2024-03-12');
/*!40000 ALTER TABLE `punish` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `punish` with 2 row(s)
--

--
-- Table structure for table `rewards`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `rewards` VALUES (1,1,'مكافأة 100 دينار','لوصولك الى الهدف المطلوب','2024-03-16');
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `rewards` with 1 row(s)
--

--
-- Table structure for table `settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `settings` VALUES (1,'siteName','نظام الموارد البشرية'),(2,'description','باشراف المطور: عمر المصري'),(3,'logo','logo.jpeg'),(4,'email','fatima@gmail.com'),(5,'metaTags','هداية تيسير, براءة عصام,'),(6,'status','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `settings` with 6 row(s)
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `employee_id` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` date DEFAULT NULL,
  `date_join` date DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `users` VALUES (1,'Manal Ghunaim','231222','hi13213213@akour.me','12345678','female','2019-10-23','2023-01-01','92181dc5dffd5ab8a339e1fa02504d47.png','0781121317','2024-02-20 18:33:25'),(3,'M عمر المصري','999','213@akour.me','12345678','male','2019-10-23','2023-01-01','92181dc5dffd5ab8a339e1fa02504d47.png','0000000000','2024-02-20 18:33:25'),(4,'فاطمة عيسى','3123213','fatima@akour.me','$2y$10$TFeMIqnf/5Z.DgIpdjN1k.Hp3IBF7P6M1GgrdI2kevZhbY.iFL9JK','female','2024-03-05','2024-03-07','default.png','213213213123','2024-03-07 18:09:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `users` with 3 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Sat, 16 Mar 2024 14:14:54 +0300
