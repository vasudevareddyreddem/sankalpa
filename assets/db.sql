/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.32-MariaDB : Database - sankalpa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sankalpa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sankalpa`;

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`a_id`,`role_id`,`code`,`name`,`username`,`email`,`per_mail`,`mobile`,`emergency_contact_number`,`type_of_emp`,`months`,`notice_period`,`n_p_months`,`boold_group`,`marital_status`,`spouse`,`children_one`,`children_two`,`children_three`,`marriage_date`,`spouse_dob`,`children_one_dob`,`children_two_dob`,`children_three_dob`,`address`,`profile_pic`,`pwd`,`org_pwd`,`dep_id`,`designation`,`off_mail`,`branch_id`,`doj`,`father_name`,`mother_name`,`dob`,`gender`,`aadhar_num`,`pan_num`,`per_add`,`temp_add`,`aadhar_pic`,`pan_pic`,`kye`,`basicsalary`,`hra`,`employee_pfamount`,`employer_pfamount`,`employee_esi`,`employee_contribution_esi`,`employer_contribution_esi`,`employee_buyout`,`relocation_allowance`,`gross_salary`,`netsalary`,`specialallowance`,`conveyance`,`medicalreimbursement`,`pfnumber`,`pfamount`,`pt`,`esi`,`others`,`bankname`,`ifsc`,`bankaccountnumber`,`advance`,`salary`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,NULL,'Admin',NULL,'admin@gmail.com',NULL,'8500050944',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEAR LEELA MAHAL CIRCLE, TML BYPASS ROAD, Tirupati, Andhra Pradesh 517501, India','1576320674.png','92c93adfcd95a3037ab8246bb91d2d95','Pranam@18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-05-17 14:12:30','2020-01-08 20:57:17',0),(49,3,NULL,'Hr',NULL,'hr@gmail.com',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 19:50:10','2019-09-23 19:55:11',1),(51,4,NULL,'Manager',NULL,'manager@gmail.com',NULL,'987456632110',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 20:16:04','2019-09-23 20:57:01',1),(55,2,'475','SAI GANESH',NULL,'saiganeshoptom@gmail.com','saiganeshoptom@gmail.com','8639963607','8639963607','','','','','','','','','','','','','','','',NULL,'1570097339.jpg','e09c662c6c43c12b6ca36f81b077579c','8639963607',0,'OPERATIONS MANAGER','saiganeshoptom@gmail.com','13','10/24/2019','','','','','','','','','1570097339.html','1570097339.png','1570097339.xlsx','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','2020-01-09 15:19:21',1),(57,3,NULL,'Hr Two',NULL,'hr2@gmail.com',NULL,'1236541200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-10-11 10:28:22','2019-10-11 10:46:05',1),(58,2,'47558','SUNEETHA',NULL,'suneethaarunkumar@gmail.com','suneethaarunkumar@gmail.com','9581718191','9581718191','','','','','','','','','','','','','','','',NULL,'','2b4931b68c24a42501558b74b5cdbd10','9581718191',0,'HR','suneethaarunkumar@gmail.com','13','01/03/2020','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','2020-01-03 12:02:16',1),(59,2,'47559','SUJITH',NULL,'sujith.vasagiri@gmail.com','sujith.vasagiri@gmail.com','8870687557','8870687557','','','','','','','','','','','','','','','',NULL,'','96f0cf453fb3d102d45e95d046295ba9','8870687557',0,'SENIOR MANAGER','sujith.vasagiri@gmail.com','13','01/03/2020','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(60,2,'47560','KAVITHA',NULL,'Kavithaavulapati@gmail.com','Kavithaavulapati@gmail.com','7989003244','7989003244',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','b75e48662952e677f61bc96c4ee62235','7989003244',0,'FO MANAGER','Kavithaavulapati@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(61,2,'47561','ANJANI KUMAR',NULL,'Kumaralapatianjani@gmail.com','Kumaralapatianjani@gmail.com','9963357199','9963357199',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','8aaa796eae219c011bcd3c82e94a1f88','anjuammu143',0,'H.K MANAGER','Kumaralapatianjani@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00','2020-01-09 13:06:45',1),(62,2,'47562','KUMAR',NULL,'Pudota80@gmail.com','Pudota80@gmail.com','7995577118','7995577118',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1f02968461e1f0c71786c2985ecc6652','kumar1980',0,'MAINTENANCE MANAGER','Pudota80@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00','2020-01-04 14:56:14',1),(63,2,'47563','SIVA',NULL,'sriharikota25@gmail.com','sriharikota25@gmail.com','7032895057','7032895057',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','8106af333d6d133ee1afcc8effc23c43','7032895057',0,'PHARMACY INCHARGE','sriharikota25@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(64,2,'47564','PUSHPANJULU',NULL,'sankalpahealthcareaccts@gmail.com','sankalpahealthcareaccts@gmail.com','9573071727','9573071727',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','d307c4b0246d17ff97fdc2b88fd7c481','9573071727',0,'ACCOUNTS MANAGER','sankalpahealthcareaccts@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(65,2,'47565','Dr.PAVAN',NULL,'rohinipawankoppalambbs@gmail.com','rohinipawankoppalambbs@gmail.com','6302597972','6302597972','','','','','','','','','','','','','','','',NULL,'','539e6b8308ac1ee39c7e1141a353fc47','6302597972',0,'RMO','rohinipawankoppalambbs@gmail.com','13','12/02/2019','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(66,2,'47566','JOHN',NULL,'john@sankalpahospitals.com','john@sankalpahospitals.com','9849852085','9849852085','','','','','','','','','','','','','','','',NULL,'','d18dadeaa6ccec5ede5ebb7c65ca10c3','9849852085',0,'General manager markerting','john@sankalpahospitals.com','13','12/04/2019','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(67,2,'47567','Thanuja K',NULL,'thanujak@sankalpahospitals.com','thanujak18@gmail.com','9043622772','9043622772',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','7498c94a79ea35c32e4f6cf601483b3a','9043622772',0,'GM - HR & Accounts','thanujak@sankalpahospitals.com','13','01-10-2016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(68,2,'47568','Rajyalakshmi',NULL,'vsmrraji@gmail.com','vsmrraji@gmail.com','8247769841','8247769841',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','9b566dbf35143c0183e7855ae96dced7','8247769841',0,'Nursing Incharge','vsmrraji@gmail.com','13','01-01-2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1);

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
  `prioritization` varchar(250) DEFAULT NULL,
  `total_day` varchar(45) DEFAULT NULL,
  `message` text,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

/*Data for the table `assign_work` */

insert  into `assign_work`(`a_w_id`,`emp_id`,`from_date`,`to_date`,`prioritization`,`total_day`,`message`,`status`,`created_at`,`updated_at`,`created_by`) values (1,55,'12/01/2019','01/31/2020','High','45','feedback and task management apps',2,'2020-01-02 16:47:58','2020-01-02 16:56:53',1),(2,55,'01/01/2020','01/01/2020','Low','1','hiiii',2,'2020-01-02 16:59:21','2020-01-02 17:00:59',1),(3,55,'12/01/2019','01/31/2020','High','45','feedback and task management apps',2,'2020-01-03 11:44:28','2020-01-04 15:32:13',1),(4,55,'12/01/2019','01/31/2020','Medium','45','New TPA Empanelment- vidal,mediassist,bajaj,raksha,iffco tokio,liberty,reliance',1,'2020-01-03 11:48:02','2020-01-08 15:50:08',1),(5,55,'12/01/2019','01/31/2020','Low','45','TPA Claims & Cororate Claims including MOU & Tariffs\r\n',2,'2020-01-04 11:10:44','2020-01-08 15:50:22',1),(6,55,'12/01/2019','01/31/2020','Medium','45','Digital - Google Review, You Tube, Just Dial, SEO, Website, FB & Instagram\r\n',2,'2020-01-04 11:11:25','2020-01-08 15:51:23',1),(7,55,'12/01/2019','01/31/2020','Medium','45','Daily D/S process Review - D/S, MRD file Mx, TV Display Mx\r\n',1,'2020-01-04 11:12:07','2020-01-08 15:51:50',1),(8,55,'12/01/2019','01/31/2020','Low','45','IP Billing daily audit and final bill sign off\r\n',1,'2020-01-04 11:13:00','2020-01-08 15:51:13',1),(9,55,'12/01/2019','01/31/2020','Low','45','Do & Don’t board at Billing\r\n',1,'2020-01-04 11:13:38','2020-01-08 15:51:00',1),(10,55,'12/01/2019','01/31/2020','High','45','MRD Streamlining\r\n',1,'2020-01-04 11:14:38','2020-01-08 15:50:51',1),(11,55,'12/01/2019','01/31/2020','High','45','Corporates - TPA list design, display at corporates, Digital promotion, Corporate engagement activities\r\n',0,'2020-01-04 11:15:02',NULL,1),(12,61,'12/01/2019','01/31/2020','Medium','45','Seven Hills Furniture\r\n',2,'2020-01-04 11:16:20','2020-01-04 17:00:26',1),(13,61,'12/25/2019','07/31/2020','High','158','Birth And Death Registation\r\n',2,'2020-01-04 11:17:24','2020-01-06 15:08:30',1),(14,60,'12/01/2019','01/31/2020','Medium','45','OPD Feedback\r\n',1,'2020-01-04 11:19:15','2020-01-08 15:39:03',1),(15,60,'12/01/2019','01/01/2021','High','285','Patient Source Report for walkin cases\r\n',1,'2020-01-04 11:20:43','2020-01-08 15:39:10',1),(16,60,'12/01/2019','01/31/2020','Medium','45','PRO Activity and reports\r\n',1,'2020-01-04 11:21:09','2020-01-08 15:39:14',1),(17,60,'12/01/2019','01/31/2020','Medium','45','FO training and roster\r\n',2,'2020-01-04 11:22:10','2020-01-08 15:39:23',1),(18,60,'12/01/2019','01/31/2020','Medium','45','Patient care - Daily feedback\r\n',1,'2020-01-04 11:23:15','2020-01-08 15:39:28',1),(19,60,'12/01/2019','01/31/2020','Medium','45','Casuality Management\r\n',1,'2020-01-04 11:23:37','2020-01-08 15:39:31',1),(20,60,'12/01/2019','01/31/2020','Medium','45','OPD Sisters Monitoring\r\n',1,'2020-01-04 11:23:58','2020-01-08 15:39:37',1),(21,60,'12/01/2019','01/31/2020','Medium','45','Sample collection monitoring\r\n',1,'2020-01-04 11:24:21','2020-01-08 15:39:42',1),(22,62,'12/01/2019','01/31/2020','High','45','NABH Changes (Door Close, Table in washing area, Narcotics Cupboard)\r\n',2,'2020-01-04 11:25:56','2020-01-04 14:59:18',1),(23,62,'12/01/2019','01/31/2020','Low','45','Painting Work\r\n',2,'2020-01-04 11:28:17','2020-01-07 18:52:42',1),(24,62,'12/01/2019','01/31/2020','High','45','CC Camera Position change & Review of existing Cameras\r\n',2,'2020-01-04 11:29:11','2020-01-04 14:59:51',1),(25,62,'12/01/2019','01/31/2020','Low','45','Repair of 2 sofa chairs\r\n',0,'2020-01-04 11:29:42',NULL,1),(26,62,'12/01/2019','01/31/2020','Medium','45','Fire Exit Maps in all floors\r\n',2,'2020-01-04 11:30:16','2020-01-06 11:31:43',1),(27,62,'12/01/2019','01/31/2020','Medium','45','Billing Dpet. Window Glass\r\n',2,'2020-01-04 11:30:43','2020-01-07 18:53:01',1),(28,62,'12/01/2019','01/31/2020','Medium','45','313 Fan repair\r\n',2,'2020-01-04 11:31:36','2020-01-06 15:35:54',1),(29,62,'12/13/2019','02/29/2020','Medium','56','2nd & 3rd floor displays opp. To small lifts\r\n',1,'2020-01-04 11:32:18','2020-01-09 10:30:43',1),(30,62,'12/13/2019','02/29/2020','Medium','56','New conference hall poster of consultants\r\n',0,'2020-01-04 11:32:47',NULL,1),(31,62,'12/25/2019','02/29/2020','Medium','48','Need A wall mount Fan In Radiology Waiting Area\r\n',2,'2020-01-04 11:33:28','2020-01-06 15:36:27',1),(32,62,'12/25/2019','02/29/2020','High','48','3 sitter chair is broken in radiolgy area\r\n',2,'2020-01-04 11:33:59','2020-01-04 15:00:39',1),(33,62,'01/30/2020','02/29/2020','High','22','Dialysis Power Issue\r\n',0,'2020-01-04 11:34:31',NULL,1),(34,62,'01/02/2020','02/29/2020','High','42','Need to buy a Wall mount fan(Radiology,313)\r\n',2,'2020-01-04 11:35:11','2020-01-06 15:37:42',1),(35,62,'01/02/2020','02/29/2020','Medium','42','4th floor glass repair\r\n',2,'2020-01-04 11:35:39','2020-01-08 15:59:17',1),(36,63,'12/19/2019','01/31/2020','High','32','New Crash Cart Installation\r\n',2,'2020-01-04 11:36:46','2020-01-04 15:45:13',1),(37,58,'12/01/2019','01/31/2020','High','45','Closing of NABH\r\n',1,'2020-01-04 11:38:12','2020-01-06 13:19:33',1),(38,59,'12/01/2019','01/31/2020','High','45','PCPNDT Followup\r\n',1,'2020-01-04 11:39:31','2020-01-08 16:31:04',1),(39,59,'12/01/2019','01/31/2020','Medium','45','Radiology Dept. Issues Review\r\n',2,'2020-01-04 11:40:17','2020-01-08 16:31:16',1),(40,59,'12/01/2019','01/31/2020','High','45','DM & HO Mail\r\n',1,'2020-01-04 11:40:40','2020-01-08 16:31:21',1),(41,59,'12/01/2019','01/31/2020','High','45','TMT AMC\r\n',2,'2020-01-04 11:41:05','2020-01-08 16:31:26',1),(42,59,'12/01/2019','01/31/2020','High','45','Defib Battery\r\n',2,'2020-01-04 11:49:00','2020-01-08 16:31:47',1),(43,59,'12/01/2019','01/31/2020','High','45','AERB Portal Review\r\n',2,'2020-01-04 11:49:40','2020-01-08 16:31:53',1),(44,59,'12/01/2019','01/31/2020','Medium','45','Ortho Instruments quotes\r\n',1,'2020-01-04 12:25:56','2020-01-08 16:31:58',1),(45,59,'12/01/2019','01/31/2020','Medium','45','BME Review\r\n',0,'2020-01-04 12:26:21',NULL,1),(46,59,'12/01/2019','01/31/2020','High','45','Solocraft Cots Repair\r\n',0,'2020-01-04 12:26:44',NULL,1),(47,59,'12/01/2019','01/31/2020','Medium','45','NICU Equipment\r\n',0,'2020-01-04 12:27:06',NULL,1),(48,59,'12/13/2019','02/29/2020','Medium','56','Key people work instruction\r\n',0,'2020-01-04 12:27:31',NULL,1),(49,59,'12/13/2019','02/29/2020','High','56','Daily gaps and actions list\r\n',1,'2020-01-04 12:28:06','2020-01-08 16:32:39',1),(50,59,'12/21/2019','02/29/2020','High','50','Tricog Machine In ER\r\n',0,'2020-01-04 12:28:36',NULL,1),(51,59,'12/21/2019','02/29/2020','High','50','Manual Suction in ER\r\n',2,'2020-01-04 12:29:38','2020-01-08 16:33:31',1),(52,59,'12/01/2019','01/31/2020','High','45','Mr Pavan kumar Case Fallow up\r\n',1,'2020-01-04 12:30:22','2020-01-08 16:32:21',1),(53,59,'01/02/2020','01/31/2020','Medium','22','Lead Apron\r\n',1,'2020-01-04 12:30:57','2020-01-08 16:33:59',1),(54,64,'12/01/2019','02/29/2020','Medium','65','Firm name change in all places and Vendors\r\n',0,'2020-01-04 12:34:38',NULL,1),(55,64,'12/01/2019','02/29/2020','Medium','65','LLP Conversion\r\n',0,'2020-01-04 12:54:15',NULL,1),(56,64,'12/01/2019','02/29/2020','Medium','65','NICU Equipment loan - Siemens / Clix / Anil\r\n',0,'2020-01-04 12:54:39',NULL,1),(57,64,'12/01/2019','02/29/2020','Medium','65','ITR Filing - SHC, Self & Thanuja\r\n',0,'2020-01-04 12:55:08',NULL,1),(58,64,'12/01/2019','02/29/2020','Medium','65','Arogyasri payments TDS Refund\r\n',0,'2020-01-04 12:56:24',NULL,1),(59,64,'12/01/2019','02/29/2020','Medium','65','Additional OD - Documents to Indian Bank\r\n',0,'2020-01-04 12:56:49',NULL,1),(60,64,'12/01/2019','02/29/2020','Medium','65','Annual GST filing\r\n',0,'2020-01-04 12:57:17',NULL,1),(61,64,'12/01/2019','02/29/2020','Medium','65','Income tax notice hearing\r\n',0,'2020-01-04 12:57:45',NULL,1),(62,64,'12/01/2019','02/29/2020','Medium','65','Old & new scrutiny\r\n',0,'2020-01-04 12:58:05',NULL,1),(63,65,'12/01/2019','02/29/2020','High','65','Ward wise expiry drugs value\r\n',0,'2020-01-04 13:05:45',NULL,1),(64,66,'12/01/2019','01/31/2020','High','45','Surgeons list in Tirupati\r\n',0,'2020-01-04 13:31:59',NULL,1),(65,66,'12/01/2019','02/29/2020','Low','65','Gynaecology health camp for Seeeja Milk\r\n',0,'2020-01-04 13:32:29',NULL,1),(66,66,'12/01/2019','01/31/2020','Medium','45','Wall poster stickers\r\n',0,'2020-01-04 13:33:01',NULL,1),(67,66,'12/01/2019','01/31/2020','Low','45','4K Marathon at Rajampeta\r\n',0,'2020-01-04 13:34:07',NULL,1),(68,66,'12/01/2019','01/31/2020','Low','45','Health camp at Vishwam School\r\n',0,'2020-01-04 13:34:38',NULL,1),(69,66,'12/01/2019','01/31/2020','High','45','Flat for rent for our meetings\r\n',0,'2020-01-04 13:35:03',NULL,1),(70,66,'12/01/2019','01/31/2020','Medium','45','Village important people mobile numbers\r\n',0,'2020-01-04 13:35:31',NULL,1),(71,66,'12/01/2019','01/31/2020','High','45','AV add finalisation with Kalyani ads\r\n',0,'2020-01-04 13:35:59',NULL,1),(72,66,'12/01/2019','01/31/2020','High','45','Auto Branding\r\n',0,'2020-01-04 13:36:24',NULL,1),(73,59,'01/04/2020','01/08/2020','High','3','Intergation of Lab analisers with HMS',0,'2020-01-04 15:05:00',NULL,1),(74,62,'08-01-2020','08-01-2020','High','1','Painting Work',2,'2020-01-08 16:36:26','2020-01-08 16:42:12',1),(75,62,'08-01-2020','08-01-2020','High','1','CC Camera Position Change & Review of existing Cameras',2,'2020-01-08 16:37:13','2020-01-08 16:42:36',1),(76,62,'08-01-2020','08-01-2020','High','1','Rain water leaking through elevation glass in MRD area',2,'2020-01-08 16:38:38','2020-01-08 16:42:54',1),(77,62,'08-01-2020','08-01-2020','Medium','1','Lights and wires hanging in radiology waiting area',2,'2020-01-08 16:39:19','2020-01-08 16:44:03',1),(78,62,'08-01-2020','08-01-2020','Medium','1','Damaged fall ceiling in CT scan room',0,'2020-01-08 16:39:54',NULL,1),(79,62,'08-01-2020','08-01-2020','Medium','1','Broken Handle for cupboard in ER',2,'2020-01-08 16:40:36','2020-01-09 13:52:29',1),(80,62,'08-01-2020','08-01-2020','High','1','5 KVA UPS Repair in Lab',2,'2020-01-08 16:40:55','2020-01-08 16:44:41',1),(81,62,'08-01-2020','08-01-2020','High','1','20KVA UPS repair',0,'2020-01-08 16:41:19',NULL,1),(82,62,'08-01-2020','08-01-2020','Medium','1','Wall in pharmacy with sticker patches',2,'2020-01-08 16:41:45','2020-01-08 16:45:04',1),(83,62,'08-01-2020','08-01-2020','Medium','1','Damaged Chair in consultation rooms',2,'2020-01-08 16:42:16','2020-01-08 16:45:40',1),(84,62,'08-01-2020','08-01-2020','High','1','OT Recovery room AC not Working',2,'2020-01-08 16:42:49','2020-01-08 16:45:19',1),(85,62,'08-01-2020','08-01-2020','Medium','1','Damaged Glass in Lab Department',2,'2020-01-08 16:43:18','2020-01-08 16:45:58',1),(86,64,'08-01-2020','15-01-2020','Medium','6','CX50 AMC Amount Payment',0,'2020-01-08 21:12:46',NULL,1),(87,64,'08-01-2020','15-01-2020','Medium','6','Lifts AMC finalization & Payment',0,'2020-01-08 21:13:26',NULL,1),(88,55,'09-01-2020','09-01-2020','High','1','Testing by vasu',2,'2020-01-09 18:48:34','2020-01-09 19:04:13',1),(89,55,'06-01-2020','09-01-2020','High','4','ttt',2,'2020-01-09 19:04:44','2020-01-09 19:05:20',1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `assign_work_comments` */

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `branches` */

insert  into `branches`(`b_id`,`code`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'475','Tirupati',2,'2020-01-02 04:14:34','2020-01-02 16:44:34',1),(13,'475','Tirupati',1,'2020-01-01 10:46:34','0000-00-00 00:00:00',1);

/*Table structure for table `chat_tab` */

DROP TABLE IF EXISTS `chat_tab`;

CREATE TABLE `chat_tab` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(200) DEFAULT NULL,
  `recevier_id` varchar(200) DEFAULT NULL,
  `sent_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(200) DEFAULT NULL,
  `message` text,
  `read_status` varchar(200) DEFAULT 'unread',
  `notified_msg` int(11) DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `chat_tab` */

