-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.31-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para agenda_db
CREATE DATABASE IF NOT EXISTS `agenda_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `agenda_db`;

-- Volcando estructura para tabla agenda_db.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `fecha_inicio` varchar(20) NOT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `hora_inicio` varchar(20) DEFAULT NULL,
  `hora_fin` varchar(20) DEFAULT NULL,
  `allday` tinyint(1) DEFAULT NULL,
  `fk_usuarios` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios` (`fk_usuarios`),
  CONSTRAINT `fk_usuarioemail_evento` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla agenda_db.eventos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;

-- Volcando estructura para tabla agenda_db.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `email` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla agenda_db.usuarios: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT IGNORE INTO `usuarios` (`email`, `nombre`, `password`, `fecha_nacimiento`) VALUES
	('andes@gmail.com', 'Andres Montealegre', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '1985-12-31'),
	('angie@gmail.com', 'Angie Montealegre', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '1992-12-21'),
	('demo2@gmail.com', 'Demo 2 Agenda', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '1998-09-08'),
	('demo@gmail.com', 'Demo Agenda ', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '2006-05-03'),
	('user2@gmail.com', 'User Pruebas2', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '1992-12-03'),
	('user@gmail.com', 'User pruebas1', '$2y$10$D6zyvmHAiVxdEWsp5LazxezBVlMJpe7NViHfC1MMLTDJ7l.coLXum', '2000-12-31');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
