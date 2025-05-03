-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: project03
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `burger`
--

DROP TABLE IF EXISTS `burger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `burger` (
  `burgerNum` int NOT NULL AUTO_INCREMENT COMMENT '踰꾧굅 踰덊샇',
  `burgerName` varchar(255) NOT NULL COMMENT '踰꾧굅?대쫫',
  `burgerPay` varchar(255) NOT NULL COMMENT '踰꾧굅 媛?꺽',
  `burger_img_name` varchar(255) DEFAULT NULL COMMENT '踰꾧굅 ?대?吏??대쫫',
  `burger_img_location` varchar(255) DEFAULT NULL COMMENT '踰꾧굅 ?대?吏???옣?μ냼',
  `burgerType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`burgerNum`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger`
--

LOCK TABLES `burger` WRITE;
/*!40000 ALTER TABLE `burger` DISABLE KEYS */;
INSERT INTO `burger` VALUES (1,'클래식버거','6000',NULL,NULL,'1'),(2,'치즈버거','7000',NULL,NULL,'1'),(3,'베이컨버거','9000',NULL,NULL,'1'),(4,'불고기버거','8000',NULL,NULL,'1'),(5,'새우버거','7000',NULL,NULL,'1'),(6,'치킨버거','7000',NULL,NULL,'1');
/*!40000 ALTER TABLE `burger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dessert`
--

DROP TABLE IF EXISTS `dessert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dessert` (
  `dessertNum` int NOT NULL AUTO_INCREMENT COMMENT '?붿??몃쾲?',
  `dessertName` varchar(255) NOT NULL COMMENT '?붿??몄씠由',
  `dessertPay` varchar(255) NOT NULL COMMENT '?붿??멸?寃',
  `dessert_img_name` varchar(255) DEFAULT NULL COMMENT '?붿????대?吏??대쫫',
  `dessert_img_location` varchar(255) DEFAULT NULL COMMENT '?붿????대?吏???옣?μ냼',
  `dessertType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`dessertNum`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dessert`
--

LOCK TABLES `dessert` WRITE;
/*!40000 ALTER TABLE `dessert` DISABLE KEYS */;
INSERT INTO `dessert` VALUES (1,'초코츄러스','3000',NULL,NULL,'1'),(2,'소프트아이스크림','2000',NULL,NULL,'1'),(3,'딸기케이크','6000',NULL,NULL,'1'),(4,'티라미수','7000',NULL,NULL,'1'),(5,'오렌지케이크','7000',NULL,NULL,'1'),(6,'치즈케이크','4000',NULL,NULL,'1');
/*!40000 ALTER TABLE `dessert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drink`
--

DROP TABLE IF EXISTS `drink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drink` (
  `drinkNum` int NOT NULL AUTO_INCREMENT COMMENT '?뚮즺踰덊샇',
  `drinkName` varchar(255) NOT NULL COMMENT '?뚮즺?대쫫',
  `drinkPay` varchar(255) NOT NULL COMMENT '?뚮즺 媛?꺽\n',
  `drink_img_name` varchar(255) DEFAULT NULL COMMENT '?뚮즺 ?대?吏??대쫫',
  `drink_img_location` varchar(255) DEFAULT NULL COMMENT '?뚮즺 ?대?吏???옣?μ냼',
  `drinkType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?',
  PRIMARY KEY (`drinkNum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO `drink` VALUES (1,'코카콜라','2500',NULL,NULL,'1'),(2,'코카콜라제로','2500',NULL,NULL,'1'),(3,'사이다','2500',NULL,NULL,'1'),(4,'사이다제로','2500',NULL,NULL,'1'),(5,'펩시','2500',NULL,NULL,'1'),(6,'펩시제로','2500',NULL,NULL,'1'),(7,'펩시망고','2500',NULL,NULL,'1'),(8,'닥터페퍼','2500',NULL,NULL,'1'),(9,'닥터페퍼제로','2500',NULL,NULL,'1');
/*!40000 ALTER TABLE `drink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etc`
--

DROP TABLE IF EXISTS `etc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etc` (
  `etcNum` int NOT NULL AUTO_INCREMENT COMMENT '湲고?踰덊샇',
  `etcName` varchar(255) NOT NULL COMMENT '湲고??대쫫',
  `etcPay` varchar(255) NOT NULL COMMENT '湲고?媛?꺽',
  `etc_img_name` varchar(255) DEFAULT NULL COMMENT '湲고? ?대?吏??대쫫',
  `etc_img_location` varchar(255) DEFAULT NULL COMMENT '湲고? ?대?吏???옣?μ냼',
  `etcType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`etcNum`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc`
--

LOCK TABLES `etc` WRITE;
/*!40000 ALTER TABLE `etc` DISABLE KEYS */;
INSERT INTO `etc` VALUES (1,'딸기쉐이크','3500',NULL,NULL,'1'),(2,'초코쉐이크','3500',NULL,NULL,'1'),(3,'커피쉐이크','3500',NULL,NULL,'1'),(4,'아메리카노','3500',NULL,NULL,'1'),(5,'라떼','3500',NULL,NULL,'1');
/*!40000 ALTER TABLE `etc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facedata`
--

DROP TABLE IF EXISTS `facedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facedata` (
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  `faceData` varchar(255) NOT NULL COMMENT '?쇨뎬?뺣낫',
  PRIMARY KEY (`phone`),
  CONSTRAINT `facedata_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facedata`
--

LOCK TABLES `facedata` WRITE;
/*!40000 ALTER TABLE `facedata` DISABLE KEYS */;
/*!40000 ALTER TABLE `facedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `middleorder`
--

DROP TABLE IF EXISTS `middleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `middleorder` (
  `middleOrder` int NOT NULL,
  `shoppingNum` int NOT NULL COMMENT '?λ컮援щ땲踰덊샇',
  `receiptNum` int NOT NULL COMMENT '二쇰Ц?댁뿭踰덊샇',
  KEY `receiptNum` (`receiptNum`),
  KEY `shoppingNum` (`shoppingNum`),
  CONSTRAINT `middleorder_ibfk_1` FOREIGN KEY (`receiptNum`) REFERENCES `receipt` (`receiptNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `middleorder_ibfk_2` FOREIGN KEY (`shoppingNum`) REFERENCES `shopping` (`shoppingNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `middleorder`
--

LOCK TABLES `middleorder` WRITE;
/*!40000 ALTER TABLE `middleorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `middleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `optionsNum` int NOT NULL AUTO_INCREMENT COMMENT '?듭뀡踰덊샇',
  `burgerNum` int DEFAULT NULL COMMENT '踰꾧굅 踰덊샇',
  `sideNum` int DEFAULT NULL COMMENT '?ъ씠?쒕쾲?',
  `drinkNum` int DEFAULT NULL COMMENT '?뚮즺踰덊샇',
  `optionType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`optionsNum`),
  KEY `burgerNum` (`burgerNum`),
  KEY `drinkNum` (`drinkNum`),
  KEY `sideNum` (`sideNum`),
  CONSTRAINT `options_ibfk_1` FOREIGN KEY (`burgerNum`) REFERENCES `burger` (`burgerNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `options_ibfk_2` FOREIGN KEY (`drinkNum`) REFERENCES `drink` (`drinkNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `options_ibfk_3` FOREIGN KEY (`sideNum`) REFERENCES `side` (`sideNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `payNum` int NOT NULL AUTO_INCREMENT COMMENT '寃곗젣踰덊샇',
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  `receiptNum` int NOT NULL COMMENT '二쇰Ц?댁뿭踰덊샇',
  `money` varchar(255) NOT NULL COMMENT '寃곗젣湲덉븸',
  `payType` int NOT NULL DEFAULT '1' COMMENT '寃곗젣 ?깃났 ?ㅽ뙣 ?뺤씤\n0: 寃곗젣 ?깃났\n1: 寃곗젣 ??린\n2: 寃곗젣 ?ㅽ뙣',
  PRIMARY KEY (`payNum`),
  KEY `receiptNum` (`receiptNum`),
  KEY `phone` (`phone`),
  CONSTRAINT `pay_ibfk_1` FOREIGN KEY (`receiptNum`) REFERENCES `receipt` (`receiptNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pay_ibfk_2` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point`
--

DROP TABLE IF EXISTS `point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point` (
  `phone` varchar(255) NOT NULL,
  `point` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point`
--

LOCK TABLES `point` WRITE;
/*!40000 ALTER TABLE `point` DISABLE KEYS */;
INSERT INTO `point` VALUES ('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000),('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000);
/*!40000 ALTER TABLE `point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `receiptNum` int NOT NULL AUTO_INCREMENT COMMENT '二쇰Ц?댁뿭踰덊샇',
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  `receiptPay` varchar(255) NOT NULL COMMENT '二쇰Ц媛?꺽',
  PRIMARY KEY (`receiptNum`),
  KEY `phone` (`phone`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping` (
  `shoppingNum` int NOT NULL AUTO_INCREMENT COMMENT '?λ컮援щ땲踰덊샇',
  `burgerNum` int DEFAULT NULL COMMENT '踰꾧굅 踰덊샇',
  `optionsNum` int DEFAULT NULL COMMENT '?듭뀡踰덊샇',
  `drinkNum` int DEFAULT NULL COMMENT '?뚮즺踰덊샇',
  `sideNum` int DEFAULT NULL COMMENT '?ъ씠?쒕쾲?',
  `dessertNum` int DEFAULT NULL COMMENT '?붿??몃쾲?',
  `etcNum` int DEFAULT NULL COMMENT '湲고?踰덊샇',
  `shoppingType` varchar(255) DEFAULT NULL COMMENT '0 : \n1 :\n2 : ??젣 ',
  `quantity` varchar(255) NOT NULL COMMENT '?섎웾',
  `allPay` varchar(255) NOT NULL COMMENT '珥앷?寃',
  PRIMARY KEY (`shoppingNum`),
  KEY `burgerNum` (`burgerNum`),
  KEY `dessertNum` (`dessertNum`),
  KEY `drinkNum` (`drinkNum`),
  KEY `etcNum` (`etcNum`),
  KEY `optionsNum` (`optionsNum`),
  KEY `sideNum` (`sideNum`),
  CONSTRAINT `shopping_ibfk_1` FOREIGN KEY (`burgerNum`) REFERENCES `burger` (`burgerNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_2` FOREIGN KEY (`dessertNum`) REFERENCES `dessert` (`dessertNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_3` FOREIGN KEY (`drinkNum`) REFERENCES `drink` (`drinkNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_4` FOREIGN KEY (`etcNum`) REFERENCES `etc` (`etcNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_5` FOREIGN KEY (`optionsNum`) REFERENCES `options` (`optionsNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_6` FOREIGN KEY (`sideNum`) REFERENCES `side` (`sideNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `side`
--

DROP TABLE IF EXISTS `side`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `side` (
  `sideNum` int NOT NULL AUTO_INCREMENT COMMENT '?ъ씠?쒕쾲?',
  `sideName` varchar(255) NOT NULL COMMENT '?ъ씠?쒖씠由',
  `sidePay` varchar(255) NOT NULL COMMENT '?ъ씠?쒓?寃',
  `side_img_name` varchar(255) DEFAULT NULL COMMENT '?ъ씠???대?吏??대쫫',
  `side_img_location` varchar(255) DEFAULT NULL COMMENT '?ъ씠???대?吏???옣?μ냼',
  `sideType` varchar(255) NOT NULL COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?',
  PRIMARY KEY (`sideNum`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `side`
--

LOCK TABLES `side` WRITE;
/*!40000 ALTER TABLE `side` DISABLE KEYS */;
INSERT INTO `side` VALUES (1,'프렌치프라이','1500',NULL,NULL,'1'),(2,'치즈프렌치프라이','2500',NULL,NULL,'1'),(3,'특제프렌치프라이','3000',NULL,NULL,'1'),(4,'해쉬브라운','2000',NULL,NULL,'1'),(5,'코울슬로','2500',NULL,NULL,'1'),(6,'치킨스낵랩','3000',NULL,NULL,'1'),(7,'너겟','2500',NULL,NULL,'1'),(8,'치즈스틱','3000',NULL,NULL,'1');
/*!40000 ALTER TABLE `side` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  `name` varchar(255) NOT NULL COMMENT '?뚯썝?대쫫',
  `nick` varchar(255) NOT NULL COMMENT '?뚯썝 ?됰꽕?',
  `birth` varchar(255) NOT NULL COMMENT '?뚯썝 ?앸뀈?붿씪\n',
  `userType` int NOT NULL DEFAULT '1' COMMENT '0: 愿?━??1: ?쇰컲?뚯썝\n2: ?덊눜?뚯썝\n3: 李⑤떒?뚯썝',
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `updateDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('01011111111','홍길동','hong','2023.6.19',1,'2025-05-02 03:29:07',NULL,NULL),('01012345678','이도경','lee','1999.12.18',1,'2025-05-02 03:08:45',NULL,NULL),('01021930843','김은솔','na','1977.10.15',1,'2025-05-02 06:32:18',NULL,NULL),('01022222222','이대호','big','1982.06.17',1,'2025-05-02 03:08:21',NULL,NULL),('01064423446','테스터','asdf','1977.4.18',1,'2025-05-02 03:32:09',NULL,NULL),('01098653247','관리자','admin','0000.00.00',0,'2025-05-02 03:09:12',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project03'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 14:27:53
