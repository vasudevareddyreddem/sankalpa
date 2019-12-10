/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.32-MariaDB : Database - hms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hms`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `per_mail` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `emergency_contact_number` varchar(250) DEFAULT NULL,
  `type_of_emp` varchar(250) DEFAULT NULL,
  `months` varchar(250) DEFAULT NULL,
  `notice_period` varchar(250) DEFAULT NULL,
  `n_p_months` varchar(250) DEFAULT NULL,
  `boold_group` varchar(250) DEFAULT NULL,
  `marital_status` varchar(250) DEFAULT NULL,
  `spouse` varchar(250) DEFAULT NULL,
  `children_one` varchar(250) DEFAULT NULL,
  `children_two` varchar(250) DEFAULT NULL,
  `children_three` varchar(250) DEFAULT NULL,
  `marriage_date` varchar(250) DEFAULT NULL,
  `spouse_dob` varchar(250) DEFAULT NULL,
  `children_one_dob` varchar(250) DEFAULT NULL,
  `children_two_dob` varchar(250) DEFAULT NULL,
  `children_three_dob` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  `pwd` varchar(250) DEFAULT NULL,
  `org_pwd` varchar(250) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `off_mail` varchar(250) DEFAULT NULL,
  `branch_id` varchar(100) DEFAULT NULL,
  `doj` varchar(250) DEFAULT NULL,
  `father_name` varchar(250) DEFAULT NULL,
  `mother_name` varchar(250) DEFAULT NULL,
  `dob` varchar(450) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `aadhar_num` varchar(100) DEFAULT NULL,
  `pan_num` varchar(100) DEFAULT NULL,
  `per_add` varchar(250) DEFAULT NULL,
  `temp_add` varchar(250) DEFAULT NULL,
  `aadhar_pic` varchar(250) DEFAULT NULL,
  `pan_pic` varchar(250) DEFAULT NULL,
  `kye` varchar(250) DEFAULT NULL,
  `basicsalary` varchar(250) DEFAULT NULL,
  `hra` varchar(250) DEFAULT NULL,
  `employee_pfamount` varchar(250) DEFAULT NULL,
  `employer_pfamount` varchar(250) DEFAULT NULL,
  `employee_esi` varchar(250) DEFAULT NULL,
  `employee_contribution_esi` varchar(250) DEFAULT NULL,
  `employer_contribution_esi` varchar(250) DEFAULT NULL,
  `employee_buyout` varbinary(250) DEFAULT NULL,
  `relocation_allowance` varchar(250) DEFAULT NULL,
  `gross_salary` varchar(250) DEFAULT NULL,
  `netsalary` varchar(250) DEFAULT NULL,
  `specialallowance` varchar(250) DEFAULT NULL,
  `conveyance` varchar(250) DEFAULT NULL,
  `medicalreimbursement` varchar(250) DEFAULT NULL,
  `pfnumber` varchar(250) DEFAULT NULL,
  `pfamount` varchar(250) DEFAULT NULL,
  `pt` varchar(250) DEFAULT NULL,
  `esi` varchar(250) DEFAULT NULL,
  `others` varchar(250) DEFAULT NULL,
  `bankname` varchar(250) DEFAULT NULL,
  `ifsc` varchar(250) DEFAULT NULL,
  `bankaccountnumber` varchar(250) DEFAULT NULL,
  `advance` varchar(250) DEFAULT NULL,
  `salary` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`a_id`,`role_id`,`code`,`name`,`username`,`email`,`per_mail`,`mobile`,`emergency_contact_number`,`type_of_emp`,`months`,`notice_period`,`n_p_months`,`boold_group`,`marital_status`,`spouse`,`children_one`,`children_two`,`children_three`,`marriage_date`,`spouse_dob`,`children_one_dob`,`children_two_dob`,`children_three_dob`,`address`,`profile_pic`,`pwd`,`org_pwd`,`dep_id`,`designation`,`off_mail`,`branch_id`,`doj`,`father_name`,`mother_name`,`dob`,`gender`,`aadhar_num`,`pan_num`,`per_add`,`temp_add`,`aadhar_pic`,`pan_pic`,`kye`,`basicsalary`,`hra`,`employee_pfamount`,`employer_pfamount`,`employee_esi`,`employee_contribution_esi`,`employer_contribution_esi`,`employee_buyout`,`relocation_allowance`,`gross_salary`,`netsalary`,`specialallowance`,`conveyance`,`medicalreimbursement`,`pfnumber`,`pfamount`,`pt`,`esi`,`others`,`bankname`,`ifsc`,`bankaccountnumber`,`advance`,`salary`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,NULL,'Admin',NULL,'admin@gmail.com',NULL,'8500050944',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEAR LEELA MAHAL CIRCLE, TML BYPASS ROAD, Tirupati, Andhra Pradesh 517501, India','1575976558.png','e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-05-17 14:12:30','2019-09-13 15:55:07',0),(49,3,NULL,'Hr',NULL,'hr@gmail.com',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 19:50:10','2019-09-23 19:55:11',1),(51,4,NULL,'Manager',NULL,'manager@gmail.com',NULL,'987456632110',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 20:16:04','2019-09-23 20:57:01',1),(52,2,'TS52','vasudevareddy',NULL,'vasu@ism.com','chiina@gmail.com','8500050944',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1569561469.png',NULL,NULL,1,NULL,'vasu@ism.com','7','09/26/2019','venkata reddy','lakshmi devi','09/04/2019','Male','1234567890','8521478932','kothapalli village  kadapa  dist','hyderabad','1569561469.jpg','1569561469.jpg','1569561469.jpg','46000','4000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10','12365','24121','1212','12121','212','1212','1','SBI',NULL,'32473655713','1200','25410',2,'0000-00-00 00:00:00','2019-11-12 21:13:39',1),(54,2,'TN54','vasudevareddy reddem',NULL,'chiina@ism.com','chiina@gmail.com','9968307899',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1569650641.jpg','831865680b12b96ff2a149b4d837a353','9968307899',3,NULL,'chiina@ism.com','9','09/03/2019','venkata reddy','lakshmi devi','09/03/2019','Male','1234567890','8521478932','kothapalli village  kadapa  dist','hyderabad','1569650641.jpg','1569650641.png','1569650641.jpg','46000','4000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10','12365','24121','1212','12121','212','1212','1','SBI',NULL,'32473655713','1200','25410',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(55,2,'TS55','emp one',NULL,'empone@ism.com','emp@gmail.com','9874563210',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1570097339.jpg','17068b9254b9de62afe4392f58dadcf0','9874563210',1,NULL,'empone@ism.com','7','10/24/2019','venkata reddy','lakshmi devi','10/23/2019','Male','1234567890','8521478932','kothapalli village  kadapa  dist','hyderabad','1570097339.html','1570097339.png','1570097339.xlsx','46000','4000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10','12365','24121','1212','12121','212','1212','1','SBI',NULL,'32473655713','1200','25410',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(56,5,NULL,'Reddem',NULL,'reddem@gmail.com',NULL,'65412365440',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-10-03 16:12:33','2019-10-03 16:14:03',1),(57,3,NULL,'Hr Two',NULL,'hr2@gmail.com',NULL,'1236541200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-10-11 10:28:22','2019-10-11 10:46:05',1),(58,2,'TS58','chinna maha',NULL,'mahi@ism.com','mahi@gmail.com','7418528520',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1570945675.png','79bb8cc0b660e954ba9c9844c9d2deda','7418528520',1,'sr software','mahi@ism.com','7','10/25/2019','venkata reddy','lakshmi devi','09/04/2019','Female','1234567890','8521478932','kothapalli village  kadapa  dist','hyderabad','1570945675.jpg','1570945675.jpg','1570945675.png','46000','4000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10','12365','24121','1212','12121','212','1212','1','SBI','SBIN0002671','SBI mydukur','1200','25410',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(59,2,'AP59','msivareddy',NULL,'msivareddy@ism.com','msivareddy@gmail.com','8688683222','8688683222','confirmed','','','','B+','No','','','','','','','','','',NULL,'1573395410.png','ac4bed003a0e95cc75925d5bc3955910','8688683222',3,'IT Manager','msivareddy@ism.com','10','11/06/2019','muthuru venkatareddy','subbammma','11/20/2019','Male','32145668970225','bcbn3213453454','Permanent address','Current address','1573395410.png','1573395410.png','1573395410.png','Salary','HRA','Medical Reimbursement',' PF - Employer Contribution','ESI Number','ESI - Employee Contribution',' ESI - Employer Contribution',' Employee Buyout (If Any)',' Relocation Allowance (If Any)','Gross Salary','Net Salary','Special Allowance','Conveyance','Medical Reimbursement','PF Number','','Professional Tax','','Others','BanBank Namek Name','IFSC Code','Bank Account No','CzXCxzcf Any)','Net Salary',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1);

/*Table structure for table `adminnotifications` */

DROP TABLE IF EXISTS `adminnotifications`;

CREATE TABLE `adminnotifications` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `message` text,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `adminnotifications` */

insert  into `adminnotifications`(`n_id`,`title`,`message`,`status`,`created_at`,`updated_at`,`created_by`) values (4,'Testing  Purpose','zxxzczx',1,'2019-10-04 21:12:55','0000-00-00 00:00:00',1),(5,'title','xcZXCZX',1,'2019-10-04 21:13:10','0000-00-00 00:00:00',1),(6,'Testing  Purpose','ghdghg',1,'2019-10-13 11:44:08','0000-00-00 00:00:00',1);

/*Table structure for table `assign_work` */

DROP TABLE IF EXISTS `assign_work`;

CREATE TABLE `assign_work` (
  `a_w_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `from_date` varchar(250) DEFAULT NULL,
  `to_date` varchar(250) DEFAULT NULL,
  `total_day` varchar(45) DEFAULT NULL,
  `message` text,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `assign_work` */

