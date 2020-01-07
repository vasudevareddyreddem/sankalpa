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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`a_id`,`role_id`,`code`,`name`,`username`,`email`,`per_mail`,`mobile`,`emergency_contact_number`,`type_of_emp`,`months`,`notice_period`,`n_p_months`,`boold_group`,`marital_status`,`spouse`,`children_one`,`children_two`,`children_three`,`marriage_date`,`spouse_dob`,`children_one_dob`,`children_two_dob`,`children_three_dob`,`address`,`profile_pic`,`pwd`,`org_pwd`,`dep_id`,`designation`,`off_mail`,`branch_id`,`doj`,`father_name`,`mother_name`,`dob`,`gender`,`aadhar_num`,`pan_num`,`per_add`,`temp_add`,`aadhar_pic`,`pan_pic`,`kye`,`basicsalary`,`hra`,`employee_pfamount`,`employer_pfamount`,`employee_esi`,`employee_contribution_esi`,`employer_contribution_esi`,`employee_buyout`,`relocation_allowance`,`gross_salary`,`netsalary`,`specialallowance`,`conveyance`,`medicalreimbursement`,`pfnumber`,`pfamount`,`pt`,`esi`,`others`,`bankname`,`ifsc`,`bankaccountnumber`,`advance`,`salary`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,NULL,'Admin',NULL,'admin@gmail.com',NULL,'8500050944',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEAR LEELA MAHAL CIRCLE, TML BYPASS ROAD, Tirupati, Andhra Pradesh 517501, India','1576320674.png','e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-05-17 14:12:30','2019-09-13 15:55:07',0),(49,3,NULL,'Hr',NULL,'hr@gmail.com',NULL,'1234567890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 19:50:10','2019-09-23 19:55:11',1),(51,4,NULL,'Manager',NULL,'manager@gmail.com',NULL,'987456632110',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-09-23 20:16:04','2019-09-23 20:57:01',1),(55,2,'475','SAI GANESH',NULL,'saiganeshoptom@gmail.com','saiganeshoptom@gmail.com','8639963607','8639963607','','','','','','','','','','','','','','','',NULL,'1570097339.jpg','e09c662c6c43c12b6ca36f81b077579c','8639963607',0,'OPERATIONS MANAGER','saiganeshoptom@gmail.com','13','10/24/2019','','','','','','','','','1570097339.html','1570097339.png','1570097339.xlsx','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','2020-01-03 12:01:49',1),(57,3,NULL,'Hr Two',NULL,'hr2@gmail.com',NULL,'1236541200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'e10adc3949ba59abbe56e057f20f883e','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-10-11 10:28:22','2019-10-11 10:46:05',1),(58,2,'47558','SUNEETHA',NULL,'suneethaarunkumar@gmail.com','suneethaarunkumar@gmail.com','9581718191','9581718191','','','','','','','','','','','','','','','',NULL,'','2b4931b68c24a42501558b74b5cdbd10','9581718191',0,'HR','suneethaarunkumar@gmail.com','13','01/03/2020','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','2020-01-03 12:02:16',1),(59,2,'47559','SUJITH',NULL,'sujith.vasagiri@gmail.com','sujith.vasagiri@gmail.com','8870687557','8870687557','','','','','','','','','','','','','','','',NULL,'','96f0cf453fb3d102d45e95d046295ba9','8870687557',0,'SENIOR MANAGER','sujith.vasagiri@gmail.com','13','01/03/2020','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(60,2,'47560','KAVITHA',NULL,'Kavithaavulapati@gmail.com','Kavithaavulapati@gmail.com','7989003244','7989003244',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','b75e48662952e677f61bc96c4ee62235','7989003244',0,'FO MANAGER','Kavithaavulapati@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(61,2,'47561','ANJANI KUMAR',NULL,'Kumaralapatianjani@gmail.com','Kumaralapatianjani@gmail.com','9963357199','9963357199',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','8aaa796eae219c011bcd3c82e94a1f88','anjuammu143',0,'H.K MANAGER','Kumaralapatianjani@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00','2020-01-04 16:59:08',1),(62,2,'47562','KUMAR',NULL,'Pudota80@gmail.com','Pudota80@gmail.com','7995577118','7995577118',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1f02968461e1f0c71786c2985ecc6652','kumar1980',0,'MAINTENANCE MANAGER','Pudota80@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00','2020-01-04 14:56:14',1),(63,2,'47563','SIVA',NULL,'sriharikota25@gmail.com','sriharikota25@gmail.com','7032895057','7032895057',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','8106af333d6d133ee1afcc8effc23c43','7032895057',0,'PHARMACY INCHARGE','sriharikota25@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(64,2,'47564','PUSHPANJULU',NULL,'sankalpahealthcareaccts@gmail.com','sankalpahealthcareaccts@gmail.com','9573071727','9573071727',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','d307c4b0246d17ff97fdc2b88fd7c481','9573071727',0,'ACCOUNTS MANAGER','sankalpahealthcareaccts@gmail.com','13','01/03/2020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'0000-00-00 00:00:00',NULL,1),(65,2,'47565','Dr.PAVAN',NULL,'rohinipawankoppalambbs@gmail.com','rohinipawankoppalambbs@gmail.com','6302597972','6302597972','','','','','','','','','','','','','','','',NULL,'','539e6b8308ac1ee39c7e1141a353fc47','6302597972',0,'RMO','rohinipawankoppalambbs@gmail.com','13','12/02/2019','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1),(66,2,'47566','JOHN',NULL,'john@sankalpahospitals.com','john@sankalpahospitals.com','9849852085','9849852085','','','','','','','','','','','','','','','',NULL,'','d18dadeaa6ccec5ede5ebb7c65ca10c3','9849852085',0,'General manager markerting','john@sankalpahospitals.com','13','12/04/2019','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `assign_work` */

insert  into `assign_work`(`a_w_id`,`emp_id`,`from_date`,`to_date`,`prioritization`,`total_day`,`message`,`status`,`created_at`,`updated_at`,`created_by`) values (1,55,'12/01/2019','01/31/2020','High','45','feedback and task management apps',2,'2020-01-02 16:47:58','2020-01-02 16:56:53',1),(2,55,'01/01/2020','01/01/2020','Low','1','hiiii',2,'2020-01-02 16:59:21','2020-01-02 17:00:59',1),(3,55,'12/01/2019','01/31/2020','High','45','feedback and task management apps',2,'2020-01-03 11:44:28','2020-01-04 15:32:13',1),(4,55,'12/01/2019','01/31/2020','Medium','45','New TPA Empanelment- vidal,mediassist,bajaj,raksha,iffco tokio,liberty,reliance',0,'2020-01-03 11:48:02',NULL,1),(5,55,'12/01/2019','01/31/2020','Low','45','TPA Claims & Cororate Claims including MOU & Tariffs\r\n',0,'2020-01-04 11:10:44',NULL,1),(6,55,'12/01/2019','01/31/2020','Medium','45','Digital - Google Review, You Tube, Just Dial, SEO, Website, FB & Instagram\r\n',0,'2020-01-04 11:11:25',NULL,1),(7,55,'12/01/2019','01/31/2020','Medium','45','Daily D/S process Review - D/S, MRD file Mx, TV Display Mx\r\n',0,'2020-01-04 11:12:07',NULL,1),(8,55,'12/01/2019','01/31/2020','Low','45','IP Billing daily audit and final bill sign off\r\n',0,'2020-01-04 11:13:00',NULL,1),(9,55,'12/01/2019','01/31/2020','Low','45','Do & Don’t board at Billing\r\n',0,'2020-01-04 11:13:38',NULL,1),(10,55,'12/01/2019','01/31/2020','High','45','MRD Streamlining\r\n',0,'2020-01-04 11:14:38',NULL,1),(11,55,'12/01/2019','01/31/2020','High','45','Corporates - TPA list design, display at corporates, Digital promotion, Corporate engagement activities\r\n',0,'2020-01-04 11:15:02',NULL,1),(12,61,'12/01/2019','01/31/2020','Medium','45','Seven Hills Furniture\r\n',2,'2020-01-04 11:16:20','2020-01-04 17:00:26',1),(13,61,'12/25/2019','07/31/2020','High','158','Birth And Death Registation\r\n',2,'2020-01-04 11:17:24','2020-01-06 15:08:30',1),(14,60,'12/01/2019','01/31/2020','Medium','45','OPD Feedback\r\n',0,'2020-01-04 11:19:15',NULL,1),(15,60,'12/01/2019','01/01/2021','High','285','Patient Source Report for walkin cases\r\n',0,'2020-01-04 11:20:43',NULL,1),(16,60,'12/01/2019','01/31/2020','Medium','45','PRO Activity and reports\r\n',0,'2020-01-04 11:21:09',NULL,1),(17,60,'12/01/2019','01/31/2020','Medium','45','FO training and roster\r\n',0,'2020-01-04 11:22:10',NULL,1),(18,60,'12/01/2019','01/31/2020','Medium','45','Patient care - Daily feedback\r\n',0,'2020-01-04 11:23:15',NULL,1),(19,60,'12/01/2019','01/31/2020','Medium','45','Casuality Management\r\n',0,'2020-01-04 11:23:37',NULL,1),(20,60,'12/01/2019','01/31/2020','Medium','45','OPD Sisters Monitoring\r\n',0,'2020-01-04 11:23:58',NULL,1),(21,60,'12/01/2019','01/31/2020','Medium','45','Sample collection monitoring\r\n',0,'2020-01-04 11:24:21',NULL,1),(22,62,'12/01/2019','01/31/2020','High','45','NABH Changes (Door Close, Table in washing area, Narcotics Cupboard)\r\n',2,'2020-01-04 11:25:56','2020-01-04 14:59:18',1),(23,62,'12/01/2019','01/31/2020','Low','45','Painting Work\r\n',0,'2020-01-04 11:28:17',NULL,1),(24,62,'12/01/2019','01/31/2020','High','45','CC Camera Position change & Review of existing Cameras\r\n',2,'2020-01-04 11:29:11','2020-01-04 14:59:51',1),(25,62,'12/01/2019','01/31/2020','Low','45','Repair of 2 sofa chairs\r\n',0,'2020-01-04 11:29:42',NULL,1),(26,62,'12/01/2019','01/31/2020','Medium','45','Fire Exit Maps in all floors\r\n',2,'2020-01-04 11:30:16','2020-01-06 11:31:43',1),(27,62,'12/01/2019','01/31/2020','Medium','45','Billing Dpet. Window Glass\r\n',0,'2020-01-04 11:30:43',NULL,1),(28,62,'12/01/2019','01/31/2020','Medium','45','313 Fan repair\r\n',2,'2020-01-04 11:31:36','2020-01-06 15:35:54',1),(29,62,'12/13/2019','02/29/2020','Medium','56','2nd & 3rd floor displays opp. To small lifts\r\n',0,'2020-01-04 11:32:18',NULL,1),(30,62,'12/13/2019','02/29/2020','Medium','56','New conference hall poster of consultants\r\n',0,'2020-01-04 11:32:47',NULL,1),(31,62,'12/25/2019','02/29/2020','Medium','48','Need A wall mount Fan In Radiology Waiting Area\r\n',2,'2020-01-04 11:33:28','2020-01-06 15:36:27',1),(32,62,'12/25/2019','02/29/2020','High','48','3 sitter chair is broken in radiolgy area\r\n',2,'2020-01-04 11:33:59','2020-01-04 15:00:39',1),(33,62,'01/30/2020','02/29/2020','High','22','Dialysis Power Issue\r\n',0,'2020-01-04 11:34:31',NULL,1),(34,62,'01/02/2020','02/29/2020','High','42','Need to buy a Wall mount fan(Radiology,313)\r\n',2,'2020-01-04 11:35:11','2020-01-06 15:37:42',1),(35,62,'01/02/2020','02/29/2020','Medium','42','4th floor glass repair\r\n',0,'2020-01-04 11:35:39',NULL,1),(36,63,'12/19/2019','01/31/2020','High','32','New Crash Cart Installation\r\n',2,'2020-01-04 11:36:46','2020-01-04 15:45:13',1),(37,58,'12/01/2019','01/31/2020','High','45','Closing of NABH\r\n',1,'2020-01-04 11:38:12','2020-01-06 13:19:33',1),(38,59,'12/01/2019','01/31/2020','High','45','PCPNDT Followup\r\n',0,'2020-01-04 11:39:31',NULL,1),(39,59,'12/01/2019','01/31/2020','Medium','45','Radiology Dept. Issues Review\r\n',0,'2020-01-04 11:40:17',NULL,1),(40,59,'12/01/2019','01/31/2020','High','45','DM & HO Mail\r\n',0,'2020-01-04 11:40:40',NULL,1),(41,59,'12/01/2019','01/31/2020','High','45','TMT AMC\r\n',0,'2020-01-04 11:41:05',NULL,1),(42,59,'12/01/2019','01/31/2020','High','45','Defib Battery\r\n',0,'2020-01-04 11:49:00',NULL,1),(43,59,'12/01/2019','01/31/2020','High','45','AERB Portal Review\r\n',0,'2020-01-04 11:49:40',NULL,1),(44,59,'12/01/2019','01/31/2020','Medium','45','Ortho Instruments quotes\r\n',0,'2020-01-04 12:25:56',NULL,1),(45,59,'12/01/2019','01/31/2020','Medium','45','BME Review\r\n',0,'2020-01-04 12:26:21',NULL,1),(46,59,'12/01/2019','01/31/2020','High','45','Solocraft Cots Repair\r\n',0,'2020-01-04 12:26:44',NULL,1),(47,59,'12/01/2019','01/31/2020','Medium','45','NICU Equipment\r\n',0,'2020-01-04 12:27:06',NULL,1),(48,59,'12/13/2019','02/29/2020','Medium','56','Key people work instruction\r\n',0,'2020-01-04 12:27:31',NULL,1),(49,59,'12/13/2019','02/29/2020','High','56','Daily gaps and actions list\r\n',0,'2020-01-04 12:28:06',NULL,1),(50,59,'12/21/2019','02/29/2020','High','50','Tricog Machine In ER\r\n',0,'2020-01-04 12:28:36',NULL,1),(51,59,'12/21/2019','02/29/2020','High','50','Manual Suction in ER\r\n',0,'2020-01-04 12:29:38',NULL,1),(52,59,'12/01/2019','01/31/2020','High','45','Mr Pavan kumar Case Fallow up\r\n',0,'2020-01-04 12:30:22',NULL,1),(53,59,'01/02/2020','01/31/2020','Medium','22','Lead Apron\r\n',0,'2020-01-04 12:30:57',NULL,1),(54,64,'12/01/2019','02/29/2020','Medium','65','Firm name change in all places and Vendors\r\n',0,'2020-01-04 12:34:38',NULL,1),(55,64,'12/01/2019','02/29/2020','Medium','65','LLP Conversion\r\n',0,'2020-01-04 12:54:15',NULL,1),(56,64,'12/01/2019','02/29/2020','Medium','65','NICU Equipment loan - Siemens / Clix / Anil\r\n',0,'2020-01-04 12:54:39',NULL,1),(57,64,'12/01/2019','02/29/2020','Medium','65','ITR Filing - SHC, Self & Thanuja\r\n',0,'2020-01-04 12:55:08',NULL,1),(58,64,'12/01/2019','02/29/2020','Medium','65','Arogyasri payments TDS Refund\r\n',0,'2020-01-04 12:56:24',NULL,1),(59,64,'12/01/2019','02/29/2020','Medium','65','Additional OD - Documents to Indian Bank\r\n',0,'2020-01-04 12:56:49',NULL,1),(60,64,'12/01/2019','02/29/2020','Medium','65','Annual GST filing\r\n',0,'2020-01-04 12:57:17',NULL,1),(61,64,'12/01/2019','02/29/2020','Medium','65','Income tax notice hearing\r\n',0,'2020-01-04 12:57:45',NULL,1),(62,64,'12/01/2019','02/29/2020','Medium','65','Old & new scrutiny\r\n',0,'2020-01-04 12:58:05',NULL,1),(63,65,'12/01/2019','02/29/2020','High','65','Ward wise expiry drugs value\r\n',0,'2020-01-04 13:05:45',NULL,1),(64,66,'12/01/2019','01/31/2020','High','45','Surgeons list in Tirupati\r\n',0,'2020-01-04 13:31:59',NULL,1),(65,66,'12/01/2019','02/29/2020','Low','65','Gynaecology health camp for Seeeja Milk\r\n',0,'2020-01-04 13:32:29',NULL,1),(66,66,'12/01/2019','01/31/2020','Medium','45','Wall poster stickers\r\n',0,'2020-01-04 13:33:01',NULL,1),(67,66,'12/01/2019','01/31/2020','Low','45','4K Marathon at Rajampeta\r\n',0,'2020-01-04 13:34:07',NULL,1),(68,66,'12/01/2019','01/31/2020','Low','45','Health camp at Vishwam School\r\n',0,'2020-01-04 13:34:38',NULL,1),(69,66,'12/01/2019','01/31/2020','High','45','Flat for rent for our meetings\r\n',0,'2020-01-04 13:35:03',NULL,1),(70,66,'12/01/2019','01/31/2020','Medium','45','Village important people mobile numbers\r\n',0,'2020-01-04 13:35:31',NULL,1),(71,66,'12/01/2019','01/31/2020','High','45','AV add finalisation with Kalyani ads\r\n',0,'2020-01-04 13:35:59',NULL,1),(72,66,'12/01/2019','01/31/2020','High','45','Auto Branding\r\n',0,'2020-01-04 13:36:24',NULL,1),(73,59,'01/04/2020','01/08/2020','High','3','Intergation of Lab analisers with HMS',0,'2020-01-04 15:05:00',NULL,1),(74,55,'07-01-2020','07-01-2020','High','1','Testing ',0,'2020-01-07 15:51:01',NULL,1),(75,55,'07-01-2020','07-01-2020','Low','1','vv',0,'2020-01-07 15:52:21',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back` */

insert  into `feed_back`(`f_b_id`,`name`,`type`,`p_no`,`email_id`,`phone_no`,`recommend`,`comment`,`location`,`department`,`source`,`s_name`,`created_at`,`date`) values (2,'Suneetha','IPD','','','9581718191','Yes','Nil','Tirupathi','Pediatrics','Employee','','2020-01-01 12:01:28','2020-01-01'),(3,'Babu','OPD','','','9949905189','Yes','Done','Tirupathi','General Medicine','Qualified','','2020-01-01 12:04:50','2020-01-01'),(4,'Saikrishna','OPD','','','9966332210','No','exellent','Tirupathi','Chest Medicine','Friend / Relative','','2020-01-03 11:09:07','2020-01-03'),(5,'challa kumar','OPD','','','9533194239','Yes','Good Customer service','Venkatagiri','Cardiology','Employee','','2020-01-03 01:10:09','2020-01-03'),(6,'d v surya prabha','OPD','','','9951740821','No','staff maintanance and caretake','Tirupathi','General Medicine','Others','','2020-01-03 01:12:47','2020-01-03'),(7,' sn pandey','OPD','','','9989623727','Yes','very good','Tirupathi','Cardiology','Old Patient','','2020-01-03 01:18:07','2020-01-03'),(8,'','','','','','','','','','','','2020-01-03 01:46:06','2020-01-03'),(9,'P.ravindrareddy','IPD','','','9490271907','No','Doctortreatmentis good.','Srikalahasti','General Medicine','Employee','','2020-01-06 12:24:29','2020-01-06'),(10,'k.gangadhar','OPD','','','9705017383','Yes','very good','Koduru','General Medicine','Old Patient','','2020-01-06 01:18:08','2020-01-06'),(11,'r.praveen kumar reddy','OPD','','','6281993237','Yes','no more to sujest','Tirupathi','General Medicine','Old Patient','','2020-01-06 01:22:00','2020-01-06'),(12,'B.nirmala','IPD','','','7893972122','Yes','Good \r\n    ','Tirupathi','General Surgery','Friend / Relative','','2020-01-06 01:22:04','2020-01-06'),(13,'r.praveen kumar reddy','OPD','','','6281993237','Yes','no more to sujest','Tirupathi','General Medicine','Old Patient','','2020-01-06 01:25:59','2020-01-06'),(14,'s thulasi','OPD','','','7382600778','Yes','very good','Puttur','General Surgery','RMP','','2020-01-06 01:27:36','2020-01-06'),(15,'sedbaha','OPD','','','9703399588','Yes','good','Koduru','Cardiology','Others','','2020-01-06 01:29:19','2020-01-06'),(16,'K Gurappa','IPD','','','9985813394','Yes','Good services','Tirupathi','General Medicine','Others','','2020-01-06 01:31:59','2020-01-06'),(17,'janardhan','OPD','','','9493517566','Yes','nenu emergency lo cherinapudu sisters caring bhagaledhu ','Srikalahasti','Cardiology','Old Patient','','2020-01-06 01:38:19','2020-01-06'),(18,'n.krishnaiah','OPD','','','9704638409','Yes','very good','Koduru','General Medicine','RMP','','2020-01-06 01:42:04','2020-01-06'),(19,'heeneth','OPD','','','9948757677','Yes','verygood hospital ','Koduru','ENT','RMP','','2020-01-06 01:57:15','2020-01-06'),(20,'heeneth','OPD','','','9948757677','Yes','verygood hospital ','Koduru','ENT','RMP','','2020-01-06 01:57:55','2020-01-06'),(21,'guru murthy','OPD','','','9440077314','Yes','nocomments','Renigunta','Cardiology','Others','','2020-01-06 01:59:12','2020-01-06'),(22,'Madhu','IPD','','','9590904561','Yes','Nothing','Pileru','Others','Others','','2020-01-06 04:01:57','2020-01-06'),(23,'Redeem','IPD','','','7896541230','No','Testing','Tirupathi','Cardiology','Ambulance','','2020-01-07 01:23:11','2020-01-07');

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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back_answer` */

insert  into `feed_back_answer`(`f_d_a_id`,`f_b_id`,`qno`,`q_id`,`answer`,`rating`,`date`,`created_at`) values (1,2,1,8,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(2,2,2,9,'Good','4','2020-01-01','2020-01-01 12:01:28'),(3,2,3,10,'Good','4','2020-01-01','2020-01-01 12:01:28'),(4,2,4,11,'Good','4','2020-01-01','2020-01-01 12:01:28'),(5,2,5,12,'Good','4','2020-01-01','2020-01-01 12:01:28'),(6,2,6,13,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(7,2,7,14,'Good','4','2020-01-01','2020-01-01 12:01:28'),(8,2,8,15,'Good','4','2020-01-01','2020-01-01 12:01:28'),(9,2,9,16,'Good','4','2020-01-01','2020-01-01 12:01:28'),(10,2,10,17,'Good','4','2020-01-01','2020-01-01 12:01:28'),(11,2,11,20,'Excellent','5','2020-01-01','2020-01-01 12:01:28'),(12,3,1,1,'Good','4','2020-01-01','2020-01-01 12:04:50'),(13,3,2,2,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(14,3,3,3,'Good','4','2020-01-01','2020-01-01 12:04:50'),(15,3,4,4,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(16,3,5,5,'Good','4','2020-01-01','2020-01-01 12:04:50'),(17,3,6,6,'Excellent','5','2020-01-01','2020-01-01 12:04:50'),(18,4,1,1,'Good','4','2020-01-03','2020-01-03 11:09:07'),(19,4,2,2,'Average','3','2020-01-03','2020-01-03 11:09:07'),(20,4,3,3,'Average','3','2020-01-03','2020-01-03 11:09:07'),(21,4,4,4,'Excellent','5','2020-01-03','2020-01-03 11:09:07'),(22,4,5,5,'Good','4','2020-01-03','2020-01-03 11:09:07'),(23,4,6,6,'Good','4','2020-01-03','2020-01-03 11:09:07'),(24,5,1,1,'Good','4','2020-01-03','2020-01-03 01:10:09'),(25,5,2,2,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(26,5,3,3,'Good','4','2020-01-03','2020-01-03 01:10:09'),(27,5,4,4,'Good','4','2020-01-03','2020-01-03 01:10:09'),(28,5,5,5,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(29,5,6,6,'Excellent','5','2020-01-03','2020-01-03 01:10:09'),(30,6,1,1,'Poor','2','2020-01-03','2020-01-03 01:12:47'),(31,6,2,2,'Excellent','5','2020-01-03','2020-01-03 01:12:47'),(32,6,3,3,'Average','3','2020-01-03','2020-01-03 01:12:47'),(33,6,4,4,'Average','3','2020-01-03','2020-01-03 01:12:47'),(34,6,5,5,'Average','3','2020-01-03','2020-01-03 01:12:47'),(35,6,6,6,'Poor','2','2020-01-03','2020-01-03 01:12:47'),(36,7,1,1,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(37,7,2,2,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(38,7,3,3,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(39,7,4,4,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(40,7,5,5,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(41,7,6,6,'Excellent','5','2020-01-03','2020-01-03 01:18:07'),(42,9,1,8,'Good','4','2020-01-06','2020-01-06 12:24:29'),(43,9,2,9,'Good','4','2020-01-06','2020-01-06 12:24:29'),(44,9,3,10,'Good','4','2020-01-06','2020-01-06 12:24:29'),(45,9,4,11,'Good','4','2020-01-06','2020-01-06 12:24:29'),(46,9,5,12,'Excellent','5','2020-01-06','2020-01-06 12:24:29'),(47,9,6,13,'Excellent','5','2020-01-06','2020-01-06 12:24:29'),(48,9,7,14,'Good','4','2020-01-06','2020-01-06 12:24:29'),(49,9,8,15,'Good','4','2020-01-06','2020-01-06 12:24:29'),(50,9,9,16,'Average','3','2020-01-06','2020-01-06 12:24:29'),(51,9,10,17,'Good','4','2020-01-06','2020-01-06 12:24:29'),(52,9,11,20,'Good','4','2020-01-06','2020-01-06 12:24:29'),(53,10,1,1,'Good','4','2020-01-06','2020-01-06 01:18:08'),(54,10,2,2,'Good','4','2020-01-06','2020-01-06 01:18:08'),(55,10,3,3,'Good','4','2020-01-06','2020-01-06 01:18:08'),(56,10,4,4,'Good','4','2020-01-06','2020-01-06 01:18:08'),(57,10,5,5,'Good','4','2020-01-06','2020-01-06 01:18:08'),(58,10,6,6,'Good','4','2020-01-06','2020-01-06 01:18:08'),(59,11,1,1,'Good','4','2020-01-06','2020-01-06 01:22:00'),(60,11,2,2,'Good','4','2020-01-06','2020-01-06 01:22:00'),(61,11,3,3,'Good','4','2020-01-06','2020-01-06 01:22:00'),(62,11,4,4,'Good','4','2020-01-06','2020-01-06 01:22:00'),(63,11,5,5,'Good','4','2020-01-06','2020-01-06 01:22:00'),(64,11,6,6,'Good','4','2020-01-06','2020-01-06 01:22:00'),(65,12,1,8,'Good','4','2020-01-06','2020-01-06 01:22:04'),(66,12,2,9,'Good','4','2020-01-06','2020-01-06 01:22:04'),(67,12,3,10,'Average','3','2020-01-06','2020-01-06 01:22:04'),(68,12,4,11,'Good','4','2020-01-06','2020-01-06 01:22:04'),(69,12,5,12,'Good','4','2020-01-06','2020-01-06 01:22:04'),(70,12,6,13,'Good','4','2020-01-06','2020-01-06 01:22:04'),(71,12,7,14,'Good','4','2020-01-06','2020-01-06 01:22:04'),(72,12,8,15,'Good','4','2020-01-06','2020-01-06 01:22:04'),(73,12,9,16,'Good','4','2020-01-06','2020-01-06 01:22:04'),(74,12,10,17,'Good','4','2020-01-06','2020-01-06 01:22:04'),(75,12,11,20,'Good','4','2020-01-06','2020-01-06 01:22:04'),(76,13,1,1,'Good','4','2020-01-06','2020-01-06 01:25:59'),(77,13,2,2,'Good','4','2020-01-06','2020-01-06 01:25:59'),(78,13,3,3,'Good','4','2020-01-06','2020-01-06 01:25:59'),(79,13,4,4,'Good','4','2020-01-06','2020-01-06 01:25:59'),(80,13,5,5,'Good','4','2020-01-06','2020-01-06 01:25:59'),(81,13,6,6,'Good','4','2020-01-06','2020-01-06 01:25:59'),(82,14,1,1,'Good','4','2020-01-06','2020-01-06 01:27:36'),(83,14,2,2,'Excellent','5','2020-01-06','2020-01-06 01:27:36'),(84,14,3,3,'Good','4','2020-01-06','2020-01-06 01:27:36'),(85,14,4,4,'Good','4','2020-01-06','2020-01-06 01:27:36'),(86,14,5,5,'Good','4','2020-01-06','2020-01-06 01:27:36'),(87,14,6,6,'Excellent','5','2020-01-06','2020-01-06 01:27:36'),(88,15,1,1,'Good','4','2020-01-06','2020-01-06 01:29:19'),(89,15,2,2,'Excellent','5','2020-01-06','2020-01-06 01:29:19'),(90,15,3,3,'Good','4','2020-01-06','2020-01-06 01:29:19'),(91,15,4,4,'Good','4','2020-01-06','2020-01-06 01:29:19'),(92,15,5,5,'Good','4','2020-01-06','2020-01-06 01:29:19'),(93,15,6,6,'Good','4','2020-01-06','2020-01-06 01:29:19'),(94,16,1,8,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(95,16,2,9,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(96,16,3,10,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(97,16,4,11,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(98,16,5,12,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(99,16,6,13,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(100,16,7,14,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(101,16,8,15,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(102,16,9,16,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(103,16,10,17,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(104,16,11,20,'Excellent','5','2020-01-06','2020-01-06 01:31:59'),(105,17,1,1,'Good','4','2020-01-06','2020-01-06 01:38:19'),(106,17,2,2,'Excellent','5','2020-01-06','2020-01-06 01:38:19'),(107,17,3,3,'Good','4','2020-01-06','2020-01-06 01:38:19'),(108,17,4,4,'Average','3','2020-01-06','2020-01-06 01:38:19'),(109,17,5,5,'Good','4','2020-01-06','2020-01-06 01:38:19'),(110,17,6,6,'Average','3','2020-01-06','2020-01-06 01:38:19'),(111,18,1,1,'Good','4','2020-01-06','2020-01-06 01:42:04'),(112,18,2,2,'Excellent','5','2020-01-06','2020-01-06 01:42:04'),(113,18,3,3,'Good','4','2020-01-06','2020-01-06 01:42:04'),(114,18,4,4,'Good','4','2020-01-06','2020-01-06 01:42:04'),(115,18,5,5,'Good','4','2020-01-06','2020-01-06 01:42:04'),(116,18,6,6,'Good','4','2020-01-06','2020-01-06 01:42:04'),(117,19,1,1,'Good','4','2020-01-06','2020-01-06 01:57:15'),(118,19,2,2,'Excellent','5','2020-01-06','2020-01-06 01:57:15'),(119,19,3,3,'Good','4','2020-01-06','2020-01-06 01:57:15'),(120,19,4,4,'Good','4','2020-01-06','2020-01-06 01:57:15'),(121,19,5,5,'Good','4','2020-01-06','2020-01-06 01:57:15'),(122,19,6,6,'Good','4','2020-01-06','2020-01-06 01:57:15'),(123,20,1,1,'Good','4','2020-01-06','2020-01-06 01:57:55'),(124,20,2,2,'Excellent','5','2020-01-06','2020-01-06 01:57:55'),(125,20,3,3,'Good','4','2020-01-06','2020-01-06 01:57:55'),(126,20,4,4,'Good','4','2020-01-06','2020-01-06 01:57:55'),(127,20,5,5,'Good','4','2020-01-06','2020-01-06 01:57:55'),(128,20,6,6,'Good','4','2020-01-06','2020-01-06 01:57:55'),(129,21,1,1,'Good','4','2020-01-06','2020-01-06 01:59:12'),(130,21,2,2,'Excellent','5','2020-01-06','2020-01-06 01:59:12'),(131,21,3,3,'Good','4','2020-01-06','2020-01-06 01:59:12'),(132,21,4,4,'Good','4','2020-01-06','2020-01-06 01:59:12'),(133,21,5,5,'Good','4','2020-01-06','2020-01-06 01:59:12'),(134,21,6,6,'Good','4','2020-01-06','2020-01-06 01:59:12'),(135,22,1,8,'Good','4','2020-01-06','2020-01-06 04:01:57'),(136,22,2,9,'Good','4','2020-01-06','2020-01-06 04:01:57'),(137,22,3,10,'Good','4','2020-01-06','2020-01-06 04:01:57'),(138,22,4,11,'Good','4','2020-01-06','2020-01-06 04:01:57'),(139,22,5,12,'Good','4','2020-01-06','2020-01-06 04:01:57'),(140,22,6,13,'Good','4','2020-01-06','2020-01-06 04:01:57'),(141,22,7,14,'Good','4','2020-01-06','2020-01-06 04:01:57'),(142,22,8,15,'Good','4','2020-01-06','2020-01-06 04:01:57'),(143,22,9,16,'Good','4','2020-01-06','2020-01-06 04:01:57'),(144,22,10,17,'Good','4','2020-01-06','2020-01-06 04:01:57'),(145,22,11,20,'Good','4','2020-01-06','2020-01-06 04:01:57'),(146,23,1,8,'Poor','1','2020-01-07','2020-01-07 01:23:11'),(147,23,2,9,'Average','2','2020-01-07','2020-01-07 01:23:12'),(148,23,3,10,'Good','3','2020-01-07','2020-01-07 01:23:12'),(149,23,4,11,'Very good','4','2020-01-07','2020-01-07 01:23:12'),(150,23,5,12,'Excellent','5','2020-01-07','2020-01-07 01:23:12'),(151,23,6,13,'Very good','4','2020-01-07','2020-01-07 01:23:12'),(152,23,7,14,'Good','3','2020-01-07','2020-01-07 01:23:12'),(153,23,8,15,'Average','2','2020-01-07','2020-01-07 01:23:12'),(154,23,9,16,'Poor','1','2020-01-07','2020-01-07 01:23:12'),(155,23,10,17,'Average','2','2020-01-07','2020-01-07 01:23:12'),(156,23,11,20,'Good','3','2020-01-07','2020-01-07 01:23:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=4690 DEFAULT CHARSET=latin1;

/*Data for the table `login_report` */

insert  into `login_report`(`id`,`a_id`,`code`,`login_time`,`logout_time`,`hours`,`create_at`,`creatde_at`,`diff_time`,`reason`,`comment`,`updated_time`,`to_time`,`from_time`,`updated_by`) values (4591,56,'','2019-10-03 16:56:05','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4592,55,'TS55','2019-10-03 20:23:01','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4593,1,'','2019-10-04 21:08:26','0000-00-00 00:00:00',NULL,'2019-10-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4594,1,'','2019-10-05 08:19:49','2019-10-05 10:29:12','2:9','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4595,55,'TS55','2019-10-05 08:43:56','2019-10-05 11:39:50','2:55','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4596,1,'','2019-10-09 16:15:35','0000-00-00 00:00:00',NULL,'2019-10-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4597,1,'','2019-10-11 10:17:47','2019-10-11 19:40:19','9:22','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4598,55,'TS55','2019-10-11 11:10:45','0000-00-00 00:00:00',NULL,'2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4599,49,'','2019-10-11 11:31:49','2019-10-11 12:08:38','0:36','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4600,1,'','2019-10-13 11:01:07','2019-10-13 20:53:14','9:52','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4601,58,'TS58','2019-10-13 11:18:36','2019-10-13 14:01:57','2:43','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4602,51,'','2019-10-13 13:57:11','2019-10-13 14:25:23','0:28','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4603,54,'TN54','2019-10-13 14:02:28','0000-00-00 00:00:00',NULL,'2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4604,1,'','2019-10-14 10:36:44','0000-00-00 00:00:00',NULL,'2019-10-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4605,1,'','2019-10-16 14:37:34','2019-10-16 14:38:08','0:0','2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4606,55,'TS55','2019-10-16 14:39:10','0000-00-00 00:00:00',NULL,'2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4607,1,'','2019-10-20 22:19:59','2019-10-20 22:57:42','0:37','2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4608,55,'TS55','2019-10-20 22:57:49','0000-00-00 00:00:00',NULL,'2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4609,1,'','2019-10-23 22:30:54','2019-10-23 22:31:19','0:0','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4610,55,'TS55','2019-10-23 22:31:28','2019-10-23 23:02:01','0:30','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4611,1,'','2019-10-24 20:01:44','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4612,55,'TS55','2019-10-24 21:09:33','2019-10-24 21:55:27','0:45','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4613,49,'','2019-10-24 21:55:53','2019-10-24 22:00:36','0:4','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4614,51,'','2019-10-24 22:00:52','2019-10-24 22:10:57','0:10','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4615,56,'','2019-10-24 22:11:29','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4616,1,'','2019-10-25 08:16:15','0000-00-00 00:00:00',NULL,'2019-10-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4617,1,'','2019-11-08 21:26:55','0000-00-00 00:00:00',NULL,'2019-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4618,1,'','2019-11-10 18:23:38','0000-00-00 00:00:00',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4619,59,'AP59','2019-11-10 10:15:15','2019-11-10 20:15:15',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4620,1,'','2019-11-12 18:16:42','0000-00-00 00:00:00',NULL,'2019-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4621,59,'AP59','2019-11-12 10:18:46','2019-11-12 17:04:21','06:20','2019-11-12',NULL,'9:45','bvbzcx','','2019-11-24 20:23:50',NULL,NULL,1),(4622,1,'','2019-11-13 19:46:25','0000-00-00 00:00:00',NULL,'2019-11-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4623,59,'AP59','2019-11-15 16:27:07','2019-11-15 16:28:16','0:1','2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4624,1,'','2019-11-15 17:55:59','0000-00-00 00:00:00',NULL,'2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4625,59,'AP59','2019-11-20 14:42:06','2019-11-20 17:42:06','08:40','2019-11-20',NULL,'6','xcxzcZXvXCv','','2019-11-24 20:23:38',NULL,NULL,1),(4626,1,'','2019-11-20 15:55:29','0000-00-00 00:00:00',NULL,'2019-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4627,59,'AP59','2019-11-21 18:55:26','2019-11-21 22:55:26','6:30','2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4628,1,'','2019-11-21 19:42:23','0000-00-00 00:00:00',NULL,'2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4629,59,'AP59','2019-11-22 19:56:11','2019-11-22 19:56:11','07:00','2019-11-22',NULL,'7:0','testing ','','2019-11-24 20:56:13',NULL,NULL,1),(4630,59,'AP59','2019-11-24 11:28:19','2019-11-24 19:28:19','8:30','2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4631,1,'','2019-11-24 20:23:05','0000-00-00 00:00:00',NULL,'2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4632,59,'AP59','2019-11-25 10:23:32','2019-11-25 21:40:29','11:16','2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4633,1,'','2019-11-25 21:40:32','0000-00-00 00:00:00',NULL,'2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4634,1,'','2019-11-26 22:40:40','0000-00-00 00:00:00',NULL,'2019-11-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4635,1,'','2019-11-28 20:33:36','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4636,59,'AP59','2019-11-28 23:08:50','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4638,59,NULL,'2019-11-13 10:00:00','2019-11-13 11:00:00','16:15','2019-11-13','2019-11-13','3:15','vcbxcvbxcvbxcvbxcvb','','2019-12-01 19:54:40','02:15 PM','05:30 PM',1),(4639,1,'','2019-11-29 16:26:22','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4640,59,'AP59','2019-11-29 19:37:12','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4641,1,'','2019-12-01 13:23:40','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4642,59,'AP59','2019-12-01 18:52:00','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4643,1,'','2019-12-09 18:30:33','2019-12-09 20:51:34','2:21','2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4644,59,'AP59','2019-12-09 18:52:14','0000-00-00 00:00:00',NULL,'2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4645,1,'','2019-12-10 16:45:36','2019-12-10 19:25:21','2:39','2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4646,59,'AP59','2019-12-10 18:19:19','0000-00-00 00:00:00',NULL,'2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4647,1,'','2019-12-11 11:13:46','0000-00-00 00:00:00',NULL,'2019-12-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4648,1,'','2019-12-12 10:10:18','0000-00-00 00:00:00',NULL,'2019-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4649,1,'','2019-12-13 10:34:48','2019-12-13 22:17:54','11:43','2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4650,59,'AP59','2019-12-13 15:27:35','0000-00-00 00:00:00',NULL,'2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4651,1,'','2019-12-14 09:58:17','2019-12-14 16:21:20','6:23','2019-12-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4652,59,'AP59','2019-12-14 16:22:29','2019-12-14 16:34:25','0:11','2019-12-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4653,1,'','2019-12-15 11:53:29','0000-00-00 00:00:00',NULL,'2019-12-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4654,1,'','2019-12-18 10:45:41','2019-12-18 10:45:52','0:0','2019-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4655,59,'AP59','2019-12-18 10:46:03','2019-12-18 10:46:36','0:0','2019-12-18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4656,1,'','2019-12-19 14:36:33','2019-12-19 15:41:06','1:4','2019-12-19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4657,1,'','2019-12-21 13:33:30','2019-12-21 16:41:01','3:7','2019-12-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4658,1,'','2019-12-23 12:18:18','0000-00-00 00:00:00',NULL,'2019-12-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4659,1,'','2019-12-24 11:41:25','0000-00-00 00:00:00',NULL,'2019-12-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4660,1,'','2019-12-25 17:54:57','0000-00-00 00:00:00',NULL,'2019-12-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4661,1,'','2019-12-26 10:35:41','0000-00-00 00:00:00',NULL,'2019-12-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4662,1,'','2019-12-27 11:43:43','0000-00-00 00:00:00',NULL,'2019-12-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4663,1,'','2019-12-28 10:57:15','0000-00-00 00:00:00',NULL,'2019-12-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4664,1,'','2019-12-29 14:12:24','0000-00-00 00:00:00',NULL,'2019-12-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4665,1,'','2019-12-30 10:15:39','0000-00-00 00:00:00',NULL,'2019-12-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4666,1,'','2019-12-31 12:18:00','2019-12-31 14:03:14','1:45','2019-12-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4667,55,'4755','2019-12-31 13:27:46','2019-12-31 13:50:26','0:22','2019-12-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4668,1,'','2020-01-01 10:06:56','2020-01-01 12:03:50','1:56','2020-01-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4669,1,'','2020-01-02 08:49:57','2020-01-02 16:59:57','8:10','2020-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4670,55,'4755','2020-01-02 16:53:29','2020-01-02 17:01:51','0:8','2020-01-02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4671,1,'','2020-01-03 11:08:18','2020-01-03 12:03:05','0:54','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4672,55,'475','2020-01-03 12:03:20','2020-01-03 15:20:04','3:16','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4673,58,'47558','2020-01-03 15:17:10','2020-01-03 15:18:54','0:1','2020-01-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4674,1,'','2020-01-04 10:53:03','2020-01-04 15:30:38','4:37','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4675,58,'47558','2020-01-04 14:05:34','2020-01-04 14:05:55','0:0','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4676,62,'47562','2020-01-04 14:53:13','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4677,59,'47559','2020-01-04 15:26:58','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4678,55,'475','2020-01-04 15:31:02','0000-00-00 00:00:00',NULL,'2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4679,63,'47563','2020-01-04 15:42:11','2020-01-04 15:47:46','0:5','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4680,60,'47560','2020-01-04 15:46:35','2020-01-04 15:50:31','0:3','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4681,61,'47561','2020-01-04 16:58:10','2020-01-04 22:00:42','5:2','2020-01-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4682,1,'','2020-01-05 12:44:07','0000-00-00 00:00:00',NULL,'2020-01-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4683,62,'47562','2020-01-06 10:12:34','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4684,1,'','2020-01-06 11:14:39','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4685,58,'47558','2020-01-06 13:19:12','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4686,64,'47564','2020-01-06 13:47:37','2020-01-06 13:51:07','0:3','2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4687,61,'47561','2020-01-06 15:07:41','0000-00-00 00:00:00',NULL,'2020-01-06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4688,1,'','2020-01-07 11:22:38','2020-01-07 13:56:12','2:33','2020-01-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4689,65,'47565','2020-01-07 11:32:24','2020-01-07 11:35:06','0:2','2020-01-07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `modules` */

insert  into `modules`(`m_id`,`m_name`,`m_status`,`created_at`,`updated_at`,`created_by`) values (1,'Role managemnet ',0,'2019-12-31 22:02:08','2019-09-13 12:41:06',1),(20,'Department',1,'2019-09-18 11:55:04',NULL,1),(24,'Employee',1,'2019-09-23 21:02:05',NULL,1),(25,'Document',0,'2019-12-10 16:46:37','2019-12-10 16:46:37',1),(26,'Holidays',0,'2019-12-10 16:46:42','2019-12-10 16:46:42',1),(27,'Branches',1,'2019-12-31 00:43:08','2019-12-31 13:13:08',1),(28,'Leaves',0,'2019-12-10 16:46:53','2019-12-10 16:46:53',1),(29,'Attendance',0,'2019-12-10 16:47:03','2019-12-10 16:47:03',1),(30,'Payslip',0,'2019-12-10 16:47:31','2019-12-10 16:47:31',1),(31,'Notification',0,'2019-12-10 16:46:47','2019-12-10 16:46:47',1),(32,'Pending  task',0,'2019-12-10 16:47:38','2019-12-10 16:47:38',1),(33,'Termination',0,'2019-12-10 16:47:22','2019-12-10 16:47:22',1),(34,'Calendar',0,'2019-12-10 16:46:20','2019-12-10 16:46:20',1),(35,'Assign Task',1,'2019-12-25 05:32:16','2019-12-25 18:02:16',1),(36,'Questions',1,'2019-12-13 11:32:49',NULL,1),(37,'Location',1,'2019-12-25 12:02:57',NULL,1),(38,'Source',1,'2020-01-07 12:33:50',NULL,1);

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

insert  into `modules_menu`(`m_m_id`,`m_name`,`m_menu_name`,`m_menu_url`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'Roles','user/roles',0,'2019-05-20 10:22:03','2019-08-27 21:46:21',1),(2,1,'Users Rights','user/rights',0,'2019-05-20 10:22:21','2019-08-27 21:46:26',1),(3,1,'Users','user/add',1,'2019-05-20 10:22:38','2019-08-27 21:46:34',1),(41,11,'Patients','reports/patients',2,'2019-07-02 20:49:51','2019-09-13 12:38:51',1),(68,20,'Add','department/add',1,'2019-09-18 11:55:39',NULL,1),(69,20,'List','department',1,'2019-09-18 11:55:51',NULL,1),(73,24,'Add','employee/add',1,'2019-09-23 21:02:21',NULL,1),(74,24,'List','employee',1,'2019-09-23 21:02:38',NULL,1),(75,25,'Add','document/add',1,'2019-09-23 21:03:15',NULL,1),(76,25,'List','document/list',1,'2019-09-23 21:03:28',NULL,1),(77,26,'Add','holidays/add',1,'2019-09-24 09:03:35',NULL,1),(78,26,'List','holidays',1,'2019-09-24 09:03:45',NULL,1),(79,27,'Add','branches/add',1,'2019-09-26 22:31:27','2019-09-26 22:32:07',1),(80,27,'List','branches',1,'2019-09-26 22:31:55','2019-09-26 22:32:12',1),(81,28,'Apply','leaves/add',1,'2019-09-28 12:28:32',NULL,1),(82,28,'List','leaves',1,'2019-09-28 12:28:43',NULL,1),(83,28,'Set Days','leaves/setdays',1,'2019-10-03 13:33:54',NULL,1),(84,29,'Upload','attendance/upload',1,'2019-10-03 16:15:41',NULL,1),(85,30,'Genrate','payslip/index',1,'2019-10-03 16:16:05',NULL,1),(86,31,'Add','notification/add',1,'2019-10-04 21:09:19',NULL,1),(87,31,'List','notification',1,'2019-10-04 21:09:34',NULL,1),(88,1,'Users list','user/lists',1,'2019-10-14 10:42:24',NULL,1),(89,32,'Notice period','pendingtask',2,'2019-11-10 21:09:34','2019-11-10 22:18:33',1),(90,32,'Probation','pending/probation',0,'2019-11-10 21:10:07','2019-12-01 18:02:06',1),(91,32,'RESIGNATION ','resignation/lists',1,'2019-11-10 21:10:23','2019-11-10 22:19:04',1),(92,32,'Termination','pending/termination',2,'2019-11-10 21:11:04','2019-11-10 22:18:24',1),(93,33,'Add','termination',1,'2019-11-12 20:29:07','2019-11-12 21:17:36',1),(94,33,'List','termination/lists',1,'2019-11-12 21:17:27',NULL,1),(95,32,'Attendance regulation','pending/attendance_regulation',1,'2019-11-21 19:43:38',NULL,1),(96,34,'List','calendar/index',1,'2019-11-25 21:42:09',NULL,1),(97,35,'Add','assignwork/add',1,'2019-12-09 18:31:32',NULL,1),(98,35,'List','assignwork/index',1,'2019-12-09 18:31:46','2019-12-10 18:08:11',1),(99,36,'Add','questions',1,'2019-12-13 11:33:47',NULL,1),(100,36,'List','questions',1,'2019-12-13 11:34:01',NULL,1),(101,37,'Add','location/add',1,'2019-12-25 12:03:32',NULL,1),(102,37,'List','location/index',1,'2019-12-25 12:03:48',NULL,1),(103,38,'Add','source/add',1,'2020-01-07 12:34:23','2020-01-07 13:05:25',1),(104,38,'List','source/index',1,'2020-01-07 13:03:48',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `source` */

insert  into `source`(`s_id`,`s_name`,`status`,`created_at`,`updated_at`,`created_by`) values (31,'RMP',2,'2020-01-07 13:09:49','2020-01-07 13:11:05',1),(32,'Ambulance',1,'2020-01-07 13:11:31','2020-01-07 13:14:44',1),(33,'Employee',1,'2020-01-07 13:11:39',NULL,1),(34,'Others',1,'2020-01-07 13:11:44',NULL,1),(35,'Health Camp',1,'2020-01-07 13:11:51',NULL,1),(36,'Demo Tent',1,'2020-01-07 13:11:59',NULL,1),(37,'Tata Ace',1,'2020-01-07 13:12:06',NULL,1),(38,'Pamphlet',1,'2020-01-07 13:12:12',NULL,1),(39,'Hoarding',1,'2020-01-07 13:12:19',NULL,1),(40,'Cinema Add',1,'2020-01-07 13:12:29',NULL,1),(41,'Paper Add',1,'2020-01-07 13:12:36',NULL,1),(42,'Friend / Relative',1,'2020-01-07 13:12:44',NULL,1),(43,'Old Patient',1,'2020-01-07 13:12:52',NULL,1);

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
