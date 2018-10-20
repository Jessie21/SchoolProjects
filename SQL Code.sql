create database jobhoundapp;
use jobhoundapp;
CREATE TABLE `jobhoundapp`.`jobs` (
  `jobID` INT NOT NULL AUTO_INCREMENT,
  `jobName` VARCHAR(50) NOT NULL,
  `jobLoc` VARCHAR(50) NOT NULL,
  `jobCompany` VARCHAR(30) NOT NULL,
  `jobSalMin` INT NOT NULL,
  `jobSalMax` INT NOT NULL,
  `jobHours` VARCHAR(50) NOT NULL,
  `jobPosition` VARCHAR(15) NOT NULL,
  `jobEduLvl` VARCHAR(20) NOT NULL,
  `jobMajor` VARCHAR(50) NOT NULL,
  `jobDesc` VARCHAR(5000) NOT NULL,
  `jobReq` VARCHAR(5000) NOT NULL,
  PRIMARY KEY (`jobID`));


CREATE TABLE `jobhoundapp`.`users` (
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `accounttype` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`username`));

CREATE TABLE `jobhoundapp`.`jobtoemployer` (
  `eUsername` VARCHAR(20) NOT NULL,
  `eJobID` INT NOT NULL,
  PRIMARY KEY (`eUsername`, `eJobID`));
