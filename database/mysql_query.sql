-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shopping-cart
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shopping-cart
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shopping-cart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `shopping-cart` ;

-- -----------------------------------------------------
-- Table `shopping-cart`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`product` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`product` (
  `pid` VARCHAR(45) NOT NULL,
  `pname` VARCHAR(100) NULL DEFAULT NULL,
  `ptype` VARCHAR(20) NULL DEFAULT NULL,
  `pinfo` VARCHAR(350) NULL DEFAULT NULL,
  `pprice` DECIMAL(12,2) NULL DEFAULT NULL,
  `pquantity` INT NULL DEFAULT NULL,
  `image` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `shopping-cart`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`orders` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`orders` (
  `orderid` VARCHAR(45) NOT NULL,
  `prodid` VARCHAR(45) NOT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `amount` DECIMAL(10,2) NULL DEFAULT NULL,
  `shipped` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`orderid`, `prodid`),
  INDEX `productid_idx` (`prodid` ASC) VISIBLE,
  CONSTRAINT `productid`
    FOREIGN KEY (`prodid`)
    REFERENCES `shopping-cart`.`product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `shopping-cart`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`user` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`user` (
  `email` VARCHAR(60) NOT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  `mobile` BIGINT NULL DEFAULT NULL,
  `address` VARCHAR(250) NULL DEFAULT NULL,
  `pincode` INT NULL DEFAULT NULL,
  `password` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `shopping-cart`.`transactions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`transactions` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`transactions` (
  `transid` VARCHAR(45) NOT NULL,
  `username` VARCHAR(60) NULL DEFAULT NULL,
  `time` DATETIME NULL DEFAULT NULL,
  `amount` DECIMAL(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`transid`),
  INDEX `truserid_idx` (`username` ASC) VISIBLE,
  CONSTRAINT `truserid`
    FOREIGN KEY (`username`)
    REFERENCES `shopping-cart`.`user` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `transorderid`
    FOREIGN KEY (`transid`)
    REFERENCES `shopping-cart`.`orders` (`orderid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `shopping-cart`.`user_demand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`user_demand` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`user_demand` (
  `username` VARCHAR(60) NOT NULL,
  `prodid` VARCHAR(45) NOT NULL,
  `quantity` INT NULL DEFAULT NULL,
  PRIMARY KEY (`username`, `prodid`),
  INDEX `prodid_idx` (`prodid` ASC) VISIBLE,
  CONSTRAINT `userdemailemail`
    FOREIGN KEY (`username`)
    REFERENCES `shopping-cart`.`user` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `prodid`
    FOREIGN KEY (`prodid`)
    REFERENCES `shopping-cart`.`product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `shopping-cart`.`usercart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping-cart`.`usercart` ;

CREATE TABLE IF NOT EXISTS `shopping-cart`.`usercart` (
  `username` VARCHAR(60) NULL DEFAULT NULL,
  `prodid` VARCHAR(45) NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  INDEX `useremail_idx` (`username` ASC) VISIBLE,
  INDEX `prodidcart_idx` (`prodid` ASC) VISIBLE,
  CONSTRAINT `useremail`
    FOREIGN KEY (`username`)
    REFERENCES `shopping-cart`.`user` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `prodidcart`
    FOREIGN KEY (`prodid`)
    REFERENCES `shopping-cart`.`product` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `shopping-cart`.`product`
-- -----------------------------------------------------
START TRANSACTION;
USE `shopping-cart`;
INSERT INTO `shopping-cart`.`product` (`pid`, `pname`, `ptype`, `pinfo`, `pprice`, `pquantity`) VALUES ('P001', 'APPLE iPhone 13 Pro (Graphite, 512 GB)', 'mobile', '\r\niPhone 13. boasts an advanced dual-camera system that allows you to click mesmerising pictures with immaculate clarity.', 125999.00, 1000);
INSERT INTO `shopping-cart`.`product` (`pid`, `pname`, `ptype`, `pinfo`, `pprice`, `pquantity`) VALUES ('P002', 'HP Intel Core i5 11th Gen', 'laptop', 'Hp Laptop (8 GB/512 GB SSD/Windows 11 Home) 15s- fr4000TU Thin and Light Laptop  (15.6 Inch, Natural Silver, 1.69 Kg, With MS Office)', 40990.00, 1000);
INSERT INTO `shopping-cart`.`product` (`pid`, `pname`, `ptype`, `pinfo`, `pprice`, `pquantity` ) VALUES ('P003', 'LED Smart Google TV ', 'tv', 'Mi X Pro 125 cm (50 inch) Ultra HD (4K) LED Smart Google TV with Dolby Vision IQ and 30W Dolby Atmos', 41999.00, 1000);
INSERT INTO `shopping-cart`.`product` (`pid`, `pname`, `ptype`, `pinfo`, `pprice`, `pquantity` ) VALUES ('P004', 'realme NEO 80 cm (32 inch) HD Ready LED Smart Linux TV  (RMV2101)', 'tv', 'Enjoy watching high-quality entertainment with immersive audio with the realme Smart TV Neo in your home.', 11999, 1000);
INSERT INTO `shopping-cart`.`product` (`pid`, `pname`, `ptype`, `pinfo`, `pprice`, `pquantity`) VALUES ('P005', 'REDMI Note 12 Pro 5G', 'mobile', 'Stardust Purple, 128 GB (6 GB RAM) | 16.94 cm (6.67 inch) Full HD Display | 50MP (OIS) + 8MP + 2MP | 16MP Front Camera | 5000 mAh Lithium Polymer Battery', 24999, 1000);
COMMIT;


-- -----------------------------------------------------
-- Data for table `shopping-cart`.`orders`
-- -----------------------------------------------------
START TRANSACTION;
USE `shopping-cart`;
INSERT INTO `shopping-cart`.`orders` (`orderid`, `prodid`, `quantity`, `amount`, `shipped`) VALUES ('TR10001', 'P20230423082243', 1, 125999, 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `shopping-cart`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `shopping-cart`;
INSERT INTO `shopping-cart`.`user` (`email`, `name`, `mobile`, `address`, `pincode`, `password`) VALUES ('guest@gmail.com', 'Guest User', 9876543234, 'K.P Road, Gaya, Bihar - India', 879767, 'guest');
INSERT INTO `shopping-cart`.`user` (`email`, `name`, `mobile`, `address`, `pincode`, `password`) VALUES ('admin@gmail.com', 'Admin User', 9876543459, 'ABC Colony, Newtown, West Bengal', 786890, 'admin');

COMMIT;

