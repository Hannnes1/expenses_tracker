SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
  UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
  FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE,
  SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- -----------------------------------------------------
-- Schema transactions
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `transactions`;
USE `transactions`;
-- -----------------------------------------------------
-- Table `transactions`.`transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions`.`transactions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `account` VARCHAR(20) NOT NULL,
  `verification_number` VARCHAR(20) NULL,
  `text` VARCHAR(45) NOT NULL COMMENT 'The text that comes from the bank',
  `description` VARCHAR(255) NULL COMMENT 'Description of the transaction',
  `amount` FLOAT NULL COMMENT 'The amout paid. Negative means paid out. Positive means income.',
  `category_id` INT NULL COMMENT 'The category of the transaction',
  CONSTRAINT `fk_id_categories` FOREIGN KEY (`category_id`) REFERENCES `transactions`.`categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `transactions`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `transactions`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;
SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;