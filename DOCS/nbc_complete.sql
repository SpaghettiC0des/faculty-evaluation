-- --------------------------------------------------------
-- Host:                         192.168.0.79
-- Server version:               10.1.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5050
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for cephaznbc
DROP DATABASE IF EXISTS `cephaznbc`;
CREATE DATABASE IF NOT EXISTS `cephaznbc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cephaznbc`;

-- Dumping structure for table cephaznbc.cce
DROP TABLE IF EXISTS `cce`;
CREATE TABLE IF NOT EXISTS `cce` (
  `CCENo` int(11) NOT NULL AUTO_INCREMENT,
  `FacultyNo` int(11) DEFAULT '0',
  `SUCNo` varchar(12) DEFAULT NULL,
  `CycleNo` tinyint(3) unsigned DEFAULT '0',
  `CCECode` varchar(11) DEFAULT NULL,
  `ScoreeEval1` float DEFAULT '0',
  `ScoreeEval2` float DEFAULT '0',
  `InputDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserNum` int(11) DEFAULT '0',
  PRIMARY KEY (`CCENo`),
  KEY `CCECode` (`CCECode`),
  KEY `CycleNo` (`CycleNo`),
  KEY `FacultyNo` (`FacultyNo`),
  KEY `SUCNo` (`SUCNo`)
) ENGINE=MyISAM AUTO_INCREMENT=49253 DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.cce: 4 rows
/*!40000 ALTER TABLE `cce` DISABLE KEYS */;
INSERT INTO `cce` (`CCENo`, `FacultyNo`, `SUCNo`, `CycleNo`, `CCECode`, `ScoreeEval1`, `ScoreeEval2`, `InputDate`, `UserNum`) VALUES
	(49239, 527, '39', 6, '3-1-1-d', 4, NULL, '2015-03-17 10:04:59', 1),
	(49250, 527, '39', 6, '2-3-1-c', 2, 2, '2016-03-11 17:55:29', 0),
	(49251, 527, '39', 6, '2-1', 2, NULL, '2016-03-11 17:55:41', 0),
	(49252, 527, '39', 6, '3-6', 2, NULL, '2016-03-11 17:55:50', 0);
/*!40000 ALTER TABLE `cce` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.ccedisplay
DROP TABLE IF EXISTS `ccedisplay`;
CREATE TABLE IF NOT EXISTS `ccedisplay` (
  `CCECode` varchar(11) NOT NULL,
  `Group` varchar(11) DEFAULT NULL,
  `IsInput` tinyint(3) unsigned DEFAULT '0',
  `CodeDisplay` varchar(11) DEFAULT NULL,
  `Description` varchar(101) DEFAULT NULL,
  `No` tinyint(3) unsigned DEFAULT '0',
  `SubGroup` varchar(9) DEFAULT NULL,
  `SubGroupD33` varchar(9) DEFAULT NULL,
  `ShowGroup` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`CCECode`),
  KEY `CCECode` (`CCECode`),
  KEY `Group` (`Group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.ccedisplay: 65 rows
/*!40000 ALTER TABLE `ccedisplay` DISABLE KEYS */;
INSERT INTO `ccedisplay` (`CCECode`, `Group`, `IsInput`, `CodeDisplay`, `Description`, `No`, `SubGroup`, `SubGroupD33`, `ShowGroup`) VALUES
	('1', '1', 0, '1.0', 'EDUCATIONAL QUALIFICATION', 0, '1', '1', 1),
	('1-1', '1', 1, '1.0', 'Academic Degree / Additional Acad. Degree / Additional credits earned', 1, '1', '1', 1),
	('1-3', '1', 0, '1.3', 'Additional credits earned', 3, '1', '1', 1),
	('2', '2', 0, '2.0', 'EXPERIENCE & LENGTH OF SERVICE', 4, '2', '2', 1),
	('2-1', '2', 0, '2.1', 'Academic Experience', 5, '2', '2', 1),
	('2-1-1', '2', 1, '2.1.1', 'Acad. service in state institution', 6, '2', '2', 1),
	('2-1-2', '2', 1, '2.1.2', 'Acad. service in institution other than SUC, etc.', 7, '2', '2', 1),
	('2-2', '2', 0, '2.2', 'Administrative Experience', 8, '2', '2', 1),
	('2-2-a', '2', 1, '2.2.a', 'President', 9, '2', '2', 1),
	('2-2-b', '2', 1, '2.2.b', 'Vice President', 10, '2', '2', 1),
	('2-2-c', '2', 1, '2.2.c', 'Dean/Director', 11, '2', '2', 1),
	('2-2-d', '2', 1, '2.2.d', 'Principal/Supervisor', 12, '2', '2', 1),
	('2-3', '2', 0, '2.3', 'Industrial/Agricultural Experience', 13, '2', '2', 1),
	('2-3-1', '2', 0, '2.3.1', 'Professional & Technical Experience', 14, '2', '2', 1),
	('2-3-1-a', '2', 1, '2.3.1.a', 'Manager/Entrepreneur', 15, '2', '2', 1),
	('2-3-1-b', '2', 1, '2.3.1.b', 'Supervisor/Head of Unit', 16, '2', '2', 1),
	('2-3-1-c', '2', 1, '2.3.1.c', 'Rank and File', 17, '2', '2', 1),
	('2-3-2', '2', 0, '2.3.2', 'Public & private institution experience', 18, '2', '2', 1),
	('2-3-2-a', '2', 1, '2.3.2.a', 'Cooperating Teacher', 19, '2', '2', 1),
	('2-3-2-b', '2', 1, '2.3.2.b', 'Basic Education Teacher', 20, '2', '2', 1),
	('3', '3', 0, '3.0', 'PROFESSIONAL ACHIEVEMENT & HONORS', 21, '3', '3', 2),
	('3-1', '3', 0, '3.1', 'Discoveries, patented inventions, innovations, published books, etc.', 22, '3', '3', 2),
	('3-1-1', '3', 0, '3.1.1', 'Cost & Time saving innovation', 23, '3-1', '3-1', 2),
	('3-1-1-a', '3', 1, '3.1.1.a', 'Inventions', 24, '3-1', '3-1', 2),
	('3-1-1-b', '3', 1, '3.1.1.b', 'Discoveries', 25, '3-1', '3-1', 2),
	('3-1-1-c', '3', 1, '3.1.1.c', 'Creative work', 26, '3-1', '3-1', 2),
	('3-1-1-d', '3', 1, '3.1.1.d', 'Innovations', 27, '3-1', '3-1', 2),
	('3-1-2', '3', 1, '3.1.2', 'Published book', 28, '3-1', '3-1', 2),
	('3-1-3', '3', 0, '3.1.3', 'Scholarly research/monograph/educational technical articles/etc.', 29, '3-1', '3-1', 2),
	('3-1-3-a', '3', 1, '3.1.3.a', 'International', 30, '3-1', '3-1', 2),
	('3-1-3-b', '3', 1, '3.1.3.b', 'National', 31, '3-1', '3-1', 2),
	('3-1-3-c', '3', 1, '3.1.3.c', 'Local', 32, '3-1', '3-1', 2),
	('3-1-4', '3', 1, '3.1.4', 'Instructional manual/audio-visual material', 33, '3-1', '3-1', 2),
	('3-2', '3', 0, '3.2', 'Expert services, training and active participation in professional/technical activities ', 34, '3', '3', 3),
	('3-2-1', '3', 0, '3.2.1', 'Training and Seminars ', 35, '3-2', '3-2', 3),
	('3-2-1-1', '3', 0, '3.2.1.1', 'Training course ', 36, '3-2-1', '3-2', 3),
	('3-2-1-1-a', '3', 1, '3.2.1.1.a', 'International', 37, '3-2-1', '3-2-1-1', 3),
	('3-2-1-1-b', '3', 1, '3.2.1.1.b', 'National', 38, '3-2-1', '3-2-1-1', 3),
	('3-2-1-1-c', '3', 1, '3.2.1.1.c', 'Local', 39, '3-2-1', '3-2-1-1', 3),
	('3-2-1-2', '3', 1, '3.2.1.2', 'Relevant field training', 40, '3-2-1', '3-2', 3),
	('3-2-1-3', '3', 0, '3.2.1.3', 'Participation in conferences, seminars, workshops', 41, '3-2-1', '3-2', 3),
	('3-2-1-3-a', '3', 1, '3.2.1.3.a', 'International', 42, '3-2-1', '3-2', 3),
	('3-2-1-3-b', '3', 1, '3.2.1.3.b', 'National', 43, '3-2-1', '3-2', 3),
	('3-2-1-3-c', '3', 1, '3.2.1.3.c', 'Local', 44, '3-2-1', '3-2', 3),
	('3-2-2', '3', 0, '3.2.2', 'Expert services rendered', 45, '3-2', '3-2', 3),
	('3-2-2-1', '3', 0, '3.2.2.1', 'Short-term consultant/ expert in activity of an educational, etc.', 46, '3-2-2', '3-2', 3),
	('3-2-2-1-a', '3', 1, '3.2.2.1.a', 'International', 47, '3-2-2', '3-2', 3),
	('3-2-2-1-b', '3', 1, '3.2.2.1.b', 'National', 48, '3-2-2', '3-2', 3),
	('3-2-2-1-c', '3', 1, '3.2.2.1.c', 'Local', 49, '3-2-2', '3-2', 3),
	('3-2-2-2', '3', 0, '3.2.2.2', 'Services rendered as trainer, coordinator, lecturer, etc.', 50, '3-2-2', '3-2', 4),
	('3-2-2-2-a', '3', 1, '3.2.2.2.a', 'International', 51, '3-2-2', '3-2', 4),
	('3-2-2-2-b', '3', 1, '3.2.2.2.b', 'National', 52, '3-2-2', '3-2', 4),
	('3-2-2-2-c', '3', 1, '3.2.2.2.c', 'Local', 53, '3-2-2', '3-2', 4),
	('3-2-2-3', '3', 1, '3.2.2.3', 'Expert services as adviser in doctoral dissertations, etc.', 54, '3-2-2', '3-2', 4),
	('3-2-2-4', '3', 1, '3.2.2.4', 'Certified services as reviewer/examiner in PRC or CSC', 55, '3-2-2', '3-2', 4),
	('3-2-2-5', '3', 1, '3.2.2.5', 'Expert services in accreditation work', 56, '3-2-2', '3-2', 4),
	('3-2-2-6', '3', 1, '3.2.2.6', 'Expert service in trade skill certification ', 57, '3-2-2', '3-2', 4),
	('3-2-2-7', '3', 1, '3.2.2.7', 'Serve as coach/trainer in sports or adviser of student organization', 58, '3-2-2', '3-2', 4),
	('3-3', '3', 0, '3.3', 'Membership in Professional organizations/honor societies and honors received', 59, '3', '3', 4),
	('3-3-1', '3', 1, '3.3.1', 'Current individual membership in relevant professional organizations', 60, '3-3', '3-3', 4),
	('3-3-2', '3', 1, '3.3.2', 'Undergraduate academic honors earned', 61, '3-3', '3-3', 4),
	('3-3-3', '3', 1, '3.3.3', 'Scholarship/Fellowship', 62, '3-3', '3-3', 4),
	('3-4', '3', 1, '3.4', 'Awards of distinction received', 63, '3', '3', 4),
	('3-5', '3', 1, '3.5', 'Community Outreach ', 64, '3', '3', 4),
	('3-6', '3', 1, '3.6', 'Professional Examination', 65, '3', '3', 4);
