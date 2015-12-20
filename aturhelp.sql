-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.23-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aturhelp
--

CREATE DATABASE IF NOT EXISTS aturhelp;
USE aturhelp;

--
-- Definition of table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `ser_id` varchar(100) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `request_id` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id` varchar(30) DEFAULT NULL,
  `is_active` varchar(7) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `area` varchar(70) DEFAULT NULL,
  `user_type` varchar(70) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`ser_id`,`device_id`,`mobile_no`,`email`,`request_id`,`name`,`id`,`is_active`,`password`,`area`,`user_type`,`place`,`department`,`gender`) VALUES 
 ('SER_PGRL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ravi','SER_PGRL_PARIMALA_456','yes','ravi123',NULL,'SU','pidugurala','Broad Band','M'),
 ('SER_MCL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ravi1','SER_MCL_PARIMALA_456','yes','ravi1',NULL,NULL,'Macherla','Broad Band','M'),
 ('SER_PGRL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ramu','SER_PGRL_PARIMALA_456','yes','ramu123',NULL,'janapadu','Pidugurala','Broad Band','M'),
 ('SER_PGRL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','lalitha','SER_PGRL_PARIMALA_456','yes','lalitha123',NULL,'mayabazar','Pidugurala','Broad Band','F');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;


--
-- Definition of table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `loc_id` varchar(100) NOT NULL,
  `loc_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


