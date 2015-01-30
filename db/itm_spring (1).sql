-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2014 at 10:10 PM
-- Server version: 5.5.40
-- PHP Version: 5.3.10-1ubuntu3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itm_spring`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` text,
  `DepartmentID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `DepartmentID` (`DepartmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ID`, `Name`, `Description`, `DepartmentID`) VALUES
(1, 'CK1', '', 6),
(2, 'CK2', '', 6),
(3, 'DT1', '', 7),
(4, 'DT2', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `defensesession`
--

CREATE TABLE IF NOT EXISTS `defensesession` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Active` int(10) unsigned NOT NULL,
  `date` varchar(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `defensesession`
--

INSERT INTO `defensesession` (`ID`, `Description`, `Active`, `date`) VALUES
(25, 'tsuydyis', 1, '2014-10-21'),
(29, 'gsdfgdf', 1, '2014-09-26'),
(30, 'drgÃ?Â¡Ã?Â»Ã?Â­yw', 0, '2014-10-24'),
(31, 'Ä?áº§gadh', 1, '2014-10-10'),
(32, 'lghkj;l', 1, '2014-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`ID`, `Name`, `Description`) VALUES
(1, 'TS', 'Tiến sĩ'),
(2, 'GS', 'Giáo sư'),
(3, 'PGS', 'Phó giáo sư'),
(4, 'GS.TS', 'Giáo sư Tiến sĩ'),
(5, 'PGS.TS', 'Phó giáo sư Tiến sĩ'),
(6, 'ThS', 'Thạc sĩ');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `InstituteID` int(10) unsigned NOT NULL,
  `Description` text,
  PRIMARY KEY (`ID`),
  KEY `InstituteID` (`InstituteID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`ID`, `Name`, `InstituteID`, `Description`) VALUES
(6, 'Vien Co khi', 2, ''),
(7, 'Vien Dien tu', 2, ''),
(8, 'Vien Ngoai ngu', 2, ''),
(9, 'Viện CNTT-TT', 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE IF NOT EXISTS `institutes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Description` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`ID`, `Name`, `Description`) VALUES
(2, 'Hanoi University of Science and Technology', 'Ä?áº¡i há»?c BÃ¡ch KhÃ³a HÃ  Ná»?i'),
(15, 'Đại học Bách Khoa TP Hồ Chí Minh', '');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE IF NOT EXISTS `professors` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Department` int(10) unsigned DEFAULT NULL,
  `ExpertLevel` int(10) unsigned DEFAULT NULL,
  `Degree` int(11) DEFAULT NULL,
  `InstituteID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `InstituteID` (`InstituteID`),
  KEY `Department` (`Department`),
  KEY `Degree` (`Degree`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`ID`, `Name`, `Department`, `ExpertLevel`, `Degree`, `InstituteID`) VALUES
(1, 'Phạm Quang Dũng', 6, 4, 1, 2),
(3, 'Huynh Thanh Binh', 9, 5, 1, 15),
(4, 'Phạm Quang Dũng', 9, 5, 5, 15),
(5, 'Huynh Thanh Binh', 9, 5, 3, 15),
(6, 'Huynh Thanh Binh', 7, 5, 2, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `professors_info`
--
CREATE TABLE IF NOT EXISTS `professors_info` (
`ID` int(10) unsigned
,`Name` text
,`ExpertLevel` int(10) unsigned
,`InstituteID` int(10) unsigned
,`Institute` text
,`DepartmentID` int(10) unsigned
,`Department` text
,`DegreeID` int(11)
,`Degree` text
);
-- --------------------------------------------------------

--
-- Table structure for table `professor_subject_category`
--

CREATE TABLE IF NOT EXISTS `professor_subject_category` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProfessorID` int(10) unsigned NOT NULL,
  `SubjectCategoryID` int(10) unsigned NOT NULL,
  `MatchScore` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ProfessorID` (`ProfessorID`),
  KEY `SubjectCategoryID` (`SubjectCategoryID`),
  KEY `ProfessorID_2` (`ProfessorID`,`SubjectCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1480 ;

--
-- Dumping data for table `professor_subject_category`
--

INSERT INTO `professor_subject_category` (`ID`, `ProfessorID`, `SubjectCategoryID`, `MatchScore`) VALUES
(1420, 2, 58, 5),
(1421, 2, 59, 5),
(1422, 2, 60, 5),
(1423, 2, 61, 5),
(1424, 2, 62, 5),
(1425, 2, 63, 5),
(1426, 2, 64, 5),
(1427, 2, 65, 5),
(1428, 2, 66, 5),
(1429, 2, 67, 5),
(1430, 2, 68, 5),
(1431, 2, 69, 5),
(1432, 2, 70, 5),
(1433, 2, 71, 5),
(1434, 2, 72, 5),
(1435, 3, 58, 5),
(1436, 3, 59, 5),
(1437, 3, 60, 5),
(1438, 3, 61, 5),
(1439, 3, 62, 5),
(1440, 3, 63, 5),
(1441, 3, 64, 5),
(1442, 3, 65, 5),
(1443, 3, 66, 5),
(1444, 3, 67, 5),
(1445, 3, 68, 5),
(1446, 3, 69, 5),
(1447, 3, 70, 5),
(1448, 3, 71, 5),
(1449, 3, 72, 5),
(1450, 5, 58, 5),
(1451, 5, 59, 5),
(1452, 5, 60, 5),
(1453, 5, 61, 5),
(1454, 5, 62, 5),
(1455, 5, 63, 5),
(1456, 5, 64, 5),
(1457, 5, 65, 5),
(1458, 5, 66, 5),
(1459, 5, 67, 5),
(1460, 5, 68, 5),
(1461, 5, 69, 5),
(1462, 5, 70, 5),
(1463, 5, 71, 5),
(1464, 5, 72, 5),
(1465, 6, 58, 5),
(1466, 6, 59, 5),
(1467, 6, 60, 5),
(1468, 6, 61, 5),
(1469, 6, 62, 5),
(1470, 6, 63, 5),
(1471, 6, 64, 5),
(1472, 6, 65, 5),
(1473, 6, 66, 5),
(1474, 6, 67, 5),
(1475, 6, 68, 5),
(1476, 6, 69, 5),
(1477, 6, 70, 5),
(1478, 6, 71, 5),
(1479, 6, 72, 5);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`ID`, `Name`, `Description`) VALUES
(1, 'K54', '2009 - 2014'),
(2, 'K55', '2010 - 2015');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ID`, `Name`, `Description`, `Capacity`) VALUES
(2, 'D6-101', NULL, 20),
(3, 'D4-203', NULL, 28);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE IF NOT EXISTS `slot` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Start` time NOT NULL,
  `End` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`ID`, `Name`, `Description`, `Start`, `End`) VALUES
(3, 'Kip 5', NULL, '08:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_defense`
--

CREATE TABLE IF NOT EXISTS `student_defense` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StudentID` int(10) unsigned NOT NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Supervisor` int(10) unsigned DEFAULT NULL,
  `Examiner1` int(10) unsigned NOT NULL,
  `Examiner2` int(10) unsigned NOT NULL,
  `President` int(10) unsigned NOT NULL,
  `Secretary` int(10) unsigned NOT NULL,
  `AdditionalMember` int(10) unsigned NOT NULL,
  `Slot` int(10) unsigned DEFAULT NULL,
  `Room` int(10) unsigned DEFAULT NULL,
  `SessionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `StudentID` (`StudentID`),
  KEY `Supervisor` (`Supervisor`),
  KEY `Examiner1` (`Examiner1`),
  KEY `Examiner2` (`Examiner2`),
  KEY `President` (`President`),
  KEY `Secretary` (`Secretary`),
  KEY `AdditionalMember` (`AdditionalMember`),
  KEY `SessionID` (`SessionID`),
  KEY `Slot` (`Slot`),
  KEY `Room` (`Room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_defense_subject_category`
--

CREATE TABLE IF NOT EXISTS `student_defense_subject_category` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StudentID` int(10) unsigned NOT NULL,
  `SubjectCategoryID` int(10) unsigned NOT NULL,
  `MatchScore` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `StudentID` (`StudentID`),
  KEY `SubjectCategoryID` (`SubjectCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=411 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_status`
--

CREATE TABLE IF NOT EXISTS `student_status` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `student_status`
--

INSERT INTO `student_status` (`ID`, `Description`) VALUES
(1, 'Đang học'),
(2, 'Đã nhận đề tài'),
(3, 'Đã bảo vệ');

-- --------------------------------------------------------

--
-- Table structure for table `subject_categories`
--

CREATE TABLE IF NOT EXISTS `subject_categories` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `subject_categories`
--

INSERT INTO `subject_categories` (`ID`, `Name`, `Description`) VALUES
(58, 'Định vị sử dụng vệ tinh', ''),
(59, 'Xử lý ảnh và nhận dạng', ''),
(60, 'Học máy và khai phá dữ liệu và trích chọn thông tin', ''),
(61, 'Xử lý ngôn ngữ tự nhiên', ''),
(62, 'Thuật toán và tối ưu', ''),
(63, 'Mạng cảm biến không dây', ''),
(64, 'An toàn và bảo mật thông tin', ''),
(65, 'Định tuyến trên mạng và Data Center', ''),
(66, 'Công nghệ phần mềm', ''),
(67, 'Hệ thống nhúng', ''),
(68, 'Xử lý tiếng nói', ''),
(69, 'Các dịch vụ trên mạng', ''),
(70, 'Các hệ thống thông tin, ứng dụng quản lý', ''),
(71, 'Kỹ Thuật máy tính', ''),
(72, 'Tính toán khoa hoc, tính toán hiệu năng cao', '');

-- --------------------------------------------------------

--
-- Table structure for table `supervise_students`
--

CREATE TABLE IF NOT EXISTS `supervise_students` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `StudentName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Promotion` int(10) NOT NULL,
  `Class` int(10) unsigned DEFAULT NULL,
  `Email` text,
  `Phone` text,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Type` int(10) unsigned DEFAULT NULL,
  `Status` int(10) unsigned DEFAULT NULL,
  `StudentID` varchar(10) NOT NULL,
  `Title` text,
  PRIMARY KEY (`ID`),
  KEY `Status` (`Status`),
  KEY `Type` (`Type`),
  KEY `Promotion` (`Promotion`),
  KEY `Class` (`Class`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `supervise_students`
--

INSERT INTO `supervise_students` (`ID`, `StudentName`, `Promotion`, `Class`, `Email`, `Phone`, `StartDate`, `EndDate`, `Type`, `Status`, `StudentID`, `Title`) VALUES
(1, 'Nguyen Anh Tan', 1, 1, 'tanna@gmail.com', '0123456789', NULL, NULL, 1, 1, '20092343', 'Dial-a-Ride Problem'),
(2, 'Nguyen Van A', 1, 2, 'tanna@gmail.com', '0123456789', NULL, NULL, 1, 1, '20092343', 'Local search'),
(3, 'Lê V B', 1, 2, 'blv@gmail.com', '012356789', NULL, NULL, 1, 2, '20091234', 'Machine eaLearning'),
(4, 'Lê Quang Khải', 1, 3, 'blv@gmail.com', '012356789', NULL, NULL, 1, 2, '20091234', 'ELearning');

-- --------------------------------------------------------

--
-- Table structure for table `type_project`
--

CREATE TABLE IF NOT EXISTS `type_project` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `type_project`
--

INSERT INTO `type_project` (`ID`, `Description`) VALUES
(1, 'Kỹ thuật'),
(2, 'Khoa học');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `email` text NOT NULL,
  `role` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`, `role`) VALUES
(1, 'admin', '207acd61a3c1bd506d7e9a4535359f8a', 'salt', 'tanna.ithust@gmail.com', 'SUPER_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users_management`
--

CREATE TABLE IF NOT EXISTS `users_management` (
  `UserID` text COLLATE utf8_unicode_ci NOT NULL,
  `Pass` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `professors_info`
--
DROP TABLE IF EXISTS `professors_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `professors_info` AS select `professors`.`ID` AS `ID`,`professors`.`Name` AS `Name`,`professors`.`ExpertLevel` AS `ExpertLevel`,`institutes`.`ID` AS `InstituteID`,`institutes`.`Name` AS `Institute`,`departments`.`ID` AS `DepartmentID`,`departments`.`Name` AS `Department`,`degree`.`ID` AS `DegreeID`,`degree`.`Name` AS `Degree` from (((`professors` join `institutes`) join `departments`) join `degree`) where ((`professors`.`Department` = `departments`.`ID`) and (`professors`.`Degree` = `degree`.`ID`) and (`professors`.`InstituteID` = `institutes`.`ID`));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`InstituteID`) REFERENCES `institutes` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`InstituteID`) REFERENCES `institutes` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professors_ibfk_2` FOREIGN KEY (`Department`) REFERENCES `departments` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professors_ibfk_3` FOREIGN KEY (`Degree`) REFERENCES `degree` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_defense`
--
ALTER TABLE `student_defense`
  ADD CONSTRAINT `student_defense_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `supervise_students` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_10` FOREIGN KEY (`Room`) REFERENCES `room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_2` FOREIGN KEY (`Supervisor`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_3` FOREIGN KEY (`Examiner1`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_4` FOREIGN KEY (`Examiner2`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_5` FOREIGN KEY (`President`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_6` FOREIGN KEY (`Secretary`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_7` FOREIGN KEY (`AdditionalMember`) REFERENCES `professors` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_8` FOREIGN KEY (`SessionID`) REFERENCES `defensesession` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_defense_ibfk_9` FOREIGN KEY (`Slot`) REFERENCES `slot` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervise_students`
--
ALTER TABLE `supervise_students`
  ADD CONSTRAINT `supervise_students_ibfk_1` FOREIGN KEY (`Status`) REFERENCES `student_status` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervise_students_ibfk_2` FOREIGN KEY (`Type`) REFERENCES `type_project` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervise_students_ibfk_3` FOREIGN KEY (`Promotion`) REFERENCES `promotion` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervise_students_ibfk_4` FOREIGN KEY (`Class`) REFERENCES `classes` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