/*!40000 ALTER TABLE `ccedisplay` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.cycle
DROP TABLE IF EXISTS `cycle`;
CREATE TABLE IF NOT EXISTS `cycle` (
  `CycleNo` tinyint(3) unsigned NOT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `Cutoff` varchar(120) DEFAULT NULL,
  `xtraPKey` int(11) NOT NULL AUTO_INCREMENT,
  `SchoolType` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`xtraPKey`),
  KEY `CycleNo` (`CycleNo`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.cycle: 14 rows
/*!40000 ALTER TABLE `cycle` DISABLE KEYS */;
INSERT INTO `cycle` (`CycleNo`, `Description`, `Cutoff`, `xtraPKey`, `SchoolType`) VALUES
	(0, 'FIRST EVALUATION  (NBC 461)', 'JUNE 30, 1998', 1, 'SUC   '),
	(1, 'SECOND EVALUATION  (NBC 461)', 'JUNE 30, 2001', 2, 'SUC   '),
	(2, 'THIRD EVALUATION  (NBC 461)', 'JUNE 30, 2004', 3, 'SUC   '),
	(3, 'FOURTH EVALUATION (NBC 461)', 'JUNE 30, 2007', 4, 'SUC   '),
	(4, 'FIFTH EVALUATION (NBC 461)', 'JUNE 30, 2010', 5, 'SUC   '),
	(5, 'SIXTH EVALUATION (NBC 461)', 'JUNE 30, 2013', 6, 'SUC   '),
	(6, 'SEVENTH EVALUATION (NBC 461)', 'JUNE 30, 2016', 7, 'SUC   '),
	(7, 'EIGHT EVALUATION (NBC 461)', 'JUNE 30, 2019', 8, 'SUC   '),
	(201, 'NCC 33', NULL, 9, 'SUC   '),
	(202, 'NCC 69', NULL, 10, 'SUC   '),
	(203, 'NBC 461 - Accum', NULL, 11, 'SUC   '),
	(204, 'NBC 461', NULL, 12, 'SUC   '),
	(8, 'NINTH EVALUATION (NBC 461)', 'JUNE 30, 2022', 13, 'SUC   '),
	(9, 'TENTH EVALUATION (NBC 461)', 'JUNE 30, 2025', 14, 'SUC   ');
/*!40000 ALTER TABLE `cycle` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.evaluator
DROP TABLE IF EXISTS `evaluator`;
CREATE TABLE IF NOT EXISTS `evaluator` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUCNo` varchar(12) DEFAULT NULL,
  `UserName` varchar(17) NOT NULL,
  `Passwd` varchar(255) DEFAULT NULL,
  `EvaluatorName` varchar(255) DEFAULT NULL,
  `UserLevel` tinyint(3) unsigned DEFAULT NULL,
  `Active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UserName`),
  UNIQUE KEY `UserName` (`UserName`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.evaluator: 2 rows
/*!40000 ALTER TABLE `evaluator` DISABLE KEYS */;
INSERT INTO `evaluator` (`ID`, `SUCNo`, `UserName`, `Passwd`, `EvaluatorName`, `UserLevel`, `Active`) VALUES
	(2, '39', '39-grabanal', 'glend', 'GLENDA RABANAL', 1, 1),
	(3, '0', 'prabanal', 'peter', 'PETER RABANAL', 2, 1);
