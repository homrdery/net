-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: net
-- ------------------------------------------------------
-- Server version	10.5.23-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pkt_reader`
--

DROP TABLE IF EXISTS `pkt_reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkt_reader` (
  `type` int(11) NOT NULL,
  `mac_addr` varchar(30) NOT NULL,
  `ip_addr` varchar(30) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`mac_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkt_reader`
--

LOCK TABLES `pkt_reader` WRITE;
/*!40000 ALTER TABLE `pkt_reader` DISABLE KEYS */;
INSERT INTO `pkt_reader` VALUES (5,'00:0e:08:3a:0e:64','172.64.8.2','2024-07-31 21:51:53'),(5,'00:0e:08:3a:0e:66','172.64.8.2','2024-07-31 21:45:16'),(5,'00:0e:08:3a:0e:6a','172.64.13.215','2024-07-31 21:51:52'),(5,'00:0e:08:3a:0e:6b','172.64.8.2','2024-07-31 21:47:05'),(5,'00:0e:08:3a:0e:6c','172.64.8.2','2024-07-31 21:51:45'),(5,'00:0e:08:3b:00:47','172.64.8.2','2024-07-31 21:51:58'),(5,'00:0e:08:3b:00:48','172.64.8.2','2024-07-31 21:51:55'),(5,'00:0e:08:3b:00:4c','172.64.8.2','2024-07-31 21:47:17'),(5,'00:0e:08:3b:00:4d','172.64.13.215','2024-07-31 21:47:10'),(5,'00:0e:08:d5:7a:e1','172.64.8.2','2024-07-31 21:47:21'),(5,'00:0e:08:d5:7a:e2','172.64.8.2','2024-07-31 21:47:32'),(5,'00:0e:08:d6:a6:c4','172.64.8.2','2024-07-31 21:51:56'),(5,'00:0e:08:d6:a6:c6','172.64.13.215','2024-07-31 21:51:12'),(5,'00:0e:08:d6:a6:c8','172.64.8.2','2024-07-31 21:52:00'),(5,'00:0e:08:d6:a6:ca','172.64.8.2','2024-07-31 21:51:48'),(5,'00:0e:08:d6:a7:81','172.64.8.2','2024-07-31 21:51:44'),(5,'00:0e:08:d6:a7:82','172.64.8.2','2024-07-31 21:52:12'),(5,'00:0e:08:d6:a7:85','172.64.8.2','2024-07-31 21:52:20'),(5,'00:0e:08:d6:a7:86','172.64.8.2','2024-07-31 21:47:18'),(5,'00:0e:08:d6:a7:88','172.64.8.2','2024-07-31 21:51:58'),(5,'00:0e:08:d6:a7:89','172.64.8.2','2024-07-31 21:47:31'),(5,'00:0e:08:d7:7d:76','172.64.8.2','2024-07-31 21:49:34'),(5,'00:0e:08:d7:7d:77','172.64.13.215','2024-07-31 21:48:26'),(5,'00:0e:08:d7:7d:78','172.64.8.2','2024-07-31 21:51:54'),(5,'00:0e:08:d7:7d:79','172.64.8.2','2024-07-31 21:47:06'),(5,'00:0e:08:d7:7d:7a','172.64.8.2','2024-07-31 21:51:47'),(5,'00:0e:08:d7:87:ed','172.64.8.2','2024-07-31 21:47:21'),(5,'00:0e:08:d7:87:ee','172.64.8.2','2024-07-31 21:46:58'),(5,'00:0e:08:d7:87:f5','172.64.8.2','2024-07-31 21:51:51'),(5,'00:0e:08:d7:89:c6','172.64.8.2','2024-07-31 21:47:12'),(5,'00:0e:08:d7:89:c8','172.64.8.2','2024-07-31 21:55:47'),(5,'00:0e:08:d7:89:c9','172.64.8.2','2024-07-31 21:49:46'),(5,'00:0e:08:d7:89:cb','172.64.8.2','2024-07-31 21:51:31'),(5,'00:0e:08:d7:89:f5','172.64.8.2','2024-07-31 21:47:36'),(5,'00:0e:08:d7:89:fa','172.64.13.215','2024-07-31 21:51:36'),(5,'00:0e:08:d7:89:fb','172.64.8.2','2024-07-31 21:47:36'),(5,'00:0e:08:d7:89:fe','172.64.13.215','2024-07-31 21:51:55'),(5,'00:0e:08:d7:8a:31','172.64.8.2','2024-07-31 21:51:27'),(5,'00:0e:08:d7:8a:34','172.64.8.2','2024-07-31 21:52:01'),(5,'00:0e:08:d7:8a:35','172.64.8.2','2024-07-31 21:46:42'),(5,'00:0e:08:d7:8a:36','172.64.8.2','2024-07-31 21:54:37'),(5,'00:0e:08:d7:8a:37','172.64.8.2','2024-07-31 21:49:11'),(5,'00:0e:08:d7:8a:3a','172.64.13.215','2024-07-31 21:51:49'),(5,'00:16:76:d1:84:79','172.64.8.2','2024-07-31 19:33:07'),(5,'00:17:c8:52:6f:4b','172.64.8.32','2024-07-31 21:55:08'),(5,'00:17:c8:65:dc:b5','172.64.8.13','2024-07-31 21:55:42'),(5,'00:17:c8:7d:87:9b','172.64.13.9','2024-07-31 21:54:51'),(5,'00:17:c8:8b:7c:f5','172.64.8.12','2024-07-31 21:55:54'),(5,'00:17:c8:8b:7d:09','172.64.8.33','2024-07-31 21:55:13'),(5,'00:1b:21:93:be:d3','172.64.8.40','2024-07-31 21:55:58'),(5,'00:22:15:98:44:a0','172.64.8.40','2024-07-31 21:55:53'),(5,'00:25:22:7b:db:1e','172.64.10.174','2024-07-31 21:54:23'),(5,'00:25:22:7b:db:81','172.64.12.208','2024-07-31 19:33:59'),(5,'00:25:22:bd:33:19','169.254.169.254','2024-07-31 21:54:22'),(5,'00:25:22:cb:7b:1a','169.254.169.254','2024-07-31 21:55:36'),(5,'00:25:90:f2:4c:be','172.64.9.250','2024-07-31 21:49:32'),(5,'00:50:b6:4f:36:ab','172.64.14.62','2024-07-29 20:14:34'),(5,'00:c0:ee:84:8d:a1','172.64.13.253','2024-07-31 21:47:13'),(5,'00:c0:ee:84:96:c6','172.64.10.78','2024-07-31 21:46:47'),(5,'00:c0:ee:8e:63:8a','172.64.13.253','2024-07-31 21:43:33'),(5,'00:c0:ee:96:6b:25','172.64.8.1','2024-07-31 21:33:23'),(5,'00:c0:ee:d8:02:ef','172.64.13.253','2024-07-31 21:47:13'),(5,'04:7c:16:48:e5:99','169.254.169.254','2024-07-31 21:55:36'),(5,'04:7c:16:48:e5:e4','169.254.169.254','2024-07-31 16:41:02'),(5,'04:7c:16:48:e6:13','169.254.169.254','2024-07-31 21:54:09'),(5,'04:7c:16:48:e7:20','169.254.169.254','2024-07-31 21:55:54'),(5,'04:7c:16:48:ea:98','169.254.169.254','2024-07-31 21:54:51'),(5,'04:7c:16:59:5c:47','169.254.169.254','2024-07-31 21:54:43'),(5,'04:7c:16:7d:9b:96','169.254.169.254','2024-07-31 16:42:07'),(5,'08:26:ae:38:c4:ad','172.64.8.1','2024-07-31 21:56:00'),(5,'0a:26:ae:da:78:96','172.64.13.253','2024-07-31 18:07:30'),(5,'0a:36:23:57:57:71','172.64.8.1','2024-07-29 15:56:57'),(5,'10:63:c8:59:35:d5','172.64.13.229','2024-07-29 16:09:16'),(5,'12:4e:2c:57:76:99','172.64.13.253','2024-07-29 16:30:06'),(5,'18:a6:f7:74:76:2b','172.64.8.1','2024-07-31 21:55:35'),(5,'18:a6:f7:74:76:fc','172.64.8.1','2024-07-31 21:55:37'),(5,'18:a6:f7:bc:84:d1','172.64.8.1','2024-07-31 21:55:30'),(5,'18:a6:f7:bc:86:3b','172.64.8.1','2024-07-31 21:55:19'),(5,'1c:6f:65:d4:c8:fc','172.64.13.222','2024-07-31 21:46:55'),(5,'2a:17:6e:04:cf:e8','172.64.8.2','2024-07-31 17:16:41'),(5,'2e:b3:0d:2a:b4:11','172.64.12.55','2024-07-31 16:17:42'),(5,'2e:cc:27:58:e2:31','172.64.8.1','2024-07-31 17:34:57'),(5,'30:07:4d:d5:b4:61','172.64.8.1','2024-07-31 17:21:08'),(5,'30:85:a9:ad:44:a6','172.64.15.148','2024-07-31 21:42:26'),(5,'30:85:a9:ad:45:5c','169.254.169.254','2024-07-31 21:55:42'),(5,'30:9c:23:45:0b:90','169.254.169.254','2024-07-31 21:55:43'),(5,'30:9c:23:45:0b:97','172.64.13.155','2024-07-31 21:51:53'),(5,'30:9c:23:45:0b:a0','172.64.8.2','2024-07-31 21:51:43'),(5,'30:9c:23:45:11:c5','172.64.13.222','2024-07-31 21:56:00'),(5,'30:9c:23:4a:fa:9f','172.64.8.228','2024-07-31 21:55:27'),(5,'30:9c:23:4a:fa:e3','172.64.10.59','2024-07-31 19:58:21'),(5,'32:cb:3f:da:fa:f4','172.64.8.2','2024-07-29 18:23:16'),(5,'36:2b:c0:77:a5:4a','172.64.8.1','2024-07-31 16:54:25'),(5,'36:85:41:16:43:50','172.64.13.253','2024-07-29 17:55:33'),(5,'36:85:41:17:43:50','172.64.8.1','2024-07-29 18:25:11'),(5,'3a:18:9e:18:a0:5b','172.64.13.253','2024-07-29 17:58:27'),(5,'3c:97:0e:d9:a0:aa','169.254.169.254','2024-07-29 18:07:52'),(5,'40:8d:5c:29:6a:04','172.64.14.113','2024-07-31 21:49:58'),(5,'40:8d:5c:29:6c:85','169.254.169.254','2024-07-31 21:55:46'),(5,'40:8d:5c:29:6c:d7','172.64.8.2','2024-07-31 21:51:05'),(5,'48:68:4a:3d:c0:c0','172.64.8.2','2024-07-29 15:54:48'),(5,'48:fd:a3:0a:c0:0e','172.64.13.253','2024-07-31 18:11:13'),(5,'50:46:5d:03:20:f2','172.64.8.5','2024-07-31 17:27:42'),(5,'50:46:5d:06:42:2e','169.254.169.254','2024-07-31 21:54:30'),(5,'50:46:5d:09:2e:f1','172.64.9.252','2024-07-31 21:49:19'),(5,'50:64:2b:4c:ee:76','172.64.12.98','2024-07-31 21:55:29'),(5,'50:e5:49:3e:b9:f2','169.254.169.254','2024-07-31 21:55:54'),(5,'50:e5:49:3e:ba:34','169.254.169.254','2024-07-31 21:56:00'),(5,'50:e5:49:3e:ba:35','172.64.10.28','2024-07-31 21:19:38'),(5,'50:e5:49:3e:ba:37','169.254.169.254','2024-07-31 21:55:26'),(5,'54:04:a6:7f:39:15','169.254.169.254','2024-07-31 21:55:25'),(5,'54:04:a6:c0:58:f5','172.64.10.42','2024-07-31 18:33:16'),(5,'54:04:a6:c0:59:4f','172.64.9.238','2024-07-24 20:48:47'),(5,'54:04:a6:c0:59:5f','172.64.13.66','2024-07-31 21:51:51'),(5,'54:04:a6:c0:5a:3f','172.64.15.89','2024-07-31 21:50:39'),(5,'54:04:a6:ef:bb:c0','172.64.9.252','2024-07-31 21:01:30'),(5,'56:98:08:3e:2b:8d','172.64.8.1','2024-07-31 16:44:05'),(5,'58:bf:ea:10:87:0a','172.64.8.2','2024-07-31 21:49:35'),(5,'58:bf:ea:10:8b:43','172.64.8.2','2024-07-31 21:45:27'),(5,'58:bf:ea:10:8b:44','172.64.8.2','2024-07-31 16:02:48'),(5,'58:bf:ea:10:95:1a','172.64.8.2','2024-07-31 21:45:38'),(5,'5a:3d:f9:db:80:4a','172.64.8.2','2024-07-31 17:20:49'),(5,'5a:50:75:ce:fe:9f','172.64.13.253','2024-07-29 19:32:47'),(5,'5e:a4:19:b1:21:c0','172.64.13.253','2024-07-31 16:55:30'),(5,'60:a4:4c:3d:77:d7','172.64.9.252','2024-07-31 19:48:34'),(5,'62:34:0d:d7:9e:b9','172.64.8.1','2024-07-29 17:12:51'),(5,'64:9e:f3:78:9d:14','172.64.8.2','2024-07-31 17:19:57'),(5,'64:9e:f3:78:9d:66','172.64.8.2','2024-07-29 20:35:40'),(5,'64:9e:f3:78:9d:d4','172.64.8.2','2024-07-31 21:51:31'),(5,'64:9e:f3:78:a3:ab','172.64.8.2','2024-07-31 21:54:44'),(5,'64:9e:f3:78:a6:23','172.64.8.2','2024-07-31 21:42:20'),(5,'64:9e:f3:79:19:c9','172.64.14.3','2024-07-31 21:50:43'),(5,'70:a8:d3:db:9a:f2','169.254.169.254','2024-07-29 19:49:02'),(5,'70:a8:d3:dd:5a:7c','172.64.8.1','2024-07-31 16:44:20'),(5,'72:16:2d:d0:14:54','172.64.8.2','2024-07-31 16:53:12'),(5,'72:9b:4a:20:e1:46','172.64.13.253','2024-07-29 15:42:17'),(5,'74:27:ea:01:01:fb','172.64.8.5','2024-07-31 21:54:50'),(5,'74:27:ea:01:02:a8','172.64.13.222','2024-07-31 21:50:47'),(5,'74:27:ea:01:02:ef','172.64.13.155','2024-07-31 21:53:16'),(5,'74:27:ea:01:07:02','172.64.15.89','2024-07-31 21:50:10'),(5,'74:27:ea:35:a6:f4','172.64.8.2','2024-07-31 21:55:32'),(5,'74:27:ea:3a:8a:97','172.64.9.252','2024-07-31 21:51:28'),(5,'74:d4:35:87:0b:9e','169.254.169.254','2024-07-31 21:54:34'),(5,'74:d4:35:87:0b:bd','169.254.169.254','2024-07-31 21:55:29'),(5,'74:d4:35:87:43:23','169.254.169.254','2024-07-31 17:23:23'),(5,'74:d4:35:88:05:c8','172.64.13.66','2024-07-31 21:51:11'),(5,'74:d4:35:88:05:ea','169.254.169.254','2024-07-31 17:06:01'),(5,'74:d4:35:88:05:fa','169.254.169.254','2024-07-31 21:55:34'),(5,'74:d4:35:88:11:1f','169.254.169.254','2024-07-31 21:54:13'),(5,'74:d4:35:88:11:25','172.64.10.42','2024-07-31 18:33:18'),(5,'74:d4:35:88:13:b0','169.254.169.254','2024-07-31 21:55:35'),(5,'74:d4:35:89:06:13','169.254.169.254','2024-07-31 16:35:05'),(5,'7c:83:34:b0:95:bc','172.64.10.167','2024-07-31 21:56:00'),(5,'80:56:f2:e4:16:d1','172.64.8.13','2024-07-29 17:10:31'),(5,'80:ce:62:3d:27:ea','169.254.169.254','2024-07-31 21:55:56'),(5,'86:9b:d3:d9:53:0c','172.64.8.2','2024-07-31 18:52:59'),(5,'86:f0:83:22:93:9d','172.64.8.1','2024-07-31 17:58:25'),(5,'88:40:3b:7f:d3:61','172.64.13.71','2024-07-29 17:35:46'),(5,'8c:89:a5:52:78:a3','172.64.12.208','2024-07-31 21:53:12'),(5,'8c:89:a5:57:2f:8b','169.254.192.78','2024-07-29 17:45:55'),(5,'8c:89:a5:63:a0:8c','172.64.15.89','2024-07-31 21:47:45'),(5,'8c:89:a5:e2:e8:d7','169.254.169.254','2024-07-31 21:55:09'),(5,'8c:c6:81:b4:d3:4a','172.64.13.253','2024-07-29 15:18:31'),(5,'8e:87:3a:17:a8:85','172.64.8.2','2024-07-29 17:28:49'),(5,'90:2b:34:1e:27:6f','172.64.9.95','2024-07-24 20:47:19'),(5,'90:2b:34:1f:af:f4','172.64.10.150','2024-07-31 21:46:43'),(5,'90:2b:34:1f:b2:51','172.64.12.203','2024-07-31 21:52:08'),(5,'90:2b:34:a1:24:5a','172.64.10.42','2024-07-31 18:32:46'),(5,'94:de:80:7c:48:f2','169.254.169.254','2024-07-31 16:53:35'),(5,'94:de:80:7c:48:f4','169.254.169.254','2024-07-31 21:55:17'),(5,'94:de:80:7f:4f:4f','169.254.169.254','2024-07-29 20:40:01'),(5,'9a:9a:61:9e:6f:b2','172.64.8.2','2024-07-29 18:57:18'),(5,'9a:9a:61:9f:6f:b2','172.64.8.2','2024-07-29 15:55:38'),(5,'9c:6b:00:20:a2:97','172.64.9.252','2024-07-31 21:50:33'),(5,'9c:a2:f4:68:70:e2','172.64.11.148','2024-07-31 21:55:59'),(5,'aa:5e:fa:71:b6:b5','172.64.8.1','2024-07-31 18:28:37'),(5,'ac:f1:df:a1:31:78','172.64.8.1','2024-07-29 20:21:24'),(5,'ac:f1:df:a1:75:98','172.64.8.1','2024-07-31 21:51:29'),(5,'b0:6e:bf:35:7a:93','169.254.169.254','2024-07-31 21:54:44'),(5,'b0:6e:bf:35:be:38','172.64.8.171','2024-07-31 21:53:53'),(5,'b2:7e:90:12:80:76','172.64.8.1','2024-07-29 16:57:18'),(5,'b4:2e:99:10:66:6d','172.64.15.89','2024-07-31 21:22:21'),(5,'b4:2e:99:35:9e:ae','172.64.9.252','2024-07-31 21:49:46'),(5,'b4:2e:99:c0:bb:a9','172.64.13.251','2024-07-31 16:21:00'),(5,'b4:2e:99:c0:bb:b8','172.64.9.252','2024-07-31 21:50:54'),(5,'b6:a3:a4:a2:14:54','172.64.13.253','2024-07-29 15:42:18'),(5,'bc:ae:c5:b2:a1:59','169.254.169.254','2024-07-31 21:55:39'),(5,'bc:ee:7b:8c:7f:dc','169.254.169.254','2024-07-31 16:48:51'),(5,'c2:0c:4d:60:7a:31','172.64.8.1','2024-07-31 17:34:41'),(5,'c8:60:00:be:47:39','172.64.14.113','2024-07-31 16:22:22'),(5,'c8:9c:1d:6d:bd:bc','172.64.9.171','2024-07-31 21:52:32'),(5,'c8:9c:1d:6e:5f:ce','172.64.15.180','2024-07-31 21:48:48'),(5,'c8:9c:1d:6e:61:ad','172.64.8.129','2024-07-31 21:44:20'),(5,'c8:9c:1d:6e:66:67','172.64.8.2','2024-07-31 21:49:10'),(5,'c8:9c:1d:6e:66:77','172.64.10.44','2024-07-31 21:41:57'),(5,'c8:9c:1d:6e:66:79','172.64.8.2','2024-07-31 20:33:34'),(5,'c8:9c:1d:6e:66:81','172.64.8.2','2024-07-31 18:29:13'),(5,'c8:9c:1d:6e:6b:38','172.64.8.2','2024-07-31 17:40:39'),(5,'cc:ef:48:5e:69:5d','172.64.12.119','2024-07-31 21:48:43'),(5,'cc:ef:48:5e:69:65','172.64.8.2','2024-07-29 17:54:32'),(5,'cc:ef:48:5e:69:69','172.64.8.2','2024-07-31 21:54:26'),(5,'ce:46:00:d6:e0:77','172.64.8.1','2024-07-29 18:49:49'),(5,'e0:2f:6d:60:91:04','172.64.8.2','2024-07-31 21:43:29'),(5,'e0:2f:6d:60:91:0c','172.64.8.2','2024-07-31 21:44:11'),(5,'e0:2f:6d:60:92:4f','172.64.8.2','2024-07-31 21:50:38'),(5,'e0:2f:6d:61:36:9a','172.64.8.2','2024-07-31 21:48:09'),(5,'e0:2f:6d:61:cc:6c','172.64.8.2','2024-07-31 21:52:16'),(5,'e0:2f:6d:61:cc:c8','172.64.8.2','2024-07-31 19:42:40'),(5,'e0:2f:6d:61:cd:02','172.64.8.2','2024-07-31 21:41:46'),(5,'e0:2f:6d:63:46:3f','172.64.8.2','2024-07-31 21:34:28'),(5,'e0:2f:6d:63:46:70','172.64.8.2','2024-07-31 20:54:08'),(5,'e0:2f:6d:63:46:7d','172.64.8.169','2024-07-31 21:53:51'),(5,'e0:2f:6d:63:46:7f','172.64.8.175','2024-07-31 21:49:57'),(5,'e2:3e:92:72:39:e0','172.64.13.253','2024-07-29 18:44:50'),(5,'e2:3e:92:73:39:e0','172.64.8.2','2024-07-29 17:57:01'),(5,'e4:aa:ea:c7:3c:13','172.64.8.1','2024-07-29 16:45:48'),(5,'e6:44:f3:95:00:08','172.64.8.2','2024-07-31 17:58:12'),(5,'e8:b7:48:16:53:73','172.64.8.2','2024-07-31 21:36:31'),(5,'ec:e1:a9:cc:29:ff','172.64.8.2','2024-07-31 21:42:37'),(5,'ec:e1:a9:cc:2a:21','172.64.8.2','2024-07-31 18:45:24'),(5,'ec:e1:a9:cc:4f:3b','172.64.8.2','2024-07-31 20:48:37'),(5,'ec:e1:a9:cc:4f:e6','172.64.8.2','2024-07-31 19:19:24'),(5,'ec:e1:a9:cc:52:5e','172.64.12.254','2024-07-31 21:53:40'),(5,'ee:56:ed:55:53:e3','172.64.13.253','2024-07-31 18:07:59'),(5,'ee:c0:13:b1:ff:d9','172.64.14.99','2024-07-31 21:53:24'),(5,'f2:28:31:20:46:f0','172.64.13.253','2024-07-31 17:13:13'),(5,'f2:fa:b8:8c:a9:4e','172.64.13.253','2024-07-29 17:57:25'),(5,'f4:6d:04:07:4e:55','169.254.169.254','2024-07-31 21:54:11'),(5,'f4:6d:04:2e:69:86','172.64.8.1','2024-07-31 21:55:45'),(5,'f4:6d:04:34:8a:64','172.64.9.252','2024-07-31 21:50:07'),(5,'f4:6d:04:66:5d:d8','172.64.8.2','2024-07-31 21:25:39'),(5,'f6:5d:75:89:f1:65','172.64.8.1','2024-07-31 16:47:37'),(5,'f8:54:f6:58:fe:20','172.64.8.2','2024-07-29 20:14:53');
/*!40000 ALTER TABLE `pkt_reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkt_record`
--

DROP TABLE IF EXISTS `pkt_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkt_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=629433 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkt_record`
--

LOCK TABLES `pkt_record` WRITE;
/*!40000 ALTER TABLE `pkt_record` DISABLE KEYS */;
INSERT INTO `pkt_record` VALUES (629404,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.14.156\", \"hwsrc\": \"50:e5:49:3e:b9:f2\"}','2024-07-31 21:55:53'),(629405,1,'{\"type\": 3, \"pdst\": \"172.64.8.12\", \"psrc\": \"172.64.8.12\", \"hwsrc\": \"00:17:c8:8b:7c:f5\"}','2024-07-31 21:55:53'),(629406,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.15.244\", \"hwsrc\": \"04:7c:16:48:e7:20\"}','2024-07-31 21:55:53'),(629407,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:53'),(629408,1,'{\"type\": 3, \"pdst\": \"172.64.8.40\", \"psrc\": \"172.64.8.10\", \"hwsrc\": \"00:22:15:98:44:a0\"}','2024-07-31 21:55:53'),(629409,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.14.156\", \"hwsrc\": \"50:e5:49:3e:b9:f2\"}','2024-07-31 21:55:54'),(629410,1,'{\"type\": 3, \"pdst\": \"172.64.8.136\", \"psrc\": \"172.64.8.1\", \"hwsrc\": \"00:1b:21:93:be:d3\"}','2024-07-31 21:55:54'),(629411,1,'{\"type\": 3, \"pdst\": \"172.64.8.12\", \"psrc\": \"172.64.8.12\", \"hwsrc\": \"00:17:c8:8b:7c:f5\"}','2024-07-31 21:55:54'),(629412,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.15.244\", \"hwsrc\": \"04:7c:16:48:e7:20\"}','2024-07-31 21:55:54'),(629413,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.14.134\", \"hwsrc\": \"80:ce:62:3d:27:ea\"}','2024-07-31 21:55:54'),(629414,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:54'),(629415,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.14.134\", \"hwsrc\": \"80:ce:62:3d:27:ea\"}','2024-07-31 21:55:55'),(629416,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:55'),(629417,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.14.134\", \"hwsrc\": \"80:ce:62:3d:27:ea\"}','2024-07-31 21:55:56'),(629418,1,'{\"type\": 3, \"pdst\": \"172.64.8.40\", \"psrc\": \"172.64.8.1\", \"hwsrc\": \"00:1b:21:93:be:d3\"}','2024-07-31 21:55:56'),(629419,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:57'),(629420,1,'{\"type\": 3, \"pdst\": \"172.64.8.40\", \"psrc\": \"172.64.8.1\", \"hwsrc\": \"00:1b:21:93:be:d3\"}','2024-07-31 21:55:57'),(629421,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:58'),(629422,1,'{\"type\": 3, \"pdst\": \"172.64.13.222\", \"psrc\": \"172.64.10.219\", \"hwsrc\": \"30:9c:23:45:11:c5\"}','2024-07-31 21:55:58'),(629423,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.8.229\", \"hwsrc\": \"50:e5:49:3e:ba:34\"}','2024-07-31 21:55:58'),(629424,1,'{\"type\": 3, \"pdst\": \"172.64.8.40\", \"psrc\": \"172.64.8.1\", \"hwsrc\": \"00:1b:21:93:be:d3\"}','2024-07-31 21:55:58'),(629425,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:55:59'),(629426,1,'{\"type\": 3, \"pdst\": \"172.64.13.222\", \"psrc\": \"172.64.10.219\", \"hwsrc\": \"30:9c:23:45:11:c5\"}','2024-07-31 21:55:59'),(629427,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.8.229\", \"hwsrc\": \"50:e5:49:3e:ba:34\"}','2024-07-31 21:55:59'),(629428,1,'{\"type\": 3, \"pdst\": \"172.64.11.148\", \"psrc\": \"172.64.14.100\", \"hwsrc\": \"9c:a2:f4:68:70:e2\"}','2024-07-31 21:55:59'),(629429,1,'{\"type\": 3, \"pdst\": \"172.64.10.167\", \"psrc\": \"172.64.10.228\", \"hwsrc\": \"7c:83:34:b0:95:bc\"}','2024-07-31 21:56:00'),(629430,1,'{\"type\": 3, \"pdst\": \"172.64.8.1\", \"psrc\": \"172.64.14.113\", \"hwsrc\": \"08:26:ae:38:c4:ad\"}','2024-07-31 21:56:00'),(629431,1,'{\"type\": 3, \"pdst\": \"172.64.13.222\", \"psrc\": \"172.64.10.219\", \"hwsrc\": \"30:9c:23:45:11:c5\"}','2024-07-31 21:56:00'),(629432,1,'{\"type\": 3, \"pdst\": \"169.254.169.254\", \"psrc\": \"172.64.8.229\", \"hwsrc\": \"50:e5:49:3e:ba:34\"}','2024-07-31 21:56:00');
/*!40000 ALTER TABLE `pkt_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-21 17:09:42