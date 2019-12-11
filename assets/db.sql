/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.32-MariaDB : Database - hrms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hrms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hrms`;

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
  `department` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`d_id`,`department`,`status`,`created_at`,`updated_at`,`created_by`) values (21,'sales',1,'2018-11-02 09:26:32','2018-11-02 09:26:32',0),(22,'ggg',1,'2018-11-02 09:26:39','2018-11-06 14:30:59',0),(23,'kkkk',1,'2018-11-06 14:07:05','2018-11-06 14:07:05',8);

/*Table structure for table `emp_leave_apply_tab` */

DROP TABLE IF EXISTS `emp_leave_apply_tab`;

CREATE TABLE `emp_leave_apply_tab` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(200) NOT NULL,
  `no_of_days` int(3) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `applied_date` date NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_leave_apply_tab` */

/*Table structure for table `emp_leaves_tab` */

DROP TABLE IF EXISTS `emp_leaves_tab`;

CREATE TABLE `emp_leaves_tab` (
  `e_l_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `l_date` date NOT NULL,
  UNIQUE KEY `r` (`e_l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_leaves_tab` */

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

/*Table structure for table `holidays` */

DROP TABLE IF EXISTS `holidays`;

CREATE TABLE `holidays` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_name` varchar(250) DEFAULT NULL,
  `holiday_date` varchar(250) DEFAULT NULL,
  `holiday_day` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `holidays` */

insert  into `holidays`(`h_id`,`holiday_name`,`holiday_date`,`holiday_day`,`status`,`created_at`,`updated_at`,`created_by`) values (3,'crismas','10-12-2018','sunday',1,'2018-11-02 12:52:08','2018-11-02 12:52:08',0),(4,'hbjm','2018-11-02','wed',1,'2018-11-02 09:39:46','2018-11-02 09:39:46',0),(5,'hbjm','2018-11-06','sunday',1,'2018-11-02 12:43:02','2018-11-02 12:43:02',0),(6,'hbjm','2018-11-02','wed',1,'2018-11-02 12:51:47','2018-11-02 12:51:47',0);

/*Table structure for table `leaves` */

DROP TABLE IF EXISTS `leaves`;

CREATE TABLE `leaves` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `leave_type` varchar(250) DEFAULT NULL,
  `from_date` varchar(250) DEFAULT NULL,
  `to_date` varchar(250) DEFAULT NULL,
  `number_of_days` varchar(250) DEFAULT NULL,
  `remaining_leaves` varchar(250) DEFAULT NULL,
  `leaves_reason` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0=pending;1=accept;2=reject',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `leaves` */

insert  into `leaves`(`l_id`,`emp_id`,`leave_type`,`from_date`,`to_date`,`number_of_days`,`remaining_leaves`,`leaves_reason`,`status`,`created_at`,`updated_at`,`created_by`) values (5,3,'Medical Leave','06/11/2018','10/11/2018','2','15','fgfgh',1,'2018-11-06 11:24:35','2018-11-06 11:37:58',0),(8,7,'Casual Leave','06/11/2018','06/11/2018','12','12','ghfdghg',1,'2018-11-06 12:48:41','2018-11-06 12:48:41',0),(9,7,'Medical Leave','06/11/2018','06/11/2018','12','12','ghdfgh',1,'2018-11-06 12:50:37','2018-11-06 12:50:37',0),(10,7,'Medical Leave','06/11/2018','06/11/2018','12','12','hjfgjhfgjhfghj',0,'2018-11-06 13:00:58','2018-11-06 13:00:58',0),(11,5,'Casual Leave','06/11/2018','06/11/2018','3','rt','fgdsfgdfg',1,'2018-11-06 13:09:31','2018-11-06 13:09:56',0),(12,5,'Medical Leave','07/11/2018','06/11/2018','2',NULL,'hh',1,'2018-11-06 13:18:31','2018-11-06 13:23:02',0),(13,5,'Casual Leave','06/11/2018','21/11/2018','2',NULL,'ttt',0,'2018-11-06 13:20:50','2018-11-06 13:20:50',0),(15,5,'Casual Leave','28/11/2018','21/11/2018','12',NULL,'fghghj',0,'2018-11-08 11:59:55','2018-11-08 11:59:55',3),(17,5,'Casual Leave','27/11/2018','28/11/2018','2',NULL,'fhgfh',0,'2018-11-08 12:02:44','2018-11-08 12:02:44',3),(18,5,'Medical Leave','28/11/2018','21/11/2018','12',NULL,'gfhgfjhg',0,'2018-11-08 12:49:23','2018-11-08 12:49:23',3);

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
  `updated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_report` */

/*Table structure for table `month_tab` */

DROP TABLE IF EXISTS `month_tab`;

CREATE TABLE `month_tab` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `month_tab` */

insert  into `month_tab`(`m_id`,`month_name`) values (1,'january'),(2,'february'),(3,'march'),(4,'april'),(5,'may'),(6,'june'),(7,'july'),(8,'august'),(9,'september'),(10,'october'),(11,'november'),(12,'december');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`r_id`,`role`,`status`,`created_at`) values (1,'Admin',1,'2018-10-29 10:58:13'),(2,'Hr',1,'2018-10-29 10:58:30'),(3,'Sales Man',1,'2018-10-29 10:59:03'),(8,'super',1,'2018-11-06 14:56:08');

/*Table structure for table `shift` */

DROP TABLE IF EXISTS `shift`;

CREATE TABLE `shift` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `shift` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `shift` */

insert  into `shift`(`s_id`,`shift`,`status`,`created_at`,`updated_at`,`created_by`) values (9,'A',1,'2018-11-02 09:25:32','2018-11-02 09:25:32',0),(10,'B',1,'2018-11-02 09:25:37','2018-11-02 09:25:37',0),(11,'C',1,'2018-11-06 13:47:28','2018-11-06 13:47:28',8);

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