/*!40000 ALTER TABLE `evaluator` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.faculty
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `FacNum` int(11) NOT NULL AUTO_INCREMENT,
  `FacultyNo` int(11) NOT NULL DEFAULT '0',
  `SUCNo` varchar(12) NOT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `Passwd` varchar(255) DEFAULT NULL,
  `LName` varchar(40) DEFAULT NULL,
  `FName` varchar(70) DEFAULT NULL,
  `MName` varchar(40) DEFAULT NULL,
  `PresentRank` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FacultyNo`,`SUCNo`),
  KEY `FacNum` (`FacNum`),
  KEY `FacultyNo` (`FacultyNo`),
  KEY `LName` (`LName`),
  KEY `SUCNo` (`SUCNo`)
) ENGINE=MyISAM AUTO_INCREMENT=2252 DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.faculty: 385 rows
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` (`FacNum`, `FacultyNo`, `SUCNo`, `UserName`, `Passwd`, `LName`, `FName`, `MName`, `PresentRank`, `Status`) VALUES
	(17, 3, '39', '39_0003', '39_0003', 'ALMACHAR', 'LUMEN', 'H', 'Professor 6', 'PERMANENT'),
	(47, 9, '39', '39_0009', '39_0009', 'ALCONIS', 'ROSARIO', 'R', 'Asso. Prof. 2', 'PERMANENT'),
	(61, 11, '39', '39_0011', '39_0011', 'ANTIPORDA', 'MARIA BERNARDITA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(73, 13, '39', '39_0013', '39_0013', 'ANYOG', 'GEORGE ABE', '', 'Asso. Prof. 5', 'PERMANENT'),
	(84, 15, '39', '39_0015', '39_0015', 'AVILA', 'MARIANO', '', 'Asso. Prof. 3', 'PERMANENT'),
	(89, 16, '39', '39_0016', '39_0016', 'BELLO', 'PATRIA', '', 'Professor 6', 'PERMANENT'),
	(127, 24, '39', '39_0024', '39_0024', 'RUBIA', 'EVA OCCENCIA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(169, 33, '39', '39_0033', '39_0033', 'FORONDA', 'ROSARIO', '', 'Asst. Prof. 1', 'PERMANENT'),
	(176, 34, '39', '39_0034', '39_0034', 'GUILLEN', 'LEILA', 'P', 'Asso. Prof. 5', 'PERMANENT'),
	(182, 35, '39', '39_0035', '39_0035', 'JAMON', 'TEODORA', 'R', 'Asso. Prof. 1', 'PERMANENT'),
	(187, 36, '39', '39_0036', '39_0036', 'LAMARCA', 'FERDINAND', '', 'Professor 6', 'PERMANENT'),
	(195, 39, '39', '39_0039', '39_0039', 'MANEGDEG', 'NANCY', '', 'Asst. Prof. 4', 'PERMANENT'),
	(200, 41, '39', '39_0041', '39_0041', 'QUILANA', 'JOSEFINA', 'Q', 'Asso. Prof. 2', 'PERMANENT'),
	(205, 42, '39', '39_0042', '39_0042', 'QUITEVIS', 'ROSARIO', 'B', 'Asst. Prof. 4', 'PERMANENT'),
	(209, 43, '39', '39_0043', '39_0043', 'RAPANUT', 'ADELINA', 'R', 'Professor 6', 'PERMANENT'),
	(211, 44, '39', '39_0044', '39_0044', 'RAZOTE', 'RAMON', 'F', 'Asso. Prof. 5', 'PERMANENT'),
	(218, 46, '39', '39_0046', '39_0046', 'AGUSTIN', 'ELIZABETH', '', 'Asst. Prof. 3', 'PERMANENT'),
	(221, 47, '39', '39_0047', '39_0047', 'AMBRE', 'CEFERINA', 'S', 'Professor 6', 'PERMANENT'),
	(226, 48, '39', '39_0048', '39_0048', 'BALBUENA', 'THELMA', 'R', 'Professor 2', 'PERMANENT'),
	(234, 50, '39', '39_0050', '39_0050', 'PALMA', 'RONILO', '', 'Asso. Prof. 3', 'PERMANENT'),
	(243, 52, '39', '39_0052', '39_0052', 'RIVAD', 'EDNA', 'F', 'Asso. Prof. 4', 'PERMANENT'),
	(255, 56, '39', '39_0056', '39_0056', 'GUINID', 'AGUSTIN', 'B', 'Professor 1', 'PERMANENT'),
	(257, 57, '39', '39_0057', '39_0057', 'CARASI', 'DELIA', '', 'Asst. Prof. 1', 'PERMANENT'),
	(270, 60, '39', '39_0060', '39_0060', 'AFROILAN', 'TITO', '', 'Asso. Prof. 4', 'PERMANENT'),
	(279, 63, '39', '39_0063', '39_0063', 'REFUERZO', 'SUSAN', 'Q', 'Professor 6', 'PERMANENT'),
	(282, 64, '39', '39_0064', '39_0064', 'RACADIO', 'SUSANA', 'P', 'Asso. Prof. 4', 'PERMANENT'),
	(288, 66, '39', '39_0066', '39_0066', 'QUARIO', 'FELICIDAD', '', 'Asso. Prof. 4', 'PERMANENT'),
	(294, 68, '39', '39_0068', '39_0068', 'PERALTA', 'PRAXEDES', '', 'Asso. Prof. 5', 'PERMANENT'),
	(297, 69, '39', '39_0069', '39_0069', 'ALAIBILLA', 'BABY SOPHIA', 'S', 'Asso. Prof. 2', 'PERMANENT'),
	(298, 70, '39', '39_0070', '39_0070', 'PALOMARES', 'REBECCA', '', 'Asso. Prof. 4', 'PERMANENT'),
	(301, 71, '39', '39_0071', '39_0071', 'JAVIER', 'MIRIAM', 'N', 'Asso. Prof. 5', 'PERMANENT'),
	(304, 72, '39', '39_0072', '39_0072', 'FLORENDO', 'PETRONILA', '', 'Professor 1', 'PERMANENT'),
	(308, 73, '39', '39_0073', '39_0073', 'FIGUERRES', 'OCARNA', 'B', 'Professor 6', 'PERMANENT'),
	(316, 75, '39', '39_0075', '39_0075', 'INOFINADA', 'VIRGINIA', 'F', 'Professor 2', 'PERMANENT'),
	(336, 82, '39', '39_0082', '39_0082', 'BENZON', 'MA. ELENA', 'P', 'Professor 6', 'PERMANENT'),
	(344, 84, '39', '39_0084', '39_0084', 'LLANES', 'LOURDES', 'P', 'Asso. Prof. 5', 'PERMANENT'),
	(349, 85, '39', '39_0085', '39_0085', 'LOPEZ', 'MARIBEN', 'P', 'Asso. Prof. 5', 'PERMANENT'),
	(358, 87, '39', '39_0087', '39_0087', 'BELEN', 'NELLIE', 'B', 'Asso. Prof. 4', 'PERMANENT'),
	(362, 88, '39', '39_0088', '39_0088', 'LLANES', 'JOSE', 'B', 'Asso. Prof. 2', 'PERMANENT'),
	(364, 89, '39', '39_0089', '39_0089', 'FONTANO', 'ELIZABETH', '', 'Asst. Prof. 4', 'PERMANENT'),
	(378, 93, '39', '39_0093', '39_0093', 'AGUSTIN', 'ANTONIO', '', 'Asso. Prof. 5', 'PERMANENT'),
	(386, 95, '39', '39_0095', '39_0095', 'BALBUENA', 'WITERICO', '', 'Asso. Prof. 5', 'PERMANENT'),
	(412, 102, '39', '39_0102', '39_0102', 'FILART', 'ERLINDA', '', 'Professor 1', 'PERMANENT'),
	(415, 103, '39', '39_0103', '39_0103', 'GAVINO', 'MARIETA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(427, 106, '39', '39_0106', '39_0106', 'QUISMUNDO', 'CORAZON', '', 'Asso. Prof. 1', 'PERMANENT'),
	(432, 107, '39', '39_0107', '39_0107', 'RACHO', 'ELISEO', '', 'Asso. Prof. 2', 'PERMANENT'),
	(437, 108, '39', '39_0108', '39_0108', 'REMULAR', 'MILAGROS', 'R', 'Professor 5', 'PERMANENT'),
	(459, 115, '39', '39_0115', '39_0115', 'FORONDA', 'HONORATO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(475, 119, '39', '39_0119', '39_0119', 'RIALUBIN', 'ANICETO', '', 'Professor 1', 'PERMANENT'),
	(478, 120, '39', '39_0120', '39_0120', 'RAGASA', 'MARCIANO', 'T', 'Asso. Prof. 3', 'PERMANENT'),
	(490, 123, '39', '39_0123', '39_0123', 'QUITORIANO', 'RAYMUND', 'Q', 'Asst. Prof. 2', 'PERMANENT'),
	(494, 124, '39', '39_0124', '39_0124', 'TALINGDAN', 'DOMINGO', '', 'Asst. Prof. 1', 'PERMANENT'),
	(498, 125, '39', '39_0125', '39_0125', 'PINOL', 'MACARIO', 'N', 'Asst. Prof. 2', 'PERMANENT'),
	(510, 128, '39', '39_0128', '39_0128', 'PIAMONTE', 'GILBERT', 'C', 'Asst. Prof. 2', 'PERMANENT'),
	(528, 135, '39', '39_0135', '39_0135', 'ADVERSALO', 'ARTHUR', 'C', 'Asst. Prof. 1', 'PERMANENT'),
	(531, 136, '39', '39_0136', '39_0136', 'ESGUERRA', 'NORMA', '', 'Professor 6', 'PERMANENT'),
	(539, 138, '39', '39_0138', '39_0138', 'TUGADE', 'GLORIA', '', 'Asso. Prof. 4', 'PERMANENT'),
	(544, 141, '39', '39_0141', '39_0141', 'RAGON', 'BEATRIZ', '', 'Asso. Prof. 5', 'PERMANENT'),
	(548, 142, '39', '39_0142', '39_0142', 'RABANG', 'PURISIMA', 'F', 'Asso. Prof. 2', 'PERMANENT'),
	(553, 144, '39', '39_0144', '39_0144', 'PONCE', 'ALFREDO', 'C', 'Asso. Prof. 5', 'PERMANENT'),
	(562, 147, '39', '39_0147', '39_0147', 'MENDOZA', 'LARRY', '', 'Asso. Prof. 5', 'PERMANENT'),
	(565, 148, '39', '39_0148', '39_0148', 'FORNEAS', 'ELENA', '', 'Asso. Prof. 4', 'PERMANENT'),
	(584, 152, '39', '39_0152', '39_0152', 'BATTAD', 'LETICIA', 'A', 'Asso. Prof. 4', 'PERMANENT'),
	(590, 154, '39', '39_0154', '39_0154', 'AQUINO', 'JUANITO', 'F', 'Asso. Prof. 5', 'PERMANENT'),
	(599, 156, '39', '39_0156', '39_0156', 'AGCAMARAN', 'ROMULO', '', 'Asst. Prof. 2', 'PERMANENT'),
	(606, 158, '39', '39_0158', '39_0158', 'VECINA', 'AIDA', 'P', 'Asso. Prof. 4', 'PERMANENT'),
	(611, 159, '39', '39_0159', '39_0159', 'DE VERA', 'MARCIANA', 'P', 'Asso. Prof. 5', 'PERMANENT'),
	(620, 162, '39', '39_0162', '39_0162', 'REOTUTAR', 'LARGUITA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(630, 164, '39', '39_0164', '39_0164', 'DE LEON', 'BRIGIDA', 'F', 'Professor 3', 'PERMANENT'),
	(640, 167, '39', '39_0167', '39_0167', 'ESPIRITU', 'OFELIA', 'R', 'Asso. Prof. 3', 'PERMANENT'),
	(649, 170, '39', '39_0170', '39_0170', 'AMADAR', 'JERRY', 'A', 'Asst. Prof. 4', 'PERMANENT'),
	(657, 172, '39', '39_0172', '39_0172', 'JARAMILLO', 'VICENTE', 'R', 'Asst. Prof. 1', 'PERMANENT'),
	(660, 173, '39', '39_0173', '39_0173', 'PERLAS', 'FLORO DANIEL', 'A', 'Professor 2', 'PERMANENT'),
	(672, 176, '39', '39_0176', '39_0176', 'NAVARRO', 'RENATO', 'B', 'Asst. Prof. 3', 'PERMANENT'),
	(675, 177, '39', '39_0177', '39_0177', 'VIRTUDES', 'CIRILO', 'V', 'Asso. Prof. 1', 'PERMANENT'),
	(680, 178, '39', '39_0178', '39_0178', 'REOTITA', 'SUSANO', '', 'Asst. Prof. 2', 'PERMANENT'),
	(685, 180, '39', '39_0180', '39_0180', 'ALONZO', 'FATIMA NICETAS', 'R', 'Professor 3', 'PERMANENT'),
	(691, 181, '39', '39_0181', '39_0181', 'BELEN', 'WILLIAM', '', 'Asso. Prof. 1', 'PERMANENT'),
	(700, 184, '39', '39_0184', '39_0184', 'URBIS', 'CORAZON', '', 'Asso. Prof. 5', 'PERMANENT'),
	(709, 187, '39', '39_0187', '39_0187', 'RIALUBIN', 'JUANITO', '', 'Asso. Prof. 3', 'PERMANENT'),
	(713, 188, '39', '39_0188', '39_0188', 'RIALUBIN', 'MADELYN', 'R', 'Asso. Prof. 5', 'PERMANENT'),
	(718, 189, '39', '39_0189', '39_0189', 'RAGASA', 'ROLANDO', '', 'Asso. Prof. 5', 'PERMANENT'),
	(720, 190, '39', '39_0190', '39_0190', 'RABENA', 'JUANITA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(724, 191, '39', '39_0191', '39_0191', 'PURUGGANAN', 'RAMON', '', 'Asso. Prof. 1', 'PERMANENT'),
	(731, 193, '39', '39_0193', '39_0193', 'CADORNA', 'EDELYN', 'A', 'Professor 6', 'PERMANENT'),
	(745, 197, '39', '39_0197', '39_0197', 'CABANTING', 'MATEO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(750, 198, '39', '39_0198', '39_0198', 'BUNDOC', 'CRISTINA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(753, 199, '39', '39_0199', '39_0199', 'ALUAD', 'ROMANA', '', 'Asst. Prof. 1', 'PERMANENT'),
	(762, 201, '39', '39_0201', '39_0201', 'RODILLAS', 'FLORACELI', 'R', 'Asso. Prof. 3', 'PERMANENT'),
	(779, 208, '39', '39_0208', '39_0208', 'MEDRANO', 'WILMA', '', 'Professor 2', 'PERMANENT'),
	(790, 212, '39', '39_0212', '39_0212', 'FRANDO', 'MANUEL', '', 'Professor 4', 'PERMANENT'),
	(795, 215, '39', '39_0215', '39_0215', 'AVILA', 'EVA MARIE', 'C', 'Asso. Prof. 5', 'PERMANENT'),
	(800, 217, '39', '39_0217', '39_0217', 'ESPEJO', 'ANASTACIO', '', 'Professor 5', 'PERMANENT'),
	(811, 223, '39', '39_0223', '39_0223', 'REYES', 'LUCIO', '', 'Asst. Prof. 3', 'PERMANENT'),
	(827, 229, '39', '39_0229', '39_0229', 'SORIA', 'JIMMY', '', 'Professor 1', 'PERMANENT'),
	(835, 231, '39', '39_0231', '39_0231', 'FONTEJON', 'JUANITA', '', 'Asst. Prof. 1', 'PERMANENT'),
	(838, 232, '39', '39_0232', '39_0232', 'BAÑEZ', 'SOLITA EVANGELINE', 'S', 'Professor 5', 'PERMANENT'),
	(840, 233, '39', '39_0233', '39_0233', 'RACHO', 'FELICIDAD', '', 'Asst. Prof. 3', 'PERMANENT'),
	(843, 234, '39', '39_0234', '39_0234', 'RAMIREZ', 'SOCORRO', '', 'Professor 4', 'PERMANENT'),
	(850, 236, '39', '39_0236', '39_0236', 'QUADRA', 'PURITA', '', 'Asst. Prof. 2', 'PERMANENT'),
	(852, 237, '39', '39_0237', '39_0237', 'PIPO', 'JOHN', '', 'Asst. Prof. 1', 'PERMANENT'),
	(857, 241, '39', '39_0241', '39_0241', 'PONCE', 'EDILBERTO', '', 'Asso. Prof. 2', 'PERMANENT'),
	(861, 242, '39', '39_0242', '39_0242', 'PASCUA', 'ROSALINA', '', 'Asst. Prof. 2', 'PERMANENT'),
	(864, 243, '39', '39_0243', '39_0243', 'PALACPAC', 'DANILO', '', 'Asst. Prof. 3', 'PERMANENT'),
	(868, 244, '39', '39_0244', '39_0244', 'LEONES', 'VISITACION', '', 'Asst. Prof. 4', 'PERMANENT'),
	(876, 247, '39', '39_0247', '39_0247', 'DULAY', 'MARGARITA', '', 'Professor 3', 'PERMANENT'),
	(886, 251, '39', '39_0251', '39_0251', 'ANICOCHE', 'PACITA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(889, 252, '39', '39_0252', '39_0252', 'ESPEJO', 'ZENAIDA', 'F', 'Asso. Prof. 5', 'PERMANENT'),
	(893, 253, '39', '39_0253', '39_0253', 'DE PERALTA', 'ROSA', 'R', 'Professor 6', 'PERMANENT'),
	(897, 254, '39', '39_0254', '39_0254', 'REYNON', 'LOURDES', 'R', 'Asso. Prof. 4', 'PERMANENT'),
	(907, 257, '39', '39_0257', '39_0257', 'FORNEAS', 'SIXTO', '', 'Asso. Prof. 5', 'PERMANENT'),
	(910, 258, '39', '39_0258', '39_0258', 'NAVARRO', 'REMEDIOS', 'R', 'Professor 4', 'PERMANENT'),
	(920, 262, '39', '39_0262', '39_0262', 'REYES', 'CRESENCIANO', 'H', 'Professor 2', 'PERMANENT'),
	(928, 264, '39', '39_0264', '39_0264', 'TOLENTINO', 'DOMINADOR', '', 'Asso. Prof. 4', 'PERMANENT'),
	(932, 265, '39', '39_0265', '39_0265', 'REAL', 'CARLOS', '', 'Asso. Prof. 2', 'PERMANENT'),
	(936, 266, '39', '39_0266', '39_0266', 'RAGUINDIN', 'PURIFICACION', '', 'Asso. Prof. 3', 'PERMANENT'),
	(939, 267, '39', '39_0267', '39_0267', 'JIMINEZ', 'DIONISIO', '', 'Asst. Prof. 1', 'PERMANENT'),
	(950, 270, '39', '39_0270', '39_0270', 'FAYPON', 'HELEN', '', 'Asso. Prof. 3', 'PERMANENT'),
	(958, 273, '39', '39_0273', '39_0273', 'ARTATES', 'ROLANDO', '', 'Asso. Prof. 1', 'PERMANENT'),
	(962, 274, '39', '39_0274', '39_0274', 'LAZO', 'SAMSON', '', 'Asst. Prof. 4', 'PERMANENT'),
	(967, 275, '39', '39_0275', '39_0275', 'BAJET', 'MANUEL', '', 'Professor 1', 'PERMANENT'),
	(970, 276, '39', '39_0276', '39_0276', 'PED', 'MANUEL', '', 'Professor 3', 'PERMANENT'),
	(986, 281, '39', '39_0281', '39_0281', 'BORJE', 'MAXIMO', '', 'Asso. Prof. 3', 'PERMANENT'),
	(990, 283, '39', '39_0283', '39_0283', 'DONATO', 'JIMMY', '', 'Asso. Prof. 1', 'PERMANENT'),
	(994, 284, '39', '39_0284', '39_0284', 'OBRERO', 'MARIO', 'P', 'Professor 6', 'PERMANENT'),
	(1000, 286, '39', '39_0286', '39_0286', 'VITAMOG', 'AURELIA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(1003, 287, '39', '39_0287', '39_0287', 'RABENA', 'ALFREDO', '', 'Professor 1', 'PERMANENT'),
	(1008, 289, '39', '39_0289', '39_0289', 'CLAUDIO', 'EVELYN', '', 'Asso. Prof. 3', 'PERMANENT'),
	(1011, 291, '39', '39_0291', '39_0291', 'BAJET', 'DANTE', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1014, 293, '39', '39_0293', '39_0293', 'GALLARDO', 'FLORDELINA', 'B', 'Asso. Prof. 1', 'PERMANENT'),
	(1017, 294, '39', '39_0294', '39_0294', 'PANAY', 'MAMERTO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1018, 295, '39', '39_0295', '39_0295', 'ALON', 'TERESITA', '', 'Asso. Prof. 5', 'PERMANENT'),
	(1020, 296, '39', '39_0296', '39_0296', 'AMBIDA', 'ANDRES BONIFACIO', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1022, 297, '39', '39_0297', '39_0297', 'MENDOZA', 'VICTORIA', '', 'Asso. Prof. 3', 'PERMANENT'),
	(1026, 299, '39', '39_0299', '39_0299', 'PACPACO', 'ELEUTERIA', 'R', 'Asst. Prof. 4', 'PERMANENT'),
	(1030, 300, '39', '39_0300', '39_0300', 'RABARA', 'TITO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1035, 304, '39', '39_0304', '39_0304', 'PACADA', 'ULDARICO', 'A', 'Asst. Prof. 1', 'PERMANENT'),
	(1039, 305, '39', '39_0305', '39_0305', 'ROSAL', 'ZOSIMO EMIDIO', 'R', 'Asso. Prof. 5', 'PERMANENT'),
	(1045, 308, '39', '39_0308', '39_0308', 'PAJARILLO', 'GENEROSO GUDELIO', 'P', 'Professor 5', 'PERMANENT'),
	(1048, 309, '39', '39_0309', '39_0309', 'VELASCO', 'CRESCENCIO', '', 'Asso. Prof. 4', 'PERMANENT'),
	(1055, 312, '39', '39_0312', '39_0312', 'ROCAMORA', 'FATIMA', 'F', 'Professor 3', 'PERMANENT'),
	(1061, 315, '39', '39_0315', '39_0315', 'TOTAAN', 'JOSELITO', 'A', 'Asst. Prof. 3', 'PERMANENT'),
	(1066, 319, '39', '39_0319', '39_0319', 'DUMBRIQUE', 'JEAN', 'S', 'Professor 4', 'PERMANENT'),
	(1069, 320, '39', '39_0320', '39_0320', 'AMISTAD', 'FRANKLYN', 'T', 'Professor 3', 'PERMANENT'),
	(1077, 324, '39', '39_0324', '39_0324', 'MALCABA', 'MODERINA', 'A', 'Asso. Prof. 2', 'PERMANENT'),
	(1079, 325, '39', '39_0325', '39_0325', 'AMANO', 'GEORGE', 'B', 'Asst. Prof. 1', 'PERMANENT'),
	(1093, 330, '39', '39_0330', '39_0330', 'PARONG', 'LUZVIMINDA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1102, 333, '39', '39_0333', '39_0333', 'RABANG', 'MARIE ROSE', 'Q', 'Professor 5', 'PERMANENT'),
	(1104, 334, '39', '39_0334', '39_0334', 'MANZANO', 'MA. TERESA SUSAN', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1109, 335, '39', '39_0335', '39_0335', 'REYES', 'ASELA', 'B', 'Asst. Prof. 1', 'PERMANENT'),
	(1111, 336, '39', '39_0336', '39_0336', 'MOHAMMAD', 'ANNALIE', 'A', 'Instructor 1', 'PERMANENT'),
	(1123, 341, '39', '39_0341', '39_0341', 'FIESTAN', 'SHERWIN', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1126, 342, '39', '39_0342', '39_0342', 'TAACA', 'ARNEL', 'I', 'Instructor 2', 'PERMANENT'),
	(1129, 343, '39', '39_0343', '39_0343', 'OBRERO', 'MARIQUIT', 'M', 'Asso. Prof. 3', 'PERMANENT'),
	(1133, 345, '39', '39_0345', '39_0345', 'AQUINO', 'EDGAR', '', 'Asst. Prof. 1', 'PERMANENT'),
	(1137, 346, '39', '39_0346', '39_0346', 'ANICOCHE', 'CECILIA', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1141, 347, '39', '39_0347', '39_0347', 'PESCADOR', 'MA. THERESA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1145, 348, '39', '39_0348', '39_0348', 'FERNANDINE', 'FE', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1149, 350, '39', '39_0350', '39_0350', 'DE LA PENA', 'ISIDORA', 'R', 'Asst. Prof. 1', 'PERMANENT'),
	(1156, 353, '39', '39_0353', '39_0353', 'DUMLAO', 'MA. LINDA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1169, 357, '39', '39_0357', '39_0357', 'GUINID', 'JULIETA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1171, 358, '39', '39_0358', '39_0358', 'PATUBO', 'HONORATO', '', 'Asso. Prof. 1', 'PERMANENT'),
	(1172, 359, '39', '39_0359', '39_0359', 'TACTAY', 'AGUSTINA', 'R.', 'Asso. Prof. 5', 'PERMANENT'),
	(1175, 360, '39', '39_0360', '39_0360', 'ROJAS', 'REDENTOR', '', 'Asso. Prof. 1', 'PERMANENT'),
	(1178, 361, '39', '39_0361', '39_0361', 'BASILIO', 'REY', 'M.', 'Asso. Prof. 5', 'PERMANENT'),
	(1180, 362, '39', '39_0362', '39_0362', 'AVERA', 'LUCILLE', 'Q', 'Asst. Prof. 2', 'PERMANENT'),
	(1188, 366, '39', '39_0366', '39_0366', 'LARION', 'SOCORRO', 'A', 'Asst. Prof. 1', 'PERMANENT'),
	(1189, 367, '39', '39_0367', '39_0367', 'LLANES', 'JOCELYN', 'C', '', 'PERMANENT'),
	(1211, 377, '39', '39_0377', '39_0377', 'BATIN', 'JEANINA', 'B', 'Asst. Prof. 2', 'PERMANENT'),
	(1227, 382, '39', '39_0382', '39_0382', 'BELMONTE', 'CARMENCITA', 'L', 'Instructor 3', 'PERMANENT'),
	(1232, 383, '39', '39_0383', '39_0383', 'GACITA', 'MELODY', 'T.', 'Asst. Prof. 3', 'PERMANENT'),
	(1234, 384, '39', '39_0384', '39_0384', 'AVILA', 'TERESITA', 'B', 'Asst. Prof. 3', 'PERMANENT'),
	(1236, 385, '39', '39_0385', '39_0385', 'PINOL', 'GORGONIA', 'N', 'Asso. Prof. 5', 'PERMANENT'),
	(1238, 386, '39', '39_0386', '39_0386', 'FLORENDO', 'JOSEFINA', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1245, 390, '39', '39_0390', '39_0390', 'JOVEN', 'MARJORIE', 'F', 'Asst. Prof. 1', 'CONTRACTUAL'),
	(1249, 391, '39', '39_0391', '39_0391', 'ARCE', 'GILBERT', 'R', 'Asso. Prof. 3', 'PERMANENT'),
	(1255, 393, '39', '39_0393', '39_0393', 'PICHAY', 'JOSE', 'P', 'Asso. Prof. 3', 'PERMANENT'),
	(1259, 394, '39', '39_0394', '39_0394', 'QUERO', 'AURORA', '', 'Asso. Prof. 1', 'PERMANENT'),
	(1262, 395, '39', '39_0395', '39_0395', 'TAER', 'ROGELIO', 'P', 'Asst. Prof. 2', 'PERMANENT'),
	(1271, 398, '39', '39_0398', '39_0398', 'OBRERO', 'REMIGIO', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1274, 399, '39', '39_0399', '39_0399', 'GERONA', 'IRENE MELANIE', 'V', 'Asst. Prof. 1', 'PERMANENT'),
	(1277, 400, '39', '39_0400', '39_0400', 'ALCONIS', 'RONALD', '', 'Asst. Prof. 3', 'PERMANENT'),
	(1280, 401, '39', '39_0401', '39_0401', 'JOVEN', 'GERARDO', 'F', 'Asst. Prof. 4', 'PERMANENT'),
	(1283, 402, '39', '39_0402', '39_0402', 'ALCAYAGA', 'ARNOLD', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1287, 403, '39', '39_0403', '39_0403', 'CARIAGA', 'CLARITA', 'M', 'Asst. Prof. 4', 'PERMANENT'),
	(1289, 404, '39', '39_0404', '39_0404', 'BUENO', 'BEATRIZ', 'R', 'Asst. Prof. 4', 'PERMANENT'),
	(1293, 405, '39', '39_0405', '39_0405', 'BUENO', 'CHRISTOPHER', 'F', 'Asso. Prof. 4', 'PERMANENT'),
	(1296, 406, '39', '39_0406', '39_0406', 'RABARA', 'OLIVER', 'R', 'Asst. Prof. 1', 'PERMANENT'),
	(1299, 407, '39', '39_0407', '39_0407', 'DOLORES', 'VICTORIA', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1302, 408, '39', '39_0408', '39_0408', 'ASTOM', 'IMELDA', 'F', 'Asso. Prof. 3', 'PERMANENT'),
	(1305, 409, '39', '39_0409', '39_0409', 'ABAYA', 'DIGNA JOCELYN', 'L', 'Asso. Prof. 3', 'PERMANENT'),
	(1307, 410, '39', '39_0410', '39_0410', 'GARCIA', 'JESUS', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1309, 411, '39', '39_0411', '39_0411', 'REYNANTE', 'LORETO', 'L', 'Asst. Prof. 1', 'PERMANENT'),
	(1315, 413, '39', '39_0413', '39_0413', 'RUSIBIN', 'ISIDORO', 'E', 'Asso. Prof. 1', 'PERMANENT'),
	(1322, 415, '39', '39_0415', '39_0415', 'SOLIVEN', 'SCHUBERT', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1327, 417, '39', '39_0417', '39_0417', 'CACHAPERO', 'DENNIS', 'A', 'Instructor 2', 'PERMANENT'),
	(1332, 419, '39', '39_0419', '39_0419', 'MUNAR', 'DAVID', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1337, 421, '39', '39_0421', '39_0421', 'OANDASAN', 'ALEGRIA', 'F', 'Asso. Prof. 4', 'PERMANENT'),
	(1339, 422, '39', '39_0422', '39_0422', 'CONTAOI', 'MARIO', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1348, 424, '39', '39_0424', '39_0424', 'BRILLO', 'ELMO LOUIS', '', 'Asst. Prof. 1', 'PERMANENT'),
	(1351, 425, '39', '39_0425', '39_0425', 'FAGELA', 'SUSANA', 'T.', 'Instructor 3', 'PERMANENT'),
	(1358, 428, '39', '39_0428', '39_0428', 'RAGUNJAN', 'RUBEN', 'R', 'Asst. Prof. 4', 'PERMANENT'),
	(1362, 429, '39', '39_0429', '39_0429', 'REOLALAS', 'SANTIAGO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1366, 430, '39', '39_0430', '39_0430', 'RELON', 'LUZVIMINDA', 'P.', 'Asso. Prof. 2', 'PERMANENT'),
	(1372, 432, '39', '39_0432', '39_0432', 'PERLAS', 'CAESAR ZIGGY', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1380, 434, '39', '39_0434', '39_0434', 'NAVARRO', 'REMEDIOS', 'T', 'Asso. Prof. 4', 'PERMANENT'),
	(1394, 438, '39', '39_0438', '39_0438', 'ANGELES', 'ARNULFO', 'A', 'Instructor 3', 'PERMANENT'),
	(1398, 439, '39', '39_0439', '39_0439', 'RIOS', 'REBECCA', 'N', 'Asst. Prof. 1', 'PERMANENT'),
	(1406, 442, '39', '39_0442', '39_0442', 'MARINAS', 'ESPERANZA MARITES', 'V', 'Asst. Prof. 3', 'PERMANENT'),
	(1410, 443, '39', '39_0443', '39_0443', 'RAGUNJAN', 'NOLITO', 'R', 'Asst. Prof. 2', 'PERMANENT'),
	(1414, 445, '39', '39_0445', '39_0445', 'DULAY', 'MA. CORAZON', 'R', 'Asst. Prof. 4', 'PERMANENT'),
	(1418, 446, '39', '39_0446', '39_0446', 'QUICIO', 'VENERANDA', 'L', 'Asst. Prof. 4', 'PERMANENT'),
	(1424, 448, '39', '39_0448', '39_0448', 'AQUINO', 'LEONARDO', 'B', 'Asst. Prof. 4', 'PERMANENT'),
	(1429, 449, '39', '39_0449', '39_0449', 'ARRUEJO', 'JOEL', 'M', 'Asst. Prof. 1', 'PERMANENT'),
	(1434, 450, '39', '39_0450', '39_0450', 'CABATU', 'AMANTE', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1437, 451, '39', '39_0451', '39_0451', 'SOMERA', 'ALMA', 'C.', 'Asst. Prof. 3', 'PERMANENT'),
	(1443, 453, '39', '39_0453', '39_0453', 'CABANERO', 'ERNA', '', 'Instructor 1', 'PERMANENT'),
	(1448, 454, '39', '39_0454', '39_0454', 'NAVARRO', 'VICTOR', 'B', 'Asst. Prof. 1', 'PERMANENT'),
	(1451, 455, '39', '39_0455', '39_0455', 'RAMOS', 'JENNY ROSE', '', 'Instructor 3', 'PERMANENT'),
	(1454, 456, '39', '39_0456', '39_0456', 'ALCONIS', 'CHARITO', 'R', 'Instructor 3', 'PERMANENT'),
	(1475, 461, '39', '39_0461', '39_0461', 'DAFUN', 'MARJORIE', 'R', 'Asst. Prof. 1', 'PERMANENT'),
	(1478, 462, '39', '39_0462', '39_0462', 'SAVELLA', 'MARLOU', 'R', 'Asso. Prof. 2', 'PERMANENT'),
	(1506, 472, '39', '39_0472', '39_0472', 'ADVINCULA', 'ANACLETO', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1512, 474, '39', '39_0474', '39_0474', 'ROJO', 'TRINIDAD', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1520, 477, '39', '39_0477', '39_0477', 'TABIOS', 'STEPHEN', 'C', 'Asst. Prof. 1', 'PERMANENT'),
	(1524, 478, '39', '39_0478', '39_0478', 'TABIOS', 'AVELINA', 'J', 'Asst. Prof. 1', 'PERMANENT'),
	(1528, 479, '39', '39_0479', '39_0479', 'RUADAP', 'MAY EVELIA', 'V', 'Asst. Prof. 2', 'PERMANENT'),
	(1538, 482, '39', '39_0482', '39_0482', 'TABLADA', 'SATURNINO', 'T', 'Asst. Prof. 3', 'PERMANENT'),
	(1543, 483, '39', '39_0483', '39_0483', 'CONCORDIA', 'MATILDE', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1548, 484, '39', '39_0484', '39_0484', 'URBANO', 'HELEN', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1560, 488, '39', '39_0488', '39_0488', 'ALONZO', 'GEORGE', 'P', 'Asst. Prof. 1', 'PERMANENT'),
	(1563, 489, '39', '39_0489', '39_0489', 'AMAN', 'NELIA', 'V', 'Professor 2', 'PERMANENT'),
	(1579, 496, '39', '39_0496', '39_0496', 'BELIZAR', 'ELEANOR', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1582, 497, '39', '39_0497', '39_0497', 'CADORNA', 'ERWIN', 'F', 'Professor 5', 'PERMANENT'),
	(1584, 498, '39', '39_0498', '39_0498', 'NAVARRO', 'ROLANDO', 'B.', 'Asso. Prof. 5', 'PERMANENT'),
	(1587, 499, '39', '39_0499', '39_0499', 'BARCENA', 'NOVELYN', 'T.', 'Asst. Prof. 4', 'PERMANENT'),
	(1590, 500, '39', '39_0500', '39_0500', 'TABBUAC', 'ORLINO', 'T.', 'Asst. Prof. 2', 'PERMANENT'),
	(1596, 502, '39', '39_0502', '39_0502', 'PIANO', 'MAE OLIVA', 'M', 'Asst. Prof. 3', 'PERMANENT'),
	(1604, 505, '39', '39_0505', '39_0505', 'RABANAL', 'GLENDA', 'C.', 'Asst. Prof. 3', 'PERMANENT'),
	(1607, 506, '39', '39_0506', '39_0506', 'FLORENTINO', 'CARMELA', 'M', 'Asst. Prof. 4', 'PERMANENT'),
	(1610, 507, '39', '39_0507', '39_0507', 'EDER', 'MA. NINA', '', 'Instructor 3', 'TEMPORARY'),
	(1612, 508, '39', '39_0508', '39_0508', 'QUINTINITA', 'AURORA RUSS', '', 'Instructor 3', 'PERMANENT'),
	(1614, 509, '39', '39_0509', '39_0509', 'BENZON', 'NELSON', 'F', 'Instructor 3', ''),
	(1619, 511, '39', '39_0511', '39_0511', 'BALBUENA', 'MARIE GRACIEL', 'R', 'Instructor 3', ''),
	(1622, 512, '39', '39_0512', '39_0512', 'JAVIER', 'CID', 'A', 'Instructor 3', 'PERMANENT'),
	(1624, 513, '39', '39_0513', '39_0513', 'REOTUTAR', 'ERIC', 'F', 'Asst. Prof. 2', 'PERMANENT'),
	(1628, 514, '39', '39_0514', '39_0514', 'CHAN', 'RODOLFO', '', 'Asst. Prof. 2', 'PERMANENT'),
	(1630, 515, '39', '39_0515', '39_0515', 'BOBITA', 'ALMA JOSEFINA', 'A', 'Asst. Prof. 2', 'PERMANENT'),
	(1638, 518, '39', '39_0518', '39_0518', 'BETITA', 'MARIA CRESALYN', 'B', 'Asso. Prof. 1', 'PERMANENT'),
	(1641, 519, '39', '39_0519', '39_0519', 'BERMIO', 'JOUSSIE', 'B', 'Asst. Prof. 2', 'PERMANENT'),
	(1648, 522, '39', '39_0522', '39_0522', 'BAJET', 'NELSON', 'A', 'Asst. Prof. 1', 'PERMANENT'),
	(1654, 525, '39', '39_0525', '39_0525', 'COMILANG', 'NORA', 'E', 'Instructor 3', ''),
	(1660, 527, '39', '39_0527', '39_0527', 'RABANAL', 'PETER', 'R', 'Asst. Prof. 4', 'PERMANENT'),
	(1664, 528, '39', '39_0528', '39_0528', 'SUPNET', 'GEMMA AGNES', 'R', 'Asst. Prof. 1', ''),
	(1667, 529, '39', '39_0529', '39_0529', 'RAMBUYON', 'RAINALDA', 'T', 'Asst. Prof. 1', 'PERMANENT'),
	(1670, 530, '39', '39_0530', '39_0530', 'VALENCIA', 'PAUL ROMMEL', '', 'Asst. Prof. 1', 'PERMANENT'),
	(1674, 532, '39', '39_0532', '39_0532', 'MOLINA', 'GLORIA', 'V', 'Asst. Prof. 4', 'PERMANENT'),
	(1676, 533, '39', '39_0533', '39_0533', 'ROMO', 'NECY CESARIA', 'V', 'Asso. Prof. 4', 'PERMANENT'),
	(1679, 534, '39', '39_0534', '39_0534', 'TALBO', 'WENDELYN', 'R', 'Asst. Prof. 2', 'PERMANENT'),
	(1684, 536, '39', '39_0536', '39_0536', 'JARAMILLA', 'ALDRIN', 'S', 'Asst. Prof. 2', 'PERMANENT'),
	(1686, 537, '39', '39_0537', '39_0537', 'VELASCO', 'LUZ GREGORIA', 'L', 'Asso. Prof. 2', ''),
	(1690, 538, '39', '39_0538', '39_0538', 'AMANO', 'EVELYN', 'D', 'Instructor 3', ''),
	(1693, 539, '39', '39_0539', '39_0539', 'TACTAY', 'TIRSO', 'P', 'Asst. Prof. 2', 'PERMANENT'),
	(1695, 540, '39', '39_0540', '39_0540', 'ARLEGUI', 'ANITA', '', 'Instructor 3', 'PERMANENT'),
	(1698, 541, '39', '39_0541', '39_0541', 'TABUNAN', 'WILMA', '', 'Instructor 3', 'PERMANENT'),
	(1700, 542, '39', '39_0542', '39_0542', 'JOVEN', 'ANASTACIA', '', 'Instructor 3', ''),
	(1704, 543, '39', '39_0543', '39_0543', 'RIVERA', 'ISMAEL', 'C', 'Asst. Prof. 1', ''),
	(1707, 544, '39', '39_0544', '39_0544', 'AGAM', 'FELICITAS RIZZA', '', 'Instructor 2', 'PERMANENT'),
	(1711, 546, '39', '39_0546', '39_0546', 'QUELNAN', 'FRANCISCO', '', 'Instructor 1', ''),
	(1713, 547, '39', '39_0547', '39_0547', 'RAMOS', 'ELAINE ROSE', 'D', 'Instructor 2', ''),
	(1715, 548, '39', '39_0548', '39_0548', 'DE VERA', 'ALLEN MAGDALENO', 'A', 'Asst. Prof. 2', ''),
	(1718, 549, '39', '39_0549', '39_0549', 'REBURON', 'ARLAN', '', 'Asst. Prof. 1', 'PERMANENT'),
	(1720, 550, '39', '39_0550', '39_0550', 'REYES', 'NATIVIDAD', 'S', 'Instructor 1', ''),
	(1723, 551, '39', '39_0551', '39_0551', 'DE LA CRUZ', 'FLORENCE', 'A', 'Instructor 3', ''),
	(1726, 552, '39', '39_0552', '39_0552', 'RIBOROSO', 'RHOSECHELLE', '', 'Instructor 3', ''),
	(1729, 553, '39', '39_0553', '39_0553', 'FETALVERO', 'HENRYSON', '', 'Instructor 3', 'PERMANENT'),
	(1731, 554, '39', '39_0554', '39_0554', 'TEJERO', 'RHODORA', '', 'Instructor 2', ''),
	(1734, 555, '39', '39_0555', '39_0555', 'NOLASCO', 'LEMUEL', '', 'Asst. Prof. 1', ''),
	(1737, 556, '39', '39_0556', '39_0556', 'DE LA CRUZ', 'JANE', '', 'Instructor 1', ''),
	(1743, 558, '39', '39_0558', '39_0558', 'DAMO', 'MA. OLIVA PERFILIA', '', 'Instructor 3', ''),
	(1747, 559, '39', '39_0559', '39_0559', 'ILAC', 'ADORA', '', 'Asst. Prof. 3', 'PERMANENT'),
	(1750, 560, '39', '39_0560', '39_0560', 'DE GUZMAN', 'FELY', '', 'Instructor 3', ''),
	(1754, 561, '39', '39_0561', '39_0561', 'DE LA ROSA', 'JOSELITO', '', 'Asst. Prof. 2', ''),
	(1757, 562, '39', '39_0562', '39_0562', 'ABIGANIA', 'MYRA VICENTA', '', 'Instructor 3', ''),
	(1764, 564, '39', '39_0564', '39_0564', 'ARCE', 'VICTORIA', '', 'Asst. Prof. 1', ''),
	(1768, 566, '39', '39_0566', '39_0566', 'TOLENTINO', 'OSWALD', '', 'Instructor 2', 'TEMPORARY'),
	(1770, 567, '39', '39_0567', '39_0567', 'TACTAY', 'NORIE', '', 'Instructor 3', 'PERMANENT'),
	(1772, 568, '39', '39_0568', '39_0568', 'UNCIANO', 'MA. JESUSA', '', 'Asso. Prof. 1', 'PERMANENT'),
	(1775, 569, '39', '39_0569', '39_0569', 'QUEDDENG', 'MERCITA', '', 'Asst. Prof. 4', 'PERMANENT'),
	(1778, 570, '39', '39_0570', '39_0570', 'SIMON', 'JOEBERT', '', 'Instructor 2', ''),
	(1781, 571, '39', '39_0571', '39_0571', 'EBOJO', 'MAGDALENA', '', 'Instructor 2', ''),
	(1788, 573, '39', '39_0573', '39_0573', 'NESPEROS', 'IMELDA', '', 'Instructor 3', ''),
	(1791, 574, '39', '39_0574', '39_0574', 'CABANTING', 'MINERVA', '', 'Asst. Prof. 2', ''),
	(1796, 576, '39', '39_0576', '39_0576', 'ANDALLO', 'EMIGIDIO ORLANDO', '', 'Asst. Prof. 1', ''),
	(1800, 577, '39', '39_0577', '39_0577', 'SEGISMUNDO', 'ALMA', '', 'Asst. Prof. 3', 'PERMANENT'),
	(1804, 578, '39', '39_0578', '39_0578', 'AGUP', 'RANDOLF', '', 'Asst. Prof. 2', ''),
	(1807, 579, '39', '39_0579', '39_0579', 'ALBALOS', 'JULIUS MOISES', '', 'Instructor 3', ''),
	(1809, 580, '39', '39_0580', '39_0580', 'REAL', 'KARLO', '', 'Asst. Prof. 1', 'PERMANENT'),
	(1812, 581, '39', '39_0581', '39_0581', 'MARTINEZ', 'ASHLEY PAULINO', '', 'Asst. Prof. 2', ''),
	(1816, 582, '39', '39_0582', '39_0582', 'BAUTISTA', 'LEILA SYLVIA', '', 'Asst. Prof. 1', ''),
	(1820, 583, '39', '39_0583', '39_0583', 'CANOY', 'BERNADETH', '', 'Instructor 3', ''),
	(1822, 584, '39', '39_0584', '39_0584', 'NAVARRO', 'ABEL', '', 'Instructor 3', ''),
	(1831, 587, '39', '39_0587', '39_0587', 'BELENO', 'JOEL', '', 'Asso. Prof. 5', 'PERMANENT'),
	(1835, 588, '39', '39_0588', '39_0588', 'FELICITAS', 'AUSBERT', '', 'Instructor 3', ''),
	(1838, 589, '39', '39_0589', '39_0589', 'DE PERALTA', 'GERALD CAEZAR', '', 'Asst. Prof. 2', ''),
	(1842, 590, '39', '39_0590', '39_0590', 'RIDAO', 'MARJORIE', '', 'Asst. Prof. 1', ''),
	(1845, 591, '39', '39_0591', '39_0591', 'NAVARRO', 'LORNA', '', 'Instructor 3', ''),
	(1847, 592, '39', '39_0592', '39_0592', 'QUEYPO', 'RAYMUND', '', 'Instructor 3', 'PERMANENT'),
	(1866, 600, '39', '39_0600', '39_0600', 'URSULOM', 'FLORIDA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(1868, 601, '39', '39_0601', '39_0601', 'DUQUINAL', 'MARITES', 'I', 'Asst. Prof. 1', 'TEMPORARY'),
	(1875, 604, '39', '39_0604', '39_0604', 'GARCIA', 'GRACE', '', 'Asst. Prof. 2', ''),
	(1891, 609, '39', '39_0609', '39_0609', 'PARDO', 'CORAZON', 'G', 'Asso. Prof. 4', 'PERMANENT'),
	(1908, 614, '39', '39_0614', '39_0614', 'TACBAS', 'DEA MEIR', 'L', 'Instructor 1', 'TEMPORARY'),
	(1924, 621, '39', '39_0621', '39_0621', 'RAGASA', 'MAILA', 'P', 'Instructor 2', 'TEMPORARY'),
	(1928, 622, '39', '39_0622', '39_0622', 'QUILONIO', 'MARILOU URSULA', 'C', 'Instructor 1', 'TEMPORARY'),
	(2019, 658, '39', '39_0658', '39_0658', 'BALITE', 'JULIE BETH', '', 'Asst. Prof. 1', 'TEMPORARY'),
	(2023, 659, '39', '39_0659', '39_0659', 'RETUTA', 'GENER', '', 'Instructor 1', ''),
	(2027, 660, '39', '39_0660', '39_0660', 'PARIÑAS', 'MERVIC', 'M', 'Asst. Prof. 1', 'PERMANENT'),
	(2030, 661, '39', '39_0661', '39_0661', 'QUARIO', 'RYAN', 'D', 'Instructor 1', ''),
	(2034, 662, '39', '39_0662', '39_0662', 'ALESON', 'MYLINE', '', 'Instructor 3', ''),
	(2037, 663, '39', '39_0663', '39_0663', 'LLANES', 'SCOTT JASON', 'P', 'Instructor 2', ''),
	(2041, 664, '39', '39_0664', '39_0664', 'OBISPO', 'SHIELA', 'G', 'Instructor 1', ''),
	(2044, 665, '39', '39_0665', '39_0665', 'PASTOR', 'MARIA INES', 'BATTAD', 'Instructor 3', 'PERMANENT'),
	(2048, 666, '39', '39_0666', '39_0666', 'PABLICO', 'MARILEN', '', 'Asst. Prof. 3', 'PERMANENT'),
	(2052, 667, '39', '39_0667', '39_0667', 'REYES', 'WILFREDO', '', 'Instructor 3', 'PERMANENT'),
	(2056, 668, '39', '39_0668', '39_0668', 'ALMACHAR', 'NIÑO PATRICIO', 'H', 'Asst. Prof. 1', 'PERMANENT'),
	(2060, 669, '39', '39_0669', '39_0669', 'SORIA', 'JASTIN', 'R', 'Instructor 1', 'TEMPORARY'),
	(2063, 670, '39', '39_0670', '39_0670', 'ALMACHAR', 'CLAUDINE CECILIA', 'H', 'Instructor 3', 'PERMANENT'),
	(2067, 671, '39', '39_0671', '39_0671', 'AQUINO', 'MARIA YOLANDA', 'R', 'Instructor 2', 'PERMANENT'),
	(2070, 672, '39', '39_0672', '39_0672', 'RIN', 'ELMARIE', '', 'Instructor 2', 'PERMANENT'),
	(2074, 673, '39', '39_0673', '39_0673', 'AGUILAR', 'IRENE', '', 'Instructor 2', 'PERMANENT'),
	(2078, 674, '39', '39_0674', '39_0674', 'TUZON', 'FE', '', 'Instructor 3', 'PERMANENT'),
	(2082, 675, '39', '39_0675', '39_0675', 'CACHO', 'ELSIE', '', 'Instructor 1', 'PERMANENT'),
	(2085, 676, '39', '39_0676', '39_0676', 'DIZA', 'MYRELLE FAITH', '', 'Instructor 1', 'PERMANENT'),
	(2089, 677, '39', '39_0677', '39_0677', 'BUENO', 'EDEN', 'A', 'Asst. Prof. 2', ''),
	(2093, 678, '39', '39_0678', '39_0678', 'ALQUIZA', 'SHIRLEY MAY', '', 'Instructor 2', 'PERMANENT'),
	(2096, 679, '39', '39_0679', '39_0679', 'DAVID', 'KAREN', '', 'Instructor 2', ''),
	(2100, 680, '39', '39_0680', '39_0680', 'TAMAYO', 'ROMELIA', 'P', 'Instructor 3', 'PERMANENT'),
	(2104, 681, '39', '39_0681', '39_0681', 'RAQUEPO', 'LEILANI', 'R', 'Asst. Prof. 1', 'PERMANENT'),
	(2107, 682, '39', '39_0682', '39_0682', 'GALAPON', 'EFREN', '', 'Instructor 3', ''),
	(2110, 683, '39', '39_0683', '39_0683', 'LAURETA', 'MELVIN', '', 'Instructor 2', 'PERMANENT'),
	(2114, 684, '39', '39_0684', '39_0684', 'PAZ', 'CRIZZLE', 'BAJET', 'Instructor 1', ''),
	(2117, 685, '39', '39_0685', '39_0685', 'QUEBRAL', 'PRINCESS NEPTALIA', '', 'Instructor 2', ''),
	(2120, 686, '39', '39_0686', '39_0686', 'PASTOR', 'NOEL', '', 'Asso. Prof. 2', ''),
	(2124, 687, '39', '39_0687', '39_0687', 'TAGORDA', 'ERNESTO', '', 'Asso. Prof. 3', 'PERMANENT'),
	(2128, 688, '39', '39_0688', '39_0688', 'MALCABA', 'GERARD EDWIN', '', 'Instructor 1', ''),
	(2130, 689, '39', '39_0689', '39_0689', 'ANICAS', 'MERCEDES', '', 'Asst. Prof. 1', ''),
	(2134, 690, '39', '39_0690', '39_0690', 'VIRTUDES', 'JOCELYN', '', 'Instructor 2', 'PERMANENT'),
	(2138, 691, '39', '39_0691', '39_0691', 'MATA', 'LLOYD', '', 'Instructor 2', ''),
	(2141, 692, '39', '39_0692', '39_0692', 'FULLER', 'NOVELYN', '', 'Instructor 3', 'PERMANENT'),
	(2145, 693, '39', '39_0693', '39_0693', 'PARANADA', 'JILL ANN', '', 'Instructor 1', ''),
	(2148, 694, '39', '39_0694', '39_0694', 'ABARQUEZ', 'SIMEON', 'B', 'Instructor 3', ''),
	(2151, 695, '39', '39_0695', '39_0695', 'TAGORDA', 'GLENDA', '', 'Asso. Prof. 2', 'PERMANENT'),
	(2154, 696, '39', '39_0696', '39_0696', 'GAPATE', 'BENJIE', '', 'Asst. Prof. 2', ''),
	(2157, 697, '39', '39_0697', '39_0697', 'GASCON', 'VIRGILIO', '', 'Asst. Prof. 4', ''),
	(2161, 698, '39', '39_0698', '39_0698', 'ESTA', 'JOE MICHAEL', '', 'Instructor 2', ''),
	(2164, 699, '39', '39_0699', '39_0699', 'LOZANO', 'LUDIVINA', 'A', 'Instructor 3', 'PERMANENT'),
	(2168, 700, '39', '39_0700', '39_0700', 'MERESEN', 'DENESSE JANE', 'GEYROZAGA', 'Instructor 1', ''),
	(2172, 701, '39', '39_0701', '39_0701', 'FENIS', 'MYREEN', 'ARENAS', 'Instructor 1', ''),
	(2176, 702, '39', '39_0702', '39_0702', 'GOROSPE', 'BONNA MAE', 'S', 'Instructor 1', ''),
	(2178, 703, '39', '39_0703', '39_0703', 'BENZON', 'PARALUMAN MA. FATIMA', 'C', 'Instructor 1', ''),
	(2181, 704, '39', '39_0704', '39_0704', 'RAFANAN', 'EVELYN', 'A', 'Instructor 2', ''),
	(2184, 705, '39', '39_0705', '39_0705', 'LOPEZ', 'MILA', 'A', 'Instructor 1', ''),
	(2188, 706, '39', '39_0706', '39_0706', 'TOLBE', 'ERWIN', 'T', 'Instructor 1', 'PERMANENT'),
	(2191, 707, '39', '39_0707', '39_0707', 'JAVIER', 'EDNA', 'R', 'Instructor 1', ''),
	(2194, 708, '39', '39_0708', '39_0708', 'PERE', 'CLARITA', 'P', 'Instructor 1', ''),
	(2197, 709, '39', '39_0709', '39_0709', 'PURISIMA', 'EFIFANIA MARLENE', 'R.', 'Instructor 1', ''),
	(2201, 710, '39', '39_0710', '39_0710', 'SOLIVEN', 'TEODORA RITA', 'R', 'Instructor 2', ''),
	(2204, 711, '39', '39_0711', '39_0711', 'VECINA', 'LEILANI', 'P', 'Asst. Prof. 2', 'PERMANENT'),
	(2208, 712, '39', '39_0712', '39_0712', 'EDER', 'ANGELITO', 'B', 'Asso. Prof. 2', ''),
	(2211, 713, '39', '39_0713', '39_0713', 'RODILLAS', 'FE', 'R', 'Instructor 1', ''),
	(2214, 714, '39', '39_0714', '39_0714', 'ALMACHAR', 'JUVIE LYNNE', 'T', 'Instructor 1', ''),
	(2218, 715, '39', '39_0715', '39_0715', 'PALMA', 'VINCENT GENARO', 'P', 'Instructor 1', ''),
	(2221, 716, '39', '39_0716', '39_0716', 'ABLOG', 'LORELY', 'A', 'Instructor 1', 'PERMANENT'),
	(2225, 717, '39', '39_0717', '39_0717', 'ASANION', 'ROMELINE', 'A', 'Instructor 1', ''),
	(2228, 718, '39', '39_0718', '39_0718', 'JANDOC', 'BRENDO', 'V', 'Asso. Prof. 1', ''),
	(2231, 719, '39', '39_0719', '39_0719', 'LAMARCA', 'BRYAN IRVINE', 'J', 'Instructor 1', ''),
	(2233, 720, '39', '39_0720', '39_0720', 'ALMAZAN', 'CHASEN', 'G', 'Instructor 1', ''),
	(2235, 721, '39', '39_0721', '39_0721', 'AGUP', 'ROLLY', 'M', 'Instructor 2', ''),
	(2238, 722, '39', '39_0722', '39_0722', 'DARISAN', 'LORENA', 'T', 'Instructor 1', ''),
	(2241, 723, '39', '39_0723', '39_0723', 'TOJE', 'MON-CRES', 'A', 'Instructor 2', 'PERMANENT'),
	(2243, 724, '39', '39_0724', '39_0724', 'ALCONIS', 'ANA LEA', 'A', 'Instructor 1', 'PERMANENT'),
	(2246, 725, '39', '39_0725', '39_0725', 'BALLALO', 'ELVIN', 'A', 'Instructor 1', ''),
	(2248, 726, '39', '39_0726', '39_0726', 'ALLAGADAN', 'JOHNNY', 'A', 'Instructor 3', ''),
	(2251, 727, '39', '39_0727', '39_0727', 'TUGADE', 'TITO', '', 'Instructor 3', 'PERMANENT');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.facultydocs
DROP TABLE IF EXISTS `facultydocs`;
CREATE TABLE IF NOT EXISTS `facultydocs` (
  `FacultyDocsNo` int(11) NOT NULL AUTO_INCREMENT,
  `FacultyNo` int(11) DEFAULT '0',
  `DocsFilename` longtext,
  `CycleNo` tinyint(3) unsigned DEFAULT '0',
  `SUCNo` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`FacultyDocsNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.facultydocs: 0 rows
/*!40000 ALTER TABLE `facultydocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `facultydocs` ENABLE KEYS */;

