CREATE DATABASE travelAgency;
USE travelAgency;
SHOW TABLES;
CREATE TABLE `travelagency`.`travel_details` (
  `t_id` INT NOT NULL AUTO_INCREMENT,
  `t_emailId` VARCHAR(45) NULL,
  `t_password` VARCHAR(45) NULL,
  `t_age` INT NULL,
  `t_mobileNo` BIGINT NULL,
  `t_place` VARCHAR(45) NULL,
  `t_country` VARCHAR(45) NULL,
  `t_cost` FLOAT NULL,
  `t_dateOfTravel` DATETIME NULL,
  `t_daysOfTravel` INT NULL,
  `t_travellingType` VARCHAR(45) NULL,
  `t_noOfBranches` INT NULL,
  `t_noOfTravellers` INT NULL,
  PRIMARY KEY (`t_id`));
	ALTER TABLE `travelagency`.`travel_details` 
	ADD COLUMN `t_createdBy` VARCHAR(45) NULL AFTER `t_noOfTravellers`,
	ADD COLUMN `t_createdAt` DATETIME NULL AFTER `t_createdBy`;
	SELECT * FROM travel_details;
    
    CREATE TABLE `travelagency`.`registration_details` (
  `r_id` INT NOT NULL AUTO_INCREMENT,
  `r_userName` VARCHAR(45) NULL,
  `r_email` VARCHAR(45) NULL,
  `r_password` VARCHAR(45) NULL,
  `r_city` VARCHAR(45) NULL,
  `r_country` VARCHAR(45) NULL,
  `r_mobileNo` BIGINT NULL,
  `r_indianCitizen` TINYINT NULL,
  PRIMARY KEY (`r_id`));
  SELECT * FROM registration_details;
  
  CREATE TABLE `travelagency`.`vendor_detaiks` (
  `v_id` INT NOT NULL AUTO_INCREMENT,
  `v_name` VARCHAR(45) NULL,
  `v_email` VARCHAR(45) NULL,
  `v_loginName` VARCHAR(45) NULL,
  `v_password` VARCHAR(45) NULL,
  `v_address` VARCHAR(45) NULL,
  `v_gstNo` VARCHAR(45) NULL,
  `v_createdBy` VARCHAR(45) NULL,
  `v_createdAt` VARCHAR(45) NULL,
  `v_updatedBy` VARCHAR(45) NULL,
  `v_updatedAt` VARCHAR(45) NULL,
  PRIMARY KEY (`v_id`));
  ALTER TABLE `travelagency`.`vendor_details` 
CHANGE COLUMN `v_createdAt` `v_createdAt` DATETIME NULL DEFAULT NULL ,
CHANGE COLUMN `v_updatedAt` `v_updatedAt` DATETIME NULL DEFAULT NULL ;
-- ALTER TABLE `travelagency`.`vendor_detaiks` 
-- RENAME TO  `travelagency`.`vendor_details` ;

SELECT * FROM vendor_details;

CREATE TABLE `travelagency`.`product_details` (
  `name` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NULL,
  `quantity` INT NULL,
  `price` FLOAT NULL,
  PRIMARY KEY (`name`));
ALTER TABLE `travelagency`.`product_details` 
DROP COLUMN `product_detailscol`;

ALTER TABLE `travelagency`.`product_details` 
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT AFTER `price`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);
;
SELECT * FROM product_details;

CREATE TABLE `travelagency`.`groceries_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `quantity` INT NULL,
  `price` FLOAT NULL,
  `type` VARCHAR(45) NULL,
  `brand` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));    
    
SELECT * FROM groceries_detail;    