--
-- Definition of table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `device_id` varchar(255) NOT NULL,
  `ser_id` varchar(100) NOT NULL,
  `log_sub` varchar(255) NOT NULL,
  `log_description` varchar(1000) NOT NULL,
  `area` varchar(70) DEFAULT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  `ticket_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`device_id`,`ser_id`,`log_sub`,`log_description`,`area`,`ticket_id`,`ticket_status`) VALUES 
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','vddd','janapadu',1444830229459,'0'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830268176,'1'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830294590,'1'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','teat','janapadu',1444898375737,'1'),
 ('353321069211707','SER_PGRL_PARIMALA','Others','waste network','janapadu',1444911876574,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','New Connection','test my mahe','janapadu',1444917803585,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu ram, ekkada unnavu.','janapadu',1444981145219,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu','mayabazar',1444985177387,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','tujxhchvhhc',NULL,1444994572803,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','chgg','mayabazar',1445800922011,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','yggg','mayabazar',1445800966350,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','hshahah','mayabazar',1445845943573,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','Internet is not working','gdajah',NULL,1445856199881,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','hshagshshzhaha','janapadu',1448911452643,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','hshagshshzhaha','janapadu',1448911481857,'0'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','vddd','janapadu',1444830229459,'0'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830268176,'1'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830294590,'1'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','teat','janapadu',1444898375737,'1'),
 ('353321069211707','SER_PGRL_PARIMALA','Others','waste network','janapadu',1444911876574,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','New Connection','test my mahe','janapadu',1444917803585,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu ram, ekkada unnavu.','janapadu',1444981145219,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu','mayabazar',1444985177387,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','tujxhchvhhc',NULL,1444994572803,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','chgg','mayabazar',1445800922011,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','yggg','mayabazar',1445800966350,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','hshahah','mayabazar',1445845943573,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','Internet is not working','gdajah',NULL,1445856199881,'0'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','vddd','janapadu',1444830229459,'0'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830268176,'1'),
 ('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba','janapadu',1444830294590,'1'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','teat','janapadu',1444898375737,'1'),
 ('353321069211707','SER_PGRL_PARIMALA','Others','waste network','janapadu',1444911876574,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','New Connection','test my mahe','janapadu',1444917803585,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu ram, ekkada unnavu.','janapadu',1444981145219,'1'),
 ('862782024053282','SER_PGRL_PARIMALA','Others','babu','mayabazar',1444985177387,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','tujxhchvhhc',NULL,1444994572803,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','chgg','mayabazar',1445800922011,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','yggg','mayabazar',1445800966350,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','New Connection','hshahah','mayabazar',1445845943573,'0'),
 ('354098051465694','SER_PGRL_PARIMALA','Internet is not working','gdajah',NULL,1445856199881,'0');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


--
-- Definition of table `milk_appartment`
--

DROP TABLE IF EXISTS `milk_appartment`;
CREATE TABLE `milk_appartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_appartment`
--

/*!40000 ALTER TABLE `milk_appartment` DISABLE KEYS */;
INSERT INTO `milk_appartment` (`id`,`subject`,`name`,`route_id`) VALUES 
 (12,'Panduranga Enclave','PRR',15),
 (13,'Sai','SAI',15),
 (14,'MA','MA',15),
 (15,'R2Apartment','TEST',16),
 (16,'ELEGANT','ELE',15);
/*!40000 ALTER TABLE `milk_appartment` ENABLE KEYS */;


--
-- Definition of table `milk_flat_no`
--

DROP TABLE IF EXISTS `milk_flat_no`;
CREATE TABLE `milk_flat_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(10) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_flat_no`
--

/*!40000 ALTER TABLE `milk_flat_no` DISABLE KEYS */;
INSERT INTO `milk_flat_no` (`id`,`room_id`,`app_id`) VALUES 
 (8,'104',12),
 (9,'101',12),
 (10,'102',12),
 (11,'103',12),
 (12,'105',12),
 (13,'101',13),
 (14,'102',13),
 (15,'103',13),
 (16,'104',13),
 (17,'105',13),
 (18,'106',13),
 (19,'101',14),
 (20,'102',14),
 (21,'103',14),
 (22,'104',14),
 (23,'105',14),
 (24,'106',14),
 (25,'201',14),
 (26,'202',14),
 (27,'203',14),
 (28,'204',14),
 (29,'205',14),
 (30,'206',14),
 (31,'101',15);
/*!40000 ALTER TABLE `milk_flat_no` ENABLE KEYS */;


--
-- Definition of table `milk_location`
--

DROP TABLE IF EXISTS `milk_location`;
CREATE TABLE `milk_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_location`
--

/*!40000 ALTER TABLE `milk_location` DISABLE KEYS */;
INSERT INTO `milk_location` (`id`,`subject`,`name`) VALUES 
 (6,'Nizampet Village','nizampet');
/*!40000 ALTER TABLE `milk_location` ENABLE KEYS */;


--
-- Definition of table `milk_nomilk`
--

DROP TABLE IF EXISTS `milk_nomilk`;
CREATE TABLE `milk_nomilk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `isUpdated` char(1) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_nomilk`
--

/*!40000 ALTER TABLE `milk_nomilk` DISABLE KEYS */;
INSERT INTO `milk_nomilk` (`id`,`fromdate`,`todate`,`isUpdated`,`rid`) VALUES 
 (1,'2015-12-17','2015-12-19','1',8),
 (3,'2015-12-18','2017-12-18','0',9),
 (4,'2015-12-18','2017-12-18','0',12),
 (5,'2015-12-18','2017-12-18','0',10),
 (6,'2015-12-18','2017-12-18','0',31),
 (7,'2015-12-19','2015-12-19','1',8);
/*!40000 ALTER TABLE `milk_nomilk` ENABLE KEYS */;


--
-- Definition of table `milk_packats`
--

DROP TABLE IF EXISTS `milk_packats`;
CREATE TABLE `milk_packats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) DEFAULT NULL,
  `milkid` varchar(20) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_packats`
--

/*!40000 ALTER TABLE `milk_packats` DISABLE KEYS */;
INSERT INTO `milk_packats` (`id`,`subject`,`milkid`,`cost`) VALUES 
 (6,'Heritage Milk Toned Milk','HTM-500',20),
 (7,'Jersey Toned MIlk','JTM-500',20),
 (8,'Tirumala Toned Milk','TTM-500',20);
/*!40000 ALTER TABLE `milk_packats` ENABLE KEYS */;


--
-- Definition of table `milk_room`
--

DROP TABLE IF EXISTS `milk_room`;
CREATE TABLE `milk_room` (
  `room_id` int(11) NOT NULL DEFAULT '0',
  `milk_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`,`milk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_room`
--

/*!40000 ALTER TABLE `milk_room` DISABLE KEYS */;
INSERT INTO `milk_room` (`room_id`,`milk_id`,`quantity`) VALUES 
 (8,6,1),
 (8,7,1),
 (8,8,1),
 (9,6,1),
 (9,7,1),
 (9,8,1),
 (10,6,1),
 (10,7,1),
 (10,8,1),
 (12,6,1),
 (12,8,1),
 (13,6,1),
 (13,7,1),
 (13,8,1),
 (14,6,1),
 (14,7,1),
 (14,8,1),
 (15,6,1),
 (15,7,1),
 (15,8,1),
 (16,6,1),
 (16,7,1),
 (16,8,1),
 (17,6,1),
 (17,7,1),
 (17,8,1),
 (18,6,1),
 (18,7,1),
 (18,8,1),
 (19,6,1),
 (19,7,1),
 (19,8,1),
 (20,6,1),
 (20,7,1),
 (20,8,1),
 (21,6,1),
 (21,7,1),
 (21,8,1),
 (22,6,1),
 (22,7,1),
 (22,8,1),
 (23,6,1),
 (23,7,1),
 (23,8,1),
 (24,6,1),
 (24,7,1),
 (24,8,1),
 (25,6,1),
 (25,7,1),
 (25,8,1),
 (26,6,1),
 (26,7,1),
 (26,8,1),
 (27,6,1),
 (27,7,1),
 (27,8,1),
 (28,6,1),
 (28,7,1),
 (28,8,1),
 (29,6,1),
 (29,7,1),
 (29,8,1),
 (31,6,1);
/*!40000 ALTER TABLE `milk_room` ENABLE KEYS */;


--
-- Definition of table `milk_route`
--

DROP TABLE IF EXISTS `milk_route`;
CREATE TABLE `milk_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) DEFAULT NULL,
  `route_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `milk_route`
--

/*!40000 ALTER TABLE `milk_route` DISABLE KEYS */;
INSERT INTO `milk_route` (`id`,`subject`,`route_id`) VALUES 
 (15,'R1','R1'),
 (16,'R2','R2');
/*!40000 ALTER TABLE `milk_route` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `device_id` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `request_id` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `is_admin` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`device_id`,`mobile_no`,`email`,`request_id`,`name`,`password`,`is_admin`) VALUES 
  ('354098051465694','7799437562','ramu.vuyukuru@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ramu',NULL,NULL),
 ('351971070002537','9010113239','lalitharam.vutukuru@gmail.com ','APA91bFbZ3xTPTqLFnEdAX_XCbASAoeOT2_pVERcCek5l41DYeZC8qOmWTlwO7-iWeXP3Ww8QWeWDkPYxdBr2R2wUfCrpShCAqE5cfzHMq4CyWqEi7vWkr2590LeYvKxGgCa8h-Cejtw','lalitha',NULL,NULL),
 ('352384057298939','9291582960','susila.vutukuru@gmail.com','','sai',NULL,NULL),
 ('357541050656901','779943655445646','teat@gmail.com','APA91bHCWsfYuDfpTNOYUtT66kzJ7jvMKAiFrIaIrbQTgbvf3oV-6o2JGPNmSAprDhe91BoFa17vt1yUgpG4vm91lywS1BwUQHFqYpaHyHQmE4DaWEIXxUfvko_PrS5pnHgCWghgbXX1','test',NULL,NULL),
 ('353321069211707','1234567890','test@test.com','','mohansai',NULL,NULL),
 ('862782024053282','123456789','test@gmail.com','APA91bHk8l60Eudy7CCsmCUURLLu8CjQAX47_zRlzgGo5JJtM_93H27Qqg2QlpO8dzaXv1k6KOCQAjAUm9oFND6GbIGPMPPl5B6vZdcB2pP60fXYKxQs66AOnQCbA8HH-gVMg0sL5bKO','test',NULL,NULL),
 ('12345678','7799437562','ramu123.vutukuru@gmail.com','requestid','ramu',NULL,NULL);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Definition of table `register_admins`
--

DROP TABLE IF EXISTS `register_admins`;
CREATE TABLE `register_admins` (
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `ticket_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register_admins`
--

/*!40000 ALTER TABLE `register_admins` DISABLE KEYS */;
INSERT INTO `register_admins` (`fullname`,`email`,`mobileno`,`ticket_status`) VALUES 
 ('Palaiah Vutukuru','ramu.vutukuru@gmail.com','9985527544','0'),
 ('Palaiah Vutukuru','ramalingeshwar.vutukuru@kony.com','9985527544','0');
/*!40000 ALTER TABLE `register_admins` ENABLE KEYS */;


--
-- Definition of table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `ser_id` varchar(100) NOT NULL,
  `ser_name` varchar(100) NOT NULL,
  `loc_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
