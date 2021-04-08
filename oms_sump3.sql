-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: orphanage_management_system
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add auth group',6,'add_authgroup'),(22,'Can change auth group',6,'change_authgroup'),(23,'Can delete auth group',6,'delete_authgroup'),(24,'Can view auth group',6,'view_authgroup'),(25,'Can add auth group permissions',7,'add_authgrouppermissions'),(26,'Can change auth group permissions',7,'change_authgrouppermissions'),(27,'Can delete auth group permissions',7,'delete_authgrouppermissions'),(28,'Can view auth group permissions',7,'view_authgrouppermissions'),(29,'Can add auth permission',8,'add_authpermission'),(30,'Can change auth permission',8,'change_authpermission'),(31,'Can delete auth permission',8,'delete_authpermission'),(32,'Can view auth permission',8,'view_authpermission'),(33,'Can add django admin log',9,'add_djangoadminlog'),(34,'Can change django admin log',9,'change_djangoadminlog'),(35,'Can delete django admin log',9,'delete_djangoadminlog'),(36,'Can view django admin log',9,'view_djangoadminlog'),(37,'Can add django content type',10,'add_djangocontenttype'),(38,'Can change django content type',10,'change_djangocontenttype'),(39,'Can delete django content type',10,'delete_djangocontenttype'),(40,'Can view django content type',10,'view_djangocontenttype'),(41,'Can add django migrations',11,'add_djangomigrations'),(42,'Can change django migrations',11,'change_djangomigrations'),(43,'Can delete django migrations',11,'delete_djangomigrations'),(44,'Can view django migrations',11,'view_djangomigrations'),(45,'Can add django session',12,'add_djangosession'),(46,'Can change django session',12,'change_djangosession'),(47,'Can delete django session',12,'delete_djangosession'),(48,'Can view django session',12,'view_djangosession'),(49,'Can add user',13,'add_customuser'),(50,'Can change user',13,'change_customuser'),(51,'Can delete user',13,'delete_customuser'),(52,'Can view user',13,'view_customuser'),(53,'Can add auth user',14,'add_authuser'),(54,'Can change auth user',14,'change_authuser'),(55,'Can delete auth user',14,'delete_authuser'),(56,'Can view auth user',14,'view_authuser'),(57,'Can add room',15,'add_room'),(58,'Can change room',15,'change_room'),(59,'Can delete room',15,'delete_room'),(60,'Can view room',15,'view_room'),(61,'Can add office bearers',16,'add_officebearers'),(62,'Can change office bearers',16,'change_officebearers'),(63,'Can delete office bearers',16,'delete_officebearers'),(64,'Can view office bearers',16,'view_officebearers'),(65,'Can add employees',17,'add_employees'),(66,'Can change employees',17,'change_employees'),(67,'Can delete employees',17,'delete_employees'),(68,'Can view employees',17,'view_employees'),(69,'Can add child',18,'add_child'),(70,'Can change child',18,'change_child'),(71,'Can delete child',18,'delete_child'),(72,'Can view child',18,'view_child'),(73,'Can add auth user user permissions',19,'add_authuseruserpermissions'),(74,'Can change auth user user permissions',19,'change_authuseruserpermissions'),(75,'Can delete auth user user permissions',19,'delete_authuseruserpermissions'),(76,'Can view auth user user permissions',19,'view_authuseruserpermissions'),(77,'Can add auth user groups',20,'add_authusergroups'),(78,'Can change auth user groups',20,'change_authusergroups'),(79,'Can delete auth user groups',20,'delete_authusergroups'),(80,'Can view auth user groups',20,'view_authusergroups');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` int NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` int NOT NULL,
  `is_active` int NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permission_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child` (
  `ChildID` varchar(10) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DOA` date DEFAULT NULL,
  `CPhoto` varchar(200) DEFAULT NULL,
  `CAno` varchar(12) DEFAULT NULL,
  `CPno` varchar(10) DEFAULT NULL,
  `GName` varchar(40) DEFAULT NULL,
  `GAno` varchar(12) DEFAULT NULL,
  `GPno` varchar(10) DEFAULT NULL,
  `RID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ChildID`),
  KEY `child_RID_e5452e93_fk_room_RoomID` (`RID`),
  CONSTRAINT `child_RID_e5452e93_fk_room_RoomID` FOREIGN KEY (`RID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_app_customuser`
--

DROP TABLE IF EXISTS `child_app_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_app_customuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_app_customuser`
--

LOCK TABLES `child_app_customuser` WRITE;
/*!40000 ALTER TABLE `child_app_customuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_app_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_app_customuser_groups`
--

DROP TABLE IF EXISTS `child_app_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_app_customuser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `child_app_customuser_groups_customuser_id_group_id_e9d98e31_uniq` (`customuser_id`,`group_id`),
  KEY `child_app_customuser_groups_group_id_261455bd_fk_auth_group_id` (`group_id`),
  CONSTRAINT `child_app_customuser_customuser_id_9a21376e_fk_child_app` FOREIGN KEY (`customuser_id`) REFERENCES `child_app_customuser` (`id`),
  CONSTRAINT `child_app_customuser_groups_group_id_261455bd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_app_customuser_groups`
--

LOCK TABLES `child_app_customuser_groups` WRITE;
/*!40000 ALTER TABLE `child_app_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_app_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_app_customuser_user_permissions`
--

DROP TABLE IF EXISTS `child_app_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child_app_customuser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `child_app_customuser_use_customuser_id_permission_9dfea942_uniq` (`customuser_id`,`permission_id`),
  KEY `child_app_customuser_permission_id_f02f946c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `child_app_customuser_customuser_id_a33ff5ef_fk_child_app` FOREIGN KEY (`customuser_id`) REFERENCES `child_app_customuser` (`id`),
  CONSTRAINT `child_app_customuser_permission_id_f02f946c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_app_customuser_user_permissions`
--

LOCK TABLES `child_app_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `child_app_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_app_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_child_app_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_child_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `child_app_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(6,'child_app','authgroup'),(7,'child_app','authgrouppermissions'),(8,'child_app','authpermission'),(14,'child_app','authuser'),(20,'child_app','authusergroups'),(19,'child_app','authuseruserpermissions'),(18,'child_app','child'),(13,'child_app','customuser'),(9,'child_app','djangoadminlog'),(10,'child_app','djangocontenttype'),(11,'child_app','djangomigrations'),(12,'child_app','djangosession'),(17,'child_app','employees'),(16,'child_app','officebearers'),(15,'child_app','room'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-08 20:54:41.336579'),(2,'contenttypes','0002_remove_content_type_name','2021-04-08 20:54:41.460165'),(3,'auth','0001_initial','2021-04-08 20:54:41.562638'),(4,'auth','0002_alter_permission_name_max_length','2021-04-08 20:54:41.820697'),(5,'auth','0003_alter_user_email_max_length','2021-04-08 20:54:41.832639'),(6,'auth','0004_alter_user_username_opts','2021-04-08 20:54:41.845599'),(7,'auth','0005_alter_user_last_login_null','2021-04-08 20:54:41.857559'),(8,'auth','0006_require_contenttypes_0002','2021-04-08 20:54:41.863552'),(9,'auth','0007_alter_validators_add_error_messages','2021-04-08 20:54:41.883474'),(10,'auth','0008_alter_user_username_max_length','2021-04-08 20:54:41.906392'),(11,'auth','0009_alter_user_last_name_max_length','2021-04-08 20:54:41.923335'),(12,'auth','0010_alter_group_name_max_length','2021-04-08 20:54:41.950246'),(13,'auth','0011_update_proxy_permissions','2021-04-08 20:54:41.962211'),(14,'auth','0012_alter_user_first_name_max_length','2021-04-08 20:54:41.972171'),(15,'child_app','0001_initial','2021-04-08 20:54:42.397630'),(16,'admin','0001_initial','2021-04-08 20:54:43.472438'),(17,'admin','0002_logentry_remove_auto_add','2021-04-08 20:54:43.609978'),(18,'admin','0003_logentry_add_action_flag_choices','2021-04-08 20:54:43.621944'),(19,'sessions','0001_initial','2021-04-08 20:54:43.672771');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EMPID` varchar(5) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Second_Name` varchar(20) DEFAULT NULL,
  `PhNum` int DEFAULT NULL,
  `Dsc` varchar(10) DEFAULT NULL,
  `EAno` varchar(12) DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `Rtype` varchar(50) DEFAULT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`EMPID`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `employees_admin_id_0da24280_fk_child_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `child_app_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_bearers`
--

DROP TABLE IF EXISTS `office_bearers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_bearers` (
  `ChairNo` varchar(5) NOT NULL,
  `POSITION` varchar(20) DEFAULT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`ChairNo`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `office_bearers_admin_id_651f6960_fk_child_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `child_app_customuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_bearers`
--

LOCK TABLES `office_bearers` WRITE;
/*!40000 ALTER TABLE `office_bearers` DISABLE KEYS */;
/*!40000 ALTER TABLE `office_bearers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `RoomID` varchar(5) NOT NULL,
  `Floor` int NOT NULL,
  `Max_Occupancy` int NOT NULL,
  PRIMARY KEY (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-09  2:27:15
