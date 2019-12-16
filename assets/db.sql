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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `assign_work` */

insert  into `assign_work`(`a_w_id`,`emp_id`,`from_date`,`to_date`,`total_day`,`message`,`status`,`created_at`,`updated_at`,`created_by`) values (1,54,'12/03/2019','12/18/2019','12','sdsadsbdjgsjajsdgjkgfds',0,'2019-12-09 18:44:47',NULL,1),(2,58,'12/12/2019','12/19/2019','6','Testing purpose ',0,'2019-12-09 18:51:12',NULL,1),(3,59,'12/01/2019','12/02/2019','1','Testing  purpose ',3,'2019-12-10 16:55:45','2019-12-10 18:52:48',1),(4,59,'12/10/2019','12/11/2019','2','Testing purpose ',1,'2019-12-10 18:07:45','2019-12-10 18:53:02',1),(5,54,'12/01/2019','12/03/2019','2','Testing  p',0,'2019-12-10 18:14:00',NULL,1),(6,59,'12/18/2019','12/25/2019','6','like t his',1,'2019-12-10 19:22:00','2019-12-10 19:22:29',1),(7,55,'12/04/2019','12/18/2019','11','testing ',0,'2019-12-12 15:16:59',NULL,1),(8,58,'12/19/2019','12/25/2019','5','tes',0,'2019-12-12 15:17:32',NULL,1),(9,55,'12/03/2019','12/09/2019','5','nn',0,'2019-12-12 15:19:56',NULL,1),(10,54,'12/24/2019','12/26/2019','3','rrr',0,'2019-12-12 15:22:53',NULL,1),(11,58,'12/24/2019','12/26/2019','3','rrr',0,'2019-12-12 15:22:53',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`d_id`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'Department one',1,'2019-09-18 12:02:44','2019-09-18 12:02:44',1),(2,'Department two',1,'2019-05-22 11:16:18','0000-00-00 00:00:00',1),(3,'Department three',1,'2019-05-22 11:54:52','2019-05-22 11:54:52',1),(4,'testing ',1,'2019-09-18 11:57:41','0000-00-00 00:00:00',1),(5,'testing five',1,'2019-09-23 20:09:56','0000-00-00 00:00:00',1);

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
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`f_b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back` */

insert  into `feed_back`(`f_b_id`,`name`,`type`,`p_no`,`email_id`,`phone_no`,`recommend`,`comment`,`created_at`) values (1,'vasu','IPD','123','123@gmail.com','1234567890','No','testing puepose','2019-12-13 02:01:30'),(2,'Sai','IPD','321','321@gmail.com','8528528520','Yes','fgtee','2019-12-13 02:01:59'),(3,'bayapu','IPD','878','877@gmail.com','1234524566','No','cvzxcvzxc','2019-12-13 02:02:50'),(4,'ram','OPD','1236','afaf@gmail.com','46565465465454','','asdad','2019-12-13 02:05:22'),(5,'siva','OPD','789','admin@gmail.com','111313131311','','tyetyhety','2019-12-13 02:05:53'),(6,'ashok','OPD','5445','admi@gmail.com','313213213213','','erwertyrtyrtg','2019-12-13 02:06:20'),(7,'test','OPD','454','adMin@gmail.com','4131321321321','','TYETYHERTYUHETUYH','2019-12-13 02:06:47'),(8,'chinna','OPD','444','5@gmail.com','2332323232','','TEYESRTGSERTHFDGH','2019-12-13 02:07:12'),(9,'ram','OPD','54','4@gmail.com','32131332132','','THYRTYHTYHY','2019-12-13 02:07:36'),(10,'mahi','OPD','466','adi@gmail.com','1323212312313','','TYHRTDYUHDTRYHYT','2019-12-13 02:08:09'),(11,'sai','OPD','234','TYTERYTR@gmail.com','12201211221','','drttruetyuy','2019-12-13 02:08:49'),(12,'babu','OPD','2123','ain@gmail.com','313213321321','','ghsthsdhdg','2019-12-13 02:09:16'),(13,'msiva','OPD','76','aaf@gmail.com','546655446456','','faedfreqwfterfg ','2019-12-13 02:09:46'),(14,'reddem','IPD','785','adfd@gmail.com','65464654546546','Yes','wdewsedwde','2019-12-13 02:11:33'),(15,'bayapu','IPD','57','aff@gmail.com','6132132231321','No','ggfdfgsdfdf','2019-12-13 02:12:19'),(16,'lakshmi','IPD','7576','ADMI@gmail.com','65555564456','No','rdgfsgfdgfg','2019-12-13 02:13:27'),(17,'venkatareddy','IPD','85687','AMIN@gmail.com','54322111111','No','fdgagsdfg','2019-12-13 02:14:01'),(18,'pavan','IPD','7856','dmi@gmail.com','6546498787','Yes','erfedfsd','2019-12-13 02:15:24'),(19,'mahesh','IPD','785','aga@gmail.com','4566556445654','Yes','fgfedgert','2019-12-13 02:16:31'),(20,'sairam','OPD','78567','dfdsf@gmail.com','2333223333','','dfsdfds','2019-12-13 05:53:55');

