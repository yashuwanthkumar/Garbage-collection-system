-- Database: garbagemsdb
-- Initial Setup Script

-- Create database
CREATE DATABASE IF NOT EXISTS garbagemsdb;
USE garbagemsdb;

-- Table structure for tbladmin
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default admin user (password is 'admin' in md5)
INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Administrator', 'admin', 1234567890, 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3', '2023-01-01 00:00:00');

-- Table structure for tblpage
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` text,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert default page data
INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'contactus', 'Contact Us', 'Your Address Here', 'contact@example.com', 1234567890, '2023-01-01 00:00:00'),
(2, 'aboutus', 'About Us', 'This is a Garbage Collection Management System. We provide efficient waste management solutions for smart cities.', 'info@example.com', 1234567890, '2023-01-01 00:00:00');

-- Table structure for tbluser
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table structure for tbldriver
CREATE TABLE IF NOT EXISTS `tbldriver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `LicenseNo` varchar(100) DEFAULT NULL,
  `VehicleNo` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;