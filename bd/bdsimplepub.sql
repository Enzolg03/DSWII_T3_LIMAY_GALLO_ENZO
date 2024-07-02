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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `IdAlumno` char(5) NOT NULL,
  `ApeAlumno` varchar(30) NOT NULL,
  `NomAlumno` varchar(30) NOT NULL,
  `IdEsp` char(3) NOT NULL,
  `Proce` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`),
  KEY `IdEsp` (`IdEsp`),
  CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`IdEsp`) REFERENCES `especialidad` (`IdEsp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('A0001','Valencia Salcedo','Christian','E01','N'),('A0002','Ortiz Rodriguez','Freddy','E01','P'),('A0003','Silva Mejia','Ruth Ketty','E02','N'),('A0004','Melendez Noriega','Liliana','E03','P'),('A0005','Huerta Leon','Silvia','E04','N'),('A0006','Carranza Fuentes','Maria Elena','E02','P'),('A0007','Prado Castro','Gabriela','E01','N'),('A0008','Atuncar Mesias','Juan','E05','P'),('A0009','Aguilar Zavala','Patricia Elena','E01','P'),('A0010','Rodruigez Trujillo','Rubén Eduardo','E01','N'),('A0011','Canales Ruiz','Gino Leonel','E02','P'),('A0012','Ruiz Quispe','Edgar','E02','N'),('A0013','PanduroTerrazas','Omar','E03','P'),('A0014','Zita Padilla','Peter Wilmer','E03','N'),('A0015','Ternero Ubillas','Luis','E05','P'),('A0016','Rivera Garcia','Raul Joel','E04','P'),('A0017','Pomar Garcia','Ana','E04','P'),('A0018','Palomares Venegas','Mercedes','E04','N'),('A0019','Ruiz Venegaz','Luis Alberto','E04','P'),('A0020','Tejada Bernal','Janet','E04','P'),('A0021','Sotelo Canales','Juan Carlos','E05','P'),('A0022','LLosa Montalvan','Karla','E05','P'),('A0023','Galarza Torres','Hugo','E03','P'),('A0024','Valverde Jaramillo','Saul','E05','N'),('A0025','Cipriano Avila','Roxana','E04','N'),('A0026','Rodriguez Quispe','Luis Alberto','E05','P'),('A0027','Huerta Leon','Marco Antonio','E05','N'),('A0028','Ortiz Fuentes','Ana Marta','E04','P'),('A0029','Rivera Jaramillo','Martha','E05','P'),('A0030','Bustamante Campos','Guino','E05','N');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `IdCurso` char(4) NOT NULL,
  `NomCurso` varchar(35) NOT NULL,
  `Credito` int DEFAULT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES ('C001','Matemática Básica',3),('C002','Filosofía I',6),('C003','Psicologia Industrial',5),('C004','Algorítmica',4),('C005','Software de Aplicación',5),('C006','Lenguaje de Programación I',5),('C007','Lenguaje Java ',4),('C008','Matemática II',3),('C009','Inglés Técnico',5),('C010','Lenguaje de Programación III',3),('C011','Aplicaciones Cliente/Servidor',4);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
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
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `IdEsp` char(3) NOT NULL,
  `NomEsp` varchar(30) NOT NULL,
  `Costo` decimal(8,1) NOT NULL,
  PRIMARY KEY (`IdEsp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES ('E01','Educacion Informatica',2500.0),('E02','Administracion',1800.0),('E03','Contabilidad',2000.0),('E04','Idiomas',1800.0),('E05','Ingenier�a de Sistemas',2800.0);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `IdAlumno` char(5) NOT NULL,
  `IdCurso` char(4) NOT NULL,
  `ExaParcial` double DEFAULT NULL,
  `ExaFinal` double DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`,`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES ('A0001','C001',11,17),('A0001','C003',9,15),('A0001','C004',18,3),('A0002','C001',15,9),('A0002','C002',11,3),('A0002','C003',14,13),('A0003','C003',8,13),('A0003','C004',7,14),('A0003','C005',16,14),('A0003','C008',12,13),('A0004','C005',7,12),('A0004','C006',11,12),('A0004','C007',9,11),('A0005','C003',6,13),('A0005','C004',17,16),('A0005','C005',12,17),('A0006','C004',16,15),('A0006','C006',5,12),('A0006','C007',8,13),('A0007','C002',7,9),('A0007','C004',12,7),('A0007','C005',11,6),('A0008','C004',5,13),('A0008','C008',5,8),('A0008','C009',7,4),('A0009','C005',6,13),('A0009','C009',18,13),('A0009','C010',12,15),('A0010','C001',5,12),('A0010','C003',12,11),('A0010','C010',16,14),('A0011','C001',5,13),('A0011','C002',11,13),('A0011','C004',7,3),('A0012','C004',10,8),('A0012','C005',7,10),('A0012','C006',17,10),('A0013','C001',14,3),('A0013','C002',7,10),('A0013','C003',15,12),('A0013','C004',12,13),('A0014','C001',11,15),('A0014','C003',15,13),('A0014','C004',12,18),('A0015','C001',5,13),('A0015','C003',14,13),('A0015','C004',15,12),('A0016','C002',6,13),('A0016','C003',12,11),('A0016','C006',17,12),('A0021','C004',8,17),('A0021','C005',14,3),('A0021','C006',17,12),('A0022','C003',7,13),('A0022','C004',17,13),('A0022','C005',8,13),('A0023','C004',10,13),('A0023','C008',12,13),('A0023','C009',18,13),('A0024','C003',16,8),('A0024','C004',10,3),('A0024','C005',11,9),('A0024','C007',16,13),('A0025','C004',1,13),('A0025','C005',10,18),('A0028','C004',17,7),('A0028','C005',16,13),('A0029','C004',11,13);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `IdAlumno` char(5) NOT NULL,
  `Ciclo` char(6) NOT NULL,
  `Ncuota` int NOT NULL,
  `Monto` decimal(12,2) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`,`Ciclo`,`Ncuota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES ('A0001','2005-1',3,340.00,'2012-12-05 00:00:00'),('A0001','2005-2',1,300.00,'2010-10-05 00:00:00'),('A0001','2005-2',2,340.00,'2011-11-05 00:00:00'),('A0002','2006-1',1,360.00,'2012-05-06 00:00:00'),('A0002','2006-1',2,370.00,'2011-05-06 00:00:00'),('A0002','2006-2',1,300.00,'2010-05-06 00:00:00'),('A0002','2006-2',2,350.00,'2011-05-06 00:00:00'),('A0003','2005-1',1,340.00,'2011-06-05 00:00:00'),('A0003','2005-1',2,340.00,'2012-07-05 00:00:00'),('A0003','2005-2',1,340.00,'2011-05-05 00:00:00'),('A0004','2005-2',1,300.00,'2003-09-05 00:00:00'),('A0004','2005-2',2,380.00,'2001-10-05 00:00:00'),('A0004','2006-1',1,370.00,'2011-05-06 00:00:00'),('A0005','2005-2',1,350.00,'2011-10-05 00:00:00'),('A0005','2005-2',2,360.00,'2011-08-05 00:00:00'),('A0005','2006-1',1,380.00,'2009-05-06 00:00:00'),('A0006','2005-1',1,340.00,'2011-03-06 00:00:00'),('A0006','2005-1',2,390.00,'2011-05-06 00:00:00'),('A0006','2005-2',3,300.00,'2013-09-06 00:00:00'),('A0007','2005-1',1,380.00,'2011-05-06 00:00:00'),('A0007','2005-1',2,440.00,'2011-06-06 00:00:00'),('A0007','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0008','2004-1',1,370.00,'2011-02-06 00:00:00'),('A0008','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0008','2005-2',2,320.00,'2011-09-06 00:00:00'),('A0009','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0009','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0009','2005-2',2,330.00,'2011-07-06 00:00:00'),('A0010','2005-1',1,350.00,'2011-06-06 00:00:00'),('A0010','2005-2',1,340.00,'2013-07-06 00:00:00'),('A0010','2005-2',2,330.00,'2011-09-06 00:00:00'),('A0011','2005-1',2,370.00,'2011-06-06 00:00:00'),('A0011','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0011','2005-2',2,330.00,'2011-08-06 00:00:00'),('A0012','2005-1',1,390.00,'2015-08-06 00:00:00'),('A0012','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0012','2005-2',2,370.00,'2011-09-06 00:00:00'),('A0013','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0013','2005-1',2,350.00,'2011-05-06 00:00:00'),('A0013','2005-1',3,370.00,'2011-06-06 00:00:00'),('A0013','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0014','2005-1',1,350.00,'2011-05-06 00:00:00'),('A0014','2005-2',1,340.00,'2011-10-06 00:00:00'),('A0014','2005-2',2,330.00,'2011-11-06 00:00:00'),('A0016','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0016','2005-2',1,340.00,'2011-09-06 00:00:00'),('A0016','2005-2',2,360.00,'2011-10-06 00:00:00'),('A0021','2005-1',1,340.00,'2010-05-06 00:00:00'),('A0021','2005-2',1,340.00,'2011-07-06 00:00:00'),('A0021','2005-2',2,480.00,'2010-08-06 00:00:00'),('A0022','2005-1',1,350.00,'2011-03-06 00:00:00'),('A0022','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0022','2005-2',2,330.00,'2011-09-06 00:00:00'),('A0023','2005-1',1,370.00,'2011-05-06 00:00:00'),('A0023','2005-2',1,340.00,'2011-09-06 00:00:00'),('A0023','2005-2',2,370.00,'2011-10-06 00:00:00'),('A0024','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0024','2005-1',2,340.00,'2011-05-06 00:00:00'),('A0024','2005-2',1,340.00,'2011-06-06 00:00:00'),('A0024','2005-2',2,340.00,'2011-08-06 00:00:00'),('A0025','2005-2',1,340.00,'2011-08-06 00:00:00'),('A0025','2005-2',2,370.00,'2011-09-06 00:00:00'),('A0028','2005-1',1,340.00,'2011-05-06 00:00:00'),('A0028','2005-1',2,390.00,'2011-06-06 00:00:00'),('A0029','2004-1',1,340.00,'2011-06-06 00:00:00');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
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

-- Dump completed on 2024-07-02 16:42:53
