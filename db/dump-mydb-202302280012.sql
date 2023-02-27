-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for osx10.17 (x86_64)
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
  `manager_id` bigint(5) DEFAULT 0,
  `user_id` bigint(20) DEFAULT 0,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `board_FK` (`user_id`),
  KEY `board_MANAGER` (`manager_id`),
  CONSTRAINT `board_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `board_MANAGER` FOREIGN KEY (`manager_id`) REFERENCES `board_manager` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES
(1,3,1,'제목115','내용115','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(7,3,1,'hello','world','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(250,3,13,'하하하','하하하핳','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(251,3,1,'test1','test1','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(252,3,1,'반갑습니다.','반가워용','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(253,2,15,'안녕하세요 반갑습니다.1','안녕하세요 반갑습니다.2\r\n안녕하세요 반갑습니다.3','2023-02-27 15:58:44','2023-02-27 15:01:12'),
(254,2,15,'test 12345','werwer','2023-02-27 15:58:44','2023-02-27 15:03:35'),
(255,2,15,'글쓰기 테스트 1','글쓰기 테스트 1','2023-02-27 15:58:44','2023-02-27 15:55:48'),
(256,2,15,'헬로12','1헬로2','2023-02-27 15:58:44','2023-02-27 15:59:12'),
(257,1,13,'324234','234234','2023-02-27 16:14:41','2023-02-27 16:14:41'),
(258,1,13,'게시판 글쓰기','글쓰기 테스트','2023-02-27 16:19:05','2023-02-27 16:19:05'),
(259,1,13,'반갑습니다','반가워요','2023-02-27 21:29:59','2023-02-27 21:29:59');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_manager`
--

DROP TABLE IF EXISTS `board_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_manager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시판 매니져';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_manager`
--

LOCK TABLES `board_manager` WRITE;
/*!40000 ALTER TABLE `board_manager` DISABLE KEYS */;
INSERT INTO `board_manager` VALUES
(1,'자유게시판'),
(2,'가입인사'),
(3,'1:1문의');
/*!40000 ALTER TABLE `board_manager` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES
(1,'ROLE_USER'),
(2,'ROLE_ADMIN');
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
  `enabled` bit(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'test1','$2a$10$SvIPzXiadbTZzfiT15AcquwnGdui5TUhJblJpFQd8buNyQ7T7/49S','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(13,'test2','$2a$10$xDX9pROKu6yuKczJt2eywuXLBBYnyLzrZ9.U/DLr9oJwgIeScqYoi','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(14,'test3','$2a$10$AxrKHAzVgtx5W0LjxpRpzuCM7/KmmiScypJ2KMQSikyhtEizwjKe2','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(15,'test4','$2a$10$DkKJsuyZTaYFB/lDnEtZ0.IW626dghAXhmTzMAdW2V.Kau6Wy1PLW','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(16,'test5','$2a$10$IUgOA.QPh9iP6NXEPzpVcOlm4rJtDH/tMikQmrBaXM0XBFMglpk/2','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(17,'test6','$2a$10$jPjs.Ls5AdhVSSLwJg132.aAIG5hG4cAoPGEBOKGhTu7uyv9sddNy','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(18,'test7','$2a$10$jNgY2Gny5XOuBdS5Hx0.PeLdgHoyBwZSWvC2PqV8P3ja3P1nVE.Ye','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(19,'test8','$2a$10$RKWCXtDif8RDdTLmzCBpDeMVG083YX887P2tWEcy146yTlEfBfvpq','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(20,'test9','$2a$10$TValp/FyyMK.dgmUke5kKeVoOQOjYzKxZvN2b5aI1CPGFUOgaa496','','2023-02-27 14:53:38','2023-02-27 14:53:38'),
(21,'test10','$2a$10$uWIiFIbTkZKtFmqY5LtOseggqVFU6B1KrOxvHNtIa/7HKi8p66FxK','','2023-02-27 14:53:38','2023-02-27 14:53:38');
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
  KEY `FK_user_role_role` (`role_id`),
  CONSTRAINT `FK_user_role_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_user_role_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES
(1,1),
(13,1),
(13,2),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
        INSERT INTO board(user_id, title, content)
          VALUES(1, concat('제목',i), concat('내용',i));
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

-- Dump completed on 2023-02-28  0:12:29
