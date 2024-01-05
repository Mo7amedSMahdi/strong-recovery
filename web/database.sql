/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - efficient_retrieval
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE `Strong_Recovery`;
DEFAULT CHARACTER SET latin1 */;

USE `Strong_Recovery`;

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `fid` int(11) NOT NULL auto_increment,
  `owner` varchar(1000) default NULL,
  `parsekey` varchar(1000) default NULL,
  `branch` varchar(1000) default NULL,
  `department` varchar(1000) default NULL,
  `subdept` varchar(1000) default NULL,
  `job` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `data` varchar(1000) default NULL,
  `skey` varchar(1000) default NULL,
  `cipher` varchar(1000) default NULL,
  `fkey` varchar(1000) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`fid`,`owner`,`parsekey`,`branch`,`department`,`subdept`,`job`,`filename`,`data`,`skey`,`cipher`,`fkey`) values (8,'1','Z54S3mxTPp6MgfVEQ74qYg==','hyderabad','engineering','programming','java','sample2.txt','this is the sample2 text file for uploading into the cloud','mG+edIrQggmR7V5BbkpxLQ==','PwsLeLAu2O4n5FPAefQ6c1NaMJyBPkMLVDbTtB1OJK3qbt9/yFk6d4b6cSnKzoRPhEI5fvp/Jcrb\r\nnBmpLLgO5Q==','MZYVWP'),(9,'1','Z54S3mxTPp6MgfVEQ74qYg==','hyderabad','engineering','programming','java','sample.txt','this is the sample1 text file for the uploading into the cloud kishan ','nRio6qV6NgxNFWNEPu6lug==','cRxIl1JYnF3SF6JcWBicHEssmynWzYbfekWTb+y3d3TVW5W993+GAZTfE6b+z9v/tD64O79QKL2S\r\nSW2lJi72Ng==','MZYVWP'),(10,'1','Z54S3mxTPp6MgfVEQ74qYg==','hyderabad','engineering','programming','java','sample3.txt','this is the sample3 text file for uploading into the cloud','T93+xjYIDnJ2J2/Yxz8CQg==','3oe7aSRiOi1+xOjXHSTyB8asa1/1vlCZ3zYFyCqYCAR3DO6hHqL52UqqFz5jiYx0H407DglZNH7Q\r\nsqgQ9izimQ==','MZYVWP');

/*Table structure for table `gnkeys` */

DROP TABLE IF EXISTS `gnkeys`;

CREATE TABLE `gnkeys` (
  `userid` varchar(1000) default NULL,
  `publickey` varchar(1000) default NULL,
  `attributes` varchar(1000) default NULL,
  `privatekey` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gnkeys` */

insert  into `gnkeys`(`userid`,`publickey`,`attributes`,`privatekey`) values ('1','Z54S3mxTPp6MgfVEQ74qYg==','hyderabad,engineering,programming,java','3+yUBAU9j6i7FpwhCSFvTg=='),('2','q1++6mE3Ykhu3R6Xbzgu4g==','chennai,engineering,programming,java','xAqTtWDPfVByUGHIQhJUtQ==');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `branch` varchar(1000) default NULL,
  `department` varchar(1000) default NULL,
  `subdepartment` varchar(1000) default NULL,
  `jobrole` varchar(1000) default NULL,
  `role` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`id`,`username`,`password`,`email`,`mobile`,`branch`,`department`,`subdepartment`,`jobrole`,`role`,`status`) values (1,'kishan','123','kishangadicherla508@gmail.com','1234569','hyderabad','engineering','programming','java','owner','accepted'),(2,'venkat','123','kishangadicherla@gmail.com','1234567890','chennai','engineering','programming','java','user','accepted');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `requestid` varchar(1000) default NULL,
  `filename` varchar(1000) default NULL,
  `fkey` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `commonkey` varchar(1000) default NULL,
  `dkey` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`requestid`,`filename`,`fkey`,`status`,`commonkey`,`dkey`) values ('2','sample2.txt','MZYVWP','accepted','289A','726VX3KW'),('2','sample3.txt','MZYVWP','accepted','289A','726VX3KW');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
