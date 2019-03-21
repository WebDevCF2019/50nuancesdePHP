-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema nuancesdephp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nuancesdephp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nuancesdephp` DEFAULT CHARACTER SET utf8 ;
USE `nuancesdephp` ;

-- -----------------------------------------------------
-- Table `nuancesdephp`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`images` (
  `idimages` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `theurl` VARCHAR(128) NOT NULL,
  `thedate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_iduser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idimages`, `user_iduser`),
  INDEX `fk_images_user1_idx` (`user_iduser` ASC),
  UNIQUE INDEX `user_iduser_UNIQUE` (`user_iduser` ASC),
  CONSTRAINT `fk_images_user1`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `nuancesdephp`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
