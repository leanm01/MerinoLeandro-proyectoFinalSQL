-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_final_merino

-- tablas agregadas en este backup: director_tecnico, equipo_de_futbol, estadio, jugadores, presidente_del_club, resultados, socios, sponsor.

-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `director_tecnico`
--

LOCK TABLES `director_tecnico` WRITE;
/*!40000 ALTER TABLE `director_tecnico` DISABLE KEYS */;
INSERT INTO `director_tecnico` VALUES (1,'roberto','carlos',40,3,4),(2,'marcelo','tarcio',64,5,7),(3,'almiron','juan',47,4,5),(4,'demileche','perro',36,3,0),(5,'coco','basile',78,9,10);
/*!40000 ALTER TABLE `director_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipo_de_futbol`
--

LOCK TABLES `equipo_de_futbol` WRITE;
/*!40000 ALTER TABLE `equipo_de_futbol` DISABLE KEYS */;
INSERT INTO `equipo_de_futbol` VALUES (1,100,21,21,1,1,1,1,1,1,1),(2,60,40,26,2,2,2,2,2,2,2),(3,40,20,24,2,2,2,2,2,2,2),(4,30,30,28,2,2,2,2,2,2,2),(5,10,2,18,2,2,2,2,2,2,2);
/*!40000 ALTER TABLE `equipo_de_futbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'bombonera','alberto',83,80000),(2,'libertadores de america','jose',80,60000),(3,'sola','roman',54,40000),(4,'vicente lopez','flora',74,30000),(5,'15 de abril','robert',78,40000);
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,900,'alberto','carlo',20,'boca'),(2,600,'messi','riquelme',26,'chacarita'),(3,400,'tobias','leon',22,'manchester city'),(4,150,'martin','godermo',36,'boca'),(5,420,'emiliano','neuer',34,'bayern munich'),(6,800,'martin','kravosh',24,'inter miami'),(7,500,'meme','deto',31,'barracas central');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `presidente_del_club`
--

LOCK TABLES `presidente_del_club` WRITE;
/*!40000 ALTER TABLE `presidente_del_club` DISABLE KEYS */;
INSERT INTO `presidente_del_club` VALUES (1,'pepe','merlo',200),(2,'socrates','seco',20),(3,'julian','rosa',26),(4,'nik','nok',27),(5,'ibarra','hugo',19);
/*!40000 ALTER TABLE `presidente_del_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resultados`
--

LOCK TABLES `resultados` WRITE;
/*!40000 ALTER TABLE `resultados` DISABLE KEYS */;
INSERT INTO `resultados` VALUES (1,100,40),(2,50,71),(3,15,50),(4,32,41),(5,14,28);
/*!40000 ALTER TABLE `resultados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (1,8000,'juan','rosario'),(2,6000,'vicente','sopra'),(3,4000,'domingo','sion'),(4,1550,'san','juan'),(5,4720,'antonio','romero'),(6,5000,'roberto','espei'),(7,5008,'marce','lo');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'QATAR',50),(2,'Corona',20),(3,'QUILMES',26),(4,'NISSAN',27),(5,'BMG',19);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 14:51:23