insert  into `chat_tab`(`message_id`,`sender_id`,`recevier_id`,`sent_time`,`status`,`message`,`read_status`,`notified_msg`) values (33,'3','1','2018-11-08 01:50:26',NULL,'mj','unread',0),(32,'3','8','2018-11-07 22:16:18',NULL,'hi this is kasi umamahes\n','read',1),(31,'7','4','2018-11-07 21:54:44',NULL,'haiiiiiiiiiiiii','unread',0),(30,'3','1','2018-11-07 21:47:30',NULL,'jjjj','unread',0);

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `address` text,
  `city` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `gst_no` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`c_id`,`name`,`address`,`city`,`district`,`mobile`,`gst_no`,`status`,`created_at`,`updated_at`,`created_by`) values (7,'RAYALASEEMA AGENCIES','# 50 NETHAJI ROAD','TIRUPATI','CHITTOOR','0877-2251399','37AACFR6764L1ZM',1,'2019-12-08 12:01:03','0000-00-00 00:00:00',3),(8,'SRI BALAJI DIGITALS','# 17 NETHAJI ROAD  ','TIRUPATI','CHITTOOR','98490 46429','37ABKPM1142J1ZM',1,'2019-12-08 12:05:23','0000-00-00 00:00:00',3),(9,'S.V.DIGITAL','# 17 NETHAJI ROAD  ','TIRUPATI','CHITTOOR','9394446436','37AQZPS4985K1ZF',1,'2019-12-08 12:09:21','0000-00-00 00:00:00',3),(10,'RAYALASEEMA & CO','# 50 NETHAJI ROAD','TIRUPATI','CHITTOOR','0877-2254477','37AACFR6483L1ZM',1,'2019-12-08 12:50:46','0000-00-00 00:00:00',3),(11,'BANK OF BARODA-RO','NITYA HOMES RONIGUNTA ROAD','TIRUPATI','CHITTOOR','0877-2266445','37AAACB1534F2Z4',1,'2019-12-08 12:54:58','2019-12-16 14:29:24',3),(12,'KVR JEWELLERS','ANNAMAIAH CIRCLE, AIR BY PASS ROAD','TIRUPATI','CHITTOOR','0877-2241916','37AARFK7302G1Z5',1,'2019-12-08 13:10:20','0000-00-00 00:00:00',3),(13,'PCR WARE HOUSING LTD','#240  3rd FLOOR GANDHI ROAD ','TIRUPATI','CHITTOOR','0877-2227579','37AABCP3216F3ZP',1,'2019-12-08 13:13:15','0000-00-00 00:00:00',3),(14,'LV LOGISTICS, (PCR WARE HOUSING)','#240 3rd FLOOR GANDHI ROAD','TIRUPATI','CHITTOOR','0877-2227269','37AABCL0966C1ZQ',1,'2019-12-08 13:17:47','0000-00-00 00:00:00',3),(15,'THE CHIEF MANAGER GARU, INDIAN BANK','AVILALA BRANCH','TIRUPATI','CHITTOOR','0877-2244331','37AAACI1607G2ZX',1,'2019-12-12 13:27:25','2020-01-07 18:17:43',3),(16,'HARUN SHARIFF MOHAMMED','# 14-257,KHADAR MEERAN STREET','CHITTOOR','CHITTOOR DIST-517001','9441885526','NO',1,'2019-12-12 18:00:22','0000-00-00 00:00:00',3),(17,'THE CHIEF MANAGER GARU, BANK OF BARODA','# 12-2-940,GIREESH TOWERS,SAINAGAR 2nd CROSS','ANANTAPUR','ANANTAPUR DIST-515001','91 9100442538','37AAACB1534F2Z4',1,'2019-12-12 19:02:28','0000-00-00 00:00:00',3),(18,'THE CHIEF MANAGER GARU, BANK OF BARODA','POST BOX NO:46,#231/368-C,HOSPITAL ROAD','KADAPA','KADAPA DIST-516001','91 9445643632','37AAACB1534F2Z4',1,'2019-12-12 19:06:24','0000-00-00 00:00:00',3),(19,'DNR DIABETIES CENTRE','ANNAMAIAH CIRCLE, R.C. ROAD','TIRUPATI','CHITTOOR DIST','0877-2241071','37ASJPK0265A1Z3',1,'2019-12-13 19:18:46','2019-12-14 20:17:05',3),(20,'THE CHIEF MANAGER GARU, BANK OF BARODA','#40/301-1,BELLARY ROAD','KURNOOL','KURNOOL DIST-518004','91 8971636245','37AAACB1534F2Z4',1,'2019-12-13 19:59:54','0000-00-00 00:00:00',3),(21,'JAFFAR SHARIFF MOHAMMED','#14-257,KHADAR MEERAN ST','CHITTOOR','CHITTOOR DIST-517001','984934417','NO',1,'2019-12-14 16:44:13','0000-00-00 00:00:00',3),(22,'THE MANAGER GARU, SHRIRAM TRANSPORT FINANCE CO...LTD.,','# 26/1/40,3dr FLOOR,OM SANTHI TOWERS, RITHWIK ENCLAVE, AK NAGAR,VEDAYAPALEM','NELLORE','NELLORE DIST-524004','9985363181','37AAACS7018R1ZS',1,'2019-12-16 14:28:34','2020-01-05 20:46:11',3),(23,'THE CHIEF MANAGER GARU, APSFC','PLOT NO.B12A,INDUSTRIAL ESTATE, GNT ROAD,DARGAMITTA','NELLORE','NELLORE- 524 004','91 9133653361','37AABCA9106B1Z5',1,'2019-12-16 16:25:08','0000-00-00 00:00:00',3),(24,'PRUDHVI HERO AUTO MOBILES','AIR BY PASS ROAD, BESIDE RAS BUILDING','TIRUPATI','CHITTOOR-517501','9835812345','37BLEPG3418A1ZO',1,'2019-12-16 16:28:53','0000-00-00 00:00:00',3),(25,'THE CHIEF MANAGER GARU, BANK OF BARODA','# A-2-51,G.N.T. ROAD,VENKATACHALAM','NELLORE','NELLORE DIST-524320','0861-2383326','37AAACB1534F2Z4',1,'2019-12-17 18:48:02','2019-12-18 21:36:37',3),(26,'SRI SAI SERVICES','LEELAMAHAL CIRCLE','TIRUPATI','CHITTOOR DIST-517001','8297922999','NO',1,'2019-12-18 18:27:20','0000-00-00 00:00:00',3),(27,'EARNEST','BALAJI COLONY','TIRUPATI','CHITTOOR DIST-517501','7095633543','NO',1,'2019-12-19 16:38:08','0000-00-00 00:00:00',3),(28,'R.S. SCHOOL','AUTO NAGAR','TIRUPATI','CHITTOOR','8247457565','NO',1,'2019-12-20 15:26:43','2019-12-20 15:28:05',3),(29,'THE CHIEF MANAGER GARU, ANDHRA BANK','#3-5-37,MAIN ROAD,PULIVENDULA','KADAPA CITY','KADAPA DIST-516390','08568-286327','37AABCA7375C2ZR',1,'2019-12-20 18:44:58','0000-00-00 00:00:00',3),(30,'SHAIK NASREEN','#10-12-411,TILAK ROAD, JAGANNADHA PURAM','TIRUPATI','CHITTOOR DIST-517501','9849344172','NO',1,'2019-12-21 15:31:23','0000-00-00 00:00:00',3),(31,'NALLAPPAGARI NAGI REDDY','#1-345/2,SAIRAM STREET','PILERU','CHITTOOR-517501','9505417361','NO',1,'2019-12-21 16:58:41','0000-00-00 00:00:00',3),(32,'VIHARI MARKETING PVT LTD','PLOT NO:2,GAJALAKSHMI GREEN PARK, BOMMALA Q.S,KARAKAMBADI ROAD','TIRUPATI','CHITTOOR DIST-517501','7799019993','37AADCV3697G1ZW',1,'2019-12-22 20:59:14','0000-00-00 00:00:00',3),(33,'SIRI DEVELOPERS','PADMAVATHI PURAM','TIRUPATI ','CHITTOOR','9885548822','NO',1,'2019-12-23 15:52:19','0000-00-00 00:00:00',3),(34,'SIDDHIKA KHATEEMA','#22-18,PRAKASAM HIGH ROAD, KATTAMANCHI','CHITTOOR','CHITTOOR DIST','+91 81432 49889','NO',1,'2019-12-23 18:00:37','0000-00-00 00:00:00',3),(35,'NASEER HUSSEN','#22-18,PRAKASAM HIGH ROAD, KATTAMANCHI','CHITTOOR','CHITTOOR DIST','081432 49889','NO',1,'2019-12-23 18:04:48','0000-00-00 00:00:00',3),(36,'R.S. COLLEGE OF EDUCATION','M.R. PALLI','TIRUPATI','CHITTOOR DIST-517501','9347112739','NO',1,'2019-12-24 13:38:29','0000-00-00 00:00:00',3),(37,'VENKATESH REDDY','TUDA ROAD','TIRUPATI','CHITTOOR DIST-517501','7396556083','NO',1,'2019-12-24 15:16:54','2019-12-24 16:41:57',3),(38,'K. PREMA KUMARI','RENIGUNTA ROAD,COTTEN MILL','TIRUPATI','CHITTOOR DIST','9642760602','NO',1,'2019-12-24 15:18:36','2019-12-24 15:19:54',3),(39,'SHAKTHI PARKING','P.K.LAYOUT','TIRUPATI','CHITTOOR DIST','9849321347','NO',1,'2019-12-24 20:38:15','0000-00-00 00:00:00',3),(40,'LOKESWARI TRADING, VANHEUSEN','NEW BALAJI COLONY, OPP.HONDA SHOWROOM, AIR BY PASS ROAD','TIRUPATI','CHITTOOR DIST-517001','9849179912','37AAHFL2070L1Z4',1,'2019-12-25 12:19:10','0000-00-00 00:00:00',3),(41,'ANDHRA COURIER','P.K. LAYOUT ','TIRUPATI','CHITTOOR DIST','9121797448','NO',1,'2019-12-26 15:50:55','0000-00-00 00:00:00',3),(42,'CLARITY  OPTICALS','M.R.PALLI','TIRUPATI ','CHITTOOR DIST','7036000777','NO',1,'2019-12-26 17:08:08','0000-00-00 00:00:00',3),(43,'THODERU GRAMA PANCHAYATI','THODERU','SARVEPALLI','NELLORE DIST-524004','0861-2383327','NO',1,'2019-12-26 19:06:40','0000-00-00 00:00:00',3),(44,'NARAYANA REDDY','K.T. ROAD','TIRUPATI','CHITTOOR DIST','9397961664','NO',1,'2019-12-28 15:38:04','0000-00-00 00:00:00',3),(45,'SNEHA DECORS','AIR BY PASS ROAD','TIRUPATI','CHITTOOR DIST','9393601541','37AJKPM8254D1ZZ',1,'2019-12-28 15:56:44','0000-00-00 00:00:00',3),(46,'JAYADEV AUTO FINANCE','RENIGUNTA ROAD','TIRUPATI','CHITTOOR DIST','8919761627','NO',1,'2019-12-28 16:55:08','0000-00-00 00:00:00',3),(47,'S.S. DIGITAL ZONE','PERURU','TIRUPATI','CHITTOOR DIST','7032813870','NO',1,'2019-12-28 16:56:29','0000-00-00 00:00:00',3),(48,'ELAVARTHY TEJASWI','GAYATRI NAGAR,M.R. PALLI','TIRUPATI','CHITTOOR DIST','9866379042','NO',1,'2019-12-28 17:13:23','0000-00-00 00:00:00',3),(49,'MUTHIREVULA BHASKAR REDDY','GAYATRI NAGAR,M.R. PALLI','TIRUPATI','CHITTOOR DIST','9912220587','NO',1,'2019-12-28 17:17:09','0000-00-00 00:00:00',3),(50,'NAVEEN KUMAR JAIN','BAZAAR STREET','RENIGUNTA','CHITTOOR DIST','9912859907','NO',1,'2019-12-28 17:19:39','0000-00-00 00:00:00',3),(51,'VEMPALLI MOHAMMAD AFZAL','SVM ROAD,YMR COLONY','PRODDUTUR','YSR DIST','9505417362','NO',1,'2019-12-28 17:37:15','0000-00-00 00:00:00',3),(52,'ASHOK ','BALAJI NAHAR','NELLORE','NELLOOR DIST','9347355202','NO',1,'2019-12-29 15:14:15','2019-12-30 20:15:07',3),(53,'EICHER TRACTOR SHOWROOM','AYYAPPA GUDI CENTRE','NELLORE','NELLORE DIST-524004','7337335080','NO',1,'2020-01-03 17:27:05','0000-00-00 00:00:00',3),(54,'SRI CITY (MADHUKAR)','SULLURE PETA','SULLURE PETA','NELLORE DIST-524004','9381749032','NO',1,'2020-01-03 17:30:46','0000-00-00 00:00:00',3),(55,'SWAPNA','DHARGA MITTA','NELLORE','NELLORE DIST-524004','7993443111','NO',1,'2020-01-03 17:32:40','0000-00-00 00:00:00',3),(56,'ANJANEYULU','RENIGUNTA ROAD','TIRUPATI','CHITTOOR DIST','7799927624','NO',1,'2020-01-03 17:41:53','0000-00-00 00:00:00',3),(57,'MOGALLURU PANCHAYATI','MOGALLURU','NELLORE','NELLOOR DIST','7993447111','NO',1,'2020-01-03 18:40:58','0000-00-00 00:00:00',3),(58,'BHIRADAVOLU PANCHAYATI ','BHIRADAVOLU','NELLORE','NELLORE DIST','6281333906','NO',1,'2020-01-03 18:42:39','0000-00-00 00:00:00',3),(59,'REDDEPPA','KORLGUNTA ','Tirupati ','Chittoor ','9700079363','No',1,'2020-01-04 13:26:14','0000-00-00 00:00:00',3),(60,'GSR FINANCE','K.T. ROAD ','Tirupati ','Chittoor ','7660009009','No',1,'2020-01-04 13:28:14','0000-00-00 00:00:00',3),(61,'AMSIQRA EM SCHOOL','PARAMESWARI NAGAR','NELLORE ','NELLORE','8801237216','NO',1,'2020-01-04 17:01:09','0000-00-00 00:00:00',3),(62,'PRATUSHA ','B.V NAGAR','NELLORE','NELLORE DIST-524004','7075531970','NO',1,'2020-01-04 17:03:12','0000-00-00 00:00:00',3),(63,'PRASAD','PODALAKUR ROAD','NELLORE','NELLORE DIST-524004','9347033063','NO',1,'2020-01-04 17:04:59','0000-00-00 00:00:00',3),(64,'SRI PADHA JYOTHISHYAM','B.V NAGAR','NELLORE','NELLORE DIST-524004','9059788345','NO',1,'2020-01-04 17:40:34','0000-00-00 00:00:00',3),(65,'THE CHIEF MANAGER GARU, SYNDICAT BANK ','SIDDANTH TOWERS, S.D. LAYOUT','TIRUPATI','CHITTOOR DIST','9440905307','37AACCS46699E1ZO',1,'2020-01-05 18:50:25','2020-01-05 20:44:02',3),(66,'SRINIVASA RAO','BAIRAGIPATTEDA','TIRUPATI','CHITTOOR DIST','9493972680 ','NO',1,'2020-01-07 14:15:34','0000-00-00 00:00:00',3),(67,'K.S. BABU','VANAM THOPU CENTER','NELLORE','NELLOOR DIST','8187066061 ','NO',1,'2020-01-07 15:57:11','0000-00-00 00:00:00',3),(68,'THE ZONAL OFFICE, INDIAN BANK','K.T. ROAD','TIRUPATI','CHITTOOR DIST','0877-2500030','37AAACI1607G2ZX',1,'2020-01-07 18:20:30','0000-00-00 00:00:00',3),(69,'THE CHIEF MANAGER GARU, INDIAN BANK','SUMA COMPLEX,PATEL ROAD','MADANAPALLI','CHITTOOR DIST-517325','08571-223341','37AAACI1607G2ZX',1,'2020-01-07 18:22:59','0000-00-00 00:00:00',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`d_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'IP BILLING',2,'2019-12-31 22:17:31','2020-01-01 10:47:31',1),(2,'FRONT OFFICE',2,'2019-12-31 22:18:43','2020-01-01 10:48:43',1),(3,'ACCOUNTS',2,'2019-12-31 22:17:12','2020-01-01 10:47:12',1),(4,'HR',2,'2019-12-31 22:17:44','2020-01-01 10:47:44',1),(5,'MAINTANENCE',2,'2019-12-31 22:18:00','2020-01-01 10:48:00',1),(6,'Cardiology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(7,'Cardio Thoracic',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(8,'Neurology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(9,'Neurology',2,'2019-12-31 22:22:04','2020-01-01 10:52:04',1),(10,'Urology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(11,'General Medicine',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(12,'Critical Care',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(13,'General Surgery',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(14,'General Surgery',2,'2019-12-31 22:21:47','2020-01-01 10:51:47',1),(15,'Orthopedics',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(16,'Plastic Surgery',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(17,'Maxillofacial Surgery',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(18,'Chest Medicine',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(19,'Psychiatry',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(20,'Dermatology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(21,'ENT',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(22,'medical oncology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(23,'surgical Oncology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(24,'Gynecology',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(25,'Pediatrics',1,'2020-01-01 10:46:09','0000-00-00 00:00:00',1),(26,'Nephrology',1,'2020-01-01 11:17:51','0000-00-00 00:00:00',1),(27,'Others',1,'2020-01-02 17:04:13','0000-00-00 00:00:00',1);

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

/*Table structure for table `employee_salary` */

DROP TABLE IF EXISTS `employee_salary`;

CREATE TABLE `employee_salary` (
  `e_s_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL COMMENT 'employee id',
  `e_net_salary` varchar(250) DEFAULT NULL,
  `e_gross_salary` varchar(250) DEFAULT NULL,
  `e_basic` varchar(250) DEFAULT NULL,
  `e_da` varchar(250) DEFAULT NULL,
  `e_hra` varchar(250) DEFAULT NULL,
  `e_conveyance` varchar(250) DEFAULT NULL,
  `e_allowance` varchar(250) DEFAULT NULL,
  `e_medical_allowance` varchar(250) DEFAULT NULL,
  `e_others` varchar(250) DEFAULT NULL,
  `e_d_tds` varchar(250) DEFAULT NULL,
  `e_d_esi` varchar(250) DEFAULT NULL,
  `e_d_pf` varchar(250) DEFAULT NULL,
  `e_d_leave` varchar(250) DEFAULT NULL,
  `e_d_Prof_tax` varchar(250) DEFAULT NULL,
  `e_d_labour_welfare` varchar(250) DEFAULT NULL,
  `e_d_fund` varchar(250) DEFAULT NULL,
  `e_d_others` varchar(250) DEFAULT NULL,
  `s_status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `employee_salary` */

insert  into `employee_salary`(`e_s_id`,`e_id`,`e_net_salary`,`e_gross_salary`,`e_basic`,`e_da`,`e_hra`,`e_conveyance`,`e_allowance`,`e_medical_allowance`,`e_others`,`e_d_tds`,`e_d_esi`,`e_d_pf`,`e_d_leave`,`e_d_Prof_tax`,`e_d_labour_welfare`,`e_d_fund`,`e_d_others`,`s_status`,`created_at`,`updated_at`,`created_by`) values (1,1,'42974','46816','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',1,NULL,NULL,NULL),(4,2,'22876','24158','10000','1000','1000','100','222','9999','555','100','448','235',NULL,'100','199','100','100',1,NULL,NULL,NULL);

/*Table structure for table `employee_salary_payslips` */

DROP TABLE IF EXISTS `employee_salary_payslips`;

CREATE TABLE `employee_salary_payslips` (
  `e_s_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL COMMENT 'employee id',
  `e_net_salary` varchar(250) DEFAULT NULL,
  `e_salary_deduction` varchar(250) DEFAULT NULL,
  `e_basic` varchar(250) DEFAULT NULL,
  `e_da` varchar(250) DEFAULT NULL,
  `e_hra` varchar(250) DEFAULT NULL,
  `e_conveyance` varchar(250) DEFAULT NULL,
  `e_allowance` varchar(250) DEFAULT NULL,
  `e_medical_allowance` varchar(250) DEFAULT NULL,
  `e_others` varchar(250) DEFAULT NULL,
  `e_d_tds` varchar(250) DEFAULT NULL,
  `e_d_esi` varchar(250) DEFAULT NULL,
  `e_d_pf` varchar(250) DEFAULT NULL,
  `e_d_leave` varchar(250) DEFAULT NULL,
  `e_d_Prof_tax` varchar(250) DEFAULT NULL,
  `e_d_labour_welfare` varchar(250) DEFAULT NULL,
  `e_d_fund` varchar(250) DEFAULT NULL,
  `e_d_others` varchar(250) DEFAULT NULL,
  `e_salary_month` int(3) DEFAULT NULL COMMENT 'month',
  `s_status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `e_gross_salary` int(11) DEFAULT NULL,
  `e_salary_year` int(5) DEFAULT NULL,
  `e_leaves_deduction` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_s_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `employee_salary_payslips` */

insert  into `employee_salary_payslips`(`e_s_p_id`,`e_id`,`e_net_salary`,`e_salary_deduction`,`e_basic`,`e_da`,`e_hra`,`e_conveyance`,`e_allowance`,`e_medical_allowance`,`e_others`,`e_d_tds`,`e_d_esi`,`e_d_pf`,`e_d_leave`,`e_d_Prof_tax`,`e_d_labour_welfare`,`e_d_fund`,`e_d_others`,`e_salary_month`,`s_status`,`created_at`,`updated_at`,`created_by`,`e_gross_salary`,`e_salary_year`,`e_leaves_deduction`) values (1,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(2,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(3,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(4,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(5,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(6,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(7,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(8,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(9,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,NULL,NULL),(10,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,2018,28640),(11,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',0,1,NULL,NULL,NULL,46816,2018,28640),(12,1,'42974','3842','10000','20074','1200','1000','10000','500','200','1000','1000','1000',NULL,'100','20','522','200',11,1,NULL,NULL,NULL,46816,2018,28640);

/*Table structure for table `empployee` */

DROP TABLE IF EXISTS `empployee`;

CREATE TABLE `empployee` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `e_emplouee_id` varchar(250) DEFAULT NULL,
  `e_join_date` varchar(250) DEFAULT NULL,
  `e_f_name` varchar(250) DEFAULT NULL,
  `e_l_name` varchar(250) DEFAULT NULL,
  `e_login_name` varchar(250) DEFAULT NULL,
  `e_email_personal` varchar(250) DEFAULT NULL,
  `e_email_work` varchar(250) DEFAULT NULL,
  `e_password` varchar(250) DEFAULT NULL,
  `e_org_password` varchar(250) DEFAULT NULL,
  `e_mobile_personal` varchar(250) DEFAULT NULL,
  `e_mobile_work` varchar(250) DEFAULT NULL,
  `e_designation` varchar(250) DEFAULT NULL,
  `e_supervisor` varchar(250) DEFAULT NULL,
  `e_department` varchar(250) DEFAULT NULL,
  `e_sub_department` varchar(250) DEFAULT NULL,
  `e_shift` varchar(250) DEFAULT NULL,
  `e_c_adress` varchar(250) DEFAULT NULL,
  `e_c_city` varchar(250) DEFAULT NULL,
  `e_c_district` varchar(250) DEFAULT NULL,
  `e_c_state` varchar(250) DEFAULT NULL,
  `e_c_country` varchar(250) DEFAULT NULL,
  `e_p_address` varchar(250) DEFAULT NULL,
  `e_p_city` varchar(250) DEFAULT NULL,
  `e_p_district` varchar(250) DEFAULT NULL,
  `e_p_state` varchar(250) DEFAULT NULL,
  `e_p_country` varchar(250) DEFAULT NULL,
  `e_profile_pic` varchar(250) DEFAULT NULL,
  `e_document` varchar(250) DEFAULT NULL,
  `e_bank_name` varchar(250) DEFAULT NULL,
  `e_account_number` varchar(250) DEFAULT NULL,
  `e_bank_h_name` varchar(250) DEFAULT NULL,
  `e_bank_ifcs_code` varchar(250) DEFAULT NULL,
  `e_c_p_name` varchar(250) DEFAULT NULL,
  `e_c_p_mobile` varchar(250) DEFAULT NULL,
  `e_c_p_email` varchar(250) DEFAULT NULL,
  `e_c_p_relationship` varchar(250) DEFAULT NULL,
  `e_c_p_address` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0=deactive;1=active;2=delete;',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `login_status` int(11) DEFAULT '0',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `empployee` */

insert  into `empployee`(`e_id`,`role_id`,`e_emplouee_id`,`e_join_date`,`e_f_name`,`e_l_name`,`e_login_name`,`e_email_personal`,`e_email_work`,`e_password`,`e_org_password`,`e_mobile_personal`,`e_mobile_work`,`e_designation`,`e_supervisor`,`e_department`,`e_sub_department`,`e_shift`,`e_c_adress`,`e_c_city`,`e_c_district`,`e_c_state`,`e_c_country`,`e_p_address`,`e_p_city`,`e_p_district`,`e_p_state`,`e_p_country`,`e_profile_pic`,`e_document`,`e_bank_name`,`e_account_number`,`e_bank_h_name`,`e_bank_ifcs_code`,`e_c_p_name`,`e_c_p_mobile`,`e_c_p_email`,`e_c_p_relationship`,`e_c_p_address`,`status`,`created_at`,`updated_at`,`created_by`,`login_status`) values (1,1,'sdfd','10-10-2018','admin','vc','siva','vnvb@gmail.com','admin@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','1122332222','vb','1','A','22','8','9','gthgf','ghg','bv','Kerala','','hjh','vbc','nbm','Assam','','1529651798.jpg','','mnm','1222222222','TYUJHYH','SBIN0000830','dryhd','4325353533','xvf@gmail.com','gfh','gf',1,'2018-11-06 08:15:19','2018-11-06 08:15:19',0,0),(2,3,'Super11','10-10-2018','Super11','Super11','super','Super11@gmail.com','Super11@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','8500050944','8500050944','8','A','21','8','9','kadapa','mydukur','kadapa','Kerala','','kadapa','mydukur','kadapa','Maharashtra','','1529651798.jpg','','Sbi','32473655713','vasu','SBIN0002671','vasu','8500050944','vasu@gmail.com','me','kadapa',1,'2018-11-02 13:55:37','2018-11-02 13:55:37',0,0),(3,2,'mjnbm','10-12-2018','kasi','vc','hr','vasu@gmail.com','vasu@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','7013319026','vb','2','B','21','7','9','dgf','hgg','ghjg','Andhra Pradesh','','gh','vbc','nbm','Bihar','','1523883473.jpg','','mnm','1222222222','mn','SBIN0000830','ghng','4325353533','xvf@gmail.com','gfh','ghgf',1,'2018-11-02 13:52:41','2018-11-02 13:52:41',0,1),(4,2,'hrms-10','10-12-2018','kasi','vc','hr','vnvb@gmail.com','kasi@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','4254325325','hg','3','A','22','8','9','fghf','fgf','dfg','Andhra Pradesh','','fhfg','fhg','GHJG','Telangana','','1527764168.png','','mnm','1222222222','HGJ','SBIN0000830','ghng','4325353533','xvf@gmail.com','gfh','fghf',1,'2018-11-02 14:45:55','2018-11-02 14:45:55',0,0),(5,8,'mjnbm','10-12-2018','bcv','vc','kaka','vnvb@gmail.com','kamal@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','4254325325','hg','3','A','21','9','10','ghj','fgh','GHJG','Andhra Pradesh','','ghj','fgh','GHJG','Andhra Pradesh','','1523883473.jpg','1519212661.docx','ghg','1234555222','gjh','SBIN0000830','dryhd','4325353533','xvf@gmail.com','gfh','ghjgjh',1,'2018-11-05 14:43:13','2018-11-05 14:43:13',0,0),(7,3,'mjnbm','10-12-2018','bcv','vc','kal','vnvb@gmail.com','kal@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','4254325325','hg','3','A','21','9','9','rfgf','dfg','fgf','Arunachal Pradesh','','fghf','fgf','fg','Manipur','','','','fghf','1222222222','fhg','SBIN0000830','ghng','4325353533','xvf@gmail.com','gfh','fgbf',1,'2018-11-06 08:20:10','2018-11-06 08:20:10',0,0),(8,2,'mjnbm','10-12-2018','bcv','vc','hr','vnvb@gmail.com','vana@gmail.com','e10adc3949ba59abbe56e057f20f883e','123456','1122332222','vb','2','A','21','9','9','fgf','fgh','fgh','Arunachal Pradesh','','fgh','gh','gh','Andhra Pradesh','','1523883473.jpg','1527924854.docx','mnm','1222222222','mn','SBIN0000830','ghng','4325353533','xvf@gmail.com','gfh','fghf',1,'2018-11-06 08:22:02','2018-11-06 08:22:02',0,1);

/*Table structure for table `expenditure` */

DROP TABLE IF EXISTS `expenditure`;

CREATE TABLE `expenditure` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(250) DEFAULT NULL,
  `purpose` varchar(250) DEFAULT NULL,
  `emp_name` varchar(250) DEFAULT NULL,
  `comment` text,
  `pmethod` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `p_chq_no` varchar(250) DEFAULT NULL,
  `p_banl_brank` varchar(250) DEFAULT NULL,
  `p_through` varchar(250) DEFAULT NULL,
  `remarks` text,
  `status` int(11) DEFAULT '1',
  `e_date` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `expenditure` */

insert  into `expenditure`(`e_id`,`ptype`,`purpose`,`emp_name`,`comment`,`pmethod`,`amount`,`p_chq_no`,`p_banl_brank`,`p_through`,`remarks`,`status`,`e_date`,`created_at`,`created_by`) values (1,'Creadit','Salary','D. DEVA KUMAR','NOV-19','Check','10000','844067','KARNATAKA BANK, TIRUPATI','','SALARY ON 03-12-2019',1,'08-12-2019','2019-12-08 18:52:15',3),(2,'Creadit','Salary','VARRE TEJA','NOVEMBER-19','Check','21500','844060','KARNATAKA BANK, TIRUPATI','','CHEQUE ON 07-12-2019',1,'08-12-2019','2019-12-08 18:56:38',3),(3,'Debit','Other','','VARRE TEJA','Check','50000','844066 DT-03-12-2019','KARNATAKA BANK, TIRUPATI','','ADVANCE AMT IN DECEMBER PERIOD FOR 1 MONTH',1,'08-12-2019','2019-12-08 19:00:39',3),(4,'Debit','Salary','D. DEVAKUMAR','ADVANCE ','Cash','11040','','','','ADVANCE AMT IN DECEMBER MONTH',1,'08-12-2019','2019-12-08 19:09:23',3),(5,'Debit','Other','','HOUSE & OFFICE RENT','Cash','8000','','','','FOR NOVEMBER MONTH-2019',1,'13-12-2019','2019-12-13 22:19:42',3),(6,'Debit','Other','','POWER BILL FOR HOUSE & OFFICE','Online','720','','','G-PAY ON-08-12-2019','NOVEMBER BILL-2019',1,'13-12-2019','2019-12-13 22:23:45',3),(7,'Debit','Other','','PAPER, GAS, SRI SAI TV  BILL','Cash','1266','','','','NOVEMBER BILL-2019',1,'13-12-2019','2019-12-13 22:27:58',3),(8,'Debit','Other','','RAJASREE SCHOOL FES-8th CLASS EX','Cash','20000','','','','NO: 1714, NOVEMBER-2019',1,'13-12-2019','2019-12-13 23:20:37',3),(9,'Debit','Other','','JAYASREE SCHOOL FES-6th CLOSS','Cash','8500','','','','NO: 1715, NOVEMBER-2019',1,'13-12-2019','2019-12-13 23:22:17',3),(10,'Debit','Other','','RAJASREE FOR HEALTH ','Cash','4000','','','','HOSPITAL ON 17-12-19',1,'17-12-2019','2019-12-17 19:09:00',3),(11,'Debit','Salary','D. DEVA KUMAR','december month salary','Cheque','7000','844077','KARNATAKA BANK, TIRUPATI','','ON-02-01-2020',1,'05-01-2020','2020-01-05 16:16:56',3),(12,'Creadit','Salary','D. DEVA KUMAR','CREDIT FOR HIS SALARY FOR DECEMBER MONTH 19','Cash','3000','','','','FROM GIVEN ADVANCE, SO CREDIT FOR MONTH 19 SALARY ',1,'05-01-2020','2020-01-05 16:33:23',3),(13,'Debit','Salary','V.TEJA','I GAVE ADVANCE AMT ','Cheque','15000','844070/DT: 18-12-2019','KARNATAKA BANK, TIRUPATI','','FOR HOSPITAL PURPOSE',1,'05-01-2020','2020-01-05 16:47:02',3),(14,'Creadit','Salary','V.TEJA','CREDIT FOR HIS SALARY FORM DECEMBER MONTH 19','Online','19000','','','NEFT','ADVANCE AMT',1,'05-01-2020','2020-01-05 16:53:33',3),(15,'Debit','Salary','V.TEJA','DECEMBER MONTH SALARY -19','Cheque','2500','844076/ DT: 02-01-2020','KARNATAKA BANK, TIRUPATI','','CREDIT TO THE SALARY AMT',1,'05-01-2020','2020-01-05 17:01:53',3);

/*Table structure for table `feed_back` */

DROP TABLE IF EXISTS `feed_back`;

CREATE TABLE `feed_back` (
  `f_b_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `p_no` varchar(250) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `recommend` varchar(250) DEFAULT NULL,
  `comment` text,
  `location` varchar(250) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `source` varchar(250) DEFAULT NULL,
  `s_name` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`f_b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back` */

insert  into `feed_back`(`f_b_id`,`name`,`type`,`p_no`,`email_id`,`phone_no`,`recommend`,`comment`,`location`,`department`,`source`,`s_name`,`created_at`,`date`) values (2,'Suneetha','IPD','','','9581718191','Yes','Nil','Tirupathi','Pediatrics','Employee','','2020-01-01 12:01:28','2020-01-01'),(3,'Babu','OPD','','','9949905189','Yes','Done','Tirupathi','General Medicine','Qualified','','2020-01-01 12:04:50','2020-01-01'),(4,'Saikrishna','OPD','','','9966332210','No','exellent','Tirupathi','Chest Medicine','Friend / Relative','','2020-01-03 11:09:07','2020-01-03'),(5,'challa kumar','OPD','','','9533194239','Yes','Good Customer service','Venkatagiri','Cardiology','Employee','','2020-01-03 01:10:09','2020-01-03'),(6,'d v surya prabha','OPD','','','9951740821','No','staff maintanance and caretake','Tirupathi','General Medicine','Others','','2020-01-03 01:12:47','2020-01-03'),(7,' sn pandey','OPD','','','9989623727','Yes','very good','Tirupathi','Cardiology','Old Patient','','2020-01-03 01:18:07','2020-01-03'),(9,'P.ravindrareddy','IPD','','','9490271907','No','Doctortreatmentis good.','Srikalahasti','General Medicine','Employee','','2020-01-06 12:24:29','2020-01-06'),(10,'k.gangadhar','OPD','','','9705017383','Yes','very good','Koduru','General Medicine','Old Patient','','2020-01-06 01:18:08','2020-01-06'),(11,'r.praveen kumar reddy','OPD','','','6281993237','Yes','no more to sujest','Tirupathi','General Medicine','Old Patient','','2020-01-06 01:22:00','2020-01-06'),(12,'B.nirmala','IPD','','','7893972122','Yes','Good \r\n    ','Tirupathi','General Surgery','Friend / Relative','','2020-01-06 01:22:04','2020-01-06'),(13,'r.praveen kumar reddy','OPD','','','6281993237','Yes','no more to sujest','Tirupathi','General Medicine','Old Patient','','2020-01-06 01:25:59','2020-01-06'),(14,'s thulasi','OPD','','','7382600778','Yes','very good','Puttur','General Surgery','RMP','','2020-01-06 01:27:36','2020-01-06'),(15,'sedbaha','OPD','','','9703399588','Yes','good','Koduru','Cardiology','Others','','2020-01-06 01:29:19','2020-01-06'),(16,'K Gurappa','IPD','','','9985813394','Yes','Good services','Tirupathi','General Medicine','Others','','2020-01-06 01:31:59','2020-01-06'),(17,'janardhan','OPD','','','9493517566','Yes','nenu emergency lo cherinapudu sisters caring bhagaledhu ','Srikalahasti','Cardiology','Old Patient','','2020-01-06 01:38:19','2020-01-06'),(18,'n.krishnaiah','OPD','','','9704638409','Yes','very good','Koduru','General Medicine','RMP','','2020-01-06 01:42:04','2020-01-06'),(19,'heeneth','OPD','','','9948757677','Yes','verygood hospital ','Koduru','ENT','RMP','','2020-01-06 01:57:15','2020-01-06'),(20,'heeneth','OPD','','','9948757677','Yes','verygood hospital ','Koduru','ENT','RMP','','2020-01-06 01:57:55','2020-01-06'),(21,'guru murthy','OPD','','','9440077314','Yes','nocomments','Renigunta','Cardiology','Others','','2020-01-06 01:59:12','2020-01-06'),(22,'Madhu','IPD','','','9590904561','Yes','Nothing','Pileru','Others','Others','','2020-01-06 04:01:57','2020-01-06'),(23,'Vasudevareddy reddem','OPD','','','8500050944','Yes','Awesome','Tirupathi','Cardiology','Health Camp','','2020-01-07 06:33:40','2020-01-07'),(24,'Sankalpa hospital','OPD','','','9943317945','Yes','Testing','Tirupathi','Cardiology','Employee','','2020-01-09 01:13:39','2020-01-09');

/*Table structure for table `feed_back_answer` */

DROP TABLE IF EXISTS `feed_back_answer`;

CREATE TABLE `feed_back_answer` (
  `f_d_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_b_id` int(11) DEFAULT NULL,
  `qno` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `rating` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`f_d_a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back_answer` */

insert  into `feed_back_answer`(`f_d_a_id`,`f_b_id`,`qno`,`q_id`,`answer`,`rating`,`date`,`created_at`) values (1,2,1,8,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(2,2,2,9,'Good','4','2020-01-01','2020-01-01 12:01:28'),(3,2,3,10,'Good','4','2020-01-01','2020-01-01 12:01:28'),(4,2,4,11,'Good','4','2020-01-01','2020-01-01 12:01:28'),(5,2,5,12,'Good','4','2020-01-01','2020-01-01 12:01:28'),(6,2,6,13,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(7,2,7,14,'Good','4','2020-01-01','2020-01-01 12:01:28'),(8,2,8,15,'Good','4','2020-01-01','2020-01-01 12:01:28'),(9,2,9,16,'Good','4','2020-01-01','2020-01-01 12:01:28'),(10,2,10,17,'Good','4','2020-01-01','2020-01-01 12:01:28'),(11,2,11,20,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(12,3,1,1,'Good','4','2020-01-01','2020-01-01 12:04:50'),(13,3,2,2,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(14,3,3,3,'Good','4','2020-01-01','2020-01-01 12:04:50'),(15,3,4,4,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(16,3,5,5,'Good','4','2020-01-01','2020-01-01 12:04:50'),(17,3,6,6,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(18,4,1,1,'Good','4','2020-01-03','2020-01-03 11:09:07'),(19,4,2,2,'Average','3','2020-01-03','2020-01-03 11:09:07'),(20,4,3,3,'Average','3','2020-01-03','2020-01-03 11:09:07'),(21,4,4,4,'Excellent','5','2020-01-03','2020-01-03 11:09:07'),(22,4,5,5,'Good','4','2020-01-03','2020-01-03 11:09:07'),(23,4,6,6,'Good','4','2020-01-03','2020-01-03 11:09:07'),(24,5,1,1,'Good','4','2020-01-03','2020-01-03 01:10:09'),(25,5,2,2,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(26,5,3,3,'Good','4','2020-01-03','2020-01-03 01:10:09'),(27,5,4,4,'Good','4','2020-01-03','2020-01-03 01:10:09'),(28,5,5,5,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(29,5,6,6,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(30,6,1,1,'Poor','2','2020-01-03','2020-01-03 01:12:47'),(31,6,2,2,'Excellent','5','2020-01-03','2020-01-03 01:12:47'),(32,6,3,3,'Average','3','2020-01-03','2020-01-03 01:12:47'),(33,6,4,4,'Average','3','2020-01-03','2020-01-03 01:12:47'),(34,6,5,5,'Average','3','2020-01-03','2020-01-03 01:12:47'),(35,6,6,6,'Poor','2','2020-01-03','2020-01-03 01:12:47'),(36,7,1,1,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(37,7,2,2,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(38,7,3,3,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(39,7,4,4,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(40,7,5,5,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(41,7,6,6,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(42,9,1,8,'Good','4','2020-01-06','2020-01-06 12:24:29'),(43,9,2,9,'Good','4','2020-01-06','2020-01-06 12:24:29'),(44,9,3,10,'Good','4','2020-01-06','2020-01-06 12:24:29'),(45,9,4,11,'Good','4','2020-01-06','2020-01-06 12:24:29'),(46,9,5,12,'Excellent','5','2020-01-06','2020-01-06 12:24:29'),(47,9,6,13,'Excellent','5','2020-01-06','2020-01-06 12:24:29'),(48,9,7,14,'Good','4','2020-01-06','2020-01-06 12:24:29'),(49,9,8,15,'Good','4','2020-01-06','2020-01-06 12:24:29'),(50,9,9,16,'Average','3','2020-01-06','2020-01-06 12:24:29'),(51,9,10,17,'Good','4','2020-01-06','2020-01-06 12:24:29'),(52,9,11,20,'Good','4','2020-01-06','2020-01-06 12:24:29'),(53,10,1,1,'Good','4','2020-01-06','2020-01-06 01:18:08'),(54,10,2,2,'Good','4','2020-01-06','2020-01-06 01:18:08'),(55,10,3,3,'Good','4','2020-01-06','2020-01-06 01:18:08'),(56,10,4,4,'Good','4','2020-01-06','2020-01-06 01:18:08'),(57,10,5,5,'Good','4','2020-01-06','2020-01-06 01:18:08'),(58,10,6,6,'Good','4','2020-01-06','2020-01-06 01:18:08'),(59,11,1,1,'Good','4','2020-01-06','2020-01-06 01:22:00'),(60,11,2,2,'Good','4','2020-01-06','2020-01-06 01:22:00'),(61,11,3,3,'Good','4','2020-01-06','2020-01-06 01:22:00'),(62,11,4,4,'Good','4','2020-01-06','2020-01-06 01:22:00'),(63,11,5,5,'Good','4','2020-01-06','2020-01-06 01:22:00'),(64,11,6,6,'Good','4','2020-01-06','2020-01-06 01:22:00'),(65,12,1,8,'Good','4','2020-01-06','2020-01-06 01:22:04'),(66,12,2,9,'Good','4','2020-01-06','2020-01-06 01:22:04'),(67,12,3,10,'Average','3','2020-01-06','2020-01-06 01:22:04'),(68,12,4,11,'Good','4','2020-01-06','2020-01-06 01:22:04'),(69,12,5,12,'Good','4','2020-01-06','2020-01-06 01:22:04'),(70,12,6,13,'Good','4','2020-01-06','2020-01-06 01:22:04'),(71,12,7,14,'Good','4','2020-01-06','2020-01-06 01:22:04'),(72,12,8,15,'Good','4','2020-01-06','2020-01-06 01:22:04'),(73,12,9,16,'Good','4','2020-01-06','2020-01-06 01:22:04'),(74,12,10,17,'Good','4','2020-01-06','2020-01-06 01:22:04'),(75,12,11,20,'Good','4','2020-01-06','2020-01-06 01:22:04'),(76,13,1,1,'Good','4','2020-01-06','2020-01-06 01:25:59'),(77,13,2,2,'Good','4','2020-01-06','2020-01-06 01:25:59'),(78,13,3,3,'Good','4','2020-01-06','2020-01-06 01:25:59'),(79,13,4,4,'Good','4','2020-01-06','2020-01-06 01:25:59'),(80,13,5,5,'Good','4','2020-01-06','2020-01-06 01:25:59'),(81,13,6,6,'Good','4','2020-01-06','2020-01-06 01:25:59'),(82,14,1,1,'Good','4','2020-01-06','2020-01-06 01:27:36'),(83,14,2,2,'Excellent','5','2020-01-06','2020-01-06 01:27:36'),(84,14,3,3,'Good','4','2020-01-06','2020-01-06 01:27:36'),(85,14,4,4,'Good','4','2020-01-06','2020-01-06 01:27:36'),(86,14,5,5,'Good','4','2020-01-06','2020-01-06 01:27:36'),(87,14,6,6,'Excellent','5','2020-01-06','2020-01-06 01:27:36'),(88,15,1,1,'Good','4','2020-01-06','2020-01-06 01:29:19'),(89,15,2,2,'Excellent','5','2020-01-06','2020-01-06 01:29:19'),(90,15,3,3,'Good','4','2020-01-06','2020-01-06 01:29:19'),(91,15,4,4,'Good','4','2020-01-06','2020-01-06 01:29:19'),(92,15,5,5,'Good','4','2020-01-06','2020-01-06 01:29:19'),(93,15,6,6,'Good','4','2020-01-06','2020-01-06 01:29:19'),(94,16,1,8,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(95,16,2,9,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(96,16,3,10,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(97,16,4,11,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(98,16,5,12,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(99,16,6,13,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(100,16,7,14,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(101,16,8,15,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(102,16,9,16,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(103,16,10,17,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(104,16,11,20,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(105,17,1,1,'Good','4','2020-01-06','2020-01-06 01:38:19'),(106,17,2,2,'Excellent','5','2020-01-06','2020-01-06 01:38:19'),(107,17,3,3,'Good','4','2020-01-06','2020-01-06 01:38:19'),(108,17,4,4,'Average','3','2020-01-06','2020-01-06 01:38:19'),(109,17,5,5,'Good','4','2020-01-06','2020-01-06 01:38:19'),(110,17,6,6,'Average','3','2020-01-06','2020-01-06 01:38:19'),(111,18,1,1,'Good','4','2020-01-06','2020-01-06 01:42:04'),(112,18,2,2,'Excellent','5','2020-01-06','2020-01-06 01:42:04'),(113,18,3,3,'Good','4','2020-01-06','2020-01-06 01:42:04'),(114,18,4,4,'Good','4','2020-01-06','2020-01-06 01:42:04'),(115,18,5,5,'Good','4','2020-01-06','2020-01-06 01:42:04'),(116,18,6,6,'Good','4','2020-01-06','2020-01-06 01:42:04'),(117,19,1,1,'Good','4','2020-01-06','2020-01-06 01:57:15'),(118,19,2,2,'Excellent','5','2020-01-06','2020-01-06 01:57:15'),(119,19,3,3,'Good','4','2020-01-06','2020-01-06 01:57:15'),(120,19,4,4,'Good','4','2020-01-06','2020-01-06 01:57:15'),(121,19,5,5,'Good','4','2020-01-06','2020-01-06 01:57:15'),(122,19,6,6,'Good','4','2020-01-06','2020-01-06 01:57:15'),(123,20,1,1,'Good','4','2020-01-06','2020-01-06 01:57:55'),(124,20,2,2,'Excellent','5','2020-01-06','2020-01-06 01:57:55'),(125,20,3,3,'Good','4','2020-01-06','2020-01-06 01:57:55'),(126,20,4,4,'Good','4','2020-01-06','2020-01-06 01:57:55'),(127,20,5,5,'Good','4','2020-01-06','2020-01-06 01:57:55'),(128,20,6,6,'Good','4','2020-01-06','2020-01-06 01:57:55'),(129,21,1,1,'Good','4','2020-01-06','2020-01-06 01:59:12'),(130,21,2,2,'Excellent','5','2020-01-06','2020-01-06 01:59:12'),(131,21,3,3,'Good','4','2020-01-06','2020-01-06 01:59:12'),(132,21,4,4,'Good','4','2020-01-06','2020-01-06 01:59:12'),(133,21,5,5,'Good','4','2020-01-06','2020-01-06 01:59:12'),(134,21,6,6,'Good','4','2020-01-06','2020-01-06 01:59:12'),(135,22,1,8,'Good','4','2020-01-06','2020-01-06 04:01:57'),(136,22,2,9,'Good','4','2020-01-06','2020-01-06 04:01:57'),(137,22,3,10,'Good','4','2020-01-06','2020-01-06 04:01:57'),(138,22,4,11,'Good','4','2020-01-06','2020-01-06 04:01:57'),(139,22,5,12,'Good','4','2020-01-06','2020-01-06 04:01:57'),(140,22,6,13,'Good','4','2020-01-06','2020-01-06 04:01:57'),(141,22,7,14,'Good','4','2020-01-06','2020-01-06 04:01:57'),(142,22,8,15,'Good','4','2020-01-06','2020-01-06 04:01:57'),(143,22,9,16,'Good','4','2020-01-06','2020-01-06 04:01:57'),(144,22,10,17,'Good','4','2020-01-06','2020-01-06 04:01:57'),(145,22,11,20,'Good','4','2020-01-06','2020-01-06 04:01:57'),(146,23,1,1,'Very good','4','2020-01-07','2020-01-07 06:33:40'),(147,23,2,2,'Very good','4','2020-01-07','2020-01-07 06:33:40'),(148,23,3,3,'Good','3','2020-01-07','2020-01-07 06:33:40'),(149,23,4,4,'Good','3','2020-01-07','2020-01-07 06:33:40'),(150,23,5,5,'Average','2','2020-01-07','2020-01-07 06:33:40'),(151,23,6,6,'Good','3','2020-01-07','2020-01-07 06:33:40'),(152,24,1,1,'Excellent','5','2020-01-09','2020-01-09 01:13:39'),(153,24,2,2,'Very good','4','2020-01-09','2020-01-09 01:13:39'),(154,24,3,3,'Very good','4','2020-01-09','2020-01-09 01:13:39'),(155,24,4,4,'Excellent','5','2020-01-09','2020-01-09 01:13:39'),(156,24,5,5,'Very good','4','2020-01-09','2020-01-09 01:13:39'),(157,24,6,6,'Excellent','5','2020-01-09','2020-01-09 01:13:39');

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

/*Table structure for table `incident` */

DROP TABLE IF EXISTS `incident`;

CREATE TABLE `incident` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `d_time` datetime DEFAULT NULL,
  `incident` text,
  `staff_nurse` text,
  `image` tinytext,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `incident` */

insert  into `incident`(`i_id`,`name`,`d_time`,`incident`,`staff_nurse`,`image`,`status`,`created_at`,`created_by`) values (1,'Vasudevareddy','2020-01-09 04:08:55','vasudevareddy','testing',NULL,0,'2020-01-09 04:16:37',68),(2,'Vasudevareddy','2020-01-09 04:24:20','Testing','himakethana','1578567499.png',0,'2020-01-09 04:28:19',68);

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `gst_no` varchar(250) DEFAULT NULL,
  `ro_no` varchar(250) DEFAULT NULL,
  `date_of_invoice` varchar(250) DEFAULT NULL,
  `sac_code` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `cation` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `barrowerss` varchar(250) DEFAULT NULL,
  `igst` varchar(250) DEFAULT NULL,
  `cgst` varchar(250) DEFAULT NULL,
  `sgst` varchar(250) DEFAULT NULL,
  `p_chq_no` varchar(250) DEFAULT NULL,
  `p_banl_brank` varchar(250) DEFAULT NULL,
  `name_of_holder` varchar(250) DEFAULT NULL,
  `account_no` varchar(250) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `ifsc_code` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `invoice_file_name` varchar(250) DEFAULT NULL,
  `igst_amount` varchar(250) DEFAULT NULL,
  `cgst_amount` varchar(250) DEFAULT NULL,
  `sgst_amount` varchar(250) DEFAULT NULL,
  `with_out_total_net_amt` varchar(250) DEFAULT NULL,
  `total_net_amt` varchar(250) DEFAULT NULL,
  `payment_completed` int(11) DEFAULT '0',
  `created_at` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

insert  into `invoice`(`i_id`,`cus_name`,`address`,`mobile`,`city`,`district`,`gst_no`,`ro_no`,`date_of_invoice`,`sac_code`,`type`,`cation`,`branch`,`barrowerss`,`igst`,`cgst`,`sgst`,`p_chq_no`,`p_banl_brank`,`name_of_holder`,`account_no`,`bank_name`,`ifsc_code`,`status`,`invoice_file_name`,`igst_amount`,`cgst_amount`,`sgst_amount`,`with_out_total_net_amt`,`total_net_amt`,`payment_completed`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (2,'THE CHIEF MANAGER GARU INDIAN BANK','AVILALA BRANCH','0877-2244331','TIRUPATI','CHITTOOR','37AAACI1607G2ZX','857','14-12-2019','998363','Bank','POSSESSION NOTICE','AVILALA','M/S INDEEVAR INDUSTRIES','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'857_THE_CHIEF_MANAGER_GARU_INDIAN_BANK_2.pdf','0','342.4','342.4','13696','14380.8',1,'2019-Dec-14 19:15:16','2019-12-21 22:36:06',3,0),(3,'THE CHIEF MANAGER GARU, BANK OF BARODA','# 12-2-940,GIREESH TOWERS,SAINAGAR 2nd CROSS','91 9100442538','ANANTAPUR','ANANTAPUR DIST-515001','37AAACB1534F2Z4','851','14-12-2019','998363','Bank','E-AUCTION SALE NOTICE...','ANANTAPUR','MR. HOSURU KARANAM VEERA SEKHAR RAO','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'851_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_3.pdf','0','774','774','30960','32508',0,'2019-Dec-14 19:22:53','0000-00-00 00:00:00',3,0),(4,'THE CHIEF MANAGER GARU, BANK OF BARODA','POST BOX NO:46,#231/368-C,HOSPITAL ROAD','91 9445643632','KADAPA','KADAPA DIST-516001','37AAACB1534F2Z4','852','14-12-2019','998363','Bank','E-AUCTION SALE NOTICE...','KADAPA','M/S MAHIR METALS','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'852_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_4.pdf','0','901.8','901.8','36072','37875.6',0,'2019-Dec-14 19:36:08','0000-00-00 00:00:00',3,0),(5,'THE CHIEF MANAGER GARU, BANK OF BARODA','#40/301-1,BELLARY ROAD','91 8971636245','KURNOOL','KURNOOL DIST-518004','37AAACB1534F2Z4','861','14-12-2019','998363','Bank','POSSESSION NOTICE','BELLARY ROAD','M/S EXCEL INDUSTRIES','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'861_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_5.pdf','0','519','519','20760','21798',1,'2019-Dec-14 19:55:57','2019-12-30 19:24:45',3,0),(6,'HARUN SHARIFF MOHAMMED','# 14-257,KHADAR MEERAN STREET','9441885526','CHITTOOR','CHITTOOR DIST-517001','NO','859','14-12-2019','998363','Commercial','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'859_HARUN_SHARIFF_MOHAMMED_6.pdf','0','11.375','11.375','455','477.75',1,'2019-Dec-14 20:14:34','2019-12-14 20:38:29',3,0),(7,'DNR DIABETIES CENTRE','ANNAMAIAH CIRCLE, R.C. ROAD','0877-2241071','TIRUPATI','CHITTOOR DIST','37ASJPK0265A1Z3','860','14-12-2019','998363','Commercial','HEALTH CARE-DIABETIES CENTRE-5 LINES-3+3','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'860_DNR_DIABETIES_CENTRE_7.pdf','0','27','27','1080','1134',1,'2019-Dec-14 20:19:37','2019-12-24 12:16:42',3,0),(8,'RAYALASEEMA AGENCIES','# 50 NETHAJI ROAD','0877-2251399','TIRUPATI','CHITTOOR','37AACFR6764L1ZM','863','14-12-2019','998363','Commercial','WANTED AD-1+1','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'863_RAYALASEEMA_AGENCIES_8.pdf','0','99','99','3960','4158',0,'2019-Dec-14 20:26:32','0000-00-00 00:00:00',3,0),(9,'JAFFAR SHARIFF MOHAMMED','#14-257,KHADAR MEERAN ST','984934417','CHITTOOR','CHITTOOR DIST-517001','NO','864','14-12-2019','998363','Commercial','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'864_JAFFAR_SHARIFF_MOHAMMED_9.pdf','0','12.5','12.5','500','525',1,'2019-Dec-14 20:34:59','2019-12-14 20:37:51',3,0),(11,'THE MANAGER GARU, SHRIRAM TRANSPORT FINANCE CO...LTD., ','# 26/1/40,3dr FLOOR,OM SANTHI TOWERS, RITHWik ENCLAVE, AK NAGAR,VEDAYAPALEM','9985363181','NELLORE','NELLORE DIST-524004','37AAACS7018R1ZS','205','16-12-2019','998363','Bank','VEHICAL FOR SALE-AUCTION NOTICE...','NELLORE','VEHICALE AUCTION','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'205_THE_MANAGER_GARU,_SHRIRAM_TRANSPORT_FINANCE_CO...LTD.,__11.pdf','0','162','162','6480','6804',0,'2019-Dec-16 15:11:57','0000-00-00 00:00:00',3,0),(12,'THE CHIEF MANAGER GARU, BANK OF BARODA','# A-2-51,G.N.T. ROAD,VENKATACHALAM','0861-2383326','NELLORE','NELLORE DIST-524320','37AAACB1534F2Z4','866','19-12-2019','998363','Bank','E-AUCTION SALE NOTICE','VENKATACHALAM','MR. KANTINENI PENCHALAIAH CHOWDARY','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'866_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_12.pdf','0','572.4','572.4','22896','24040.8',0,'2019-Dec-19 13:05:43','0000-00-00 00:00:00',3,0),(13,'SRI SAI SERVICES','LEELAMAHAL CIRCLE','8297922999','TIRUPATI','CHITTOOR DIST-517001','NO','866A','19-12-2019','998363','Commercial','WANTED- 3+3 5 LINES','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'866A_SRI_SAI_SERVICES_13.pdf','0','27','27','1080','1134',0,'2019-Dec-19 17:14:16','0000-00-00 00:00:00',3,0),(14,'EARNEST','BALAJI COLONY','7095633543','TIRUPATI','CHITTOOR DIST-517501','NO','868','19-12-2019','998363','Commercial','JOB MELA','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'868_EARNEST_14.pdf','0','139.32','139.32','5572.8','5851.44',0,'2019-Dec-19 17:21:45','0000-00-00 00:00:00',3,0),(15,'THE CHIEF MANAGER GARU, ANDHRA BANK','#3-5-37,MAIN ROAD,PULIVENDULA','08568-286327','KADAPA CITY','KADAPA DIST-516390','37AABCA7375C2ZR','870','20-12-2019','998363','Bank','POSSESSION NOTICE..','PULIVENDULA','MR. CHAVVA RAJA REDDY','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'870_THE_CHIEF_MANAGER_GARU,_ANDHRA_BANK_15.pdf','0','1303.2','1303.2','52128','54734.4',0,'2019-Dec-20 20:31:45','0000-00-00 00:00:00',3,0),(16,'R.S. SCHOOL','AUTO NAGAR','8247457565','TIRUPATI','CHITTOOR','NO','869','20-12-2019','998363','Commercial','WANTED- 3+3 4 LINES-CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'869_R.S._SCHOOL_16.pdf','0','18.06','18.06','722.4','758.52',0,'2019-Dec-20 20:55:06','0000-00-00 00:00:00',3,0),(17,'SHAIK NASREEN','#10-12-411,TILAK ROAD, JAGANNADHA PURAM','9849344172','TIRUPATI','CHITTOOR DIST-517501','NO','872','21-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'872_SHAIK_NASREEN_17.pdf','0','11.375','11.375','455','477.75',1,'2019-Dec-21 17:54:41','2019-12-21 18:55:11',3,0),(18,'NALLAPPAGARI NAGI REDDY','#1-345/2,SAIRAM STREET','9505417361','PILERU','CHITTOOR-517501','NO','875','21-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'875_NALLAPPAGARI_NAGI_REDDY_18.pdf','0','11.375','11.375','455','477.75',1,'2019-Dec-21 18:50:11','2019-12-22 21:26:24',3,0),(19,'VIHARI MARKETING PVT LTD','PLOT NO:2,GAJALAKSHMI GREEN PARK, BOMMALA Q.S,KARAKAMBADI ROAD','7799019993','TIRUPATI','CHITTOOR DIST-517501','37AADCV3697G1ZW','876','24-12-2019','998363','Commercial','WANTED AD- 1+1','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'876_VIHARI_MARKETING_PVT_LTD_19.pdf','0','50','50','2000','2100',0,'2019-Dec-24 21:51:46','0000-00-00 00:00:00',3,0),(20,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','877','24-12-2019','998363','Commercial','PLOT FOR SALE- 2+2 8LINES','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'877_SIRI_DEVELOPERS_20.pdf','0','25.8','25.8','1032','1083.6',0,'2019-Dec-24 22:09:37','0000-00-00 00:00:00',3,0),(21,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','878','24-12-2019','998363','Commercial','WANTED - 2+2 8LINES','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'878_SIRI_DEVELOPERS_21.pdf','0','25.8','25.8','1032','1083.6',0,'2019-Dec-24 22:31:43','0000-00-00 00:00:00',3,0),(22,'SIDDHIKA KHATEEMA','#22-18,PRAKASAM HIGH ROAD, KATTAMANCHI','+91 81432 49889','CHITTOOR','CHITTOOR DIST','NO','879','24-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'879_SIDDHIKA_KHATEEMA_22.pdf','0','12.5','12.5','500','525',1,'2019-Dec-24 22:44:08','2019-12-31 18:42:27',3,0),(23,'NASEER HUSSEN','#22-18,PRAKASAM HIGH ROAD, KATTAMANCHI','081432 49889','CHITTOOR','CHITTOOR DIST','NO','880','24-12-2019','998363','Commercial','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'880_NASEER_HUSSEN_23.pdf','0','12.5','12.5','500','525',1,'2019-Dec-24 22:50:42','2019-12-31 18:42:48',3,0),(24,'R.S. COLLEGE OF EDUCATION','M.R. PALLI','9347112739','TIRUPATI','CHITTOOR DIST-517501','NO','881','24-12-2019','998363','Commercial','EDUCATION- 3+3 4LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'881_R.S._COLLEGE_OF_EDUCATION_24.pdf','0','70.5','70.5','2820','2961',0,'2019-Dec-24 22:56:26','0000-00-00 00:00:00',3,0),(25,'VENKATESH REDDY','TUDA ROAD','7396556083','TIRUPATI','CHITTOOR DIST-517501','NO','884','24-12-2019','998363','Commercial','SHOP FOR SALE- 2+2 4LINES CLASIFIED','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'884_VENKATESH_REDDY_25.pdf','0','12.04','12.04','481.6','505.68',0,'2019-Dec-24 23:01:54','0000-00-00 00:00:00',3,0),(26,'K. PREMA KUMARI','RENIGUNTA ROAD,COTTEN MILL','9642760602','TIRUPATI','CHITTOOR DIST','NO','885','24-12-2019','998363','Personal','1 st VARDHANTHI','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'885_K._PREMA_KUMARI_26.pdf','0','83.85','83.85','3354','3521.7',0,'2019-Dec-24 23:07:56','0000-00-00 00:00:00',3,0),(27,'LOKESWARI TRADING, VANHEUSEN','NEW BALAJI COLONY, OPP.HONDA SHOWROOM, AIR BY PASS ROAD','9849179912','TIRUPATI','CHITTOOR DIST-517001','37AAHFL2070L1Z4','887','25-12-2019','998363','Commercial','OPENING GREETINGS...','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'887_LOKESWARI_TRADING,_VANHEUSEN_27.pdf','0','960','960','38400','40320',0,'2019-Dec-25 12:31:34','0000-00-00 00:00:00',3,0),(28,'SHAKTHI PARKING','P.K.LAYOUT','9849321347','TIRUPATI','CHITTOOR DIST','NO','886','25-12-2019','998363','Personal','24th VARDHANTHI','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'886_SHAKTHI_PARKING_28.pdf','0','172.1252295','172.1252295','6885.00918','7229.259639',0,'2019-Dec-25 20:28:53','0000-00-00 00:00:00',3,0),(29,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','888','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'888_ANDHRA_COURIER_29.pdf','0','7.31','7.31','292.4','307.02',0,'2019-Dec-27 22:43:15','0000-00-00 00:00:00',3,0),(30,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','889','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'889_ANDHRA_COURIER_30.pdf','0','12.47','12.47','498.8','523.74',0,'2019-Dec-27 22:46:24','0000-00-00 00:00:00',3,0),(31,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','890','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'890_ANDHRA_COURIER_31.pdf','0','113.52','113.52','4540.8','4767.84',0,'2019-Dec-27 22:51:41','0000-00-00 00:00:00',3,0),(32,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','891','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'891_ANDHRA_COURIER_32.pdf','0','9.46','9.46','378.4','397.32',0,'2019-Dec-27 22:53:43','0000-00-00 00:00:00',3,0),(33,'','','','','','','892','27-12-2019','998363','Commercial','WANTED AD- 3+3 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'892__33.pdf','0','9.03','9.03','361.2','379.26',0,'2019-Dec-27 22:57:41','0000-00-00 00:00:00',3,0),(34,'CLARITY  OPTICALS','M.R.PALLI','7036000777','TIRUPATI ','CHITTOOR DIST','NO','893','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'893_CLARITY__OPTICALS_34.pdf','0','12.04','12.04','481.6','505.68',0,'2019-Dec-27 23:00:13','0000-00-00 00:00:00',3,0),(35,'THODERU GRAMA PANCHAYATI','THODERU','0861-2383327','SARVEPALLI','NELLORE DIST-524004','NO','894','27-12-2019','998363','Government','TENDER NOTICE','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'894_THODERU_GRAMA_PANCHAYATI_35.pdf','0','44','44','1760','1848',0,'2019-Dec-27 23:04:42','0000-00-00 00:00:00',3,0),(36,'','','','','','','895','27-12-2019','998363','Commercial','WANTED AD- 2+2 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'895__36.pdf','0','12.04','12.04','481.6','505.68',0,'2019-Dec-27 23:10:54','0000-00-00 00:00:00',3,0),(37,'PCR WARE HOUSING LTD','#240  3rd FLOOR GANDHI ROAD ','0877-2227579','TIRUPATI','CHITTOOR','37AABCP3216F3ZP','896','27-12-2019','998363','Personal','BIRTHADAY GREETINGS...','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'896_PCR_WARE_HOUSING_LTD_37.pdf','0','918','918','36720','38556',0,'2019-Dec-27 23:13:34','0000-00-00 00:00:00',3,0),(38,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','897','30-12-2019','998363','Commercial','PLOTS FOR SALE- 2+2 8 LINES','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'897_SIRI_DEVELOPERS_38.pdf','0','25.8','25.8','1032','1083.6',0,'2019-Dec-30 12:47:49','0000-00-00 00:00:00',3,0),(39,'NARAYANA REDDY','K.T. ROAD','9397961664','TIRUPATI','CHITTOOR DIST','NO','898','30-12-2019','998363','Commercial','WANTED- 1 DAY','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'898_NARAYANA_REDDY_39.pdf','0','6.02','6.02','240.8','252.84',0,'2019-Dec-30 12:53:57','0000-00-00 00:00:00',3,0),(40,'SNEHA DECORS','AIR BY PASS ROAD','9393601541','TIRUPATI','CHITTOOR DIST','37AJKPM8254D1ZZ','899','30-12-2019','998363','Commercial','WANTED- 1 DAY','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'899_SNEHA_DECORS_40.pdf','0','7','7','280','294',1,'2019-Dec-30 12:58:15','2019-12-30 18:21:48',3,0),(41,'JAYADEV AUTO FINANCE','RENIGUNTA ROAD','8919761627','TIRUPATI','CHITTOOR DIST','NO','900','30-12-2019','998363','Commercial','WANTED- 2+2 4 LINES COLOR CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'900_JAYADEV_AUTO_FINANCE_41.pdf','0','15.05','15.05','602','632.1',0,'2019-Dec-30 18:35:58','0000-00-00 00:00:00',3,0),(42,'S.S. DIGITAL ZONE','PERURU','7032813870','TIRUPATI','CHITTOOR DIST','NO','901','30-12-2019','998363','Commercial','EDUCATION- 3+3 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'901_S.S._DIGITAL_ZONE_42.pdf','0','18.06','18.06','722.4','758.52',0,'2019-Dec-30 19:39:00','0000-00-00 00:00:00',3,0),(43,'ELAVARTHY TEJASWI','GAYATRI NAGAR,M.R. PALLI','9866379042','TIRUPATI','CHITTOOR DIST','NO','902','30-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'902_ELAVARTHY_TEJASWI_43.pdf','0','67.5','67.5','2700','2835',1,'2019-Dec-30 19:41:14','2019-12-31 18:53:12',3,0),(44,'MUTHIREVULA BHASKAR REDDY','GAYATRI NAGAR,M.R. PALLI','9912220587','TIRUPATI','CHITTOOR DIST','NO','903','30-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'903_MUTHIREVULA_BHASKAR_REDDY_44.pdf','0','5.625','5.625','225','236.25',1,'2019-Dec-30 19:43:52','2019-12-31 18:59:12',3,0),(45,'NAVEEN KUMAR JAIN','BAZAAR STREET','9912859907','RENIGUNTA','CHITTOOR DIST','NO','904','30-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'904_NAVEEN_KUMAR_JAIN_45.pdf','0','5.625','5.625','225','236.25',1,'2019-Dec-30 20:03:12','2019-12-31 19:08:00',3,0),(46,'VEMPALLI MOHAMMAD AFZAL','SVM ROAD,YMR COLONY','9505417362','PRODDUTUR','YSR DIST','NO','905','30-12-2019','998363','Personal','CHANGE OF NAME','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'905_VEMPALLI_MOHAMMAD_AFZAL_46.pdf','0','5.625','5.625','225','236.25',0,'2019-Dec-30 20:12:54','0000-00-00 00:00:00',3,0),(47,'ASHOK ','BALAJI NAHAR','9347355202','NELLORE','NELLOOR DIST','NO','906','30-12-2019','998363','Commercial','WANTED- 3+3 6LINES CL-COLOUR','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'906_ASHOK__47.pdf','0','31.875','31.875','1275','1338.75',0,'2019-Dec-30 20:21:00','0000-00-00 00:00:00',3,0),(48,'R.S. COLLEGE OF EDUCATION','M.R. PALLI','9347112739','TIRUPATI','CHITTOOR DIST-517501','NO','907','30-12-2019','998363','Commercial','EDUCATION- 3+3 4 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'907_R.S._COLLEGE_OF_EDUCATION_48.pdf','0','60.63','60.63','2425.2','2546.46',0,'2019-Dec-30 20:27:36','0000-00-00 00:00:00',3,0),(49,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','908','02-01-2020','998363','Commercial','PLOTS FOR SALE- 2+2 - 5 LINES CL','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'908_SIRI_DEVELOPERS_49.pdf','0','15.48','15.48','619.2','650.16',0,'2020-Jan-02 19:07:57','0000-00-00 00:00:00',3,0),(50,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','909','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'909_SIRI_DEVELOPERS_50.pdf','0','12.04','12.04','481.6','505.68',0,'2020-Jan-06 10:13:07','0000-00-00 00:00:00',11,0),(51,'ANJANEYULU','RENIGUNTA ROAD','7799927624','TIRUPATI','CHITTOOR DIST','NO','910','06-01-2020','998363','Commercial','WANTED- 2+2 -8 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'910_ANJANEYULU_51.pdf','0','19.78','19.78','791.2','830.76',0,'2020-Jan-06 10:25:10','0000-00-00 00:00:00',10,0),(52,'EICHER TRACTOR SHOWROOM','AYYAPPA GUDI CENTRE','7337335080','NELLORE','NELLORE DIST-524004','NO','911','06-01-2020','998363','Commercial','WANTED- 3+3 -6 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'911_EICHER_TRACTOR_SHOWROOM_52.pdf','0','31.875','31.875','1275','1338.75',0,'2020-Jan-06 10:36:26','0000-00-00 00:00:00',9,0),(53,'SRI CITY (MADHUKAR)','SULLURE PETA','9381749032','SULLURE PETA','NELLORE DIST-524004','NO','912','06-01-2020','998363','Commercial','WANTED- 3+3 -6 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'912_SRI_CITY_(MADHUKAR)_53.pdf','0','25.5','25.5','1020','1071',0,'2020-Jan-06 10:42:53','0000-00-00 00:00:00',9,0),(54,'SWAPNA','DHARGA MITTA','7993443111','NELLORE','NELLORE DIST-524004','NO','913','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'913_SWAPNA_54.pdf','0','11','11','440','462',0,'2020-Jan-06 10:45:17','0000-00-00 00:00:00',9,0),(55,'MOGALLURU PANCHAYATI','MOGALLURU','7993447111','NELLORE','NELLOOR DIST','NO','914','06-01-2020','998363','Commercial','TENDER NOTICE','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'914_MOGALLURU_PANCHAYATI_55.pdf','0','44','44','1760','1848',0,'2020-Jan-06 10:47:59','0000-00-00 00:00:00',9,0),(56,'BHIRADAVOLU PANCHAYATI ','BHIRADAVOLU','6281333906','NELLORE','NELLORE DIST','NO','915','06-01-2020','998363','Commercial','TENDER NOTICE','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'915_BHIRADAVOLU_PANCHAYATI__56.pdf','0','44','44','1760','1848',0,'2020-Jan-06 10:50:14','0000-00-00 00:00:00',9,0),(57,'REDDEPPA','KORLGUNTA ','9700079363','Tirupati ','Chittoor ','No','916','06-01-2020','998363','Commercial','WANTED- 3+3 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'916_REDDEPPA_57.pdf','0','18.06','18.06','722.4','758.52',0,'2020-Jan-06 10:58:51','0000-00-00 00:00:00',11,0),(58,'GSR FINANCE','K.T. ROAD ','7660009009','Tirupati ','Chittoor ','No','917','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'917_GSR_FINANCE_58.pdf','0','7.31','7.31','292.4','307.02',0,'2020-Jan-06 11:02:23','0000-00-00 00:00:00',10,0),(59,'GSR FINANCE','K.T. ROAD ','7660009009','Tirupati ','Chittoor ','No','918','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'918_GSR_FINANCE_59.pdf','0','6.02','6.02','240.8','252.84',0,'2020-Jan-06 11:04:16','0000-00-00 00:00:00',10,0),(60,'GSR FINANCE','K.T. ROAD ','7660009009','Tirupati ','Chittoor ','No','919','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'919_GSR_FINANCE_60.pdf','0','9.46','9.46','378.4','397.32',0,'2020-Jan-06 11:05:55','0000-00-00 00:00:00',10,0),(61,'GSR FINANCE','K.T. ROAD ','7660009009','Tirupati ','Chittoor ','No','920','06-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'920_GSR_FINANCE_61.pdf','0','9.46','9.46','378.4','397.32',0,'2020-Jan-06 11:08:02','0000-00-00 00:00:00',10,0),(62,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','921','06-01-2020','998363','Commercial','WANTED- 2+2 -10 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'921_SIRI_DEVELOPERS_62.pdf','0','32.68','32.68','1307.2','1372.56',0,'2020-Jan-06 11:12:42','0000-00-00 00:00:00',11,0),(63,'AMSIQRA EM SCHOOL','PARAMESWARI NAGAR','8801237216','NELLORE ','NELLORE','NO','922','06-01-2020','998363','Commercial','WANTED- 3+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'922_AMSIQRA_EM_SCHOOL_63.pdf','0','16.5','16.5','660','693',0,'2020-Jan-06 11:17:56','0000-00-00 00:00:00',9,0),(64,'PRATUSHA ','B.V NAGAR','7075531970','NELLORE','NELLORE DIST-524004','NO','923','06-01-2020','998363','Commercial','WANTED- 3+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'923_PRATUSHA__64.pdf','0','16.5','16.5','660','693',0,'2020-Jan-06 11:20:03','0000-00-00 00:00:00',9,0),(65,'PRASAD','PODALAKUR ROAD','9347033063','NELLORE','NELLORE DIST-524004','NO','924','06-01-2020','998363','Commercial','WANTED- 3+3 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'924_PRASAD_65.pdf','0','16.5','16.5','660','693',0,'2020-Jan-06 11:22:13','0000-00-00 00:00:00',9,0),(66,'SRI PADHA JYOTHISHYAM','B.V NAGAR','9059788345','NELLORE','NELLORE DIST-524004','NO','925','06-01-2020','998363','Commercial','ASTROLOGY 3+2- 4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'925_SRI_PADHA_JYOTHISHYAM_66.pdf','0','16.5','16.5','660','693',0,'2020-Jan-06 11:26:35','0000-00-00 00:00:00',9,0),(67,'R.S. COLLEGE OF EDUCATION','M.R. PALLI','9347112739','TIRUPATI','CHITTOOR DIST-517501','NO','926','06-01-2020','998363','Commercial','WANTED- 3+3 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'926_R.S._COLLEGE_OF_EDUCATION_67.pdf','0','60.63','60.63','2425.2','2546.46',0,'2020-Jan-06 11:42:58','0000-00-00 00:00:00',11,0),(68,'THE CHIEF MANAGER GARU, SYNDICAT BANK ','SIDDANTH TOWERS, S.D. LAYOUT','9440905307','TIRUPATI','CHITTOOR DIST','37AACCS46699E1ZO','927','06-01-2020','998363','Bank','E-AUCTION SALE NOTICE...','TIRUPATI','M/S ANGELIC BOUTIQUE','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'927_THE_CHIEF_MANAGER_GARU,_SYNDICAT_BANK__68.pdf','0','468','468','18720','19656',0,'2020-Jan-06 14:18:08','0000-00-00 00:00:00',3,0),(70,'SIRI DEVELOPERS','PADMAVATHI PURAM','9885548822','TIRUPATI ','CHITTOOR','NO','928','07-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'928_SIRI_DEVELOPERS_70.pdf','0','12.04','12.04','481.6','505.68',0,'2020-Jan-07 11:27:31','0000-00-00 00:00:00',11,0),(71,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','929','07-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'929_ANDHRA_COURIER_71.pdf','0','9.46','9.46','378.4','397.32',0,'2020-Jan-07 11:38:31','0000-00-00 00:00:00',11,0),(72,'ANDHRA COURIER','P.K. LAYOUT ','9121797448','TIRUPATI','CHITTOOR DIST','NO','930','07-01-2020','998363','Commercial','WANTED- 2+2 -4 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'930_ANDHRA_COURIER_72.pdf','0','12.04','12.04','481.6','505.68',0,'2020-Jan-07 11:40:19','0000-00-00 00:00:00',11,0),(73,'SRI SAI SERVICES','LEELAMAHAL CIRCLE','8297922999','TIRUPATI','CHITTOOR DIST-517001','NO','931','07-01-2020','998363','Commercial','WANTED- 3+3 -6 lines ','','','0','2.5','2.5','','','PS Advetisements & Marketing Services','7657000600151501','Karnataka Bank Ltd.,TPT','KARB0000765',1,'931_SRI_SAI_SERVICES_73.pdf','0','28.38','28.38','1135.2','1191.96',0,'2020-Jan-07 11:43:47','0000-00-00 00:00:00',11,0);

/*Table structure for table `invoice_edition` */

DROP TABLE IF EXISTS `invoice_edition`;

CREATE TABLE `invoice_edition` (
  `i_e_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_id` int(11) DEFAULT NULL,
  `publication` varchar(250) DEFAULT NULL,
  `edition` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ad_width` varchar(250) DEFAULT NULL,
  `ad_height` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `sqcm` varchar(250) DEFAULT NULL,
  `rate` varchar(250) DEFAULT NULL,
  `edition_type` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `py` int(11) DEFAULT '0',
  PRIMARY KEY (`i_e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Data for the table `invoice_edition` */

insert  into `invoice_edition`(`i_e_id`,`i_id`,`publication`,`edition`,`date`,`ad_width`,`ad_height`,`position`,`sqcm`,`rate`,`edition_type`,`amount`,`status`,`created_at`,`created_by`,`py`) values (2,2,'SAKSHI','TIRUPATI','13-12-2019','8','16','B & W','128','68','Division-1','8704',1,'2020-01-04 03:56:56',3,1),(3,2,'THE HANDS INDIA','TIRUPATI EDITION','13-12-2019','8','16','B & W','128','39','Rayalaseema region','4992',1,'0000-00-00 00:00:00',3,0),(4,3,'SAKSHI','ANANTAPUR','06-12-2019','12','15','B & W','180','132','District','23760',1,'2020-01-04 03:56:58',3,1),(5,3,'THE HANDS INDIA','TIRUPATI EDITION','06-12-2019','12','15','B & W','180','40','Rayalaseema region','7200',1,'0000-00-00 00:00:00',3,0),(6,4,'SAKSHI','KADAPAD','07-11-2019','12','18','B & W','216','127','District','27432',1,'2020-01-04 03:56:59',3,1),(7,4,'INDIAN EXPRESS','TIRUPATI EDITION','07-11-2019','12','18','B & W','216','40','Rayalaseema region','8640',1,'0000-00-00 00:00:00',3,0),(8,5,'SAKSHI','KURNOOL','14-12-2019','8','15','B & W','120','133','District','15960',1,'2020-01-04 04:29:30',3,1),(9,5,'THE HANDS INDIA','KURNOOL EDITION','14-12-2019','8','15','B & W','120','40','Rayalaseema region','4800',1,'2020-01-04 04:29:31',3,0),(10,6,'THE HANDS INDIA','TIRUPATI EDITION','13-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:57:04',3,1),(11,6,'A.JYOTHI','CHITTOOR','13-12-2019','1','1','B & W','1','230','District','230',1,'0000-00-00 00:00:00',3,0),(12,7,'SAKSHI','CHITTOOR','14-12-2019 15-12-2019 21-12-2019 22-12-2019 28-12-2019 29-12-2019','1','3','B & W','3','360','District','1080',1,'2020-01-04 03:57:04',3,1),(13,8,'SAKSHI','CHITTOOR','14-12-2019 15-12-2019','8','5','COLOR','40','110','District','4400',1,'2020-01-04 03:57:06',3,1),(14,9,'A.JYOTHI','CHITTOOR','15-12-2019','1','1','B & W','1','275','District','275',1,'2020-01-04 03:57:16',3,1),(15,9,'THE HANDS INDIA','TIRUPATI EDITION','15-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'0000-00-00 00:00:00',3,0),(17,11,'A.JYOTHI','NELLORE','12-12-2019','8','9','B & W','72','100','Zone','7200',1,'2020-01-04 03:57:18',3,1),(18,12,'SAKSHI','NELLORE','19-12-2019','12','12','B & W','144','120','District','17280',1,'2020-01-04 03:57:20',3,1),(19,12,'THE HANDS INDIA','TIRUPATI EDITION','19-12-2019','12','12','B & W','144','39','Rayalaseema region','5616',1,'0000-00-00 00:00:00',3,0),(20,13,'SAKSHI','CHITTOOR','20-12-2019 21-12-2019  22-12-2019  23-12-2019 24-12-2019 25-12-2019','1','3','B & W','3','360','District','1080',1,'2020-01-04 03:57:23',3,1),(21,14,'SAKSHI','CHITTOOR','20-12-2019','6','4','B & W','24','270','District','6480',1,'2020-01-04 03:57:25',3,1),(22,15,'A.JYOTHI','HYDERABAD ','21-12-2019','8','18','B & W','144','210','District','30240',1,'2020-01-04 03:57:28',3,1),(23,15,'THE HANDS INDIA','HYDERABAD','21-12-2019','8','18','B & W','144','60','Main Edition','8640',1,'2020-01-04 04:28:46',3,0),(24,15,'VAARTHA','KADAPA','21-12-2019','8','18','B & W','144','92','District','13248',1,'0000-00-00 00:00:00',3,0),(25,16,'SAKSHI','CHITTOOR','21-12-2019 22-12-2019 23-12-2019 25-12-2019 26-12-2019 27-12-2019','1','3','B & W','3','280','District','840',1,'2020-01-04 03:57:36',3,1),(26,17,'THE HANDS INDIA','TIRUPATI EDITION','22-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:57:38',3,1),(27,17,'A.JYOTHI','CHITTOOR','22-12-2019','1','1','B & W','1','230','District','230',1,'0000-00-00 00:00:00',3,0),(28,18,'THE HANDS INDIA','TIRUPATI EDITION','22-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:57:40',3,1),(29,18,'A.JYOTHI','CHITTOOR','22-12-2019','1','1','B & W','1','230','District','230',1,'0000-00-00 00:00:00',3,0),(30,19,'SAKSHI','ANANTAPUR','23-12-2019 24-12-2019','4','5','COLOR','20','100','District','2000',1,'2020-01-04 03:57:43',3,1),(31,20,'SAKSHI','Chittoor','24-12-2019 25-12-2019 26-12-2019 27-12-2019','1','2','B & W','2','600','District','1200',1,'2020-01-04 03:57:46',3,1),(32,21,'SAKSHI','CHITTOOR','24-12-2019 25-12-2019 26-12-2019 27-12-2019','1','2','B & W','2','600','District','1200',1,'2020-01-04 03:57:48',3,1),(33,22,'THE HANDS INDIA','CHITTOOR DIST','25-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:57:49',3,1),(34,22,'A.JYOTHI','CHITTOOR','25-12-2019','1','1','B & W','1','275','District','275',1,'0000-00-00 00:00:00',3,0),(35,23,'THE HANDS INDIA','CHITTOOR DIST','25-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:57:53',3,1),(36,23,'A.JYOTHI','CHITTOOR ','25-12-2019','1','1','B & W','1','275','District','275',1,'0000-00-00 00:00:00',3,0),(37,24,'SAKSHI','CHITTOOR','25-12-2019 26-12-2019 27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','3','B & W','3','940','District','2820',1,'2020-01-04 03:57:56',3,1),(38,25,'SAKSHI','CHITTOOR','25-12-2019 27-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','280','District','560',1,'2020-01-04 03:57:59',3,1),(39,26,'SAKSHI','TIRUPATI','25-12-2019','8','5','COLOR','40','130','Division-1','5200',1,'2020-01-04 03:58:00',3,1),(40,27,'A.JYOTHI','TIRUPATI ZONE','06-12-2019','12','16','COLOR','192','200','Front Page','38400',1,'2020-01-04 03:58:02',3,1),(41,28,'A.JYOTHI','TIRUPATI ZONE  INNER PAGE','25-12-2019','12','7','COLOR','84','107.143','Earpanel','9000.012',1,'2020-01-04 04:02:40',3,1),(42,29,'SAKSHI','NALGONAD','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','170','District','340',1,'2020-01-04 03:58:06',3,1),(43,30,'SAKSHI','GUNTUR','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','290','District','580',1,'2020-01-04 03:58:07',3,1),(44,31,'SAKSHI','KHAMMAM','27-12-2019 28-12-2019 29-12-2019 30-12-2019','12','2','B & W','24','220','District','5280',1,'2020-01-04 03:58:08',3,1),(45,32,'SAKSHI','NELLORE','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','220','District','440',1,'2020-01-04 03:58:10',3,1),(46,33,'SAKSHI','KADAPA','28-12-2019 29-12-2019 30-12-2019 01-01-2020 02-01-2020 03-01-2020','1','3','B & W','3','140','District','420',1,'2020-01-04 03:58:11',3,1),(47,34,'SAKSHI','CHITTOOR','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','280','District','560',1,'2020-01-04 03:58:14',3,1),(48,35,'SAKSHI','SARVEPALLI','27-12-2019','8','4','B & W','32','55','Zone','1760',1,'2020-01-04 03:58:15',3,1),(49,36,'SAKSHI','CHITTOOR','28-12-2019 29-12-2019 30-12-2019 31-12-2019','1','2','B & W','2','280','District','560',1,'2020-01-04 03:58:16',3,1),(50,37,'SAKSHI','CHITTOOR  DIST','28-12-2019','8','10','COLOR','80','540','Front Page','43200',1,'2020-01-04 03:58:17',3,1),(51,38,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020','1','2','B & W','2','600','District','1200',1,'2020-01-04 03:58:18',3,1),(52,39,'SAKSHI','CHITTOOR','29-12-2019','1','1','B & W','1','280','District','280',1,'2020-01-04 03:58:20',3,1),(53,40,'SAKSHI','CHITTOOR','29-12-2019','1','1','B & W','1','280','District','280',1,'2020-01-04 03:58:21',3,1),(54,41,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020','1','2','B & W','2','350','District','700',1,'2020-01-04 03:58:23',3,1),(55,42,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020 02-01-2020 03-01-2020','1','3','B & W','3','280','District','840',1,'2020-01-04 03:58:25',3,1),(56,43,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','12','1','B & W','12','225','Rayalaseema region','2700',1,'2020-01-04 03:58:26',3,1),(57,44,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:58:27',3,1),(58,45,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:58:31',3,1),(59,46,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 03:58:28',3,1),(60,47,'SAKSHI','NELLORE','30-12-2019 31-12-2019 01-01-2020 04-01-2020 05-01-2020 06-01-2020','1','3','COLOR','3','425','District','1275',1,'2020-01-04 03:58:34',3,1),(61,48,'SAKSHI','CHITTOOR  NELLORE  PRAKASHAM  KURNOOL','31-12-2019 01-01-2020 02-01-2020 03-01-2020 04-01-2020 05-01-2020','1','3','B & W','3','940','District','2820',1,'2020-01-04 03:58:35',3,1),(62,49,'SAKSHI','CHITTOOR','03-01-2020 04-01-2020 05-01-2020 06-01-2020','1','2','B & W','2','360','District','720',1,'2020-01-04 03:58:38',3,1),(63,50,'SAKSHI','CHITTOOR','04-01-2020 05-01-2020 06-01-2020 08-01-2020 ','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',11,1),(64,51,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020','1','2','B & W','2','460','District','920',1,'0000-00-00 00:00:00',10,1),(65,52,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020','1','3','B & W','3','425','District','1275',1,'0000-00-00 00:00:00',9,1),(66,53,'SAKSHI','NELLORE','04-01-2020 05-01-2020 07-01-2020 09-01-2020 12-01-2020 19-01-2020','1','3','B & W','3','340','District','1020',1,'0000-00-00 00:00:00',9,1),(67,54,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020','1','2','B & W','2','220','District','440',1,'0000-00-00 00:00:00',9,1),(68,55,'SAKSHI','NELLORE','04-01-2020','8','4','B & W','32','55','District','1760',1,'0000-00-00 00:00:00',9,1),(69,56,'SAKSHI','NELLORE','04-01-2020','8','4','B & W','32','55','District','1760',1,'0000-00-00 00:00:00',9,1),(70,57,'SAKSHI','CHITTOOR','05-01-2020 12-01-2020 19-01-2020 26-01-2020 02-02-2020 09-02-2020 ','1','3','B & W','3','280','District','840',1,'0000-00-00 00:00:00',11,1),(71,58,'SAKSHI','ANANTHAPUR','05-01-2020 06-01-2020 08-01-2020 10-01-2020','1','2','B & W','2','170','District','340',1,'0000-00-00 00:00:00',10,1),(72,59,'SAKSHI','KADAPA','05-01-2020 07-01-2020 10-01-2020 12-01-2020','1','2','B & W','2','140','District','280',1,'0000-00-00 00:00:00',10,1),(73,60,'SAKSHI','PRAKASAM ','05-01-2020 07-01-2020 10-01-2020 12-01-2020','1','2','B & W','2','220','District','440',1,'0000-00-00 00:00:00',10,1),(74,61,'SAKSHI','KURNOOL','05-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','220','District','440',1,'0000-00-00 00:00:00',10,1),(75,62,'SAKSHI','CHITTOOR','05-01-2020 06-01-2020 07-01-2020 08-01-2020','1','2','B & W','2','760','District','1520',1,'0000-00-00 00:00:00',11,1),(76,63,'SAKSHI','NELLORE','05-01-2020 06-01-2020 08-01-2020 10-01-2020 12-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',9,1),(77,64,'SAKSHI','NELLORE','05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',9,1),(78,65,'SAKSHI','NELLORE','05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',9,1),(79,66,'SAKSHI','NELLORE','05-01-2020 07-01-2020 09-01-2020 11-01-2020 13-01-2020 16-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',9,1),(80,67,'SAKSHI','CHITTOOR DISTRICT  NELLORE DISTRICT  PRAKASHAM DISTRICT  KURNOOL DISTRICT  ','06-01-2020 07-01-2020 08-01-2020 09-01-2020 10-01-2020 11-01-2020','1','3','B & W','3','940','District','2820',1,'0000-00-00 00:00:00',11,1),(81,68,'ANDHRA BHOOMI','AB-CHITTOOR DIST,  DC- TABLOID - CTR + NLR + PRAKASAM','06-01-2020','12','24','B & W','288','65','District','18720',1,'0000-00-00 00:00:00',3,1),(83,70,'SAKSHI','CHITTOOR','07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',11,1),(84,71,'SAKSHI','NELLORE','07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','220','District','440',1,'0000-00-00 00:00:00',11,1),(85,72,'SAKSHI','CHITTOOR','07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',11,1),(86,73,'SAKSHI','CHITTOOR','07-01-2020 08-01-2020 09-01-2020 10-01-2020 11-01-2020 12-01-2020','1','3','B & W','3','440','District','1320',1,'0000-00-00 00:00:00',11,1);

/*Table structure for table `invoice_payments` */

DROP TABLE IF EXISTS `invoice_payments`;

CREATE TABLE `invoice_payments` (
  `in_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_id` varchar(250) DEFAULT NULL,
  `ptype` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `p_chq_no` varchar(250) DEFAULT NULL,
  `p_banl_brank` varchar(250) DEFAULT NULL,
  `p_through` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`in_pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `invoice_payments` */

insert  into `invoice_payments`(`in_pay_id`,`i_id`,`ptype`,`amount`,`p_chq_no`,`p_banl_brank`,`p_through`,`created_at`,`created_by`) values (1,'9','Online','600','','','G-PAY ON 14-12-2019','2019-12-14 20:37:51',3),(2,'6','Online','600','','','G-PAY ON 14-12-2019','2019-12-14 20:38:29',3),(3,'17','Cash','600','','','','2019-12-21 18:55:11',3),(4,'2','Online','14380.00','','','21-12-2019/ NEFT-INDIAN BANK/IDIBH19354283420','2019-12-21 22:35:22',3),(5,'2','Cash','1','','','','2019-12-21 22:36:06',3),(6,'18','Cash','600','','','','2019-12-22 21:26:24',3),(7,'7','Cheque','1134','2345','HDFC ALL REDDY PAID','','2019-12-24 12:16:42',3),(8,'40','Cash','300','','','','2019-12-30 18:21:48',3),(9,'5','Online','21382','','','NEFT-VIJBH19361044951 ON-30-12-19 ','2019-12-30 19:16:27',3),(10,'5','Cheque','416.00','TDS AMOUNT','BALANCE- 416.00','','2019-12-30 19:24:45',3),(11,'22','Online','600','','','G-PAY ON 26-12-2019','2019-12-31 18:42:27',3),(12,'23','Online','600','','','G-PAY ON 26-12-2019','2019-12-31 18:42:48',3),(13,'43','Online','300','','','G-PAY ON 26-12-2019','2019-12-31 18:49:58',3),(14,'43','Cheque','2535','NOTE -BILLING WRONG OF 2535','BILL WRONG','','2019-12-31 18:53:12',3),(15,'44','Online','300','','','G-PAY ON 26-12-2019','2019-12-31 18:59:12',3),(16,'45','Online','300','','','G-PAY ON 31-12-2019','2019-12-31 19:08:00',3);

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

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `locations` */

insert  into `locations`(`l_id`,`l_name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Kadapa',1,'2019-12-25 12:14:10',NULL,1),(2,'Tirupathi',1,'2019-12-25 12:18:21',NULL,1),(3,'Chittoor',2,'2019-12-25 12:18:55','2020-01-01 10:56:32',1),(4,'Pileru',1,'2020-01-01 10:57:37',NULL,1),(5,'Chitoor',1,'2020-01-01 10:58:05',NULL,1),(6,'Puttur',1,'2020-01-01 10:58:26',NULL,1),(7,'Rayachoty',1,'2020-01-01 10:58:44',NULL,1),(8,'Renigunta',1,'2020-01-01 10:59:01',NULL,1),(9,'Chandragiri',1,'2020-01-01 10:59:19',NULL,1),(10,'Gajulamandyam',1,'2020-01-01 10:59:34',NULL,1),(11,'Appalayagunta',1,'2020-01-01 10:59:49',NULL,1),(12,'Srikalahasti',1,'2020-01-01 11:00:06',NULL,1),(13,'Venkatagiri',1,'2020-01-01 11:00:22',NULL,1),(14,'Koduru',1,'2020-01-01 11:00:35',NULL,1),(15,'Gudur',1,'2020-01-01 11:00:47',NULL,1),(16,'Rapur',1,'2020-01-01 11:01:00',NULL,1),(17,'Naidupeta',1,'2020-01-01 11:01:20',NULL,1),(18,'Mettu',1,'2020-01-01 11:01:35',NULL,1),(19,'Nellore',1,'2020-01-01 11:01:56',NULL,1),(20,'Pakala',1,'2020-01-01 11:02:12',NULL,1),(21,'Kalikiri',1,'2020-01-01 11:02:26',NULL,1),(22,'Palamaner',1,'2020-01-01 11:02:45',NULL,1),(23,'Madanapalle',1,'2020-01-01 11:03:05',NULL,1),(24,'Thiruvallur',1,'2020-01-01 11:03:20',NULL,1),(25,'Tiruttani ',1,'2020-01-01 11:03:32',NULL,1),(26,'Pallipattu',1,'2020-01-01 11:03:43',NULL,1),(27,'Tamilnadu ',1,'2020-01-01 11:04:00',NULL,1),(28,'Karnataka',1,'2020-01-01 11:04:15',NULL,1),(29,'Tourist',1,'2020-01-01 11:04:36',NULL,1),(30,'etc...',1,'2020-01-01 11:04:53',NULL,1);

/*Table structure for table `login_details` */

DROP TABLE IF EXISTS `login_details`;

CREATE TABLE `login_details` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL COMMENT 'employee id',
  `e_login_time` datetime DEFAULT NULL,
  `e_logout_time` datetime DEFAULT '0000-00-00 00:00:00',
  `l_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `login_details` */

insert  into `login_details`(`l_id`,`e_id`,`e_login_time`,`e_logout_time`,`l_date`,`created_by`) values (3,1,'2018-11-01 14:28:24','2018-11-01 14:35:26','2018-11-01',NULL),(4,1,'0000-00-00 00:00:00','2018-11-02 14:23:22','2018-11-02',NULL),(5,3,'0000-00-00 00:00:00','2018-11-02 13:56:23','2018-11-02',NULL),(6,2,'0000-00-00 00:00:00','2018-11-02 13:40:50','2018-11-02',NULL),(7,3,'0000-00-00 00:00:00','2018-11-05 15:06:57','2018-11-05',NULL),(8,4,'0000-00-00 00:00:00','2018-11-05 06:02:28','2018-11-05',NULL),(9,1,'0000-00-00 00:00:00','2018-11-05 11:27:08','2018-11-05',NULL),(10,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-11-06',NULL),(11,3,'0000-00-00 00:00:00','2018-11-06 15:01:56','2018-11-06',NULL),(12,7,'0000-00-00 00:00:00','2018-11-06 13:07:37','2018-11-06',NULL),(13,8,'0000-00-00 00:00:00','2018-11-06 11:04:55','2018-11-06',NULL),(14,5,'0000-00-00 00:00:00','2018-11-06 12:30:22','2018-11-06',NULL),(15,3,'0000-00-00 00:00:00','2018-11-08 13:19:03','2018-11-08',NULL),(16,5,'0000-00-00 00:00:00','2018-11-08 05:48:00','2018-11-08',NULL),(17,1,'0000-00-00 00:00:00','2018-11-08 09:37:31','2018-11-08',NULL),(18,8,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-11-08',NULL),(19,7,'0000-00-00 00:00:00','2018-11-08 12:43:08','2018-11-08',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4708 DEFAULT CHARSET=latin1;

/*Data for the table `login_report` */

insert  into `login_report`(`id`,`a_id`,`code`,`login_time`,`logout_time`,`hours`,`create_at`,`creatde_at`,`diff_time`,`reason`,`comment`,`updated_time`,`to_time`,`from_time`,`updated_by`) values (4591,56,'','2019-10-03 16:56:05','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4592,55,'TS55','2019-10-03 20:23:01','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4593,1,'','2019-10-04 21:08:26','0000-00-00 00:00:00',NULL,'2019-10-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4594,1,'','2019-10-05 08:19:49','2019-10-05 10:29:12','2:9','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4595,55,'TS55','2019-10-05 08:43:56','2019-10-05 11:39:50','2:55','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4596,1,'','2019-10-09 16:15:35','0000-00-00 00:00:00',NULL,'2019-10-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4597,1,'','2019-10-11 10:17:47','2019-10-11 19:40:19','9:22','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4598,55,'TS55','2019-10-11 11:10:45','0000-00-00 00:00:00',NULL,'2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4599,49,'','2019-10-11 11:31:49','2019-10-11 12:08:38','0:36','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4600,1,'','2019-10-13 11:01:07','2019-10-13 20:53:14','9:52','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4601,58,'TS58','2019-10-13 11:18:36','2019-10-13 14:01:57','2:43','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4602,51,'','2019-10-13 13:57:11','2019-10-13 14:25:23','0:28','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4603,54,'TN54','2019-10-13 14:02:28','0000-00-00 00:00:00',NULL,'2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4604,1,'','2019-10-14 10:36:44','0000-00-00 00:00:00',NULL,'2019-10-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4605,1,'','2019-10-16 14:37:34','2019-10-16 14:38:08','0:0','2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4606,55,'TS55','2019-10-16 14:39:10','0000-00-00 00:00:00',NULL,'2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4607,1,'','2019-10-20 22:19:59','2019-10-20 22:57:42','0:37','2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4608,55,'TS55','2019-10-20 22:57:49','0000-00-00 00:00:00',NULL,'2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4609,1,'','2019-10-23 22:30:54','2019-10-23 22:31:19','0:0','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4610,55,'TS55','2019-10-23 22:31:28','2019-10-23 23:02:01','0:30','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4611,1,'','2019-10-24 20:01:44','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4612,55,'TS55','2019-10-24 21:09:33','2019-10-24 21:55:27','0:45','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4613,49,'','2019-10-24 21:55:53','2019-10-24 22:00:36','0:4','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4614,51,'','2019-10-24 22:00:52','2019-10-24 22:10:57','0:10','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4615,56,'','2019-10-24 22:11:29','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4616,1,'','2019-10-25 08:16:15','0000-00-00 00:00:00',NULL,'2019-10-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4617,1,'','2019-11-08 21:26:55','0000-00-00 00:00:00',NULL,'2019-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4618,1,'','2019-11-10 18:23:38','0000-00-00 00:00:00',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4619,59,'AP59','2019-11-10 10:15:15','2019-11-10 20:15:15',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4620,1,'','2019-11-12 18:16:42','0000-00-00 00:00:00',NULL,'2019-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4621,59,'AP59','2019-11-12 10:18:46','2019-11-12 17:04:21','06:20','2019-11-12',NULL,'9:45','bvbzcx','','2019-11-24 20:23:50',NULL,NULL,1),(4622,1,'','2019-11-13 19:46:25','0000-00-00 00:00:00',NULL,'2019-11-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4623,59,'AP59','2019-11-15 16:27:07','2019-11-15 16:28:16','0:1','2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4624,1,'','2019-11-15 17:55:59','0000-00-00 00:00:00',NULL,'2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4625,59,'AP59','2019-11-20 14:42:06','2019-11-20 17:42:06','08:40','2019-11-20',NULL,'6','xcxzcZXvXCv','','2019-11-24 20:23:38',NULL,NULL,1),(4626,1,'','2019-11-20 15:55:29','0000-00-00 00:00:00',NULL,'2019-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4627,59,'AP59','2019-11-21 18:55:26','2019-11-21 22:55:26','6:30','2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4628,1,'','2019-11-21 19:42:23','0000-00-00 00:00:00',NULL,'2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4629,59,'AP59','2019-11-22 19:56:11','2019-11-22 19:56:11','07:00','2019-11-22',NULL,'7:0','testing ','','2019-11-24 20:56:13',NULL,NULL,1),(4630,59,'AP59','2019-11-24 11:28:19','2019-11-24 19:28:19','8:30','2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4631,1,'','2019-11-24 20:23:05','0000-00-00 00:00:00',NULL,'2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4632,59,'AP59','2019-11-25 10:23:32','2019-11-25 21:40:29','11:16','2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4633,1,'','2019-11-25 21:40:32','0000-00-00 00:00:00',NULL,'2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4634,1,'','2019-11-26 22:40:40','0000-00-00 00:00:00',NULL,'2019-11-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4635,1,'','2019-11-28 20:33:36','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4636,59,'AP59','2019-11-28 23:08:50','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4638,59,NULL,'2019-11-13 10:00:00','2019-11-13 11:00:00','16:15','2019-11-13','2019-11-13','3:15','vcbxcvbxcvbxcvbxcvb','','2019-12-01 19:54:40','02:15 PM','05:30 PM',1),(4639,1,'','2019-11-29 16:26:22','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4640,59,'AP59','2019-11-29 19:37:12','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4641,1,'','2019-12-01 13:23:40','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4642,59,'AP59','2019-12-01 18:52:00','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4643,1,'','2019-12-09 18:30:33','2019-12-09 20:51:34','2:21','2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4644,59,'AP59','2019-12-09 18:52:14','0000-00-00 00:00:00',NULL,'2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4645,1,'','2019-12-10 16:45:36','2019-12-10 19:25:21','2:39','2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4646,59,'AP59','2019-12-10 18:19:19','0000-00-00 00:00:00',NULL,'2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4647,1,'','2019-12-11 11:13:46','0000-00-00 00:00:00',NULL,'2019-12-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4648,1,'','2019-12-12 10:10:18','0000-00-00 00:00:00',NULL,'2019-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4649,1,'','2019-12-13 10:34:48','2019-12-13 22:17:54','11:43','2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4650,59,'AP59','2019-12-13 15:27:35','0000-00-00 00:00:00',NULL,'2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4651,1,'','2019-12-14 09:58:17','2019-12-14 16:21:20','6:23','2019-12-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4652,59,'AP59','2019-12-14 16:22:29','2019-12-14 16:34:25','0:11','2019-12-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4653,1,'','2019-12-15 11:53:29','0000-00-00 00:00:00',NULL,'2019-12-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4654,1,'','2019-12-18 10:45:41','2019-12-18 10:45:52','0:0','2019-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4655,59,'AP59','2019-12-18 10:46:03','2019-12-18 10:46:36','0:0','2019-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4656,1,'','2019-12-19 14:36:33','2019-12-19 15:41:06','1:4','2019-12-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4657,1,'','2019-12-21 13:33:30','2019-12-21 16:41:01','3:7','2019-12-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4658,1,'','2019-12-23 12:18:18','0000-00-00 00:00:00',NULL,'2019-12-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4659,1,'','2019-12-24 11:41:25','0000-00-00 00:00:00',NULL,'2019-12-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4660,1,'','2019-12-25 17:54:57','0000-00-00 00:00:00',NULL,'2019-12-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4661,1,'','2019-12-26 10:35:41','0000-00-00 00:00:00',NULL,'2019-12-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4662,1,'','2019-12-27 11:43:43','0000-00-00 00:00:00',NULL,'2019-12-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4663,1,'','2019-12-28 10:57:15','0000-00-00 00:00:00',NULL,'2019-12-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4664,1,'','2019-12-29 14:12:24','0000-00-00 00:00:00',NULL,'2019-12-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4665,1,'','2019-12-30 10:15:39','0000-00-00 00:00:00',NULL,'2019-12-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4666,1,'','2019-12-31 12:18:00','2019-12-31 14:03:14','1:45','2019-12-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4667,55,'4755','2019-12-31 13:27:46','2019-12-31 13:50:26','0:22','2019-12-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4668,1,'','2020-01-01 10:06:56','2020-01-01 12:03:50','1:56','2020-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4669,1,'','2020-01-02 08:49:57','2020-01-02 16:59:57','8:10','2020-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4670,55,'4755','2020-01-02 16:53:29','2020-01-02 17:01:51','0:8','2020-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4671,1,'','2020-01-03 11:08:18','2020-01-03 12:03:05','0:54','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4672,55,'475','2020-01-03 12:03:20','2020-01-03 15:20:04','3:16','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4673,58,'47558','2020-01-03 15:17:10','2020-01-03 15:18:54','0:1','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4674,1,'','2020-01-04 10:53:03','2020-01-04 15:30:38','4:37','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4675,58,'47558','2020-01-04 14:05:34','2020-01-04 14:05:55','0:0','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4676,62,'47562','2020-01-04 14:53:13','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4677,59,'47559','2020-01-04 15:26:58','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4678,55,'475','2020-01-04 15:31:02','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4679,63,'47563','2020-01-04 15:42:11','2020-01-04 15:47:46','0:5','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4680,60,'47560','2020-01-04 15:46:35','2020-01-04 15:50:31','0:3','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4681,61,'47561','2020-01-04 16:58:10','2020-01-04 22:00:42','5:2','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4682,1,'','2020-01-05 12:44:07','0000-00-00 00:00:00',NULL,'2020-01-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4683,62,'47562','2020-01-06 10:12:34','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4684,1,'','2020-01-06 11:14:39','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4685,58,'47558','2020-01-06 13:19:12','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4686,64,'47564','2020-01-06 13:47:37','2020-01-06 13:51:07','0:3','2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4687,61,'47561','2020-01-06 15:07:41','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4688,1,'','2020-01-07 11:22:38','2020-01-07 19:01:06','7:38','2020-01-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4689,65,'47565','2020-01-07 11:32:24','2020-01-07 11:35:06','0:2','2020-01-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4690,62,'47562','2020-01-07 18:51:38','0000-00-00 00:00:00',NULL,'2020-01-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4691,1,'','2020-01-08 10:24:12','2020-01-08 17:02:33','6:38','2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4692,61,'47561','2020-01-08 10:34:06','0000-00-00 00:00:00',NULL,'2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4693,62,'47562','2020-01-08 10:52:11','0000-00-00 00:00:00',NULL,'2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4694,58,'47558','2020-01-08 13:47:35','0000-00-00 00:00:00',NULL,'2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4695,60,'47560','2020-01-08 15:38:45','2020-01-08 15:39:48','0:1','2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4696,55,'475','2020-01-08 15:49:41','2020-01-08 15:52:56','0:3','2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4697,59,'47559','2020-01-08 16:30:54','2020-01-08 16:34:14','0:3','2020-01-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4698,59,'47559','2020-01-09 10:22:29','0000-00-00 00:00:00',NULL,'2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4699,62,'47562','2020-01-09 10:27:35','0000-00-00 00:00:00',NULL,'2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4700,1,'','2020-01-09 12:14:40','2020-01-09 13:56:57','1:42','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4701,55,'475','2020-01-09 12:56:59','2020-01-09 15:28:57','2:31','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4702,68,'47568','2020-01-09 13:06:11','2020-01-09 15:17:44','2:11','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4703,61,'47561','2020-01-09 15:23:03','2020-01-09 15:26:27','0:3','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4704,60,'47560','2020-01-09 15:25:18','2020-01-09 15:27:42','0:2','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4705,65,'47565','2020-01-09 16:55:50','2020-01-09 16:56:00','0:0','2020-01-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4706,1,'','2020-01-10 10:17:24','0000-00-00 00:00:00',NULL,'2020-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4707,55,'475','2020-01-10 10:18:11','0000-00-00 00:00:00',NULL,'2020-01-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(250) DEFAULT NULL,
  `m_status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `py` int(11) DEFAULT '0',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `modules` */

insert  into `modules`(`m_id`,`m_name`,`m_status`,`created_at`,`updated_at`,`created_by`,`py`) values (1,'Role managemnet ',0,'2019-12-31 22:02:08','2019-09-13 12:41:06',1,0),(20,'Department',1,'2019-09-18 11:55:04',NULL,1,0),(24,'Employee',1,'2019-09-23 21:02:05',NULL,1,0),(25,'Document',0,'2019-12-10 16:46:37','2019-12-10 16:46:37',1,0),(26,'Holidays',0,'2019-12-10 16:46:42','2019-12-10 16:46:42',1,0),(27,'Branches',1,'2019-12-31 00:43:08','2019-12-31 13:13:08',1,0),(28,'Leaves',0,'2019-12-10 16:46:53','2019-12-10 16:46:53',1,0),(29,'Attendance',0,'2019-12-10 16:47:03','2019-12-10 16:47:03',1,0),(30,'Payslip',0,'2019-12-10 16:47:31','2019-12-10 16:47:31',1,0),(31,'Notification',0,'2019-12-10 16:46:47','2019-12-10 16:46:47',1,0),(32,'Pending  task',0,'2019-12-10 16:47:38','2019-12-10 16:47:38',1,0),(33,'Termination',0,'2019-12-10 16:47:22','2019-12-10 16:47:22',1,0),(34,'Calendar',0,'2019-12-10 16:46:20','2019-12-10 16:46:20',1,0),(35,'Assign Task',1,'2020-01-09 00:55:18','2019-12-25 18:02:16',1,1),(36,'Questions',1,'2019-12-13 11:32:49',NULL,1,0),(37,'Location',1,'2019-12-25 12:02:57',NULL,1,0),(38,'Source',1,'2020-01-07 16:48:28',NULL,1,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `modules_menu` */

insert  into `modules_menu`(`m_m_id`,`m_name`,`m_menu_name`,`m_menu_url`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'Roles','user/roles',0,'2019-05-20 10:22:03','2019-08-27 21:46:21',1),(2,1,'Users Rights','user/rights',0,'2019-05-20 10:22:21','2019-08-27 21:46:26',1),(3,1,'Users','user/add',1,'2019-05-20 10:22:38','2019-08-27 21:46:34',1),(41,11,'Patients','reports/patients',2,'2019-07-02 20:49:51','2019-09-13 12:38:51',1),(68,20,'Add','department/add',1,'2019-09-18 11:55:39',NULL,1),(69,20,'List','department',1,'2019-09-18 11:55:51',NULL,1),(73,24,'Add','employee/add',1,'2019-09-23 21:02:21',NULL,1),(74,24,'List','employee',1,'2019-09-23 21:02:38',NULL,1),(75,25,'Add','document/add',1,'2019-09-23 21:03:15',NULL,1),(76,25,'List','document/list',1,'2019-09-23 21:03:28',NULL,1),(77,26,'Add','holidays/add',1,'2019-09-24 09:03:35',NULL,1),(78,26,'List','holidays',1,'2019-09-24 09:03:45',NULL,1),(79,27,'Add','branches/add',1,'2019-09-26 22:31:27','2019-09-26 22:32:07',1),(80,27,'List','branches',1,'2019-09-26 22:31:55','2019-09-26 22:32:12',1),(81,28,'Apply','leaves/add',1,'2019-09-28 12:28:32',NULL,1),(82,28,'List','leaves',1,'2019-09-28 12:28:43',NULL,1),(83,28,'Set Days','leaves/setdays',1,'2019-10-03 13:33:54',NULL,1),(84,29,'Upload','attendance/upload',1,'2019-10-03 16:15:41',NULL,1),(85,30,'Genrate','payslip/index',1,'2019-10-03 16:16:05',NULL,1),(86,31,'Add','notification/add',1,'2019-10-04 21:09:19',NULL,1),(87,31,'List','notification',1,'2019-10-04 21:09:34',NULL,1),(88,1,'Users list','user/lists',1,'2019-10-14 10:42:24',NULL,1),(89,32,'Notice period','pendingtask',2,'2019-11-10 21:09:34','2019-11-10 22:18:33',1),(90,32,'Probation','pending/probation',0,'2019-11-10 21:10:07','2019-12-01 18:02:06',1),(91,32,'RESIGNATION ','resignation/lists',1,'2019-11-10 21:10:23','2019-11-10 22:19:04',1),(92,32,'Termination','pending/termination',2,'2019-11-10 21:11:04','2019-11-10 22:18:24',1),(93,33,'Add','termination',1,'2019-11-12 20:29:07','2019-11-12 21:17:36',1),(94,33,'List','termination/lists',1,'2019-11-12 21:17:27',NULL,1),(95,32,'Attendance regulation','pending/attendance_regulation',1,'2019-11-21 19:43:38',NULL,1),(96,34,'List','calendar/index',1,'2019-11-25 21:42:09',NULL,1),(97,35,'Add','assignwork/add',1,'2019-12-09 18:31:32',NULL,1),(98,35,'List','assignwork/index',1,'2019-12-09 18:31:46','2019-12-10 18:08:11',1),(99,36,'Add','questions',1,'2019-12-13 11:33:47',NULL,1),(100,36,'List','questions',1,'2019-12-13 11:34:01',NULL,1),(101,37,'Add','location/add',1,'2019-12-25 12:03:32',NULL,1),(102,37,'List','location/index',1,'2019-12-25 12:03:48',NULL,1),(103,38,'Add','source/add',1,'2020-01-07 16:49:29',NULL,1),(104,38,'List','source/index',1,'2020-01-07 16:49:49',NULL,1);

/*Table structure for table `month_tab` */

DROP TABLE IF EXISTS `month_tab`;

CREATE TABLE `month_tab` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `month_tab` */

insert  into `month_tab`(`m_id`,`month_name`) values (1,'january'),(2,'february'),(3,'march'),(4,'april'),(5,'may'),(6,'june'),(7,'july'),(8,'august'),(9,'september'),(10,'october'),(11,'november'),(12,'december');

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

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `qno` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`q_id`,`qno`,`type`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'OPD','OPD Registration & Billing Process',1,'2019-12-13 11:54:59','2019-12-13 12:31:19',1),(2,2,'OPD','Doctor Consultation',1,'2019-12-13 12:21:48',NULL,1),(3,3,'OPD','Diagnostic Services',1,'2019-12-13 12:31:50',NULL,1),(4,4,'OPD','Nurses & Other Staff Service',1,'2019-12-13 12:32:02',NULL,1),(5,5,'OPD','Pharmacy Service',1,'2019-12-13 12:32:28',NULL,1),(6,6,'OPD','Overall OP Services Experience',1,'2019-12-13 12:32:45',NULL,1),(7,7,'OPD','Do you recommend Sankalpa to others',2,'2019-12-13 12:32:58','2019-12-31 12:29:05',1),(8,1,'IPD','Admission Process',1,'2019-12-13 12:33:35',NULL,1),(9,2,'IPD','Wards & Rooms Cleanliness',1,'2019-12-13 12:33:46',NULL,1),(10,3,'IPD','Toilet Cleanliness',1,'2019-12-13 12:33:57','2019-12-31 13:54:51',1),(11,4,'IPD','Room Service & Facilities',1,'2019-12-13 12:34:08',NULL,1),(12,5,'IPD','Nursing Services',1,'2019-12-13 12:34:22',NULL,1),(13,6,'IPD','Treating Doctor Services',1,'2019-12-13 12:34:37',NULL,1),(14,7,'IPD','House Keeping & Security Services',1,'2019-12-13 12:34:51',NULL,1),(15,8,'IPD','Admin Staff Services',1,'2019-12-13 12:35:07',NULL,1),(16,9,'IPD','Food Quality & Dietician Services',1,'2019-12-13 12:35:18',NULL,1),(17,10,'IPD','Billing & Discharge Process',1,'2019-12-13 12:35:28','2019-12-13 13:53:23',1),(19,8,'OPD','Any Other Comments',2,'2019-12-13 17:53:06','2019-12-31 12:29:12',1),(20,11,'IPD','Over all experience at Sankalpa',1,'2019-12-30 11:20:13',NULL,1),(21,12,'IPD','Would  you recommend  sankalpa  to others',0,'2019-12-30 11:23:34','2019-12-31 12:27:13',1),(22,13,'IPD','Any other comments',2,'2019-12-30 11:24:06','2019-12-31 12:25:36',1);

/*Table structure for table `releaseorder` */

DROP TABLE IF EXISTS `releaseorder`;

CREATE TABLE `releaseorder` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `or_ro_no` varchar(250) DEFAULT NULL,
  `or_date` varchar(250) DEFAULT NULL,
  `sac_code` varchar(250) DEFAULT NULL,
  `sac_cod` varchar(250) DEFAULT NULL,
  `hns_code` varchar(250) DEFAULT NULL,
  `cli_name` varchar(250) DEFAULT NULL,
  `cli_city` varchar(250) DEFAULT NULL,
  `cli_district` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `cation` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `barrowerss` varchar(250) DEFAULT NULL,
  `invoice_file_name` varchar(250) DEFAULT NULL,
  `igst_amount` varchar(250) DEFAULT NULL,
  `cgst_amount` varchar(250) DEFAULT NULL,
  `sgst_amount` varchar(250) DEFAULT NULL,
  `gst_amount` varchar(250) DEFAULT NULL,
  `with_out_total_net_amt` varchar(250) DEFAULT NULL,
  `with_gst_total_net_amt` varchar(250) DEFAULT NULL,
  `total_net_amt` varchar(250) DEFAULT NULL,
  `payment_completed` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `created_at` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

/*Data for the table `releaseorder` */

insert  into `releaseorder`(`r_id`,`cus_name`,`address`,`mobile`,`city`,`district`,`or_ro_no`,`or_date`,`sac_code`,`sac_cod`,`hns_code`,`cli_name`,`cli_city`,`cli_district`,`type`,`cation`,`branch`,`barrowerss`,`invoice_file_name`,`igst_amount`,`cgst_amount`,`sgst_amount`,`gst_amount`,`with_out_total_net_amt`,`with_gst_total_net_amt`,`total_net_amt`,`payment_completed`,`status`,`created_at`,`updated_at`,`created_by`,`updated_by`) values (2,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR','858','12-12-2019','B00573',NULL,'998363','INDIAN BANK','TIRUPATI','CHITTOOR','Bank','POSSESSION NOTICE','AVILALA','M/S INDEEVAR INDUSTRIES','858_INDIAN_BANK_2.pdf','0','110.16','110.16',NULL,'4406.4',NULL,'4626.72',0,1,'2019-Dec-12 17:33:11','0000-00-00 00:00:00',3,3),(3,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR','859','12-12-2019','B00573',NULL,'998363','HARUN SHARIFF MOHAMMED','CHITTOOR','CHITTOOR DIST-517001','Commercial','','','','859_HARUN_SHARIFF_MOHAMMED_3.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-12 18:05:27','2019-12-14 20:42:38',3,3),(13,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR','857','13-12-2019','901362',NULL,'998363','THE CHIEF MANAGER GARU INDIAN BANK','TIRUPATI','CHITTOOR','Bank','POSSESSION NOTICE','AVILALA','M/S INDEEVAR INDUSTRIES','857_THE_CHIEF_MANAGER_GARU_INDIAN_BANK_13.pdf','0','212.16','212.16',NULL,'8486.4',NULL,'8910.72',0,1,'2019-Dec-13 18:19:47','0000-00-00 00:00:00',3,3),(15,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR','860','13-12-2019','901362',NULL,'998363','DNR DIABETIES CENTRE','TIRUPATI','CHITTOOR DIST','Commercial','','','','860_DNR_DIABETIES_CENTRE_15.pdf','0','22.95','22.95',NULL,'918',NULL,'963.9',1,1,'2019-Dec-13 19:44:09','2019-12-14 20:47:19',3,3),(16,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR','861','13-12-2019','901362',NULL,'998363','THE CHIEF MANAGER GARU, BANK OF BARODA','KURNOOL','KURNOOL DIST-518004','Bank','POSSESSION NOTICE','BELLARY ROAD ','M/S EXCEL INDUSTRIES','861_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_16.pdf','0','363.375','363.375',NULL,'14535',NULL,'15261.75',0,1,'2019-Dec-13 20:07:15','0000-00-00 00:00:00',3,3),(17,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR','862','13-12-2019','B00573',NULL,'998363','THE CHIEF MANAGER GARU, BANK OF BARODA','KURNOOL','KURNOOL DIST-518004','Bank','POSSESSION NOTICE','BELLARY ROAD','M/S EXCEL INDUSTRIES','862_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_17.pdf','0','91.8','91.8',NULL,'3672',NULL,'3855.6',0,1,'2019-Dec-13 20:14:49','0000-00-00 00:00:00',3,3),(18,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR','863','13-12-2019','901362',NULL,'998363','RAYALASEEMA AGENCIES','TIRUPATI','CHITTOOR','Commercial','','','','863_RAYALASEEMA_AGENCIES_18.pdf','0','85','85',NULL,'3400',NULL,'3570',0,1,'2019-Dec-13 20:47:14','0000-00-00 00:00:00',3,3),(20,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI ','CHITTOOR ','864','14-12-2019','B00573',NULL,'998363','JAFFAR SHARIFF MOHAMMED','CHITTOOR','CHITTOOR DIST-517001','Commercial','','','','864_JAFFAR_SHARIFF_MOHAMMED_20.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-14 17:02:38','2019-12-14 20:40:37',7,7),(21,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','865','17-12-2019','901362',NULL,'998363','BANK OF BARODA','NELLORE','NELLORE DIST-524320','Bank','E-AUCTION SALE NOTICE...','VENKATACHALAM','MR. KANTINENI PENCHALAIAH CHOWDARY','865_BANK_OF_BARODA_21.pdf','0','401.166','401.166',NULL,'16046.64',NULL,'16848.972',0,1,'2019-Dec-17 18:56:15','0000-00-00 00:00:00',3,3),(22,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR','866','18-12-2019','901362',NULL,'998363','SRI SAI SERVICES','TIRUPATI','CHITTOOR DIST-517001','Commercial','WANTED- 3+3 5LINES','','','866_SRI_SAI_SERVICES_22.pdf','0','22.95','22.95',NULL,'918',NULL,'963.9',0,1,'2019-Dec-18 18:37:18','0000-00-00 00:00:00',3,3),(23,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR','867','18-12-2019','B00573',NULL,'998363','THE CHIEF MANAGER GARU, BANK OF BARODA','NELLORE','NELLORE DIST-524320','Bank','E-AUCTION SALE NOTICE...','VENKATACHALAM','MR. KANTINENI PENCHALAIAH CHOWDARY','867_THE_CHIEF_MANAGER_GARU,_BANK_OF_BARODA_23.pdf','0','123.93','123.93',NULL,'4957.2',NULL,'5205.06',0,1,'2019-Dec-18 21:54:28','0000-00-00 00:00:00',3,3),(24,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','868','19-12-2019','901362',NULL,'998363','EARNEST','TIRUPATI','CHITTOOR DIST-517501','Commercial','JOB MELA','','','868_EARNEST_24.pdf','0','137.7','137.7',NULL,'5508',NULL,'5783.4',0,1,'2019-Dec-19 16:42:32','0000-00-00 00:00:00',3,3),(25,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','869','20-12-2019','901362',NULL,'998363','R.S. SCHOOL','TIRUPATI','CHITTOOR','Commercial','WANTED- 3+3 4 LINES CL','','','869_R.S._SCHOOL_25.pdf','0','17.85','17.85',NULL,'714',NULL,'749.7',0,1,'2019-Dec-20 15:32:47','0000-00-00 00:00:00',3,3),(26,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','870','20-12-2019','B00573',NULL,'998363','THE CHIEF MANAGER GARU, ANDHRA BANK','KADAPA CITY','KADAPA DIST-516390','Bank','POSSESSION NOTICE','PULIVENDULA','MR. CHAVVA RAJA REDDY','870_THE_CHIEF_MANAGER_GARU,_ANDHRA_BANK_26.pdf','0','165.24','165.24',NULL,'6609.6',NULL,'6940.08',0,1,'2019-Dec-20 18:56:41','0000-00-00 00:00:00',3,3),(27,'ADVT MANAGER VAARTHA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','871','20-12-2019','1000214879',NULL,'998363','THE CHIEF MANAGER GARU, ANDHRA BANK','KADAPA CITY','KADAPA DIST-516390','Bank','POSSESSION NOTICE','PULIVENDULA','MR. CHAVVA RAJA REDDY','871_THE_CHIEF_MANAGER_GARU,_ANDHRA_BANK_27.pdf','0','143.208','143.208',NULL,'5728.32',NULL,'6014.736',0,1,'2019-Dec-20 19:34:45','0000-00-00 00:00:00',3,3),(28,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR','872','21-12-2019','B00573',NULL,'998363','SHAIK NASREEN','TIRUPATI','CHITTOOR DIST-517501','Personal','CHANGE OF NAME','','','872_SHAIK_NASREEN_28.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-21 15:34:55','2019-12-21 18:58:05',3,3),(29,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR','873','21-12-2019','755003',NULL,'998363','SHAIK NASREEN','TIRUPATI','CHITTOOR DIST-517501','Commercial','CHANGE OF NAME','','','873_SHAIK_NASREEN_29.pdf','0','4.8875','4.8875',NULL,'195.5',NULL,'205.275',1,1,'2019-Dec-21 15:59:48','2019-12-21 18:58:43',3,3),(30,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','874','21-12-2019','755003',NULL,'998363','NALLAPPAGARI NAGI REDDY','PILERU','CHITTOOR-517501','Personal','CHANGE OF NAME','','','874_NALLAPPAGARI_NAGI_REDDY_30.pdf','0','4.8875','4.8875',NULL,'195.5',NULL,'205.275',1,1,'2019-Dec-21 17:00:31','2019-12-22 21:30:26',3,3),(31,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','875','21-12-2019','B00573',NULL,'998363','NALLAPPAGARI NAGI REDDY','PILERU','CHITTOOR-517501','Personal','CHANGE OF NAME','','','875_NALLAPPAGARI_NAGI_REDDY_31.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-21 17:02:20','2019-12-22 21:30:59',3,3),(32,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR-517501','876','22-12-2019','755003',NULL,'998363','VIHARI MARKETING PVT LTD','TIRUPATI','CHITTOOR DIST-517501','Commercial','WANTED AD- 1+1','','','876_VIHARI_MARKETING_PVT_LTD_32.pdf','0','38.25','38.25',NULL,'1530',NULL,'1606.5',0,1,'2019-Dec-22 21:02:00','0000-00-00 00:00:00',3,3),(33,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','877','23-12-2019','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','PLOTS FOR SALE- 2+2 -8 lines','','','877_SIRI_DEVELOPERS_33.pdf','0','25.5','25.5',NULL,'1020',NULL,'1071',0,1,'2019-Dec-23 16:14:05','0000-00-00 00:00:00',3,3),(34,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','878','23-12-2019','901362',NULL,'998363','','TIRUPATI ','CHITTOOR','Government','WANTED-2+2 -8LINES','','','878__34.pdf','0','25.5','25.5',NULL,'1020',NULL,'1071',0,1,'2019-Dec-23 16:24:39','0000-00-00 00:00:00',3,3),(41,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','879','24-12-2019','B00573',NULL,'998363','SIDDHIKA KHATEEMA','CHITTOOR','CHITTOOR DIST','Personal','CHANGE OF NAME','','','879_SIDDHIKA_KHATEEMA_41.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-24 13:58:31','2019-12-31 18:38:26',3,3),(42,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','880','24-12-2019','B00573',NULL,'998363','NASEER HUSSEN','CHITTOOR','CHITTOOR DIST','Personal','CHANGE OF NAME','','','880_NASEER_HUSSEN_42.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-24 14:04:23','2019-12-31 18:40:24',3,3),(43,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','881','24-12-2019','901362',NULL,'998363','R.S. COLLEGE OF EDUCATION','TIRUPATI','CHITTOOR DIST-517501','Commercial','EUCATION-3+3 4 LINES','','','881_R.S._COLLEGE_OF_EDUCATION_43.pdf','0','59.925','59.925',NULL,'2397',NULL,'2516.85',0,1,'2019-Dec-24 14:26:48','0000-00-00 00:00:00',3,3),(44,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','882','24-12-2019','755003',NULL,'998363','SIDDHIKA KHATEEMA','CHITTOOR','CHITTOOR DIST','Personal','CHANGE OF NAME','','','882_SIDDHIKA_KHATEEMA_44.pdf','0','4.8875','4.8875',NULL,'195.5',NULL,'205.275',0,1,'2019-Dec-24 16:35:55','0000-00-00 00:00:00',3,3),(45,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','883','24-12-2019','755003',NULL,'998363','NASEER HUSSEN','CHITTOOR','CHITTOOR DIST','Personal','CHANGE OF NAME','','','883_NASEER_HUSSEN_45.pdf','0','4.8875','4.8875',NULL,'195.5',NULL,'205.275',0,1,'2019-Dec-24 16:38:06','0000-00-00 00:00:00',3,3),(46,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','884','24-12-2019','901362',NULL,'998363','VENKATESH REDDY','TIRUPATI','CHITTOOR DIST-517501','Commercial','SHOP FOR SALE- 2+2 4LINES CLASIFIED','','','884_VENKATESH_REDDY_46.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2019-Dec-24 16:46:00','0000-00-00 00:00:00',3,3),(47,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','885','24-12-2019','901362',NULL,'998363','K. PREMA KUMARI','TIRUPATI','CHITTOOR DIST','Personal','1ST VARDHANTHI','','','885_K._PREMA_KUMARI_47.pdf','0','82.875','82.875',NULL,'3315',NULL,'3480.75',0,1,'2019-Dec-24 16:58:21','0000-00-00 00:00:00',3,3),(48,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','886','24-12-2019','755003',NULL,'998363','SHAKTHI PARKING','TIRUPATI','CHITTOOR DIST','Personal','24th VARDHANTHI','','','886_SHAKTHI_PARKING_48.pdf','0','162.56271675','162.56271675',NULL,'6502.50867',NULL,'6827.6341035',0,1,'2019-Dec-24 20:54:05','0000-00-00 00:00:00',3,3),(49,'ADVT MANAGER A.JYOTHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','887','25-12-2019','755003',NULL,'998363','LOKESWARI TRADING, VANHEUSEN','TIRUPATI','CHITTOOR DIST-517001','Commercial','GRAND OPENING...','','','887_LOKESWARI_TRADING,_VANHEUSEN_49.pdf','0','816','816',NULL,'32640',NULL,'34272',0,1,'2019-Dec-25 12:55:43','0000-00-00 00:00:00',3,3),(50,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','888','26-12-2019','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Government','WANTED-2+2 -4 LINES Clasified','','','888_ANDHRA_COURIER_50.pdf','0','7.225','7.225',NULL,'289',NULL,'303.45',0,1,'2019-Dec-26 15:57:46','0000-00-00 00:00:00',3,3),(51,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','889','26-12-2019','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 2+2 4 LINES CL','','','889_ANDHRA_COURIER_51.pdf','0','12.325','12.325',NULL,'493',NULL,'517.65',0,1,'2019-Dec-26 16:10:47','0000-00-00 00:00:00',3,3),(52,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','890','26-12-2019','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 2+2 4 LINES CL','','','890_ANDHRA_COURIER_52.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2019-Dec-26 16:24:59','0000-00-00 00:00:00',3,3),(53,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','891','26-12-2019','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 2+2 4 LINES CL','','','891_ANDHRA_COURIER_53.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2019-Dec-26 16:29:07','0000-00-00 00:00:00',3,3),(54,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','892','26-12-2019','901362',NULL,'998363','SRI SAI SERVICES','TIRUPATI','CHITTOOR DIST-517001','Commercial','WANTED- 3+3 4 LINES CL','','','892_SRI_SAI_SERVICES_54.pdf','0','8.925','8.925',NULL,'357',NULL,'374.85',0,1,'2019-Dec-26 16:46:53','0000-00-00 00:00:00',3,3),(55,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','893','26-12-2019','901362',NULL,'998363','CLARITY  OPTICALS','TIRUPATI ','CHITTOOR DIST','Commercial','WANTED- 2+2 4 LINES CL','','','893_CLARITY__OPTICALS_55.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2019-Dec-26 17:11:22','0000-00-00 00:00:00',3,3),(56,'ADVT MANAGER SAKSHI',NULL,NULL,'NELLORE ','NELLORE DIST','894','26-12-2019','901362',NULL,'998363','THODERU GRAMA PANCHAYATI','SARVEPALLI','NELLORE DIST-524004','Government','TENDER NOTICE...','','','894_THODERU_GRAMA_PANCHAYATI_56.pdf','0','37.4','37.4',NULL,'1496',NULL,'1570.8',0,1,'2019-Dec-26 19:13:00','0000-00-00 00:00:00',9,9),(57,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','895','27-12-2019','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED AD- 2+2 4 LINES CL','','','895_ANDHRA_COURIER_57.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2019-Dec-27 17:06:12','0000-00-00 00:00:00',3,3),(58,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST-517501','896','27-12-2019','901362',NULL,'998363','PCR WARE HOUSING LTD','TIRUPATI','CHITTOOR','Personal','BIRTHADAY GREETINGS...','','','896_PCR_WARE_HOUSING_LTD_58.pdf','0','702.27','702.27',NULL,'28090.8',NULL,'29495.34',0,1,'2019-Dec-27 19:13:12','0000-00-00 00:00:00',3,3),(59,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','897','28-12-2019','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','PLOT FOR SALE- 2+2 8 LINES','','','897_SIRI_DEVELOPERS_59.pdf','0','25.5','25.5',NULL,'1020',NULL,'1071',0,1,'2019-Dec-28 15:35:41','0000-00-00 00:00:00',3,3),(60,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','898','28-12-2019','901362',NULL,'998363','NARAYANA REDDY','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 1 DAY','','','898_NARAYANA_REDDY_60.pdf','0','5.95','5.95',NULL,'238',NULL,'249.9',0,1,'2019-Dec-28 15:40:11','0000-00-00 00:00:00',3,3),(61,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','899','28-12-2019','901362',NULL,'998363','SNEHA DECORS','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 1 DAY','','','899_SNEHA_DECORS_61.pdf','0','5.95','5.95',NULL,'238',NULL,'249.9',1,1,'2019-Dec-28 15:58:38','2019-12-31 19:06:23',3,3),(62,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','900','28-12-2019','901362',NULL,'998363','JAYADEV AUTO FINANCE','TIRUPATI','CHITTOOR DIST','Commercial','WANTED AD- 2+2 4 LINES -COLOUR CL','','','900_JAYADEV_AUTO_FINANCE_62.pdf','0','14.875','14.875',NULL,'595',NULL,'624.75',0,1,'2019-Dec-28 16:59:38','0000-00-00 00:00:00',3,3),(63,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','901','28-12-2019','901362',NULL,'998363','S.S. DIGITAL ZONE','TIRUPATI','CHITTOOR DIST','Commercial','EDUCATION- 3+3 4 LINES CL','','','901_S.S._DIGITAL_ZONE_63.pdf','0','17.85','17.85',NULL,'714',NULL,'749.7',0,1,'2019-Dec-28 17:04:29','0000-00-00 00:00:00',3,3),(64,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','902','28-12-2019','B00573',NULL,'998363','ELAVARTHY TEJASWI','TIRUPATI','CHITTOOR DIST','Personal','CHANGE OF NAME','','','902_ELAVARTHY_TEJASWI_64.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-28 17:26:57','2019-12-31 18:45:23',3,3),(65,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','903','28-12-2019','B00573',NULL,'998363','MUTHIREVULA BHASKAR REDDY','TIRUPATI','CHITTOOR DIST','Personal','CHANGE OF NAME','','','903_MUTHIREVULA_BHASKAR_REDDY_65.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-28 17:30:09','2019-12-31 18:46:02',3,3),(66,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','904','28-12-2019','B00573',NULL,'998363','NAVEEN KUMAR JAIN','RENIGUNTA','CHITTOOR DIST','Personal','CHANGE OF NAME','','','904_NAVEEN_KUMAR_JAIN_66.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',1,1,'2019-Dec-28 17:32:33','2019-12-31 18:46:45',3,3),(67,'ADVT MANAGER THE HANS INDIA',NULL,NULL,'TIRUPATI','CHITTOOR DIST','905','28-12-2019','B00573',NULL,'998363','VEMPALLI MOHAMMAD AFZAL','PRODDUTUR','YSR DIST','Personal','CHANGE OF NAME','','','905_VEMPALLI_MOHAMMAD_AFZAL_67.pdf','0','4.78125','4.78125',NULL,'191.25',NULL,'200.8125',0,1,'2019-Dec-28 17:38:43','0000-00-00 00:00:00',3,3),(68,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI ','CHITTOOR DIST','906','29-12-2019','901362',NULL,'998363','ASHOK ','TIRUPATI ','NELLOOR DIST','Personal','HOUSE FOR SALE','','','906_ASHOK__68.pdf','0','27.09375','27.09375',NULL,'1083.75',NULL,'1137.9375',0,1,'2019-Dec-29 15:36:23','0000-00-00 00:00:00',9,9),(69,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','907','30-12-2019','901362',NULL,'998363','R.S. COLLEGE OF EDUCATION','TIRUPATI','CHITTOOR DIST-517501','Commercial','EDUCATION- 3+3 4 LINES CL','','','907_R.S._COLLEGE_OF_EDUCATION_69.pdf','0','59.925','59.925',NULL,'2397',NULL,'2516.85',0,1,'2019-Dec-30 15:31:22','0000-00-00 00:00:00',3,3),(70,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','908','02-01-2020','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','PLOTS FOR SALE- 2+2 - 5 LINES CL','','','908_SIRI_DEVELOPERS_70.pdf','0','15.3','15.3',NULL,'612',NULL,'642.6',0,1,'2020-Jan-02 16:31:49','0000-00-00 00:00:00',3,3),(71,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','909','03-01-2020','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','WANTED AD- 2+2 4 LINES CL','','','909_SIRI_DEVELOPERS_71.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2020-Jan-03 16:53:36','0000-00-00 00:00:00',3,3),(72,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','910','03-01-2020','901362',NULL,'998363','ANJANEYULU','TIRUPATI','CHITTOOR DIST','Commercial','WANTED - 2+2 8 LINES-CL','','','910_ANJANEYULU_72.pdf','0','19.55','19.55',NULL,'782',NULL,'821.1',0,1,'2020-Jan-03 17:47:57','0000-00-00 00:00:00',3,3),(74,'ADVT MANAGER SAKSHI',NULL,NULL,'NELLORE','NELLORE DIST-524004','912','03-01-2020','901362',NULL,'998363','SRI CITY (MADHUKAR)','SULLURE PETA','NELLORE DIST-524004','Commercial','WANTED - 3+3 -6 LINES-CL','','','912_SRI_CITY_(MADHUKAR)_74.pdf','0','21.675','21.675',NULL,'867',NULL,'910.35',0,1,'2020-Jan-03 18:22:23','0000-00-00 00:00:00',9,9),(75,'ADVT MANAGER SAKSHI',NULL,NULL,'NELLORE','NELLORE DIST-524004','913','03-01-2020','901362',NULL,'998363','SWAPNA','NELLORE','NELLORE DIST-524004','Commercial','WANTED AD- 2+2 4 LINES CL','','','913_SWAPNA_75.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2020-Jan-03 18:28:34','0000-00-00 00:00:00',9,9),(76,'ADVT MANAGER SAKSHI',NULL,NULL,'NELLORE','NELLORE DIST-524004','914','03-01-2020','901362',NULL,'998363','MOGALLURU PANCHAYATI','NELLORE','NELLOOR DIST','Government','TENDER NOTICE','','','914_MOGALLURU_PANCHAYATI_76.pdf','0','37.4','37.4',NULL,'1496',NULL,'1570.8',0,1,'2020-Jan-03 18:44:54','0000-00-00 00:00:00',9,9),(77,'ADVT MANAGER SAKSHI',NULL,NULL,'SARVEPALLI','NELLORE DIST-524004','915','03-01-2020','901362',NULL,'998363','BHIRADAVOLU PANCHAYATI ','NELLORE','NELLORE DIST','Government','TENDER NOTICE','','','915_BHIRADAVOLU_PANCHAYATI__77.pdf','0','37.4','37.4',NULL,'1496',NULL,'1570.8',0,1,'2020-Jan-03 18:49:50','0000-00-00 00:00:00',9,9),(78,'ADVT MANAGER SAKSHI',NULL,NULL,'NELLORE','NELLORE DIST-524004','911','03-01-2020','901362',NULL,'998363','EICHER TRACTOR SHOWROOM','NELLORE','NELLORE DIST-524004','Commercial','WANTED - 3+3- 6 LINES-CL','','','911_EICHER_TRACTOR_SHOWROOM_78.pdf','0','27.09375','27.09375',NULL,'1083.75',NULL,'1137.9375',0,1,'2020-Jan-03 19:12:52','0000-00-00 00:00:00',9,9),(79,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','916','04-01-2020','901362',NULL,'998363','REDDEPPA','Tirupati ','Chittoor ','Commercial','EDUCATION -3+3 4 lines ','','','916_REDDEPPA_79.pdf','0','17.85','17.85',NULL,'714',NULL,'749.7',0,1,'2020-Jan-04 13:43:09','0000-00-00 00:00:00',3,3),(80,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','917','04-01-2020','901362',NULL,'998363','GSR FINANCE','Tirupati ','Chittoor ','Commercial','WANTED- 2+2 -4 lines ','','','917_GSR_FINANCE_80.pdf','0','7.225','7.225',NULL,'289',NULL,'303.45',0,1,'2020-Jan-04 13:52:34','0000-00-00 00:00:00',3,3),(81,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','918','04-01-2020','901362',NULL,'998363','GSR FINANCE','Tirupati ','Chittoor ','Commercial','WANTED- 2+2 -4 lines ','','','918_GSR_FINANCE_81.pdf','0','5.95','5.95',NULL,'238',NULL,'249.9',0,1,'2020-Jan-04 13:57:45','0000-00-00 00:00:00',3,3),(82,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','919','04-01-2020','901362',NULL,'998363','GSR FINANCE','Tirupati ','Chittoor ','Commercial','WANTED- 2+2 -4 lines ','','','919_GSR_FINANCE_82.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2020-Jan-04 14:01:28','0000-00-00 00:00:00',3,3),(83,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','920','04-01-2020','901362',NULL,'998363','GSR FINANCE','Tirupati ','Chittoor ','Commercial','WANTED- 2+2 -4 lines ','','','920_GSR_FINANCE_83.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2020-Jan-04 14:04:45','0000-00-00 00:00:00',3,3),(85,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','921','04-01-2020','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','WANTED- 2+2 - 10 LINES ','','','921_SIRI_DEVELOPERS_85.pdf','0','32.3','32.3',NULL,'1292',NULL,'1356.6',0,1,'2020-Jan-04 15:18:29','0000-00-00 00:00:00',3,3),(86,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR','922','04-01-2020','901362',NULL,'998363','AMSIQRA EM SCHOOL','NELLORE ','NELLORE','Commercial','WANTED- 3+2 4LINES','','','922_AMSIQRA_EM_SCHOOL_86.pdf','0','14.025','14.025',NULL,'561',NULL,'589.05',0,1,'2020-Jan-04 17:16:04','0000-00-00 00:00:00',3,3),(87,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR','923','04-01-2020','901362',NULL,'998363','PRATUSHA ','NELLORE','NELLORE DIST-524004','Commercial','MARRIAGE  3+2 4LINES','','','923_PRATUSHA__87.pdf','0','14.025','14.025',NULL,'561',NULL,'589.05',0,1,'2020-Jan-04 17:31:04','0000-00-00 00:00:00',3,3),(88,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','924','04-01-2020','901362',NULL,'998363','PRASAD','NELLORE','NELLORE DIST-524004','Commercial','WANTED AD- 3+3 4 LINES ','','','924_PRASAD_88.pdf','0','14.025','14.025',NULL,'561',NULL,'589.05',0,1,'2020-Jan-04 17:34:55','0000-00-00 00:00:00',3,3),(89,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','925','04-01-2020','901362',NULL,'998363','SRI PADHA JYOTHISHYAM','NELLORE','NELLORE DIST-524004','Commercial','ASTROLOGY  3+2- 4 LINES','','','925_SRI_PADHA_JYOTHISHYAM_89.pdf','0','14.025','14.025',NULL,'561',NULL,'589.05',0,1,'2020-Jan-04 18:10:30','0000-00-00 00:00:00',3,3),(90,'ADVT MANAGER SAKSHI',NULL,NULL,'TIRUPATI','CHITTOOR DIST','926','05-01-2020','901362',NULL,'998363','R.S. COLLEGE OF EDUCATION','TIRUPATI','CHITTOOR DIST-517501','Commercial','EDUCATION- 3+3 - 4 LINES CL','','','926_R.S._COLLEGE_OF_EDUCATION_90.pdf','0','59.925','59.925',NULL,'2397',NULL,'2516.85',0,1,'2020-Jan-05 15:04:57','0000-00-00 00:00:00',3,3),(91,'ADVT MANAGER ANDHRA BHOOMI',NULL,NULL,'TIRUPATI','NELLORE DIST-524004','927','05-01-2020','NLN245',NULL,'998363','SYNDICAT BANK ','TIRUPATI','CHITTOOR DIST','Bank','E-AUCTION SALE NOTICE...','TIRUPATI','M/S. ANGELIC BOUTIQUE','927_SYNDICAT_BANK__91.pdf','0','439.875','439.875',NULL,'17595',NULL,'18474.75',0,1,'2020-Jan-05 19:18:43','0000-00-00 00:00:00',3,3),(92,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','928','06-01-2020','901362',NULL,'998363','SIRI DEVELOPERS','TIRUPATI ','CHITTOOR','Commercial','PLOTS FOR SALE- 2+2 - 4 LINES CL','','','928_SIRI_DEVELOPERS_92.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2020-Jan-06 15:46:05','0000-00-00 00:00:00',3,3),(93,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','929','06-01-2020','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED AD- 2+2 4 LINES CL','','','929_ANDHRA_COURIER_93.pdf','0','9.35','9.35',NULL,'374',NULL,'392.7',0,1,'2020-Jan-06 16:46:59','0000-00-00 00:00:00',3,3),(94,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','930','06-01-2020','901362',NULL,'998363','ANDHRA COURIER','TIRUPATI','CHITTOOR DIST','Commercial','WANTED AD- 2+2 4 LINES CL','','','930_ANDHRA_COURIER_94.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2020-Jan-06 16:49:55','0000-00-00 00:00:00',3,3),(95,'ADVT MANAGER SAKSHI',NULL,NULL,'Chittoor','CHITTOOR DIST','931','06-01-2020','901362',NULL,'998363','SRI SAI SERVICES','TIRUPATI','CHITTOOR DIST-517001','Commercial','WANTED AD- 3+3 - 6 LINES CL','','','931_SRI_SAI_SERVICES_95.pdf','0','28.05','28.05',NULL,'1122',NULL,'1178.1',0,1,'2020-Jan-06 17:37:52','0000-00-00 00:00:00',3,3),(97,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','932','07-01-2020','901362',NULL,'998363','GSR FINANCE','Tirupati ','Chittoor ','Commercial','WANTED- 2+2 -4 LINES ','','','932_GSR_FINANCE_97.pdf','0','31.45','31.45',NULL,'1258',NULL,'1320.9',0,1,'2020-Jan-07 14:10:19','0000-00-00 00:00:00',10,10),(98,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','933','07-01-2020','901362',NULL,'998363','SRINIVASA RAO','TIRUPATI','CHITTOOR DIST','Commercial','WANTED- 2+2 -4 LINES ','','','933_SRINIVASA_RAO_98.pdf','0','11.9','11.9',NULL,'476',NULL,'499.8',0,1,'2020-Jan-07 14:21:28','0000-00-00 00:00:00',10,10),(99,'ADVT MANAGER SAKSHI',NULL,NULL,'Tirupati ','Chittoor ','934','07-01-2020','901362',NULL,'998363','K.S. BABU','NELLORE','NELLOOR DIST','Commercial','WANTED- 3+3 -4 LINES ','','','934_K.S._BABU_99.pdf','0','14.025','14.025',NULL,'561',NULL,'589.05',0,1,'2020-Jan-07 16:00:39','0000-00-00 00:00:00',9,9),(102,'ADVT MANAGER A.JYOTHI',NULL,NULL,'Tirupati ','Chittoor ','935','07-01-2020','755003',NULL,'998363','THE CHIEF MANAGER GARU INDIAN BANK','TIRUPATI','CHITTOOR','Bank','POSSESSION NOTICE','COCOON MARKET ','SK. YASMEEN','935_THE_CHIEF_MANAGER_GARU_INDIAN_BANK_102.pdf','0','355.3','355.3',NULL,'14212',NULL,'14922.6',0,1,'2020-Jan-07 17:42:20','0000-00-00 00:00:00',3,3),(103,'ADVT MANAGER INDIAN EXPRESS',NULL,NULL,'Tirupati ','Chittoor ','936','07-01-2020','106800',NULL,'998363','THE CHIEF MANAGER GARU INDIAN BANK','TIRUPATI','CHITTOOR','Bank','POSSESSION NOTICE','COCOON MARKET ','SK. YASMEEN','936_THE_CHIEF_MANAGER_GARU_INDIAN_BANK_103.pdf','0','137.7','137.7',NULL,'5508',NULL,'5783.4',0,1,'2020-Jan-07 17:46:06','0000-00-00 00:00:00',3,3);

/*Table structure for table `releaseorder_edition` */

DROP TABLE IF EXISTS `releaseorder_edition`;

CREATE TABLE `releaseorder_edition` (
  `r_e_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `publication` varchar(250) DEFAULT NULL,
  `edition` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ad_width` varchar(250) DEFAULT NULL,
  `ad_height` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `sqcm` varchar(250) DEFAULT NULL,
  `rate` varchar(250) DEFAULT NULL,
  `edition_type` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `py` int(11) DEFAULT '0',
  PRIMARY KEY (`r_e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

/*Data for the table `releaseorder_edition` */

insert  into `releaseorder_edition`(`r_e_id`,`r_id`,`publication`,`edition`,`date`,`ad_width`,`ad_height`,`position`,`sqcm`,`rate`,`edition_type`,`amount`,`status`,`created_at`,`created_by`,`py`) values (2,2,'THE HANDS INDIA','CHITTOOR,KADAPA, NELLOR,KARNATAKA, CHENNAI','13-12-2019','8','16','B & W','128','45','Rayalaseema region','5760',1,'2020-01-04 04:09:40',3,1),(3,3,'THE HANDS INDIA','TIRUPATI EDITION','13-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:09:40',3,1),(4,4,'EENADU','CHITTOOR','14-12-2019','8','10','B & W','80','285','District','22800',1,'2020-01-04 04:09:41',3,1),(5,5,'A.JYOTHI','KADAPA','14-12-2019','12','10','COLOR','120','215','District','25800',1,'2020-01-04 04:09:43',3,1),(6,6,'ANDHRA BHOOMI','NELLORE','14-12-2019','8','16','B & W','128','75','District','9600',1,'2020-01-04 04:09:44',3,1),(7,7,'HINDI MILAP','HYDERABAD','14-12-2019','8','8','B & W','64','100','Zone','6400',1,'2020-01-04 04:09:45',3,1),(8,8,'INDIAN EXPRESS','CHITTOOR, KADAPA, KURNOOL, ANANTAPUR, &, NELLORE DISTS','14-12-2019','12','16','COLOR','192','130','Rayalaseema region','24960',1,'2020-01-04 04:09:45',3,1),(9,9,'ANDHRA PRABHA','CHITTOOR','14-12-2019','12','10','B & W','120','100','District','12000',1,'2020-01-04 04:09:46',3,1),(10,10,'THE HINDU','RES OF VIJAYAWADA','14-12-2019','12','16','B & W','192','180','Rayalaseema region','34560',1,'2020-01-04 04:09:47',3,1),(11,11,'ANDHRA BHOOMI','CHITTOOR','14-12-2019','8','12','COLOR','96','270','District','25920',1,'2020-01-04 04:09:49',3,1),(13,13,'SAKSHI','TIRUPATI','13-12-2019','8','16','B & W','128','130','Division-1','16640',1,'2020-01-04 04:09:50',3,1),(15,15,'SAKSHI','CHITTOOR','14-12-2019 15-12-2019 21-12-2019 22-12-2019 28-12-2019 29-12-2019','1','3','B & W','3','360','District','1080',1,'2020-01-04 04:09:51',3,1),(16,16,'SAKSHI','KURNOOL','14-12-2019','8','15','B & W','120','250','District','30000',1,'2020-01-04 04:09:51',3,1),(17,17,'THE HANDS INDIA','KURNOOL EDITION','14-12-2019','8','15','B & W','120','40','Rayalaseema region','4800',1,'0000-00-00 00:00:00',3,0),(18,18,'SAKSHI','CHITTOOR','14-12-2019 15-12-2019','8','5','COLOR','40','100','District','4000',1,'2020-01-04 04:09:54',3,1),(20,20,'THE HANDS INDIA','TIRUPATI ','15-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:09:54',7,1),(21,21,'SAKSHI','NELLORE','18-12-2019','12','12','B & W','144','230','District','33120',1,'2020-01-04 04:09:55',3,1),(22,22,'SAKSHI','CHITTOOR','19-12-19, 20-12-19, 21-12-19, 22-12-19, 23-12-19, 24-12-19','1','3','B & W','3','360','District','1080',1,'2020-01-04 04:09:56',3,1),(23,23,'THE HANDS INDIA','TIRUPATI EDITION','19-12-2019','12','12','B & W','144','45','Rayalaseema region','6480',1,'2020-01-04 04:09:57',3,1),(24,24,'SAKSHI','CHITTOOR','20-12-2019','6','4','B & W','24','270','District','6480',1,'2020-01-04 04:09:58',3,1),(25,25,'SAKSHI','CHITTOOR','21-12-2019 22-12-2019 23-12-2019 25-12-2019 26-12-2019 27-12-2019','1','3','B & W','3','280','District','840',1,'2020-01-04 04:09:59',3,1),(26,26,'THE HANDS INDIA','HYDERABAD','21-12-2019','8','18','B & W','144','60','Main Edition','8640',1,'2020-01-04 04:10:00',3,1),(27,27,'VAARTHA','KADAPA','21-12-2019','8','18','B & W','144','52','District','7488',1,'2020-01-04 04:10:01',3,1),(28,28,'THE HANDS INDIA','TIRUPATI EDITION','22-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:04',3,1),(29,29,'A.JYOTHI','CHITTOOR','22-12-2019','1','1','B & W','1','230','District','230',1,'2020-01-04 04:10:03',3,1),(30,30,'A.JYOTHI','CHITTOOR','22-12-2019','1','1','B & W','1','230','District','230',1,'2020-01-04 04:10:06',3,1),(31,31,'THE HANDS INDIA','TIRUPATI EDITION','22-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:05',3,1),(32,32,'SAKSHI','ANANTAPUR 1+1 SCHEME','23-12-2019 24-12-2019','4','5','COLOR','20','90','District','1800',1,'2020-01-04 04:10:08',3,1),(33,33,'SAKSHI','TIRUPATI','24-12-2019 25-12-2019 26-12-2019 27-12-2019','1','2','B & W','2','600','District','1200',1,'2020-01-04 04:10:09',3,1),(34,34,'SAKSHI','CHITTOOR','24-12-2019 25-12-2019 26-12-2019 27-12-2019','1','2','B & W','2','600','District','1200',1,'2020-01-04 04:10:11',3,1),(39,41,'THE HINDU','CHITTOOR','25-12-2019','1','1','B & W','1','225','District','225',1,'2020-01-04 04:10:11',3,1),(40,42,'THE HANDS INDIA','CHITTOOR','25-12-2019','1','1','B & W','1','225','District','225',1,'2020-01-04 04:10:13',3,1),(41,43,'SAKSHI','CHITTOOR, NELLORE, PRAKASHAM, KURNOOL','25-12-2019 26-12-2019 27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','3','B & W','3','940','District','2820',1,'2020-01-04 04:10:14',3,1),(42,44,'A.JYOTHI','CHITTOOR','25-12-2019','1','1','B & W','1','230','District','230',1,'2020-01-04 04:10:15',3,1),(43,45,'A.JYOTHI','CHITTOOR','25-12-2019','1','1','B & W','1','230','District','230',1,'2020-01-04 04:10:16',3,1),(44,46,'SAKSHI','CHITTOOR','25-12-2019 27-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','280','District','560',1,'2020-01-04 04:10:17',3,1),(45,47,'SAKSHI','TIRUPATI','25-12-2019','8','5','COLOR','40','130','Division-1','5200',1,'2020-01-04 04:10:21',3,1),(46,48,'A.JYOTHI','TIRUPATI','25-12-2019','12','7','COLOR','84','107.143','Zone','9000.012',1,'2020-01-04 04:10:19',3,1),(47,49,'A.JYOTHI','TIRUPATI ZONE','06-12-2019','12','16','COLOR','192','200','Front Page','38400',1,'2020-01-04 04:10:21',3,1),(48,50,'SAKSHI','NALGONDA','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','170','District','340',1,'2020-01-04 04:10:22',3,1),(49,51,'SAKSHI','GUNTUR ','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','290','District','580',1,'2020-01-04 04:10:23',3,1),(50,52,'SAKSHI','KHAMMAM','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','220','District','440',1,'2020-01-04 04:10:25',3,1),(51,53,'SAKSHI','NELLORE','27-12-2019 28-12-2019 29-12-2019 30-12-2019','1','2','B & W','2','220','District','440',1,'2020-01-04 04:10:26',3,1),(52,54,'SAKSHI','KADAPA','27-12-2019 28-12-2019 29-12-2019 30-12-2019 01-01-2020 02-01-2020 ','1','3','B & W','3','140','District','420',1,'2020-01-04 04:10:27',3,1),(53,55,'SAKSHI','CHITTOOR','27-12-2019 28-12-2019 29-12-2019 30-12-2019 ','1','2','B & W','2','280','District','560',1,'2020-01-04 04:10:28',3,1),(54,56,'SAKSHI','SARVEPALLI','27-12-2019','8','4','B & W','32','55','Zone','1760',1,'2020-01-04 04:10:29',9,1),(55,57,'SAKSHI','CHITTOOR','28-12-2019 29-12-2019 30-12-2019 31-12-2019','1','2','B & W','2','280','District','560',1,'2020-01-04 04:10:30',3,1),(56,58,'SAKSHI','CHITTOOR  DIST','28-12-2019','8','10','COLOR','80','486','Front Page','38880',1,'2020-01-04 04:10:30',3,1),(57,59,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020','1','2','B & W','2','600','District','1200',1,'2020-01-04 04:10:31',3,1),(58,60,'SAKSHI','CHITTOOR','29-12-2019','1','1','B & W','1','280','District','280',1,'2020-01-04 04:10:32',3,1),(59,61,'SAKSHI','CHITTOOR','29-12-2019','1','1','B & W','1','280','District','280',1,'2020-01-04 04:10:35',3,1),(60,62,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020','1','2','COLOR','2','350','District','700',1,'2020-01-04 04:10:36',3,1),(61,63,'SAKSHI','CHITTOOR','29-12-2019 30-12-2019 31-12-2019 01-01-2020 02-01-2020 03-01-2020','1','3','B & W','3','280','District','840',1,'2020-01-04 04:10:37',3,1),(62,64,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:37',3,1),(63,65,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:38',3,1),(64,66,'SAKSHI','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:38',3,1),(65,67,'THE HANDS INDIA','TIRUPATI EDITION','29-12-2019','1','1','B & W','1','225','Rayalaseema region','225',1,'2020-01-04 04:10:39',3,1),(66,68,'SAKSHI','NELLORE','30-12-2019 31-12-2019 01-01-2020 04-01-2020 05-01-2020 06-01-2020','1','3','COLOR','3','425','District','1275',1,'2020-01-04 04:10:39',9,1),(67,69,'SAKSHI','CHITTOOR  NELLORE  PRAKASHAM  KURNOOL','31-12-2019 01-01-2020 02-01-2020 03-01-2020 04-01-2020 05-01-2020','1','3','B & W','3','940','District','2820',1,'2020-01-04 04:10:40',3,1),(68,70,'SAKSHI','CHITTOOR','03-01-2020 04-01-2020 05-01-2020 06-01-2020','1','2','B & W','2','360','District','720',1,'2020-01-04 04:10:41',3,1),(69,71,'SAKSHI','CHITTOOR DIST','04-01-2020 05-01-2020 06-01-2020 08-01-2020','1','2','B & W','2','280','District','560',1,'2020-01-04 04:10:41',3,1),(70,72,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020','1','2','B & W','2','460','District','920',1,'2020-01-04 04:10:43',3,1),(72,74,'SAKSHI','NELLORE','04-01-2020 05-01-2020 07-01-2020 09-01-2020 12-01-2020 19-01-2020','1','3','B & W','3','340','District','1020',1,'2020-01-04 04:10:43',9,1),(73,75,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020','1','2','B & W','2','220','District','440',1,'2020-01-04 04:10:44',9,1),(74,76,'SAKSHI','SARVEPALLI','04-01-2020','8','4','B & W','32','55','Zone','1760',1,'2020-01-04 04:10:45',9,1),(75,77,'SAKSHI','SARVEPALLI','04-01-2020','8','4','B & W','32','55','Zone','1760',1,'2020-01-04 04:10:46',9,1),(76,78,'SAKSHI','NELLORE','04-01-2020 05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020','1','3','COLOR','3','425','District','1275',1,'2020-01-04 04:10:46',9,1),(77,79,'SAKSHI','CHITTOOR','05-01-2020 12-01-2020 19-01-2020 26-01-2020 02-02-2020 09-02-2020 ','1','3','B & W','3','280','District','840',1,'2020-01-04 04:10:48',3,1),(78,80,'SAKSHI','ANANTHAPUR','05-01-2020 06-01-2020 08-01-2020 10-01-2020','1','2','B & W','2','170','District','340',1,'2020-01-04 04:10:49',3,1),(79,81,'SAKSHI','KADAPA','05-01-2020 07-01-2020 10-01-2020 12-01-2020','1','2','B & W','2','140','District','280',1,'2020-01-04 04:10:51',3,1),(80,82,'SAKSHI','PRAKASAM ','05-01-2020 07-01-2020 10-01-2020 12-01-2020','1','2','B & W','2','220','District','440',1,'2020-01-04 04:11:00',3,1),(81,83,'SAKSHI','KURNOOL','05-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','220','District','440',1,'2020-01-04 04:10:52',3,1),(83,85,'SAKSHI','CHITTOOR','05-01-2020 06-01-2020 07-01-2020 08-01-2020','1','2','B & W','2','760','District','1520',1,'2020-01-04 04:10:54',3,1),(84,86,'SAKSHI','NELLORE','05-01-2020 06-01-2020 08-01-2020 10-01-2020 12-01-2020 ','1','3','B & W','3','220 ','District','660',1,'0000-00-00 00:00:00',3,1),(85,87,'SAKSHI','NELLORE','05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',3,1),(86,88,'SAKSHI','NELLORE','05-01-2020 06-01-2020 07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',3,1),(87,89,'SAKSHI','NELLRE','05-01-2020 07-01-2020 09-01-2020 11-01-2020 13-01-2020 16-01-2020 ','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',3,1),(88,90,'SAKSHI','CHITTOOR,  NELLORE,  PRAKASHAM  &  KURNOOL','06-12-2020 07-01-2020 08-01-2020 09-01-2020 10-01-2020 11-01-2020','1','3','B & W','3','940','District','2820',1,'0000-00-00 00:00:00',3,1),(89,91,'ANDHRA BHOOMI','AB-CHITTOOR, DC- TABLOID,  CTR + NLR + PRAKASAM ','06-01-2020','12','23','B & W','276','75','District','20700',1,'0000-00-00 00:00:00',3,1),(90,92,'SAKSHI','Chittoor','07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',3,1),(91,93,'SAKSHI','NELLORE','07-01-2020 08-01-2020 09-01-2020 10-01-2020 ','1','2','B & W','2','220','District','440',1,'0000-00-00 00:00:00',3,1),(92,94,'SAKSHI','Chittoor','07-01-2020 08-01-2020 09-01-2020 10-01-2020','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',3,1),(93,95,'SAKSHI','Chittoor','07-01-2020 08-01-2020 09-01-2020 10-01-2020 11-01-2020 12-01-2020','1','3','B & W','3','440','District','1320',1,'0000-00-00 00:00:00',3,1),(95,97,'SAKSHI','GNT AMARAVATHI + RURAL VJA AMARAVATHI + KRISHNA','08-01-2020 09-01-2020 11-01-2020 13-01-2020','1','2','B & W','2','740','District','1480',1,'0000-00-00 00:00:00',10,1),(96,98,'SAKSHI','CHITTOOR','08-01-2020 10-01-2020 12-01-2020 14-01-2020','1','2','B & W','2','280','District','560',1,'0000-00-00 00:00:00',10,1),(97,99,'SAKSHI','NELLORE','08-01-2020 09-01-2020 10-01-2020 11-01-2020 12-01-2020 13-01-2020','1','3','B & W','3','220','District','660',1,'0000-00-00 00:00:00',9,1),(100,102,'A.JYOTHI','CHITTOOR','08-01-2020','8','20','B & W','160','110','District','17600',1,'0000-00-00 00:00:00',3,1),(101,103,'INDIAN EXPRESS','TIRUPATI EDITION  ','08-01-2020','8','20','B & W','160','45','Rayalaseema region','7200',1,'0000-00-00 00:00:00',3,1);

/*Table structure for table `releaseorder_payments` */

DROP TABLE IF EXISTS `releaseorder_payments`;

CREATE TABLE `releaseorder_payments` (
  `re_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` varchar(250) DEFAULT NULL,
  `ptype` varchar(250) DEFAULT NULL,
  `amount` varchar(250) DEFAULT NULL,
  `p_chq_no` varchar(250) DEFAULT NULL,
  `p_banl_brank` varchar(250) DEFAULT NULL,
  `p_through` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`re_pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `releaseorder_payments` */

insert  into `releaseorder_payments`(`re_pay_id`,`r_id`,`ptype`,`amount`,`p_chq_no`,`p_banl_brank`,`p_through`,`created_at`,`created_by`) values (1,'20','Online','300','','','G-PAY ON 14-12-2019','2019-12-14 20:40:37',3),(2,'3','Online','300','','','G-PAY ON 14-12-2019','2019-12-14 20:42:38',3),(3,'15','Check','1512','Cheque collected','SBI','','2019-12-14 20:47:19',3),(4,'28','Cash','300','','','','2019-12-21 18:58:05',3),(5,'29','Online','300','','','G-PAY ON 21-12-2019','2019-12-21 18:58:43',3),(6,'30','Cash','300','','','','2019-12-22 21:30:26',3),(7,'31','Cash','300','','','','2019-12-22 21:30:59',3),(8,'41','Online','300','','','G-PAY ON 26-12-2019','2019-12-31 18:38:26',3),(9,'42','Online','300','','','G-PAY ON 26-12-2019','2019-12-31 18:40:24',3),(10,'64','Online','300','','','G-PAY ON 30-12-2019','2019-12-31 18:45:23',3),(11,'65','Online','300','','','G-PAY ON 30-12-2019','2019-12-31 18:46:02',3),(12,'66','Online','300','','','G-PAY ON 31-12-2019','2019-12-31 18:46:45',3),(13,'61','Cash','300','','','','2019-12-31 19:06:23',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`r_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Admin',1,'2019-11-29 20:45:27','2019-11-29 20:35:58',NULL),(3,'Hr',1,'2019-11-29 20:38:45',NULL,NULL),(4,'Manager',1,'2019-11-29 20:38:51',NULL,NULL),(5,'Accounts',1,'2019-11-29 20:38:52',NULL,1),(6,'Billing Manager',1,'2019-12-21 01:06:57','2019-12-21 13:36:57',1),(7,'sai',1,'2019-12-31 13:31:10',NULL,1),(8,'op',1,'2019-12-31 13:32:07',NULL,1);

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

/*Table structure for table `source` */

DROP TABLE IF EXISTS `source`;

CREATE TABLE `source` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

/*Data for the table `source` */

insert  into `source`(`s_id`,`s_name`,`status`,`created_at`,`updated_at`,`created_by`) values (31,'RMP',2,'2020-01-07 13:09:49','2020-01-07 13:11:05',1),(32,'Ambulance',1,'2020-01-07 13:11:31','2020-01-07 13:14:44',1),(33,'Employee',1,'2020-01-07 13:11:39',NULL,1),(34,'Others',1,'2020-01-07 13:11:44',NULL,1),(35,'Health Camp',1,'2020-01-07 13:11:51',NULL,1),(36,'Demo Tent',1,'2020-01-07 13:11:59',NULL,1),(37,'Tata Ace',1,'2020-01-07 13:12:06',NULL,1),(38,'Pamphlet',1,'2020-01-07 13:12:12',NULL,1),(39,'Hoarding',1,'2020-01-07 13:12:19',NULL,1),(40,'Cinema Add',1,'2020-01-07 13:12:29',NULL,1),(41,'Paper Add',1,'2020-01-07 13:12:36',NULL,1),(42,'Friend / Relative',1,'2020-01-07 13:12:44',NULL,1),(43,'Old Patient',1,'2020-01-07 13:12:52',NULL,1),(44,'Referral (R)',1,'2020-01-09 13:23:34','2020-01-09 13:24:07',1);

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

/*Table structure for table `subdepartment` */

DROP TABLE IF EXISTS `subdepartment`;

CREATE TABLE `subdepartment` (
  `s_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(250) DEFAULT NULL,
  `sub_department` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `subdepartment` */

insert  into `subdepartment`(`s_d_id`,`department`,`sub_department`,`status`,`created_at`,`updated_at`,`created_by`) values (8,'22','gh',1,'2018-11-02 14:41:50','2018-11-02 14:41:50',0),(9,'21','ff',1,'2018-11-02 14:41:40','2018-11-02 14:41:40',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion_list` */

insert  into `suggestion_list`(`id`,`a_id`,`replayed_id`,`comment`,`type`,`status`,`created_at`,`created_by`) values (1,55,55,'try to  check ','Replay',1,'2019-10-11 11:49:01',NULL),(2,55,55,'ccvxzcv','Replay',1,'2019-10-11 11:49:14',NULL),(3,55,55,'xcvcvxcv','Replay',1,'2019-10-11 11:49:21',NULL),(4,55,1,'cvcxzv','Replayed',1,'2019-10-11 12:10:05',1),(5,55,55,'hllo','Replay',1,'2019-10-11 12:10:37',55),(6,54,1,'hllo  hi  how  are you','Replayed',1,'2019-10-11 12:11:51',1),(7,55,1,'xczXc','Replayed',1,'2019-10-11 12:12:34',1),(8,51,51,'xczXC','Replay',1,'2019-10-13 14:22:20',51),(9,51,51,'dsfasdfsadf','Replay',1,'2019-10-13 14:24:00',51),(10,54,54,'cvzxcvzXVC','Replay',1,'2019-10-13 14:24:15',54),(11,55,55,'Hlo sir','Replay',1,'2019-12-31 13:49:56',55);

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

/*Table structure for table `year_tab` */

DROP TABLE IF EXISTS `year_tab`;

CREATE TABLE `year_tab` (
  `year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `year_tab` */

insert  into `year_tab`(`year`) values (2017),(2018);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
