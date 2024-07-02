CREATE DATABASE  IF NOT EXISTS `bdsimplepub` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdsimplepub`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bdsimplepub
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `IdAutor` int NOT NULL AUTO_INCREMENT,
  `NomAutor` varchar(50) NOT NULL,
  `ApeAutor` varchar(50) NOT NULL,
  `FechNacAutor` date NOT NULL,
  PRIMARY KEY (`IdAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Luis Raul','Tolentino Palacios','1990-04-12'),(2,'Henry','Ramos Cordova','1988-12-17'),(3,'Jhairo','Crisostomo Cristobal','1970-01-15'),(4,'Piero','Santos Chavez','1985-05-10'),(5,'William','Lopez Palacios','1991-04-12'),(6,'Daniela','Ramos Colqui','1989-12-17'),(7,'Velgica','Honores Cristobal','1979-01-07'),(8,'Juliana','Hiriarte Huarcayo','1995-05-10');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio` (
  `IdDomicilio` int NOT NULL AUTO_INCREMENT,
  `DescDomicilio` varchar(50) NOT NULL,
  `NroDomicilio` int NOT NULL,
  `RefDomicilio` varchar(50) NOT NULL,
  PRIMARY KEY (`IdDomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'Av. Guardia Civil',1134,'Cerca al grifo Repsol'),(2,'Av. La Marina',799,'Esquina con Sucre'),(3,'Jr. Huallaga',134,'Cercado de Lima'),(4,'Psje. Las Nubes',230,'Urb. La Florida'),(5,'Av. Canada',940,'Paradero farmacia');
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `IdEmpleado` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `FechaContrat` date NOT NULL,
  `IdDomicilio` int NOT NULL,
  PRIMARY KEY (`IdEmpleado`),
  KEY `IdDomicilio` (`IdDomicilio`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`IdDomicilio`) REFERENCES `domicilio` (`IdDomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'José Manuel','Hermanez Palacios','2024-06-02',1),(2,'Jimena','Artica Martinez','2024-06-02',2),(3,'Juan','Lazo Palacios','2024-06-02',3),(4,'Marcelo','Perez Arancibia','2024-06-02',4);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `IdPublicacion` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(250) NOT NULL,
  `Resumen` varchar(250) NOT NULL,
  `FechPublicacion` date NOT NULL,
  `IdAutor` int NOT NULL,
  PRIMARY KEY (`IdPublicacion`),
  KEY `IdAutor` (`IdAutor`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`IdAutor`) REFERENCES `autor` (`IdAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (1,'Comprobación experimental','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2015-05-10',1),(2,'Efectos psicológicos','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2016-03-10',1),(3,'Experimento de los efectos traumáticos','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-07-10',1),(4,'Hipotesis del significado de sueños','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-05-06',1),(5,'Las orejas crecen toda la vida','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-08-24',1),(6,'Apuestas y cocodrilos','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2020-12-10',1),(7,'Gato sólido o líquido','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-05-10',1),(8,'Murciélagos que beben sangre humana','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2020-05-10',1),(9,'Desarrollo del mercado del piñón','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2016-05-10',2),(10,'Manejo de la conectividad biológica.','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-03-10',2),(11,'Aumento de calidad de la madera','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-01-10',2),(12,'Producción comercial de hojas de Boldo ','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-04-10',2),(13,'Mejoramiento de la productividad ganadera','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2020-12-10',2),(14,'Desarrollo de bases técnicas y normativas para prototipos de vivienda modular,','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-02-10',3),(15,'Fabricación de HPB para la industria de celulosa de fibra corta','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2015-05-21',3),(16,'Incorporación de los bosques de Coihue de Magallanes','Diversos estudios en el área de la toxicología apuntan a este problema.','2020-05-02',3),(17,'Factibilidad de biopulpaje  Kraft aplicado a especies del género Eucalyptus','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-05-11',4),(18,'Producción y aplicación de hongos de pudrición blanca','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2020-05-06',4),(19,'Desarrollo de un reactor molecular para la generación de energía','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2021-01-14',4),(20,'Indicadores de sustentabilidad para el apoyo de negocios de turismo.','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-05-24',5),(21,'Polo de desarrollo, innovación, tecnología y marketting','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-09-22',5),(22,'Propuestas de modelos de gestión y conservación de la biodiversidad en bosques','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-05-12',6),(23,'Predicción de biomasa forestal aérea','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-10-21',7),(24,'Desarrollo de tecnologías para la producción sustentable de biomasa','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2020-05-18',7),(25,'Optimización del  proceso de tratamiento de lignocelulosas','Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-05-19',8);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idrol` int NOT NULL AUTO_INCREMENT,
  `nomrol` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nomusuario` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_rol` (
  `idusuario` int NOT NULL,
  `idrol` int NOT NULL,
  KEY `user_role_FK` (`idusuario`),
  KEY `user_role_FK_1` (`idrol`),
  CONSTRAINT `user_role_FK` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `user_role_FK_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bdsimplepub'
--

--
-- Dumping routines for database 'bdsimplepub'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 17:00:29
