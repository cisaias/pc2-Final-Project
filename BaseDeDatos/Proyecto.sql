-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.32 - MySQL Community Server (GPL)
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para Proyecto
CREATE DATABASE IF NOT EXISTS `Proyecto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Proyecto`;

-- Volcando estructura para tabla Proyecto.peliculas
CREATE TABLE IF NOT EXISTS `peliculas` (
  `id` int(15) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `año` int(15) DEFAULT NULL,
  `beneficio` float DEFAULT NULL,
  `popularidad` int(15) DEFAULT NULL,
  `presupuesto` int(15) DEFAULT NULL,
  `ingresos` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla Proyecto.peliculas: ~50 rows (aproximadamente)
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT IGNORE INTO `peliculas` (`id`, `titulo`, `año`, `beneficio`, `popularidad`, `presupuesto`, `ingresos`, `genero`) VALUES
	(0, 'Titanic', 1997, 8.22517, 100, 200000000, 1845034188, 'Drama'),
	(1, 'Armageddon', 1998, 2.95571, 58, 140000000, 553799566, 'Thriller'),
	(2, 'Terminator 2: Judgment Day', 1991, 4.2, 102, 100000000, 520000000, 'Thriller'),
	(3, 'The Fifth Element', 1997, 1.93245, 110, 90000000, 263920180, 'Thriller'),
	(4, 'Men in Black', 1997, 5.54878, 104, 90000000, 589390539, 'Comedy'),
	(5, 'Toy Story 2', 1999, 4.5263, 74, 90000000, 497366869, 'Comedy'),
	(6, 'Mulan', 1998, 2.38134, 67, 90000000, 304320254, 'Adventure'),
	(7, 'Mission: Impossible', 1996, 4.7212, 75, 80000000, 457696359, 'Thriller'),
	(8, 'Batman Returns', 1992, 2.5, 59, 80000000, 280000000, 'Action'),
	(9, 'The Lion King', 1994, 16.5165, 90, 45000000, 788241776, 'Drama'),
	(10, 'Independence Day', 1996, 9.89292, 60, 75000000, 816969268, 'Action'),
	(11, 'The Rock', 1996, 3.4675, 51, 75000000, 335062621, 'Thriller'),
	(12, 'Braveheart', 1995, 1.91667, 61, 72000000, 210000000, 'Drama'),
	(13, 'Hook', 1991, 3.29793, 34, 70000000, 300854823, 'Comedy'),
	(14, 'Die Hard 2', 1990, 2.42902, 58, 70000000, 240031094, 'Thriller'),
	(15, 'Saving Private Ryan', 1998, 5.88344, 76, 70000000, 481840909, 'Drama'),
	(16, 'The Matrix', 1999, 6.35742, 104, 63000000, 463517383, 'Action'),
	(17, 'Apollo 13', 1995, 5.8315, 68, 52000000, 355237933, 'Drama'),
	(18, 'Fight Club', 1999, 0.600853, 147, 63000000, 100853753, 'Drama'),
	(19, 'Jurassic Park', 1993, 13.6048, 40, 63000000, 920100000, 'Adventure'),
	(20, 'The Green Mile', 1999, 3.74333, 104, 60000000, 284600000, 'Drama'),
	(21, 'Forrest Gump', 1994, 11.3263, 138, 55000000, 677945399, 'Drama'),
	(22, 'Alien³', 1992, 2.19547, 46, 50000000, 159773545, 'Action'),
	(23, 'The Godfather: Part III', 1990, 1.5327, 59, 54000000, 136766062, 'Drama'),
	(24, 'Robin Hood: Prince of Thieves', 1991, 7.13529, 29, 48000000, 390493908, 'Adventure'),
	(25, 'The Game', 1997, 1.18847, 63, 50000000, 109423648, 'Drama'),
	(26, 'A Bug\'s Life', 1998, 2.02716, 87, 120000000, 363258859, 'Comedy'),
	(27, 'The Fugitive', 1993, 7.38354, 55, 44000000, 368875760, 'Thriller'),
	(28, 'Gattaca', 1997, -0.651867, 70, 36000000, 12532777, 'Thriller'),
	(29, 'Cape Fear', 1991, 4.20857, 28, 35000000, 182300000, 'Thriller'),
	(30, 'Toy Story', 1995, 11.4518, 74, 30000000, 373554033, 'Comedy'),
	(31, 'The Hunt for Red October', 1990, 5.64, 46, 30000000, 199200000, 'Thriller'),
	(32, 'The Addams Family', 1991, 5.38341, 37, 30000000, 191502426, 'Comedy'),
	(33, 'Se7en', 1995, 8.91854, 80, 33000000, 327311859, 'Thriller'),
	(34, 'Aladdin', 1992, 17.0018, 93, 28000000, 504050219, 'Comedy'),
	(35, 'Schindler\'s List', 1993, 13.6075, 104, 22000000, 321365567, 'Drama'),
	(36, 'GoodFellas', 1990, 0.873456, 64, 25000000, 46836394, 'Drama'),
	(37, 'The Shawshank Redemption', 1994, 0.133659, 137, 25000000, 28341469, 'Drama'),
	(38, 'Home Alone 2: Lost in New York', 1992, 18.944, 81, 18000000, 358991681, 'Comedy'),
	(39, 'Edward Scissorhands', 1990, 1.65, 48, 20000000, 53000000, 'Drama'),
	(40, 'From Dusk Till Dawn', 1996, 0.359822, 64, 19000000, 25836616, 'Thriller'),
	(41, 'The Mask', 1994, 14.2862, 85, 23000000, 351583407, 'Comedy'),
	(42, 'Philadelphia', 1993, 6.94917, 44, 26000000, 206678440, 'Drama'),
	(43, 'American Beauty', 1999, 22.7531, 81, 15000000, 356296601, 'Drama'),
	(44, 'Groundhog Day', 1993, 3.85664, 53, 14600000, 70906973, 'Drama'),
	(45, 'American History X', 1998, 0.193756, 74, 20000000, 23875127, 'Drama'),
	(46, 'Pulp Fiction', 1994, 25.7411, 121, 8000000, 213928762, 'Thriller'),
	(47, 'The Usual Suspects', 1995, 2.89026, 64, 6000000, 23341568, 'Drama'),
	(48, 'Trainspotting', 1996, 3.12277, 64, 4000000, 16491080, 'Drama'),
	(49, 'Reservoir Dogs', 1992, 11.2175, 67, 1200000, 14661007, 'Thriller');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