/*Table structure for table `feed_back_answer` */

DROP TABLE IF EXISTS `feed_back_answer`;

CREATE TABLE `feed_back_answer` (
  `f_d_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_b_id` int(11) DEFAULT NULL,
  `qno` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`f_d_a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=latin1;

/*Data for the table `feed_back_answer` */

insert  into `feed_back_answer`(`f_d_a_id`,`f_b_id`,`qno`,`q_id`,`answer`,`date`,`created_at`) values (1,1,1,8,'Very Poor','2019-12-13','2019-12-13 02:01:30'),(2,1,2,9,'Poor','2019-12-13','2019-12-13 02:01:30'),(3,1,3,10,'Average','2019-12-13','2019-12-13 02:01:30'),(4,1,4,11,'Good','2019-12-13','2019-12-13 02:01:30'),(5,1,5,12,'Excellent','2019-12-13','2019-10-17 02:01:30'),(6,1,6,13,'Good','2019-12-13','2019-12-13 02:01:30'),(7,1,7,14,'Average','2019-12-13','2019-12-13 02:01:30'),(8,1,8,15,'Poor','2019-12-13','2019-12-13 02:01:30'),(9,1,9,16,'Very Poor','2019-12-13','2019-12-13 02:01:30'),(10,1,10,17,'Poor','2019-12-13','2019-12-13 02:01:30'),(11,2,1,8,'Excellent','2019-12-13','2019-12-13 02:01:59'),(12,2,2,9,'Good','2019-12-13','2019-12-13 02:01:59'),(13,2,3,10,'Average','2019-12-13','2019-12-13 02:01:59'),(14,2,4,11,'Poor','2019-12-13','2019-12-13 02:01:59'),(15,2,5,12,'Very Poor','2019-12-13','2019-12-13 02:01:59'),(16,2,6,13,'Poor','2019-12-13','2019-12-13 02:01:59'),(17,2,7,14,'Average','2019-12-13','2019-12-13 02:01:59'),(18,2,8,15,'Good','2019-12-13','2019-12-13 02:01:59'),(19,2,9,16,'Excellent','2019-12-13','2019-12-13 02:01:59'),(20,2,10,17,'Good','2019-12-13','2019-12-13 02:01:59'),(21,3,1,8,'Poor','2019-12-13','2019-12-13 02:02:50'),(22,3,2,9,'Average','2019-12-13','2019-12-13 02:02:50'),(23,3,3,10,'Average','2019-12-13','2019-12-13 02:02:50'),(24,3,4,11,'Poor','2019-12-13','2019-12-13 02:02:50'),(25,3,5,12,'Average','2019-12-13','2019-12-13 02:02:50'),(26,3,6,13,'Poor','2019-12-13','2019-12-13 02:02:50'),(27,3,7,14,'Average','2019-12-13','2019-12-13 02:02:50'),(28,3,8,15,'Average','2019-12-13','2019-12-13 02:02:50'),(29,3,9,16,'Average','2019-12-13','2019-12-13 02:02:50'),(30,3,10,17,'Poor','2019-12-13','2019-12-13 02:02:50'),(31,4,1,1,'Very Poor','2019-12-13','2019-12-13 02:05:22'),(32,4,2,2,'Poor','2019-12-13','2019-12-13 02:05:22'),(33,4,3,3,'Average','2019-12-13','2019-12-13 02:05:22'),(34,4,4,4,'Good','2019-12-13','2019-12-13 02:05:22'),(35,4,5,5,'Excellent','2019-12-13','2019-12-13 02:05:22'),(36,4,6,6,'Good','2019-12-13','2019-12-13 02:05:22'),(37,4,7,7,'Average','2019-12-13','2019-12-13 02:05:22'),(38,5,1,1,'Poor','2019-12-13','2019-12-13 02:05:53'),(39,5,2,2,'Average','2019-12-13','2019-12-13 02:05:53'),(40,5,3,3,'Good','2019-12-13','2019-12-13 02:05:53'),(41,5,4,4,'Excellent','2019-12-13','2019-12-13 02:05:53'),(42,5,5,5,'Good','2019-12-13','2019-12-13 02:05:53'),(43,5,6,6,'Average','2019-12-13','2019-12-13 02:05:53'),(44,5,7,7,'Poor','2019-12-13','2019-12-13 02:05:53'),(45,6,1,1,'Average','2019-12-13','2019-12-13 02:06:20'),(46,6,2,2,'Good','2019-12-13','2019-12-13 02:06:20'),(47,6,3,3,'Excellent','2019-12-13','2019-12-13 02:06:20'),(48,6,4,4,'Good','2019-12-13','2019-12-13 02:06:20'),(49,6,5,5,'Average','2019-12-13','2019-12-13 02:06:20'),(50,6,6,6,'Poor','2019-12-13','2019-12-13 02:06:21'),(51,6,7,7,'Very Poor','2019-12-13','2019-12-13 02:06:21'),(52,7,1,1,'Excellent','2019-12-13','2019-12-13 02:06:47'),(53,7,2,2,'Good','2019-12-13','2019-12-13 02:06:47'),(54,7,3,3,'Average','2019-12-13','2019-12-13 02:06:47'),(55,7,4,4,'Poor','2019-12-13','2019-12-13 02:06:47'),(56,7,5,5,'Very Poor','2019-12-13','2019-12-13 02:06:47'),(57,7,6,6,'Poor','2019-12-13','2019-12-13 02:06:47'),(58,7,7,7,'Average','2019-12-13','2019-12-13 02:06:47'),(59,8,1,1,'Very Poor','2019-12-13','2019-12-13 02:07:12'),(60,8,2,2,'Poor','2019-12-13','2019-12-13 02:07:12'),(61,8,3,3,'Average','2019-10-10','2019-12-13 02:07:12'),(62,8,4,4,'Very Poor','2019-12-13','2019-12-13 02:07:12'),(63,8,5,5,'Excellent','2019-12-13','2019-12-13 02:07:12'),(64,8,6,6,'Poor','2019-12-13','2019-12-13 02:07:12'),(65,8,7,7,'Excellent','2019-12-13','2019-12-13 02:07:12'),(66,9,1,1,'Excellent','2019-12-13','2019-12-13 02:07:36'),(67,9,2,2,'Average','2019-12-13','2019-12-13 02:07:36'),(68,9,3,3,'Poor','2019-12-13','2019-12-13 02:07:36'),(69,9,4,4,'Good','2019-12-13','2019-12-13 02:07:36'),(70,9,5,5,'Very Poor','2019-12-13','2019-12-13 02:07:36'),(71,9,6,6,'Good','2019-12-13','2019-12-13 02:07:36'),(72,9,7,7,'Poor','2019-12-13','2019-12-13 02:07:36'),(73,10,1,1,'Average','2019-12-13','2019-12-13 02:08:09'),(74,10,2,2,'Poor','2019-12-13','2019-12-13 02:08:09'),(75,10,3,3,'Excellent','2019-12-13','2019-12-13 02:08:09'),(76,10,4,4,'Poor','2019-12-13','2019-12-13 02:08:09'),(77,10,5,5,'Good','2019-12-13','2019-12-13 02:08:09'),(78,10,6,6,'Poor','2019-12-13','2019-12-13 02:08:09'),(79,10,7,7,'Excellent','2019-12-13','2019-12-13 02:08:10'),(80,11,1,1,'Very Poor','2019-12-13','2019-12-13 02:08:49'),(81,11,2,2,'Very Poor','2019-12-13','2019-12-13 02:08:50'),(82,11,3,3,'Average','2019-12-13','2019-12-13 02:08:50'),(83,11,4,4,'Poor','2019-12-13','2019-12-13 02:08:50'),(84,11,5,5,'Excellent','2019-12-13','2019-12-13 02:08:50'),(85,11,6,6,'Poor','2019-12-13','2019-12-13 02:08:50'),(86,11,7,7,'Excellent','2019-12-13','2019-12-13 02:08:50'),(87,12,1,1,'Excellent','2019-12-13','2019-12-13 02:09:16'),(88,12,2,2,'Excellent','2019-12-13','2019-12-13 02:09:16'),(89,12,3,3,'Good','2019-12-13','2019-12-13 02:09:16'),(90,12,4,4,'Average','2019-12-13','2019-12-13 02:09:16'),(91,12,5,5,'Excellent','2019-12-13','2019-12-13 02:09:16'),(92,12,6,6,'Excellent','2019-12-13','2019-12-13 02:09:16'),(93,12,7,7,'Average','2019-12-13','2019-12-13 02:09:16'),(94,13,1,1,'Poor','2019-12-13','2019-12-13 02:09:46'),(95,13,2,2,'Good','2019-12-13','2019-12-13 02:09:46'),(96,13,3,3,'Poor','2019-12-13','2019-12-13 02:09:46'),(97,13,4,4,'Excellent','2019-12-13','2019-12-13 02:09:46'),(98,13,5,5,'Average','2019-12-13','2019-12-13 02:09:46'),(99,13,6,6,'Excellent','2019-12-13','2019-12-13 02:09:46'),(100,13,7,7,'Good','2019-12-13','2019-12-13 02:09:46'),(101,14,1,8,'Very Poor','2019-12-13','2019-12-13 02:11:33'),(102,14,2,9,'Poor','2019-12-13','2019-12-13 02:11:33'),(103,14,3,10,'Good','2019-12-13','2019-12-13 02:11:33'),(104,14,4,11,'Poor','2019-12-13','2019-12-13 02:11:33'),(105,14,5,12,'Good','2019-12-13','2019-12-13 02:11:33'),(106,14,6,13,'Poor','2019-12-13','2019-12-13 02:11:33'),(107,14,7,14,'Good','2019-12-13','2019-12-13 02:11:33'),(108,14,8,15,'Poor','2019-12-13','2019-12-13 02:11:33'),(109,14,9,16,'Excellent','2019-12-13','2019-12-13 02:11:33'),(110,14,10,17,'Average','2019-12-13','2019-12-13 02:11:33'),(111,15,1,8,'Very Poor','2019-04-25','2019-12-13 02:12:20'),(112,15,2,9,'Average','2019-12-13','2019-12-13 02:12:20'),(113,15,3,10,'Very Poor','2019-12-13','2019-12-13 02:12:20'),(114,15,4,11,'Good','2019-12-13','2019-12-13 02:12:20'),(115,15,5,12,'Very Poor','2019-12-13','2019-12-13 02:12:20'),(116,15,6,13,'Good','2019-12-13','2019-12-13 02:12:20'),(117,15,7,14,'Excellent','2019-12-13','2019-12-13 02:12:20'),(118,15,8,15,'Very Poor','2019-12-13','2019-12-13 02:12:20'),(119,15,9,16,'Good','2019-12-13','2019-12-13 02:12:20'),(120,15,10,17,'Very Poor','2019-12-13','2019-12-13 02:12:20'),(121,16,1,8,'Good','2019-12-13','2019-12-13 02:13:27'),(122,16,2,9,'Very Poor','2019-12-13','2019-12-13 02:13:27'),(123,16,3,10,'Good','2019-12-13','2019-12-13 02:13:27'),(124,16,4,11,'Very Poor','2019-12-13','2019-12-13 02:13:27'),(125,16,5,12,'Average','2019-12-13','2019-12-13 02:13:27'),(126,16,6,13,'Poor','2019-12-13','2019-12-13 02:13:27'),(127,16,7,14,'Excellent','2019-12-13','2019-12-13 02:13:27'),(128,16,8,15,'Poor','2019-12-13','2019-12-13 02:13:27'),(129,16,9,16,'Excellent','2019-12-13','2019-12-13 02:13:27'),(130,16,10,17,'Poor','2019-12-13','2019-12-13 02:13:27'),(131,17,1,8,'Excellent','2019-12-13','2019-12-13 02:14:01'),(132,17,2,9,'Very Poor','2019-12-13','2019-12-13 02:14:01'),(133,17,3,10,'Average','2019-12-13','2019-12-13 02:14:01'),(134,17,4,11,'Poor','2019-12-13','2019-12-13 02:14:01'),(135,17,5,12,'Average','2019-12-13','2019-12-13 02:14:01'),(136,17,6,13,'Poor','2019-12-13','2019-12-13 02:14:01'),(137,17,7,14,'Good','2019-12-13','2019-12-13 02:14:01'),(138,17,8,15,'Poor','2019-12-13','2019-12-13 02:14:01'),(139,17,9,16,'Good','2019-12-13','2019-12-13 02:14:01'),(140,17,10,17,'Poor','2019-12-13','2019-12-13 02:14:02'),(141,18,1,8,'Very Poor','2019-12-13','2019-12-13 02:15:24'),(142,18,2,9,'Poor','2019-12-13','2019-12-13 02:15:24'),(143,18,3,10,'Poor','2019-12-13','2019-12-13 02:15:24'),(144,18,4,11,'Very Poor','2019-12-13','2019-12-13 02:15:24'),(145,18,5,12,'Good','2019-12-13','2019-12-13 02:15:24'),(146,18,6,13,'Very Poor','2019-12-13','2019-12-13 02:15:24'),(147,18,7,14,'Good','2019-12-13','2019-12-13 02:15:24'),(148,18,8,15,'Very Poor','2019-12-13','2019-12-13 02:15:24'),(149,18,9,16,'Good','2019-12-13','2019-12-13 02:15:24'),(150,18,10,17,'Very Poor','2019-12-13','2019-12-13 02:15:24'),(151,19,1,8,'Average','2019-12-13','2019-12-13 02:16:31'),(152,19,2,9,'Average','2019-12-13','2019-12-13 02:16:31'),(153,19,3,10,'Poor','2019-12-13','2019-12-13 02:16:31'),(154,19,4,11,'Average','2019-12-13','2019-12-13 02:16:31'),(155,19,5,12,'Good','2019-12-13','2019-12-13 02:16:31'),(156,19,6,13,'Poor','2019-12-13','2019-12-13 02:16:31'),(157,19,7,14,'Good','2019-12-13','2019-12-13 02:16:31'),(158,19,8,15,'Poor','2019-12-13','2019-12-13 02:16:31'),(159,19,9,16,'Good','2019-12-13','2019-12-13 02:16:31'),(160,19,10,17,'Poor','2019-12-13','2019-12-13 02:16:31'),(161,20,1,1,'Poor','2019-12-13','2019-12-13 05:53:55'),(162,20,2,2,'Poor','2019-12-13','2019-12-13 05:53:55'),(163,20,3,3,'Poor','2019-12-13','2019-12-13 05:53:55'),(164,20,4,4,'Poor','2019-12-13','2019-12-13 05:53:55'),(165,20,5,5,'Poor','2019-12-13','2019-12-13 05:53:55'),(166,20,6,6,'Average','2019-12-13','2019-12-13 05:53:55'),(167,20,7,7,'Poor','2019-12-13','2019-12-13 05:53:55'),(168,20,8,19,'Very Poor','2019-12-13','2019-12-13 05:53:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=4652 DEFAULT CHARSET=latin1;

/*Data for the table `login_report` */

insert  into `login_report`(`id`,`a_id`,`code`,`login_time`,`logout_time`,`hours`,`create_at`,`creatde_at`,`diff_time`,`reason`,`comment`,`updated_time`,`to_time`,`from_time`,`updated_by`) values (4591,56,'','2019-10-03 16:56:05','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4592,55,'TS55','2019-10-03 20:23:01','0000-00-00 00:00:00',NULL,'2019-10-03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4593,1,'','2019-10-04 21:08:26','0000-00-00 00:00:00',NULL,'2019-10-04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4594,1,'','2019-10-05 08:19:49','2019-10-05 10:29:12','2:9','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4595,55,'TS55','2019-10-05 08:43:56','2019-10-05 11:39:50','2:55','2019-10-05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4596,1,'','2019-10-09 16:15:35','0000-00-00 00:00:00',NULL,'2019-10-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4597,1,'','2019-10-11 10:17:47','2019-10-11 19:40:19','9:22','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4598,55,'TS55','2019-10-11 11:10:45','0000-00-00 00:00:00',NULL,'2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4599,49,'','2019-10-11 11:31:49','2019-10-11 12:08:38','0:36','2019-10-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4600,1,'','2019-10-13 11:01:07','2019-10-13 20:53:14','9:52','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4601,58,'TS58','2019-10-13 11:18:36','2019-10-13 14:01:57','2:43','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4602,51,'','2019-10-13 13:57:11','2019-10-13 14:25:23','0:28','2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4603,54,'TN54','2019-10-13 14:02:28','0000-00-00 00:00:00',NULL,'2019-10-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4604,1,'','2019-10-14 10:36:44','0000-00-00 00:00:00',NULL,'2019-10-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4605,1,'','2019-10-16 14:37:34','2019-10-16 14:38:08','0:0','2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4606,55,'TS55','2019-10-16 14:39:10','0000-00-00 00:00:00',NULL,'2019-10-16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4607,1,'','2019-10-20 22:19:59','2019-10-20 22:57:42','0:37','2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4608,55,'TS55','2019-10-20 22:57:49','0000-00-00 00:00:00',NULL,'2019-10-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4609,1,'','2019-10-23 22:30:54','2019-10-23 22:31:19','0:0','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4610,55,'TS55','2019-10-23 22:31:28','2019-10-23 23:02:01','0:30','2019-10-23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4611,1,'','2019-10-24 20:01:44','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4612,55,'TS55','2019-10-24 21:09:33','2019-10-24 21:55:27','0:45','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4613,49,'','2019-10-24 21:55:53','2019-10-24 22:00:36','0:4','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4614,51,'','2019-10-24 22:00:52','2019-10-24 22:10:57','0:10','2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4615,56,'','2019-10-24 22:11:29','0000-00-00 00:00:00',NULL,'2019-10-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4616,1,'','2019-10-25 08:16:15','0000-00-00 00:00:00',NULL,'2019-10-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4617,1,'','2019-11-08 21:26:55','0000-00-00 00:00:00',NULL,'2019-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4618,1,'','2019-11-10 18:23:38','0000-00-00 00:00:00',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4619,59,'AP59','2019-11-10 10:15:15','2019-11-10 20:15:15',NULL,'2019-11-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4620,1,'','2019-11-12 18:16:42','0000-00-00 00:00:00',NULL,'2019-11-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4621,59,'AP59','2019-11-12 10:18:46','2019-11-12 17:04:21','06:20','2019-11-12',NULL,'9:45','bvbzcx','','2019-11-24 20:23:50',NULL,NULL,1),(4622,1,'','2019-11-13 19:46:25','0000-00-00 00:00:00',NULL,'2019-11-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4623,59,'AP59','2019-11-15 16:27:07','2019-11-15 16:28:16','0:1','2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4624,1,'','2019-11-15 17:55:59','0000-00-00 00:00:00',NULL,'2019-11-15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4625,59,'AP59','2019-11-20 14:42:06','2019-11-20 17:42:06','08:40','2019-11-20',NULL,'6','xcxzcZXvXCv','','2019-11-24 20:23:38',NULL,NULL,1),(4626,1,'','2019-11-20 15:55:29','0000-00-00 00:00:00',NULL,'2019-11-20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4627,59,'AP59','2019-11-21 18:55:26','2019-11-21 22:55:26','6:30','2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4628,1,'','2019-11-21 19:42:23','0000-00-00 00:00:00',NULL,'2019-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4629,59,'AP59','2019-11-22 19:56:11','2019-11-22 19:56:11','07:00','2019-11-22',NULL,'7:0','testing ','','2019-11-24 20:56:13',NULL,NULL,1),(4630,59,'AP59','2019-11-24 11:28:19','2019-11-24 19:28:19','8:30','2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4631,1,'','2019-11-24 20:23:05','0000-00-00 00:00:00',NULL,'2019-11-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4632,59,'AP59','2019-11-25 10:23:32','2019-11-25 21:40:29','11:16','2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4633,1,'','2019-11-25 21:40:32','0000-00-00 00:00:00',NULL,'2019-11-25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4634,1,'','2019-11-26 22:40:40','0000-00-00 00:00:00',NULL,'2019-11-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4635,1,'','2019-11-28 20:33:36','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4636,59,'AP59','2019-11-28 23:08:50','0000-00-00 00:00:00',NULL,'2019-11-28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4638,59,NULL,'2019-11-13 10:00:00','2019-11-13 11:00:00','16:15','2019-11-13','2019-11-13','3:15','vcbxcvbxcvbxcvbxcvb','','2019-12-01 19:54:40','02:15 PM','05:30 PM',1),(4639,1,'','2019-11-29 16:26:22','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4640,59,'AP59','2019-11-29 19:37:12','0000-00-00 00:00:00',NULL,'2019-11-29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4641,1,'','2019-12-01 13:23:40','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4642,59,'AP59','2019-12-01 18:52:00','0000-00-00 00:00:00',NULL,'2019-12-01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4643,1,'','2019-12-09 18:30:33','2019-12-09 20:51:34','2:21','2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4644,59,'AP59','2019-12-09 18:52:14','0000-00-00 00:00:00',NULL,'2019-12-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4645,1,'','2019-12-10 16:45:36','2019-12-10 19:25:21','2:39','2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4646,59,'AP59','2019-12-10 18:19:19','0000-00-00 00:00:00',NULL,'2019-12-10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4647,1,'','2019-12-11 11:13:46','0000-00-00 00:00:00',NULL,'2019-12-11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4648,1,'','2019-12-12 10:10:18','0000-00-00 00:00:00',NULL,'2019-12-12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4649,1,'','2019-12-13 10:34:48','2019-12-13 22:17:54','11:43','2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4650,59,'AP59','2019-12-13 15:27:35','0000-00-00 00:00:00',NULL,'2019-12-13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4651,1,'','2019-12-14 09:58:17','2019-12-14 17:53:27','7:55','2019-12-14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `modules` */

insert  into `modules`(`m_id`,`m_name`,`m_status`,`created_at`,`updated_at`,`created_by`) values (1,'Role managemnet ',1,'2019-09-13 12:41:25','2019-09-13 12:41:06',1),(20,'Department',1,'2019-09-18 11:55:04',NULL,1),(24,'Employee',1,'2019-09-23 21:02:05',NULL,1),(25,'Document',0,'2019-12-10 16:46:37','2019-12-10 16:46:37',1),(26,'Holidays',0,'2019-12-10 16:46:42','2019-12-10 16:46:42',1),(27,'Branches',0,'2019-12-10 16:46:27','2019-12-10 16:46:27',1),(28,'Leaves',0,'2019-12-10 16:46:53','2019-12-10 16:46:53',1),(29,'Attendance',0,'2019-12-10 16:47:03','2019-12-10 16:47:03',1),(30,'Payslip',0,'2019-12-10 16:47:31','2019-12-10 16:47:31',1),(31,'Notification',0,'2019-12-10 16:46:47','2019-12-10 16:46:47',1),(32,'Pending  task',0,'2019-12-10 16:47:38','2019-12-10 16:47:38',1),(33,'Termination',0,'2019-12-10 16:47:22','2019-12-10 16:47:22',1),(34,'Calendar',0,'2019-12-10 16:46:20','2019-12-10 16:46:20',1),(35,'Assign work',1,'2019-12-09 18:31:03',NULL,1),(36,'Questions',1,'2019-12-13 11:32:49',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

/*Data for the table `modules_menu` */

insert  into `modules_menu`(`m_m_id`,`m_name`,`m_menu_name`,`m_menu_url`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'Roles','user/roles',1,'2019-05-20 10:22:03','2019-08-27 21:46:21',1),(2,1,'Users Rights','user/rights',1,'2019-05-20 10:22:21','2019-08-27 21:46:26',1),(3,1,'Users','user/add',1,'2019-05-20 10:22:38','2019-08-27 21:46:34',1),(41,11,'Patients','reports/patients',2,'2019-07-02 20:49:51','2019-09-13 12:38:51',1),(68,20,'Add','department/add',1,'2019-09-18 11:55:39',NULL,1),(69,20,'List','department',1,'2019-09-18 11:55:51',NULL,1),(73,24,'Add','employee/add',1,'2019-09-23 21:02:21',NULL,1),(74,24,'List','employee',1,'2019-09-23 21:02:38',NULL,1),(75,25,'Add','document/add',1,'2019-09-23 21:03:15',NULL,1),(76,25,'List','document/list',1,'2019-09-23 21:03:28',NULL,1),(77,26,'Add','holidays/add',1,'2019-09-24 09:03:35',NULL,1),(78,26,'List','holidays',1,'2019-09-24 09:03:45',NULL,1),(79,27,'Add','branches/add',1,'2019-09-26 22:31:27','2019-09-26 22:32:07',1),(80,27,'List','branches',1,'2019-09-26 22:31:55','2019-09-26 22:32:12',1),(81,28,'Apply','leaves/add',1,'2019-09-28 12:28:32',NULL,1),(82,28,'List','leaves',1,'2019-09-28 12:28:43',NULL,1),(83,28,'Set Days','leaves/setdays',1,'2019-10-03 13:33:54',NULL,1),(84,29,'Upload','attendance/upload',1,'2019-10-03 16:15:41',NULL,1),(85,30,'Genrate','payslip/index',1,'2019-10-03 16:16:05',NULL,1),(86,31,'Add','notification/add',1,'2019-10-04 21:09:19',NULL,1),(87,31,'List','notification',1,'2019-10-04 21:09:34',NULL,1),(88,1,'Users list','user/lists',1,'2019-10-14 10:42:24',NULL,1),(89,32,'Notice period','pendingtask',2,'2019-11-10 21:09:34','2019-11-10 22:18:33',1),(90,32,'Probation','pending/probation',0,'2019-11-10 21:10:07','2019-12-01 18:02:06',1),(91,32,'RESIGNATION ','resignation/lists',1,'2019-11-10 21:10:23','2019-11-10 22:19:04',1),(92,32,'Termination','pending/termination',2,'2019-11-10 21:11:04','2019-11-10 22:18:24',1),(93,33,'Add','termination',1,'2019-11-12 20:29:07','2019-11-12 21:17:36',1),(94,33,'List','termination/lists',1,'2019-11-12 21:17:27',NULL,1),(95,32,'Attendance regulation','pending/attendance_regulation',1,'2019-11-21 19:43:38',NULL,1),(96,34,'List','calendar/index',1,'2019-11-25 21:42:09',NULL,1),(97,35,'Add','assignwork/add',1,'2019-12-09 18:31:32',NULL,1),(98,35,'List','assignwork/index',1,'2019-12-09 18:31:46','2019-12-10 18:08:11',1),(99,36,'Add','questions',1,'2019-12-13 11:33:47',NULL,1),(100,36,'List','questions',1,'2019-12-13 11:34:01',NULL,1);

/*Table structure for table `month_tab` */

DROP TABLE IF EXISTS `month_tab`;

CREATE TABLE `month_tab` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `month_tab` */

insert  into `month_tab`(`m_id`,`month_name`) values (1,'january'),(2,'february'),(3,'march'),(4,'april'),(5,'may'),(6,'june'),(7,'july'),(8,'august'),(9,'september'),(10,'october'),(11,'november'),(12,'december');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`q_id`,`qno`,`type`,`name`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'OPD','OPD Registration & Billing Process',1,'2019-12-13 11:54:59','2019-12-13 12:31:19',1),(2,2,'OPD','Doctor Consultation',1,'2019-12-13 12:21:48',NULL,1),(3,3,'OPD','Diagnostic Services',1,'2019-12-13 12:31:50',NULL,1),(4,4,'OPD','Nurses & Other Staff Service',1,'2019-12-13 12:32:02',NULL,1),(5,5,'OPD','Pharmacy Service',1,'2019-12-13 12:32:28',NULL,1),(6,6,'OPD','Overall OP Services Experience',1,'2019-12-13 12:32:45',NULL,1),(7,7,'OPD','Do you recommend Sankalpa to others',1,'2019-12-13 12:32:58',NULL,1),(8,1,'IPD','Admission Process',1,'2019-12-13 12:33:35',NULL,1),(9,2,'IPD','Wards & Rooms Cleanliness',1,'2019-12-13 12:33:46',NULL,1),(10,3,'IPD','Toilets Cleanliness',1,'2019-12-13 12:33:57',NULL,1),(11,4,'IPD','Room Service & Facilities',1,'2019-12-13 12:34:08',NULL,1),(12,5,'IPD','Nursing Services',1,'2019-12-13 12:34:22',NULL,1),(13,6,'IPD','Treating Doctor Services',1,'2019-12-13 12:34:37',NULL,1),(14,7,'IPD','House Keeping & Security Services',1,'2019-12-13 12:34:51',NULL,1),(15,8,'IPD','Admin Staff Services',1,'2019-12-13 12:35:07',NULL,1),(16,9,'IPD','Food Quality & Dietician Services',1,'2019-12-13 12:35:18',NULL,1),(17,10,'IPD','Billing & Discharge Process',1,'2019-12-13 12:35:28','2019-12-13 13:53:23',1),(19,8,'OPD','testign vasu',1,'2019-12-13 17:53:06',NULL,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion_list` */

insert  into `suggestion_list`(`id`,`a_id`,`replayed_id`,`comment`,`type`,`status`,`created_at`,`created_by`) values (1,55,55,'try to  check ','Replay',1,'2019-10-11 11:49:01',NULL),(2,55,55,'ccvxzcv','Replay',1,'2019-10-11 11:49:14',NULL),(3,55,55,'xcvcvxcv','Replay',1,'2019-10-11 11:49:21',NULL),(4,55,1,'cvcxzv','Replayed',1,'2019-10-11 12:10:05',1),(5,55,55,'hllo','Replay',1,'2019-10-11 12:10:37',55),(6,54,1,'hllo  hi  how  are you','Replayed',1,'2019-10-11 12:11:51',1),(7,55,1,'xczXc','Replayed',1,'2019-10-11 12:12:34',1),(8,51,51,'xczXC','Replay',1,'2019-10-13 14:22:20',51),(9,51,51,'dsfasdfsadf','Replay',1,'2019-10-13 14:24:00',51),(10,54,54,'cvzxcvzXVC','Replay',1,'2019-10-13 14:24:15',54);

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
