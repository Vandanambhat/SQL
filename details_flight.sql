create database details_flight;
use details_flight;
show tables;

 create table flight_details(
f_id tinyint primary key,
f_name varchar(30),
f_dest varchar(30),
f_source varchar(30) 

 );
 
 select * from flight_details;
 
 CREATE TABLE `details_flight`.`company_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NULL,
  `c_type` VARCHAR(45) NULL,
  `c_domain` VARCHAR(45) NULL,
  `c_website` VARCHAR(45) NULL,
  PRIMARY KEY (`c_id`));
  
   select * from company_details;
   
   CREATE TABLE `details_flight`.`country_details` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `continent` VARCHAR(45) NULL,
  `population` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
select * from country_details;

CREATE TABLE `details_flight`.`state_details` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `noOfDistricts` INT NULL,
  `capitalCity` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  select * from state_details;

CREATE TABLE `details_flight`.`tour_info` (
  `id` INT NOT NULL,
  `location` VARCHAR(45) NULL,
  `sea_level` VARCHAR(45) NULL,
  `famous_for` VARCHAR(45) NULL,
  `entry_fees` VARCHAR(45) NULL,
  `season` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
SELECT  COUNT(*) FROM tour_info;
   select * from tour_info;
   
   CREATE TABLE `details_flight`.`silk_manufactures` (
  `id` INT NOT NULL,
  `mf_state` VARCHAR(45) NULL,
  `percentage_of_prod` FLOAT NULL,
  `elasticity` VARCHAR(45) NULL,
  `silk_type` VARCHAR(45) NULL,
  `silk_cost` DOUBLE NULL,
  `quality` TINYINT NULL,
  PRIMARY KEY (`id`));
  
   select * from silk_manufactures;

CREATE TABLE `details_flight`.`website_details` (
  `w_webId` INT NOT NULL,
  `w_name` VARCHAR(45) NULL,
  `w_url` VARCHAR(45) NULL,
  `w_since` INT NULL,
  `w_owner` VARCHAR(45) NULL,
  `w_domain` VARCHAR(45) NULL,
  PRIMARY KEY (`w_webId`));
  
  SELECT * FROM website_details;
  
  CREATE TABLE `details_flight`.`product_details` (
  `p_id` INT NOT NULL AUTO_INCREMENT,
  `p_name` VARCHAR(45) NULL,
  `p_quantity` INT NULL,
  `p_brand` VARCHAR(45) NULL,
  `p_price` FLOAT NULL,
  `p_rating` FLOAT NULL,
  PRIMARY KEY (`p_id`));
  
  SELECT * FROM product_details;
  