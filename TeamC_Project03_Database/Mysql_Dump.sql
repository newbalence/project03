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
-- Table structure for table `addtopping`
--

DROP TABLE IF EXISTS `addtopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addtopping` (
  `addToppingNo` int NOT NULL AUTO_INCREMENT COMMENT '異붽? ?듭뀡 踰덊샇',
  `addToppingName` varchar(255) NOT NULL COMMENT '異붽? ?좏븨?대쫫',
  `addToppingPay` varchar(255) NOT NULL COMMENT '異붽? ?좏븨 媛?꺽',
  `addToppingType` int NOT NULL COMMENT '1: ?좏븨\n2: ?뚯뒪',
  PRIMARY KEY (`addToppingNo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtopping`
--

LOCK TABLES `addtopping` WRITE;
/*!40000 ALTER TABLE `addtopping` DISABLE KEYS */;
INSERT INTO `addtopping` VALUES (1,'패티','5000',1),(2,'치즈','3000',1),(3,'베이컨','3000',1),(4,'치킨','5000',1),(5,'새우','5000',1),(6,'해시브라운','3000',1),(7,'통모짜','3000',1),(8,'BBQ 소스','500',2),(9,'치폴레 소스','500',2),(10,'스리라차','500',2),(11,'랜치소스','500',2),(12,'머스타드','500',2),(13,'타바스코','3000',2);
/*!40000 ALTER TABLE `addtopping` ENABLE KEYS */;
UNLOCK TABLES;

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
  `burgerType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`burgerNum`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `burger`
--

LOCK TABLES `burger` WRITE;
/*!40000 ALTER TABLE `burger` DISABLE KEYS */;
INSERT INTO `burger` VALUES (1,'베이컨 더블치즈 버거','6400','bacon.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(2,'불고기 버거','7100','bulgogi.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(3,'콰트로 치즈 버거','7900','cheese.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(4,'치킨 버거','6400','chiken.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(5,'클래식 버거','6900','gibon.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(6,'주니어 버거','5300','kid.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(7,'슈림프 버거','6300','shrimp.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1);
/*!40000 ALTER TABLE `burger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deltopping`
--

DROP TABLE IF EXISTS `deltopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deltopping` (
  `delToppingNo` int NOT NULL AUTO_INCREMENT COMMENT '?쒖쇅 ?듭뀡 踰덊샇',
  `delToppingName` varchar(255) NOT NULL COMMENT '?쒖쇅 ?좏븨?대쫫',
  `delToppingType` int NOT NULL COMMENT '1: ?좏븨\n2: ?뚯뒪',
  PRIMARY KEY (`delToppingNo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deltopping`
--

LOCK TABLES `deltopping` WRITE;
/*!40000 ALTER TABLE `deltopping` DISABLE KEYS */;
INSERT INTO `deltopping` VALUES (1,'토마토',1),(2,'양파',1),(3,'베이컨',1),(4,'치즈',1),(5,'피클',1),(6,'ICE',3),(7,'HOT',3),(8,'얼음많이',3),(9,'얼음조금',3),(10,'마요네즈',2),(11,'케첩',2),(12,'머스타드',2),(13,'BBQ 소스',2),(14,'스위트칠리',2),(15,'랜치소스',2);
/*!40000 ALTER TABLE `deltopping` ENABLE KEYS */;
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
  `dessertType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`dessertNum`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dessert`
--

LOCK TABLES `dessert` WRITE;
/*!40000 ALTER TABLE `dessert` DISABLE KEYS */;
INSERT INTO `dessert` VALUES (7,'치즈케이크','5400','Ccake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(8,'초코 츄러스','4500','churros.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(9,'오렌지 케이크','7000','Ocake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(10,'딸기 케이크','6000','Scake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(11,'소프트 아이스크림','2000','softice.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(12,'티라미수 케이크','7000','Tcake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1);
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
  `drinkType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?',
  PRIMARY KEY (`drinkNum`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drink`
--

LOCK TABLES `drink` WRITE;
/*!40000 ALTER TABLE `drink` DISABLE KEYS */;
INSERT INTO `drink` VALUES (10,'칠성사이다','3000','cider.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(11,'코카콜라','3000','coca.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(12,'코카콜라제로','3000','cocazero.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(13,'닥터페퍼','3000','Drpeper.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(14,'닥터페퍼제로','3000','Drprperzero.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(15,'펩시콜라','3000','pepsi.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(16,'펩시콜라제로 망고','3000','pepsimango.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(17,'펩시콜라제로 라임','3000','pepsizero.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(18,'스프라이트','3000','sprite.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1);
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
  `etcType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`etcNum`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etc`
--

LOCK TABLES `etc` WRITE;
/*!40000 ALTER TABLE `etc` DISABLE KEYS */;
INSERT INTO `etc` VALUES (6,'딸기 쉐이크','3500','berryshake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(7,'초코 쉐이크','3500','choco_shake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(8,'아메리카노','3500','coffee.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(9,'커피 쉐이크','3500','coffee_shake.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(10,'카페라떼','3500','late.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(11,'밀크티','3500','milktea.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1);
/*!40000 ALTER TABLE `etc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionlist`
--

DROP TABLE IF EXISTS `optionlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optionlist` (
  `optionListNo` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  PRIMARY KEY (`optionListNo`),
  KEY `optionlist_users_FK` (`phone`),
  CONSTRAINT `optionlist_users_FK` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionlist`
--

LOCK TABLES `optionlist` WRITE;
/*!40000 ALTER TABLE `optionlist` DISABLE KEYS */;
INSERT INTO `optionlist` VALUES (1,'01011111111'),(2,'01011111111'),(3,'01011111111'),(4,'01011111111'),(5,'01011111111'),(6,'01011111111'),(7,'01011111111'),(8,'01011111111'),(9,'01011111111'),(10,'01011111111'),(11,'01011111111'),(12,'01011111111'),(13,'01011111111'),(14,'01011111111'),(15,'01011111111'),(16,'01011111111'),(17,'01011111111'),(18,'01011111111'),(19,'01011111111'),(20,'01011111111');
/*!40000 ALTER TABLE `optionlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `optionsNum` int NOT NULL AUTO_INCREMENT COMMENT '?듭뀡踰덊샇',
  `optionListNo` int NOT NULL,
  `delToppingNo` int DEFAULT NULL COMMENT '?쒖쇅 ?듭뀡 踰덊샇',
  `addToppingNo` int DEFAULT NULL COMMENT '異붽? ?듭뀡 踰덊샇',
  `optionType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?\n',
  PRIMARY KEY (`optionsNum`),
  KEY `addToppingNo` (`addToppingNo`),
  KEY `delToppingNo` (`delToppingNo`),
  KEY `optionListNo` (`optionListNo`),
  CONSTRAINT `options_ibfk_1` FOREIGN KEY (`addToppingNo`) REFERENCES `addtopping` (`addToppingNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `options_ibfk_2` FOREIGN KEY (`delToppingNo`) REFERENCES `deltopping` (`delToppingNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `options_ibfk_3` FOREIGN KEY (`optionListNo`) REFERENCES `optionlist` (`optionListNo`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,1,NULL,1,1),(2,1,NULL,8,1),(3,2,NULL,1,1),(4,2,2,NULL,2),(5,3,NULL,1,1),(6,3,1,NULL,2),(11,11,8,NULL,3),(12,12,NULL,1,1),(13,12,NULL,13,1),(14,13,NULL,1,1),(15,13,NULL,9,1),(16,13,1,NULL,2),(17,13,13,NULL,2),(18,17,8,NULL,3);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderlist` (
  `orderListNo` int NOT NULL AUTO_INCREMENT COMMENT '二쇰Ц紐⑸줉 踰덊샇',
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  PRIMARY KEY (`orderListNo`),
  KEY `orderlist_users_FK` (`phone`),
  CONSTRAINT `orderlist_users_FK` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlist`
--

LOCK TABLES `orderlist` WRITE;
/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` VALUES (1,'01011111111'),(2,'01011111111'),(3,'01011111111'),(4,'01011111111'),(5,'01011111111'),(6,'01011111111'),(7,'01011111111'),(8,'01011111111'),(9,'01011111111');
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderNum` int NOT NULL AUTO_INCREMENT COMMENT '?λ컮援щ땲踰덊샇',
  `orderListNo` int DEFAULT NULL COMMENT '二쇰Ц紐⑸줉 踰덊샇',
  `burgerNum` int DEFAULT NULL COMMENT '踰꾧굅 踰덊샇',
  `optionListNo` int DEFAULT NULL,
  `drinkNum` int DEFAULT NULL COMMENT '?뚮즺踰덊샇',
  `sideNum` int DEFAULT NULL COMMENT '?ъ씠?쒕쾲?',
  `dessertNum` int DEFAULT NULL COMMENT '?붿??몃쾲?',
  `etcNum` int DEFAULT NULL COMMENT '湲고?踰덊샇',
  `orderType` int NOT NULL DEFAULT '1' COMMENT '0 : \n1 :\n2 : ??젣 ',
  `quantity` varchar(255) NOT NULL COMMENT '?섎웾',
  `allPay` varchar(255) NOT NULL COMMENT '珥앷?寃',
  PRIMARY KEY (`orderNum`),
  KEY `burgerNum` (`burgerNum`),
  KEY `dessertNum` (`dessertNum`),
  KEY `drinkNum` (`drinkNum`),
  KEY `etcNum` (`etcNum`),
  KEY `optionListNo` (`optionListNo`),
  KEY `orderListNo` (`orderListNo`),
  KEY `sideNum` (`sideNum`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`burgerNum`) REFERENCES `burger` (`burgerNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`dessertNum`) REFERENCES `dessert` (`dessertNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`drinkNum`) REFERENCES `drink` (`drinkNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`etcNum`) REFERENCES `etc` (`etcNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`optionListNo`) REFERENCES `optionlist` (`optionListNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`orderListNo`) REFERENCES `orderlist` (`orderListNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_7` FOREIGN KEY (`sideNum`) REFERENCES `side` (`sideNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,2,2,NULL,NULL,NULL,NULL,1,'1','12100'),(2,4,2,3,NULL,NULL,NULL,NULL,1,'1','12100'),(3,4,NULL,4,11,11,NULL,NULL,1,'1','3000'),(4,5,2,5,NULL,NULL,NULL,NULL,1,'1','7100'),(5,8,NULL,11,10,10,NULL,NULL,1,'1','3000'),(6,8,2,12,NULL,NULL,NULL,NULL,1,'1','15100'),(7,9,2,13,NULL,NULL,NULL,NULL,1,'1','12600'),(8,9,NULL,14,NULL,NULL,8,NULL,1,'1','4500'),(9,9,NULL,16,NULL,NULL,NULL,8,1,'1','3500');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
  `money` varchar(255) NOT NULL COMMENT '寃곗젣湲덉븸',
  `payType` int NOT NULL DEFAULT '1' COMMENT '寃곗젣 ?깃났 ?ㅽ뙣 ?뺤씤\n0: 寃곗젣 ?깃났\n1: 寃곗젣 ??린\n2: 寃곗젣 ?ㅽ뙣',
  PRIMARY KEY (`payNum`),
  KEY `phone` (`phone`),
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
  `point` int NOT NULL,
  KEY `point_users_FK` (`phone`),
  CONSTRAINT `point_users_FK` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point`
--

LOCK TABLES `point` WRITE;
/*!40000 ALTER TABLE `point` DISABLE KEYS */;
INSERT INTO `point` VALUES ('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000),('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000),('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000),('01012345678',300),('01012345678',600),('01012345678',300),('01012345678',-2000),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1210),('01011111111',1510),('01011111111',1510),('01011111111',1510),('01011111111',0),('01011111111',-6290),('01011111111',1060);
/*!40000 ALTER TABLE `point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping` (
  `shoppingNum` int NOT NULL AUTO_INCREMENT COMMENT '?λ컮援щ땲踰덊샇',
  `shoppingListNo` int NOT NULL COMMENT '?λ컮援щ땲紐⑸줉 踰덊샇',
  `burgerNum` int DEFAULT NULL COMMENT '踰꾧굅 踰덊샇',
  `optionListNo` int DEFAULT NULL,
  `drinkNum` int DEFAULT NULL COMMENT '?뚮즺踰덊샇',
  `sideNum` int DEFAULT NULL COMMENT '?ъ씠?쒕쾲?',
  `dessertNum` int DEFAULT NULL COMMENT '?붿??몃쾲?',
  `etcNum` int DEFAULT NULL COMMENT '湲고?踰덊샇',
  `quantity` varchar(255) NOT NULL COMMENT '?섎웾',
  `allPay` varchar(255) NOT NULL COMMENT '珥앷?寃',
  PRIMARY KEY (`shoppingNum`),
  KEY `burgerNum` (`burgerNum`),
  KEY `dessertNum` (`dessertNum`),
  KEY `drinkNum` (`drinkNum`),
  KEY `etcNum` (`etcNum`),
  KEY `optionListNo` (`optionListNo`),
  KEY `shoppingListNo` (`shoppingListNo`),
  KEY `sideNum` (`sideNum`),
  CONSTRAINT `shopping_ibfk_1` FOREIGN KEY (`burgerNum`) REFERENCES `burger` (`burgerNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_2` FOREIGN KEY (`dessertNum`) REFERENCES `dessert` (`dessertNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_3` FOREIGN KEY (`drinkNum`) REFERENCES `drink` (`drinkNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_4` FOREIGN KEY (`etcNum`) REFERENCES `etc` (`etcNum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_5` FOREIGN KEY (`optionListNo`) REFERENCES `optionlist` (`optionListNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_6` FOREIGN KEY (`shoppingListNo`) REFERENCES `shoppinglist` (`shoppingListNo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shopping_ibfk_7` FOREIGN KEY (`sideNum`) REFERENCES `side` (`sideNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppinglist`
--

DROP TABLE IF EXISTS `shoppinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppinglist` (
  `shoppingListNo` int NOT NULL AUTO_INCREMENT COMMENT '?λ컮援щ땲紐⑸줉 踰덊샇',
  `phone` varchar(255) NOT NULL COMMENT '?뚯썝?꾪솕踰덊샇',
  PRIMARY KEY (`shoppingListNo`),
  UNIQUE KEY `shoppinglist_unique` (`phone`),
  CONSTRAINT `shoppinglist_ibfk_1` FOREIGN KEY (`phone`) REFERENCES `users` (`phone`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppinglist`
--

LOCK TABLES `shoppinglist` WRITE;
/*!40000 ALTER TABLE `shoppinglist` DISABLE KEYS */;
INSERT INTO `shoppinglist` VALUES (6,'01011111111'),(10,'01012345678'),(15,'01064423446');
/*!40000 ALTER TABLE `shoppinglist` ENABLE KEYS */;
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
  `sideType` int NOT NULL DEFAULT '1' COMMENT '0 : ?먮ℓ ?덉젙\n1 : ?먮ℓ以?2 : ?먮ℓ以묒?',
  PRIMARY KEY (`sideNum`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `side`
--

LOCK TABLES `side` WRITE;
/*!40000 ALTER TABLE `side` DISABLE KEYS */;
INSERT INTO `side` VALUES (9,'치즈 프렌치 프라이','2400','cheeseFrench.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(10,'코울슬로','2100','Coleslaw.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(11,'프렌치프라이','2100','french.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(12,'해쉬브라운','1800','hashbrown.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(13,'너겟','2000','neget.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(14,'치즈스틱','1200','stic.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1),(15,'스낵랩','4500','wrap.png','D:\\team\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\project_face\\menu',1);
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
INSERT INTO `users` VALUES ('01000000000','관리자','admin','0000.00.00',0,'2025-05-02 03:09:12',NULL,NULL),('01011111111','홍길동','hong','2023.6.19',1,'2025-05-02 03:29:07',NULL,NULL),('01012345678','이도경','lee','1999.12.18',0,'2025-05-02 03:08:45',NULL,NULL),('01021930843','김은솔','na','1977.10.15',1,'2025-05-02 06:32:18',NULL,NULL),('01022222222','이대호','big','1982.06.17',1,'2025-05-02 03:08:21',NULL,NULL),('01064423446','테스터','asdf','1977.4.18',1,'2025-05-02 03:32:09',NULL,NULL);
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

-- Dump completed on 2025-05-09 13:41:21
