/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - iidps
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `iidps`;

USE `iidps`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fid` int(11) NOT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `file_` longblob,
  `user` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `active_` varchar(100) DEFAULT 'Yes',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `files` */

/*Table structure for table `habit_data` */

DROP TABLE IF EXISTS `habit_data`;

CREATE TABLE `habit_data` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `sccalls` varchar(1000) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `habit_data` */

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `attackedby` varchar(100) DEFAULT NULL,
  `date_` varchar(100) DEFAULT NULL,
  `ip_` varchar(100) DEFAULT NULL,
  `level_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `result` */

/*Table structure for table `send` */

DROP TABLE IF EXISTS `send`;

CREATE TABLE `send` (
  `user` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `date_` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `send` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
