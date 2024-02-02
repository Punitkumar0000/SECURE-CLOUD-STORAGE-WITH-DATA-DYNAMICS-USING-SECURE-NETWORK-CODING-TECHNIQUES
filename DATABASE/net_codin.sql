/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - net_coding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`net_coding` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `net_coding`;

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `id` int(11) NOT NULL auto_increment,
  `fid` text,
  `f_data` text,
  `operation` text,
  `m_data` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `fid` text,
  `owner` text,
  `owner_name` text,
  `fname` text,
  `data` longtext,
  `skey` text,
  `cipher` text,
  `date` text,
  `block1` text,
  `skey1` text,
  `block2` text,
  `skey2` text,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(11) NOT NULL auto_increment,
  `requestby` text,
  `fid` text,
  `block` text,
  `date` text,
  `status` text,
  `status2` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

/*Table structure for table `tpa` */

DROP TABLE IF EXISTS `tpa`;

CREATE TABLE `tpa` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tpa` */

insert  into `tpa`(`username`,`password`) values ('tpa','tpa');

/*Table structure for table `update_req` */

DROP TABLE IF EXISTS `update_req`;

CREATE TABLE `update_req` (
  `id` int(11) NOT NULL auto_increment,
  `req_table_id` text,
  `owner` text,
  `block` text,
  `fid` text,
  `operation` text,
  `data` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `update_req` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
