-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for osx10.18 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES
(1,'spring boot title 1','spring boot content 1'),
(2,'hello','world'),
(3,'안녕하세요 good 1','스프링 부트 good 1'),
(4,'일이','test'),
(5,'제목1','내용1 test'),
(6,'제목2','내용2'),
(7,'제목3','내용3'),
(8,'제목4','내용4'),
(9,'제목5','내용5'),
(10,'제목6','내용6'),
(11,'제목7','내용7'),
(12,'제목8','내용8'),
(13,'제목9','내용9'),
(14,'제목10','내용10'),
(15,'제목11','내용11'),
(16,'제목12','내용12'),
(17,'제목13','내용13'),
(18,'제목14','내용14'),
(19,'제목15','내용15'),
(20,'제목16','내용16'),
(21,'제목17','내용17'),
(22,'제목18','내용18'),
(23,'제목19','내용19'),
(24,'제목20','내용20'),
(25,'제목21','내용21'),
(26,'제목22','내용22'),
(27,'제목23','내용23'),
(28,'제목24','내용24'),
(29,'제목25','내용25'),
(30,'제목26','내용26'),
(31,'제목27','내용27'),
(32,'제목28','내용28'),
(33,'제목29','내용29'),
(34,'제목30','내용30'),
(35,'제목31','내용31'),
(36,'제목32','내용32'),
(37,'제목33','내용33'),
(38,'제목34','내용34'),
(39,'제목35','내용35'),
(40,'제목36','내용36'),
(41,'제목37','내용37'),
(42,'제목38','내용38'),
(43,'제목39','내용39'),
(44,'제목40','내용40'),
(45,'제목41','내용41'),
(46,'제목42','내용42'),
(47,'제목43','내용43'),
(48,'제목44','내용44'),
(49,'제목45','내용45'),
(50,'제목46','내용46'),
(51,'제목47','내용47'),
(52,'제목48','내용48'),
(53,'제목49','내용49'),
(54,'제목50','내용50'),
(55,'제목51','내용51'),
(56,'제목52','내용52'),
(57,'제목53','내용53'),
(58,'제목54','내용54'),
(59,'제목55','내용55'),
(60,'제목56','내용56'),
(61,'제목57','내용57'),
(62,'제목58','내용58'),
(63,'제목59','내용59'),
(64,'제목60','내용60'),
(65,'제목61','내용61'),
(66,'제목62','내용62'),
(67,'제목63','내용63'),
(68,'제목64','내용64'),
(69,'제목65','내용65'),
(70,'제목66','내용66'),
(71,'제목67','내용67'),
(72,'제목68','내용68'),
(73,'제목69','내용69'),
(74,'제목70','내용70'),
(75,'제목71','내용71'),
(76,'제목72','내용72'),
(77,'제목73','내용73'),
(78,'제목74','내용74'),
(79,'제목75','내용75'),
(80,'제목76','내용76'),
(81,'제목77','내용77'),
(82,'제목78','내용78'),
(83,'제목79','내용79'),
(84,'제목80','내용80'),
(85,'제목81','내용81'),
(86,'제목82','내용82'),
(87,'제목83','내용83'),
(88,'제목84','내용84'),
(89,'제목85','내용85'),
(90,'제목86','내용86'),
(91,'제목87','내용87'),
(92,'제목88','내용88'),
(93,'제목89','내용89'),
(94,'제목90','내용90'),
(95,'제목91','내용91'),
(96,'제목92','내용92'),
(97,'제목93','내용93'),
(98,'제목94','내용94'),
(99,'제목95','내용95'),
(100,'제목96','내용96'),
(101,'제목97','내용97'),
(102,'제목98','내용98'),
(103,'제목99','내용99'),
(104,'제목100','내용100'),
(105,'제목101','내용101'),
(106,'제목102','내용102'),
(107,'제목103','내용103'),
(108,'제목104','내용104'),
(109,'제목105','내용105'),
(110,'제목106','내용106'),
(111,'제목107','내용107'),
(112,'제목108','내용108'),
(113,'제목109','내용109'),
(114,'제목110','내용110'),
(115,'제목111','내용111'),
(116,'제목112','내용112'),
(117,'제목113','내용113'),
(118,'제목114','내용114'),
(119,'제목115','내용115'),
(120,'제목116','내용116'),
(121,'제목117','내용117'),
(122,'제목118','내용118'),
(123,'제목119','내용119'),
(124,'제목120','내용120');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES
(1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'test1','$2a$10$SvIPzXiadbTZzfiT15AcquwnGdui5TUhJblJpFQd8buNyQ7T7/49S',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  CONSTRAINT `user_role_ROLE` FOREIGN KEY (`user_id`) REFERENCES `role` (`id`),
  CONSTRAINT `user_role_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES
(1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoardDataInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`example`@`localhost` PROCEDURE `dummyBoardDataInsert`()
BEGIN
	DECLARE i INT DEFAULT 1;

    WHILE i <= 120 DO
        INSERT INTO board(title, content)
          VALUES(concat('제목',i), concat('내용',i));
        SET i = i + 1;
    END WHILE;
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

-- Dump completed on 2023-02-24 17:45:18
