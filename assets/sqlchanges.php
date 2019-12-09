ALTER TABLE `e_health`.`appointments_booking`   
  ADD COLUMN `region` TEXT NULL AFTER `status`;

  ALTER TABLE `e_health`.`appointments_booking`   
  ADD COLUMN `receiving_time` TIMESTAMP NULL AFTER `created_by`;
  
ALTER TABLE `e_health`.`appointments_booking`   
  ADD COLUMN `receiving_id` INT NULL AFTER `receiving_time`;
  
  ALTER TABLE `e_health`.`appointments_booking`   
  ADD COLUMN `completed_time` TIMESTAMP NULL AFTER `receiving_id`,
  ADD COLUMN `fellowup_days` INT(11) NULL AFTER `completed_time`;

  
  ALTER TABLE `e_health`.`appointments_booking`   
  ADD COLUMN `completed_by` INT(11) NULL AFTER `fellowup_days`;
  
  
  ALTER TABLE `hms`.`admin`   
  ADD COLUMN `designation` VARCHAR(250) NULL AFTER `dep_id`,
  ADD COLUMN `ifsc` VARCHAR(250) NULL AFTER `bankname`;


  ALTER TABLE `hms`.`leaves`   
  ADD COLUMN `reason` TEXT NULL AFTER `message`;

