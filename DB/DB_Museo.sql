-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para olimpiadas_programacion
CREATE DATABASE IF NOT EXISTS `olimpiadas_programacion` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `olimpiadas_programacion`;

-- Volcando estructura para tabla olimpiadas_programacion.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `fallecimiento` date NOT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.museo
CREATE TABLE IF NOT EXISTS `museo` (
  `id_museo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `ubicacion` varchar(60) DEFAULT NULL,
  `descripcion_museo` text DEFAULT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`id_museo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.obra
CREATE TABLE IF NOT EXISTS `obra` (
  `id_obra` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_obra` text DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_obra`),
  KEY `id_autor_obra` (`id_autor`),
  KEY `id_tipo_obra` (`id_tipo`),
  CONSTRAINT `id_autor_obra` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_tipo_obra` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.obra_accesibilidad
CREATE TABLE IF NOT EXISTS `obra_accesibilidad` (
  `id_accesibilidad` int(11) NOT NULL AUTO_INCREMENT,
  `accesibilidad` text DEFAULT NULL,
  `id_obra` int(11) DEFAULT NULL,
  `id_tipo_accesbilidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_accesibilidad`),
  KEY `id_obra_obra_accesibilidad` (`id_obra`),
  KEY `id_tipo_accesibilidad_obra_accesibilidad` (`id_tipo_accesbilidad`),
  CONSTRAINT `id_obra_obra_accesibilidad` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_tipo_accesibilidad_obra_accesibilidad` FOREIGN KEY (`id_tipo_accesbilidad`) REFERENCES `tipo_accesibilidad` (`id_accesibilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.plano_museo
CREATE TABLE IF NOT EXISTS `plano_museo` (
  `id_plano_museo` int(11) NOT NULL AUTO_INCREMENT,
  `plano` varchar(200) DEFAULT NULL,
  `id_museo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plano_museo`),
  KEY `id_museo_plano_museo` (`id_museo`),
  CONSTRAINT `id_museo_plano_museo` FOREIGN KEY (`id_museo`) REFERENCES `museo` (`id_museo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.sala
CREATE TABLE IF NOT EXISTS `sala` (
  `id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `id_museo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `id_museo_sala` (`id_museo`),
  CONSTRAINT `id_museo_sala` FOREIGN KEY (`id_museo`) REFERENCES `museo` (`id_museo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.sala_obra
CREATE TABLE IF NOT EXISTS `sala_obra` (
  `id_sala_obra` int(11) NOT NULL AUTO_INCREMENT,
  `id_sala` int(11) DEFAULT NULL,
  `id_obra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sala_obra`),
  KEY `id_obra_sala_obra` (`id_obra`),
  KEY `id_sala_sala_obra` (`id_sala`),
  CONSTRAINT `id_obra_sala_obra` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id_obra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_sala_sala_obra` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_tipo` text DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.tipo_accesibilidad
CREATE TABLE IF NOT EXISTS `tipo_accesibilidad` (
  `id_accesibilidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_accesibilidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.turno
CREATE TABLE IF NOT EXISTS `turno` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_visita` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turno`),
  KEY `id_visita_turno` (`id_visita`),
  KEY `id_usuario_turno` (`id_usuario`),
  CONSTRAINT `id_usuario_turno` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_visita_turno` FOREIGN KEY (`id_visita`) REFERENCES `visita_guiada` (`id_visita`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `contraseña` varchar(16) NOT NULL,
  `id_accesibilidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_accesibilidad_usuario` (`id_accesibilidad`),
  CONSTRAINT `id_accesibilidad_usuario` FOREIGN KEY (`id_accesibilidad`) REFERENCES `tipo_accesibilidad` (`id_accesibilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla olimpiadas_programacion.visita_guiada
CREATE TABLE IF NOT EXISTS `visita_guiada` (
  `id_visita` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `guia` varchar(200) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `id_museo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_visita`),
  KEY `id_museo_visita_guiada` (`id_museo`),
  CONSTRAINT `id_museo_visita_guiada` FOREIGN KEY (`id_museo`) REFERENCES `museo` (`id_museo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
