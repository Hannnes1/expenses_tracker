-- MySQL Script generated by MySQL Workbench
-- tis 15 feb 2022 22:49:01
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema transactions
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema transactions
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `transactions` ;
USE `transactions` ;

-- -----------------------------------------------------
-- Table `transactions`.`transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions`.`transactions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `account` VARCHAR(20) NOT NULL,
  `verification_number` VARCHAR(20) NULL,
  `text` VARCHAR(45) NOT NULL COMMENT 'The text that comes from the bank',
  `description` TEXT NULL COMMENT 'Description of the transaction',
  `amount` FLOAT NULL COMMENT 'The amout paid. Negative means paid out. Positive means income.',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `transactions`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions`.`categories` (
  `id` VARCHAR(20) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `transactions`.`transaction_has_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions`.`transaction_has_category` (
  `transactions_id` INT NOT NULL,
  `categories_id` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`transactions_id`, `categories_id`),
  INDEX `fk_transaction_has_category_categories1_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `fk_transaction_has_category_transactions`
    FOREIGN KEY (`transactions_id`)
    REFERENCES `transactions`.`transactions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_transaction_has_category_categories1`
    FOREIGN KEY (`categories_id`)
    REFERENCES `transactions`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