insert  into `assign_work`(`a_w_id`,`emp_id`,`from_date`,`to_date`,`total_day`,`message`,`status`,`created_at`,`updated_at`,`created_by`) values (1,54,'12/03/2019','12/18/2019','12','sdsadsbdjgsjajsdgjkgfds',0,'2019-12-09 18:44:47',NULL,1),(2,58,'12/12/2019','12/19/2019','6','Testing purpose ',0,'2019-12-09 18:51:12',NULL,1),(3,59,'12/01/2019','12/02/2019','1','Testing  purpose ',3,'2019-12-10 16:55:45','2019-12-10 18:52:48',1),(4,59,'12/10/2019','12/11/2019','2','Testing purpose ',1,'2019-12-10 18:07:45','2019-12-10 18:53:02',1),(5,54,'12/01/2019','12/03/2019','2','Testing  p',0,'2019-12-10 18:14:00',NULL,1),(6,59,'12/18/2019','12/25/2019','6','like t his',1,'2019-12-10 19:22:00','2019-12-10 19:22:29',1);

/*Table structure for table `assign_work_comments` */

DROP TABLE IF EXISTS `assign_work_comments`;

CREATE TABLE `assign_work_comments` (
  `w_a_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_w_id` int(11) DEFAULT NULL,
  `commet` text,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`w_a_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `assign_work_comments` */

insert  into `assign_work_comments`(`w_a_c_id`,`a_w_id`,`commet`,`status`,`created_at`,`created_by`) values (1,4,'Testing purpose ',1,'2019-12-10 07:11:06',59),(2,3,'testing   purpose ',1,'2019-12-10 07:12:37',59),(3,3,'Testing  nfkbsajkdfb dsf',1,'2019-12-10 07:21:33',59),(4,6,'testi fjnf  fjkbsjdbf',1,'2019-12-10 07:22:13',1),(5,6,'testing   purpose  ',1,'2019-12-10 07:24:08',59);

/*Table structure for table `attendance_regulation` */

DROP TABLE IF EXISTS `attendance_regulation`;

CREATE TABLE `attendance_regulation` (
  `a_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `a_date` varchar(250) DEFAULT NULL,
  `to_time` varchar(250) DEFAULT NULL,
  `from_time` varchar(250) DEFAULT NULL,
  `adding_time` varchar(250) DEFAULT NULL,
  `reason` text,
  `comment` text,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `read_cnt` int(11) DEFAULT '0',
  PRIMARY KEY (`a_r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `attendance_regulation` */

insert  into `attendance_regulation`(`a_r_id`,`emp_id`,`a_date`,`to_time`,`from_time`,`adding_time`,`reason`,`comment`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`,`read_cnt`) values (2,59,'2019-11-13',NULL,NULL,'2','resting  purpose','dfdfds',2,'2019-11-21 23:13:50','2019-11-21 23:13:50',59,1,0),(3,59,'2019-11-20',NULL,NULL,'6','xcxzcZXvXCv',NULL,1,'2019-11-24 20:23:38','2019-11-24 20:23:38',59,1,0),(4,59,'2019-11-13','02:15 PM','05:30 PM','3:15','vcbxcvbxcvbxcvbxcvb',NULL,1,'2019-12-01 19:54:40','2019-12-01 19:54:40',59,1,1),(5,59,'2019-11-12','11:15 AM','01:30 AM','9:45','bvbzcx',NULL,0,'2019-12-01 19:50:42','2019-11-24 20:23:49',59,1,0),(6,59,'2019-11-22','01:45 PM','08:45 PM','7:0','testing ',NULL,0,'2019-12-01 19:50:41','2019-11-24 20:56:13',59,1,0),(7,59,'2019-11-13','10:00 AM','11:00 PM','13:0','testing  purpose  like  this ',NULL,0,'2019-12-01 19:50:40','2019-11-28 23:11:40',59,1,0),(8,59,'2019-11-13','10:00 AM','11:00 PM','13:0','testing',NULL,0,'2019-12-01 19:50:40','2019-11-28 23:25:54',59,1,0);

/*Table structure for table `branches` */

DROP TABLE IF EXISTS `branches`;

CREATE TABLE `branches` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `branches` */

insert  into `branches`(`b_id`,`code`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (6,NULL,'branch one',2,'2019-09-26 22:49:17','2019-09-26 22:49:17',1),(7,'TS','branch one',1,'2019-09-26 23:22:09','2019-09-26 23:22:09',1),(8,'KL','branch two',1,'2019-09-26 23:23:18','2019-09-26 23:23:18',1),(9,'TN','branch three',1,'2019-09-26 23:23:11','2019-09-26 23:23:11',1),(10,'AP','Andra pradeh',1,'2019-09-26 23:13:52','0000-00-00 00:00:00',1);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`d_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Department one',1,'2019-09-18 12:02:44','2019-09-18 12:02:44',1),(2,'Department two',1,'2019-05-22 11:16:18','0000-00-00 00:00:00',1),(3,'Department three',1,'2019-05-22 11:54:52','2019-05-22 11:54:52',1),(4,'testing ',1,'2019-09-18 11:57:41','0000-00-00 00:00:00',1),(5,'testing five',1,'2019-09-23 20:09:56','0000-00-00 00:00:00',1);

/*Table structure for table `documents` */

DROP TABLE IF EXISTS `documents`;

CREATE TABLE `documents` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `document` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `documents` */

insert  into `documents`(`d_id`,`title`,`description`,`document`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Title one','Description','1569295807.pdf',1,'2019-09-24 09:00:07','0000-00-00 00:00:00',1),(2,'','dfsgsdfg','1569294825.xlsx',2,'2019-09-24 08:49:41','2019-09-24 08:49:41',1),(3,'Title','Description','1569295797.pdf',1,'2019-09-24 08:59:56','0000-00-00 00:00:00',1);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `org_password` varchar(250) DEFAULT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`emp_id`,`code`,`name`,`email`,`mobile`,`address`,`password`,`org_password`,`profile_pic`,`status`,`created_at`,`updated_at`) values (1001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-26 23:47:20','0000-00-00 00:00:00');

/*Table structure for table `holidays` */

DROP TABLE IF EXISTS `holidays`;

CREATE TABLE `holidays` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(250) DEFAULT NULL,
  `festival` varchar(250) DEFAULT NULL,
  `day_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `holidays` */

insert  into `holidays`(`h_id`,`date`,`festival`,`day_name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'09/19/2019','one','Monday',1,'2019-09-24 10:09:39','2019-09-24 10:09:27',1),(2,'10/21/2019','two','Tuesday',1,'2019-10-13 13:52:18','0000-00-00 00:00:00',1);

/*Table structure for table `leaves` */

DROP TABLE IF EXISTS `leaves`;

CREATE TABLE `leaves` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_date` varchar(250) DEFAULT NULL,
  `to_date` varchar(250) DEFAULT NULL,
  `total_day` varchar(250) DEFAULT NULL,
  `l_type` int(11) DEFAULT NULL,
  `message` text,
  `reason` text,
  `status` int(11) DEFAULT '0' COMMENT '0=pending;1=approved;2=reject',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `approvedby` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `leaves` */

insert  into `leaves`(`l_id`,`from_date`,`to_date`,`total_day`,`l_type`,`message`,`reason`,`status`,`created_at`,`updated_at`,`a_id`,`approvedby`,`created_by`) values (5,'10/01/2019','10/03/2019','2',2,'ll',NULL,1,'0000-00-00 00:00:00','2019-10-01 14:52:32',54,1,NULL),(6,'11/06/2019','11/08/2019','2',1,'tesing  purpose',NULL,1,'0000-00-00 00:00:00',NULL,54,NULL,NULL),(11,'10/08/2019','10/08/2019','0',1,'xcZXc',NULL,1,'0000-00-00 00:00:00',NULL,52,NULL,1),(19,'10/17/2019','10/18/2019','1',2,'sdsa',NULL,1,'0000-00-00 00:00:00','2019-10-03 16:03:09',52,51,1),(20,'10/24/2019','10/25/2019','1',1,'cvxzcv','xcxvzxcvzx',2,'0000-00-00 00:00:00','2019-10-13 13:13:26',55,1,1),(21,'10/30/2019','10/31/2019','1',1,'xcZC','zXCZXCzxc',2,'0000-00-00 00:00:00','2019-10-13 13:18:07',58,1,1),(22,'10/18/2019','10/21/2019','1',1,'cxzczx','hello your  leave rejected',2,'0000-00-00 00:00:00','2019-10-13 13:58:59',58,51,58),(23,'10/25/2019','10/28/2019','2',1,'xcxc',NULL,1,'0000-00-00 00:00:00','2019-11-24 21:00:00',55,1,1),(24,'11/07/2019','11/07/2019','1',1,'testing purpose',NULL,1,'0000-00-00 00:00:00','2019-11-15 17:56:24',59,1,59),(25,'11/26/2019','11/26/2019','1',1,'testing ',NULL,1,'0000-00-00 00:00:00','2019-11-20 15:55:44',59,1,59),(26,'12/10/2019','12/10/2019','1',2,'jhkjhjjh','testing bz  CvnbxcjgxZ mxzcjzBXJcxz',2,'0000-00-00 00:00:00','2019-11-24 20:59:50',59,1,59),(27,'12/23/2019','12/23/2019','1',2,'gttttt',NULL,1,'0000-00-00 00:00:00','2019-11-24 21:05:29',59,1,59),(28,'11/28/2019','11/28/2019','1',3,'testing',NULL,0,'0000-00-00 00:00:00',NULL,59,NULL,59);

/*Table structure for table `leaves_days` */

DROP TABLE IF EXISTS `leaves_days`;

CREATE TABLE `leaves_days` (
  `l_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `sick` int(11) DEFAULT NULL,
  `causal` int(11) DEFAULT NULL,
  `sat_day` int(11) DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `leaves_days` */

insert  into `leaves_days`(`l_d_id`,`sick`,`causal`,`sat_day`,`updated_at`,`updated_by`) values (1,2,8,0,'2019-11-29 19:36:45',1);

/*Table structure for table `login_report` */

DROP TABLE IF EXISTS `login_report`;

CREATE TABLE `login_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT '0000-00-00 00:00:00',
  `hours` varchar(250) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `creatde_at` date DEFAULT NULL,
  `diff_time` varchar(250) DEFAULT NULL,
  `reason` text,
  `comment` text,
  `updated_time` timestamp NULL DEFAULT NULL,
  `to_time` varchar(250) DEFAULT NULL,
  `from_time` varchar(250) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4647 DEFAULT CHARSET=latin1;

/*Data for the table `login_report` */

insert  into `login_report`(`id`,`a_id`,`code`,`login_time`,`logout_time`,`hours`,`create_at`,`creatde_at`,`diff_time`,`reason`,`comment`,`updated_time`,`to_time`,`from_time`,`updated_by`) values (4591,56,'','2019-10-03 16:56:05','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4592,55,'TS55','2019-10-03 20:23:01','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4593,1,'','2019-10-04 21:08:26','0000-00-00 00:00:00',NULL,'2019-10-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4594,1,'','2019-10-05 08:19:49','2019-10-05 10:29:12','2:9','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4595,55,'TS55','2019-10-05 08:43:56','2019-10-05 11:39:50','2:55','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4596,1,'','2019-10-09 16:15:35','0000-00-00 00:00:00',NULL,'2019-10-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4597,1,'','2019-10-11 10:17:47','2019-10-11 19:40:19','9:22','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4598,55,'TS55','2019-10-11 11:10:45','0000-00-00 00:00:00',NULL,'2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4599,49,'','2019-10-11 11:31:49','2019-10-11 12:08:38','0:36','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4600,1,'','2019-10-13 11:01:07','2019-10-13 20:53:14','9:52','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4601,58,'TS58','2019-10-13 11:18:36','2019-10-13 14:01:57','2:43','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4602,51,'','2019-10-13 13:57:11','2019-10-13 14:25:23','0:28','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4603,54,'TN54','2019-10-13 14:02:28','0000-00-00 00:00:00',NULL,'2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4604,1,'','2019-10-14 10:36:44','0000-00-00 00:00:00',NULL,'2019-10-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4605,1,'','2019-10-16 14:37:34','2019-10-16 14:38:08','0:0','2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4606,55,'TS55','2019-10-16 14:39:10','0000-00-00 00:00:00',NULL,'2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4607,1,'','2019-10-20 22:19:59','2019-10-20 22:57:42','0:37','2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4608,55,'TS55','2019-10-20 22:57:49','0000-00-00 00:00:00',NULL,'2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4609,1,'','2019-10-23 22:30:54','2019-10-23 22:31:19','0:0','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4610,55,'TS55','2019-10-23 22:31:28','2019-10-23 23:02:01','0:30','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4611,1,'','2019-10-24 20:01:44','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4612,55,'TS55','2019-10-24 21:09:33','2019-10-24 21:55:27','0:45','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4613,49,'','2019-10-24 21:55:53','2019-10-24 22:00:36','0:4','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4614,51,'','2019-10-24 22:00:52','2019-10-24 22:10:57','0:10','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4615,56,'','2019-10-24 22:11:29','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4616,1,'','2019-10-25 08:16:15','0000-00-00 00:00:00',NULL,'2019-10-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4617,1,'','2019-11-08 21:26:55','0000-00-00 00:00:00',NULL,'2019-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4618,1,'','2019-11-10 18:23:38','0000-00-00 00:00:00',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4619,59,'AP59','2019-11-10 10:15:15','2019-11-10 20:15:15',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4620,1,'','2019-11-12 18:16:42','0000-00-00 00:00:00',NULL,'2019-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4621,59,'AP59','2019-11-12 10:18:46','2019-11-12 17:04:21','06:20','2019-11-12',NULL,'9:45','bvbzcx','','2019-11-24 20:23:50',NULL,NULL,1),(4622,1,'','2019-11-13 19:46:25','0000-00-00 00:00:00',NULL,'2019-11-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4623,59,'AP59','2019-11-15 16:27:07','2019-11-15 16:28:16','0:1','2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4624,1,'','2019-11-15 17:55:59','0000-00-00 00:00:00',NULL,'2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4625,59,'AP59','2019-11-20 14:42:06','2019-11-20 17:42:06','08:40','2019-11-20',NULL,'6','xcxzcZXvXCv','','2019-11-24 20:23:38',NULL,NULL,1),(4626,1,'','2019-11-20 15:55:29','0000-00-00 00:00:00',NULL,'2019-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4627,59,'AP59','2019-11-21 18:55:26','2019-11-21 22:55:26','6:30','2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4628,1,'','2019-11-21 19:42:23','0000-00-00 00:00:00',NULL,'2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4629,59,'AP59','2019-11-22 19:56:11','2019-11-22 19:56:11','07:00','2019-11-22',NULL,'7:0','testing ','','2019-11-24 20:56:13',NULL,NULL,1),(4630,59,'AP59','2019-11-24 11:28:19','2019-11-24 19:28:19','8:30','2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4631,1,'','2019-11-24 20:23:05','0000-00-00 00:00:00',NULL,'2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4632,59,'AP59','2019-11-25 10:23:32','2019-11-25 21:40:29','11:16','2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4633,1,'','2019-11-25 21:40:32','0000-00-00 00:00:00',NULL,'2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4634,1,'','2019-11-26 22:40:40','0000-00-00 00:00:00',NULL,'2019-11-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4635,1,'','2019-11-28 20:33:36','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4636,59,'AP59','2019-11-28 23:08:50','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4638,59,NULL,'2019-11-13 10:00:00','2019-11-13 11:00:00','16:15','2019-11-13','2019-11-13','3:15','vcbxcvbxcvbxcvbxcvb','','2019-12-01 19:54:40','02:15 PM','05:30 PM',1),(4639,1,'','2019-11-29 16:26:22','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4640,59,'AP59','2019-11-29 19:37:12','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4641,1,'','2019-12-01 13:23:40','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4642,59,'AP59','2019-12-01 18:52:00','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4643,1,'','2019-12-09 18:30:33','2019-12-09 20:51:34','2:21','2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4644,59,'AP59','2019-12-09 18:52:14','0000-00-00 00:00:00',NULL,'2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4645,1,'','2019-12-10 16:45:36','2019-12-10 19:25:21','2:39','2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4646,59,'AP59','2019-12-10 18:19:19','0000-00-00 00:00:00',NULL,'2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(250) DEFAULT NULL,
  `m_status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `modules` */

insert  into `modules`(`m_id`,`m_name`,`m_status`,`created_at`,`updated_at`,`created_by`) values (1,'Role managemnet ',1,'2019-09-13 12:41:25','2019-09-13 12:41:06',1),(20,'Department',1,'2019-09-18 11:55:04',NULL,1),(24,'Employee',1,'2019-09-23 21:02:05',NULL,1),(25,'Document',0,'2019-12-10 16:46:37','2019-12-10 16:46:37',1),(26,'Holidays',0,'2019-12-10 16:46:42','2019-12-10 16:46:42',1),(27,'Branches',0,'2019-12-10 16:46:27','2019-12-10 16:46:27',1),(28,'Leaves',0,'2019-12-10 16:46:53','2019-12-10 16:46:53',1),(29,'Attendance',0,'2019-12-10 16:47:03','2019-12-10 16:47:03',1),(30,'Payslip',0,'2019-12-10 16:47:31','2019-12-10 16:47:31',1),(31,'Notification',0,'2019-12-10 16:46:47','2019-12-10 16:46:47',1),(32,'Pending  task',0,'2019-12-10 16:47:38','2019-12-10 16:47:38',1),(33,'Termination',0,'2019-12-10 16:47:22','2019-12-10 16:47:22',1),(34,'Calendar',0,'2019-12-10 16:46:20','2019-12-10 16:46:20',1),(35,'Assign work',1,'2019-12-09 18:31:03',NULL,1);

/*Table structure for table `modules_menu` */

DROP TABLE IF EXISTS `modules_menu`;

CREATE TABLE `modules_menu` (
  `m_m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` int(11) DEFAULT NULL,
  `m_menu_name` varchar(250) DEFAULT NULL,
  `m_menu_url` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

/*Data for the table `modules_menu` */

insert  into `modules_menu`(`m_m_id`,`m_name`,`m_menu_name`,`m_menu_url`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'Roles','user/roles',1,'2019-05-20 10:22:03','2019-08-27 21:46:21',1),(2,1,'Users Rights','user/rights',1,'2019-05-20 10:22:21','2019-08-27 21:46:26',1),(3,1,'Users','user/add',1,'2019-05-20 10:22:38','2019-08-27 21:46:34',1),(41,11,'Patients','reports/patients',2,'2019-07-02 20:49:51','2019-09-13 12:38:51',1),(68,20,'Add','department/add',1,'2019-09-18 11:55:39',NULL,1),(69,20,'List','department',1,'2019-09-18 11:55:51',NULL,1),(73,24,'Add','employee/add',1,'2019-09-23 21:02:21',NULL,1),(74,24,'List','employee',1,'2019-09-23 21:02:38',NULL,1),(75,25,'Add','document/add',1,'2019-09-23 21:03:15',NULL,1),(76,25,'List','document/list',1,'2019-09-23 21:03:28',NULL,1),(77,26,'Add','holidays/add',1,'2019-09-24 09:03:35',NULL,1),(78,26,'List','holidays',1,'2019-09-24 09:03:45',NULL,1),(79,27,'Add','branches/add',1,'2019-09-26 22:31:27','2019-09-26 22:32:07',1),(80,27,'List','branches',1,'2019-09-26 22:31:55','2019-09-26 22:32:12',1),(81,28,'Apply','leaves/add',1,'2019-09-28 12:28:32',NULL,1),(82,28,'List','leaves',1,'2019-09-28 12:28:43',NULL,1),(83,28,'Set Days','leaves/setdays',1,'2019-10-03 13:33:54',NULL,1),(84,29,'Upload','attendance/upload',1,'2019-10-03 16:15:41',NULL,1),(85,30,'Genrate','payslip/index',1,'2019-10-03 16:16:05',NULL,1),(86,31,'Add','notification/add',1,'2019-10-04 21:09:19',NULL,1),(87,31,'List','notification',1,'2019-10-04 21:09:34',NULL,1),(88,1,'Users list','user/lists',1,'2019-10-14 10:42:24',NULL,1),(89,32,'Notice period','pendingtask',2,'2019-11-10 21:09:34','2019-11-10 22:18:33',1),(90,32,'Probation','pending/probation',0,'2019-11-10 21:10:07','2019-12-01 18:02:06',1),(91,32,'RESIGNATION ','resignation/lists',1,'2019-11-10 21:10:23','2019-11-10 22:19:04',1),(92,32,'Termination','pending/termination',2,'2019-11-10 21:11:04','2019-11-10 22:18:24',1),(93,33,'Add','termination',1,'2019-11-12 20:29:07','2019-11-12 21:17:36',1),(94,33,'List','termination/lists',1,'2019-11-12 21:17:27',NULL,1),(95,32,'Attendance regulation','pending/attendance_regulation',1,'2019-11-21 19:43:38',NULL,1),(96,34,'List','calendar/index',1,'2019-11-25 21:42:09',NULL,1),(97,35,'Add','assignwork/add',1,'2019-12-09 18:31:32',NULL,1),(98,35,'List','assignwork/index',1,'2019-12-09 18:31:46','2019-12-10 18:08:11',1);

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `title` text,
  `msg` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `read` int(11) DEFAULT '0',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `notifications` */

insert  into `notifications`(`n_id`,`a_id`,`title`,`msg`,`created_at`,`created_by`,`read`) values (32,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:34:09',56,0),(33,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:38:51',56,0),(34,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:39:26',56,0),(35,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:41:01',56,0),(36,55,NULL,'Your last month payslip is ready download and check it','2019-10-05 11:17:38',56,1),(37,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:50:31',56,0),(38,55,NULL,'Your last month payslip is ready download and check it','2019-10-05 11:17:38',56,1),(39,52,NULL,'Your last month payslip is ready download and check it','2019-10-03 19:52:40',56,0),(40,55,NULL,'Your last month payslip is ready download and check it','2019-10-05 11:17:38',56,1),(41,52,'title','xcZXCZX','2019-10-05 08:41:03',1,0),(42,54,'title','xcZXCZX','2019-10-05 08:41:03',1,0),(43,55,'title','xcZXCZX','2019-10-05 11:19:16',1,1),(44,52,'Testing  Purpose','zxxzczx','2019-10-05 08:41:37',1,0),(45,54,'Testing  Purpose','zxxzczx','2019-10-05 08:41:37',1,0),(46,55,'Testing  Purpose','zxxzczx','2019-10-05 11:18:47',1,1),(47,52,'Testing  Purpose','ghdghg','2019-10-13 11:44:18',1,0),(48,54,'Testing  Purpose','ghdghg','2019-10-13 11:44:18',1,0),(49,55,'Testing  Purpose','ghdghg','2019-10-23 23:01:59',1,1),(50,58,'Testing  Purpose','ghdghg','2019-10-13 11:44:24',1,1),(51,52,'Your last February payslip is ready download and check it','Your last February payslip is ready download and check it','2019-10-13 15:49:21',1,0),(52,55,'Your last February payslip is ready download and check it','Your last February payslip is ready download and check it','2019-10-23 23:01:59',1,1),(53,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:51:56',1,0),(54,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(55,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:54:39',1,0),(56,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(57,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:55:25',1,0),(58,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(59,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:56:00',1,0),(60,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(61,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:56:33',1,0),(62,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(63,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:58:50',1,0),(64,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(65,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 15:59:48',1,0),(66,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(67,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 16:01:45',1,0),(68,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1),(69,52,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-13 16:04:11',1,0),(70,55,'Your last January payslip is ready download and check it','Your last January payslip is ready download and check it','2019-10-23 23:01:59',1,1);

/*Table structure for table `payslips` */

DROP TABLE IF EXISTS `payslips`;

CREATE TABLE `payslips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `month` varchar(250) DEFAULT NULL,
  `inovie_name` varchar(250) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

/*Data for the table `payslips` */

insert  into `payslips`(`id`,`a_id`,`month`,`inovie_name`,`create_at`,`date`,`created_by`,`update_at`) values (111,52,'February','vasudevareddy_February_2019.pdf','2019-10-03 19:39:26','2019-02-01',56,NULL),(112,52,'February','vasudevareddy_February_2019.pdf','2019-10-03 19:41:01','2019-02-01',56,NULL),(113,55,'February','vasu_February_2019.pdf','2019-10-03 19:41:04','2019-02-01',56,NULL),(114,52,'January','PAN_January_2019.pdf','2019-10-13 15:51:56','2019-01-01',1,'2019-10-13 15:51:56'),(115,55,'January','PAN_January_2019.pdf','2019-10-13 15:51:58','2019-01-01',1,'2019-10-13 15:51:58');

/*Table structure for table `resignationa` */

DROP TABLE IF EXISTS `resignationa`;

CREATE TABLE `resignationa` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `reason` longtext,
  `comment` longtext,
  `status` int(11) DEFAULT '0',
  `last_date` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `read_cnt` int(11) DEFAULT '0',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `resignationa` */

insert  into `resignationa`(`r_id`,`emp_id`,`reason`,`comment`,`status`,`last_date`,`created_at`,`updated_at`,`updated_by`,`created_by`,`read_cnt`) values (1,59,'I hearby agree and request to accept my resignation and process my notice period as per the management decision.\r\n','xxzcZXCZXC',0,'1970-01-01','2019-12-01 19:51:48','2019-11-12 19:19:18',1,59,0),(2,59,'xcZXCZXc','',1,'2020-03-01','2019-12-01 19:54:30','2019-12-01 19:54:30',1,59,1);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`r_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Admin',1,'2019-11-29 20:45:27','2019-11-29 20:35:58',NULL),(3,'Hr',1,'2019-11-29 20:38:45',NULL,NULL),(4,'Manager',1,'2019-11-29 20:38:51',NULL,NULL),(5,'Accounts',1,'2019-11-29 20:38:52',NULL,1);

/*Table structure for table `role_name` */

DROP TABLE IF EXISTS `role_name`;

CREATE TABLE `role_name` (
  `r_n_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `role_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_name` */

/*Table structure for table `role_options` */

DROP TABLE IF EXISTS `role_options`;

CREATE TABLE `role_options` (
  `r_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_n_id` int(11) DEFAULT NULL,
  `r_option_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `role_options` */

insert  into `role_options`(`r_p_id`,`r_n_id`,`r_option_id`,`status`,`created_at`,`updated_at`,`created_by`) values (10,5,21,1,'2019-06-19 10:03:07','0000-00-00 00:00:00',1),(11,5,22,1,'2019-06-19 10:03:07','0000-00-00 00:00:00',1),(12,6,1,1,'2019-06-25 11:01:47','0000-00-00 00:00:00',1),(13,6,3,1,'2019-06-25 11:01:47','0000-00-00 00:00:00',1),(14,6,13,1,'2019-06-25 11:01:47','0000-00-00 00:00:00',1),(15,7,50,1,'2019-08-27 21:54:49','0000-00-00 00:00:00',1),(16,7,51,1,'2019-08-27 21:54:49','0000-00-00 00:00:00',1),(17,8,1,1,'2019-09-13 14:40:13','0000-00-00 00:00:00',1),(18,8,2,1,'2019-09-13 14:40:13','0000-00-00 00:00:00',1),(19,9,53,1,'2019-09-16 11:21:14','0000-00-00 00:00:00',1),(20,9,54,1,'2019-09-16 11:21:14','0000-00-00 00:00:00',1),(21,9,55,1,'2019-09-16 11:21:14','0000-00-00 00:00:00',1);

/*Table structure for table `specialty` */

DROP TABLE IF EXISTS `specialty`;

CREATE TABLE `specialty` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `specialty` */

insert  into `specialty`(`s_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Specialization one',1,'2019-09-16 11:39:05','0000-00-00 00:00:00',1),(2,'Specialization  two',1,'2019-09-18 11:50:59','2019-09-18 11:50:59',1);

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(250) DEFAULT NULL,
  `s_code` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`s_id`,`state`,`s_code`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'AP','36',1,'2019-06-13 12:35:43','0000-00-00 00:00:00',1),(2,'TS','45',1,'2019-06-13 12:35:46','0000-00-00 00:00:00',1);

/*Table structure for table `suggestion_list` */

DROP TABLE IF EXISTS `suggestion_list`;

CREATE TABLE `suggestion_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `replayed_id` int(11) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `type` enum('Replay','Replayed') DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion_list` */

insert  into `suggestion_list`(`id`,`a_id`,`replayed_id`,`comment`,`type`,`status`,`created_at`,`created_by`) values (1,55,55,'try to  check ','Replay',1,'2019-10-11 11:49:01',NULL),(2,55,55,'ccvxzcv','Replay',1,'2019-10-11 11:49:14',NULL),(3,55,55,'xcvcvxcv','Replay',1,'2019-10-11 11:49:21',NULL),(4,55,1,'cvcxzv','Replayed',1,'2019-10-11 12:10:05',1),(5,55,55,'hllo','Replay',1,'2019-10-11 12:10:37',55),(6,54,1,'hllo  hi  how  are you','Replayed',1,'2019-10-11 12:11:51',1),(7,55,1,'xczXc','Replayed',1,'2019-10-11 12:12:34',1),(8,51,51,'xczXC','Replay',1,'2019-10-13 14:22:20',51),(9,51,51,'dsfasdfsadf','Replay',1,'2019-10-13 14:24:00',51),(10,54,54,'cvzxcvzXVC','Replay',1,'2019-10-13 14:24:15',54);

/*Table structure for table `termination` */

DROP TABLE IF EXISTS `termination`;

CREATE TABLE `termination` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `comment` longtext,
  `document` varchar(250) DEFAULT NULL,
  `document2` varchar(250) DEFAULT NULL,
  `document3` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `termination` */

insert  into `termination`(`t_id`,`emp_id`,`comment`,`document`,`document2`,`document3`,`created_at`,`created_by`) values (1,52,'fasdfasdfs','1573573417.pdf','1573573417.pdf','1573573417.pdf','2019-11-12 21:13:37',1);

/*Table structure for table `user_departments` */

DROP TABLE IF EXISTS `user_departments`;

CREATE TABLE `user_departments` (
  `u_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `user_departments` */

insert  into `user_departments`(`u_d_id`,`a_id`,`d_id`,`status`,`created_at`,`updated_at`,`created_by`) values (9,51,1,1,'2019-09-23 20:56:21',NULL,1),(10,51,2,1,'2019-09-23 20:56:21',NULL,1);

/*Table structure for table `user_role_privileges` */

DROP TABLE IF EXISTS `user_role_privileges`;

CREATE TABLE `user_role_privileges` (
  `u_r_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_n_id` int(11) DEFAULT NULL,
  `m_m_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_r_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

/*Data for the table `user_role_privileges` */

insert  into `user_role_privileges`(`u_r_p_id`,`u_id`,`m_id`,`r_n_id`,`m_m_id`,`status`,`created_at`,`created_by`) values (3,25,1,8,1,1,'2019-09-13 14:44:56',1),(4,39,14,9,53,1,'2019-09-17 15:51:26',1),(5,39,14,9,54,1,'2019-09-17 15:51:26',1),(6,39,14,9,55,1,'2019-09-17 15:51:26',1),(7,40,14,9,53,1,'2019-09-17 16:07:40',1),(8,40,14,9,54,1,'2019-09-17 16:07:40',1),(9,40,14,9,55,1,'2019-09-17 16:07:40',1),(13,41,14,9,53,1,'2019-09-17 17:09:43',1),(14,41,14,9,54,1,'2019-09-17 17:09:43',1),(15,41,14,9,55,1,'2019-09-17 17:09:43',1),(16,45,14,9,53,1,'2019-09-23 13:14:21',1),(17,45,14,9,54,1,'2019-09-23 13:14:21',1),(18,45,14,9,55,1,'2019-09-23 13:14:21',1),(19,46,14,9,53,1,'2019-09-23 14:52:14',1),(20,46,14,9,54,1,'2019-09-23 14:52:14',1),(21,46,14,9,55,1,'2019-09-23 14:52:14',1),(82,47,14,9,53,1,'2019-09-23 15:57:43',1),(83,47,14,9,54,1,'2019-09-23 15:57:44',1),(84,47,14,9,55,1,'2019-09-23 15:57:44',1),(85,47,23,NULL,70,1,'2019-09-23 16:09:34',1),(86,47,23,NULL,71,1,'2019-09-23 18:17:31',1),(87,47,23,NULL,72,1,'2019-09-23 18:17:31',1),(90,49,1,8,1,1,'2019-09-23 19:55:11',1),(91,49,1,8,2,1,'2019-09-23 19:55:11',1),(92,50,1,8,1,1,'2019-09-23 20:15:21',1),(93,50,1,8,2,1,'2019-09-23 20:15:21',1),(130,51,1,8,1,1,'2019-09-23 20:57:01',1),(131,51,1,8,2,1,'2019-09-23 20:57:01',1),(132,51,28,NULL,82,1,'2019-10-03 15:43:32',1),(133,51,24,NULL,74,1,'2019-10-03 16:03:40',1),(134,56,24,NULL,74,1,'2019-10-03 16:14:14',1),(135,56,29,NULL,84,1,'2019-10-03 16:25:58',1),(136,56,30,NULL,85,1,'2019-10-03 16:27:10',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