-- Dumping structure for table cephaznbc.suc
DROP TABLE IF EXISTS `suc`;
CREATE TABLE IF NOT EXISTS `suc` (
  `SUCNo` varchar(12) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Passwd` varchar(15) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Head` varchar(50) DEFAULT NULL,
  `CycleNo` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PreviousCycleNo` tinyint(3) unsigned DEFAULT '204',
  `SchoolType` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`SUCNo`),
  KEY `Code` (`Code`),
  KEY `CycleNo` (`CycleNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.suc: 12 rows
/*!40000 ALTER TABLE `suc` DISABLE KEYS */;
INSERT INTO `suc` (`SUCNo`, `Code`, `Passwd`, `Name`, `Address`, `Head`, `CycleNo`, `PreviousCycleNo`, `SchoolType`) VALUES
	('101', 'ISPSC', NULL, 'ILOCOS SUR POLYTECHNIC STATE COLLEGE', 'STA. MARIA, ILOCOS SUR', 'DR. RAFAEL QUERUBIN', 4, 204, 'SUC   '),
	('12', 'PSU', NULL, 'PANGASINAN STATE UNIVERSITY', 'LINGAYEN, PANGASINAN', 'DR. VICTORIANO ESTIRA', 4, 204, 'SUC   '),
	('25', 'ASIST', NULL, 'ABRA SCHOOL OF ARTS AND TRADES', 'LAGANGILANG, ABRA', 'DR. A', 4, 3, 'SUC   '),
	('31', 'MMSU', NULL, 'MARIANO MARCOS STATE UNIVERSITY', 'BATAC, ILOCOS NORTE', 'DR. MIRIAM E. PASCUA', 4, 204, 'SUC   '),
	('33', 'DMMMSU', NULL, 'DON MARIANO MARCOS MEMORIAL STATE UNIVERSITY', 'BACNOTAN, LA UNION', 'DR. BENJAMIN SAPITULA', 4, 3, 'SUC   '),
	('39', 'UNP', 'UNP', 'UNIVERSITY OF NORTHERN PHILIPPINES', 'VIGAN CITY, ILOCOS SUR', 'DR. GILBERT R. ARCE', 6, 5, 'SUC   '),
	('39X', 'NLPSC', NULL, 'NORTH LUZON PHILIPPINES STATE COLLEGE', 'CANDON CITY, ILOCOS SUR', 'DR. ELIZABETH GACUSANA', 5, 4, 'SUC   '),
	('9', 'BSU', NULL, 'BENGUET STATE UNIVERSITY', 'LA TRINIDAD, BENGUET', 'DR. BEN LADILAD', 4, 204, 'SUC   '),
	('B1', 'BSC', NULL, 'BATANES STATE COLLEGE', '_', '_', 5, 204, 'SUC   '),
	('C60', 'PSAT', NULL, 'PANGASINAN SCHOOL OF ARTS AND TRADES', 'LINGAYEN, PANGSINAN', 'DR.', 5, 204, 'SUC   '),
	('T1', 'BCSAT', NULL, 'BAGUIO CITY SCHOOL OF ARTS AND TRADES', 'BAGUIO CITY', '-', 1, 204, 'SUC   '),
	('T2', 'MAIS', NULL, 'MARCOS AGRO-INDUSTRIAL SCHOOL', 'MARCOS, ILOCOS NORTE', 'MR. REGINO SEBASTIAN', 4, 204, 'TESDA ');
/*!40000 ALTER TABLE `suc` ENABLE KEYS */;

-- Dumping structure for view cephaznbc.vw_ccedisplay
DROP VIEW IF EXISTS `vw_ccedisplay`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_ccedisplay` (
	`CCECode` VARCHAR(11) NOT NULL COLLATE 'utf8_general_ci',
	`Group` VARCHAR(11) NULL COLLATE 'utf8_general_ci',
	`IsInput` TINYINT(3) UNSIGNED NULL,
	`CodeDisplay` VARCHAR(11) NULL COLLATE 'utf8_general_ci',
	`Description` VARCHAR(101) NULL COLLATE 'utf8_general_ci',
	`No` TINYINT(3) UNSIGNED NULL,
	`Space` DECIMAL(16,4) NULL,
	`ShowGroup` TINYINT(3) UNSIGNED NULL,
	`ScoreeEval1` DOUBLE NULL,
	`ScoreeEval2` DOUBLE NULL,
	`SUCNo` VARCHAR(12) NULL COLLATE 'utf8_general_ci',
	`CycleNo` TINYINT(3) UNSIGNED NULL
) ENGINE=MyISAM;

-- Dumping structure for view cephaznbc.vw_cce_current
DROP VIEW IF EXISTS `vw_cce_current`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `vw_cce_current` (
	`FacultyNo` INT(11) NULL,
	`SUCNo` VARCHAR(12) NULL COLLATE 'utf8_general_ci',
	`CycleNo` TINYINT(3) UNSIGNED NULL,
	`CCECode` VARCHAR(11) NULL COLLATE 'utf8_general_ci',
	`ScoreeEval1` DOUBLE NULL,
	`ScoreeEval2` DOUBLE NULL
) ENGINE=MyISAM;

-- Dumping structure for table cephaznbc.zonal
DROP TABLE IF EXISTS `zonal`;
CREATE TABLE IF NOT EXISTS `zonal` (
  `Head` varchar(100) DEFAULT NULL,
  `Area` varchar(150) DEFAULT NULL,
  `Position` varchar(150) DEFAULT NULL,
  `PrintType` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table cephaznbc.zonal: 1 rows
/*!40000 ALTER TABLE `zonal` DISABLE KEYS */;
INSERT INTO `zonal` (`Head`, `Area`, `Position`, `PrintType`) VALUES
	('OCARNA B. FIGUERRES, Ph.D.', 'NORTHWESTERN LUZON AREA', 'DIRECTOR', ' DRAFT');
/*!40000 ALTER TABLE `zonal` ENABLE KEYS */;

-- Dumping structure for view cephaznbc.vw_ccedisplay
DROP VIEW IF EXISTS `vw_ccedisplay`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_ccedisplay`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`192.168.%` VIEW `vw_ccedisplay` AS SELECT CCEDisplay.CCECode, CCEDisplay.Group, CCEDisplay.IsInput, CCEDisplay.CodeDisplay, CCEDisplay.Description, CCEDisplay.No, ((CHAR_LENGTH(CCEDisplay.CCECode)+1)/2-1)*3 AS Space, CCEDisplay.ShowGroup, vw_cce_current.ScoreeEval1, vw_cce_current.ScoreeEval2, vw_cce_current.SUCNo, vw_cce_current.CycleNo
FROM CCEDisplay LEFT JOIN vw_cce_current ON CCEDisplay.CCECode = vw_cce_current.CCECode
ORDER BY CCEDisplay.No ;

-- Dumping structure for view cephaznbc.vw_cce_current
DROP VIEW IF EXISTS `vw_cce_current`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `vw_cce_current`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`192.168.%` VIEW `vw_cce_current` AS SELECT CCE.FacultyNo, CCE.SUCNo, CCE.CycleNo, CCE.CCECode, Sum(CCE.ScoreeEval1) AS ScoreeEval1, Sum(CCE.ScoreeEval2) AS ScoreeEval2
FROM CCE INNER JOIN SUC ON (SUC.CycleNo = CCE.CycleNo) AND (CCE.SUCNo = SUC.SUCNo)
GROUP BY CCE.FacultyNo, CCE.SUCNo, CCE.CycleNo, CCE.CCECode ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
