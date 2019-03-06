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
-- Table `nuancesdephp`.`permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`permission` (
  `idpermission` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thename` VARCHAR(60) NOT NULL,
  `theperm` TINYINT UNSIGNED NULL DEFAULT 2 COMMENT '2 -> non actif\n1 -> auteur actif\n0 -> administrateur',
  PRIMARY KEY (`idpermission`),
  UNIQUE INDEX `thename_UNIQUE` (`thename` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nuancesdephp`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`user` (
  `iduser` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelogin` VARCHAR(80) NOT NULL,
  `thepwd` CHAR(64) NOT NULL COMMENT 'sha-256',
  `thename` VARCHAR(200) NOT NULL,
  `thebio` TEXT NULL,
  `themail` VARCHAR(200) NOT NULL,
  `permission_idpermission` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE INDEX `thelogin_UNIQUE` (`thelogin` ASC),
  INDEX `fk_user_permission1_idx` (`permission_idpermission` ASC),
  CONSTRAINT `fk_user_permission1`
    FOREIGN KEY (`permission_idpermission`)
    REFERENCES `nuancesdephp`.`permission` (`idpermission`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nuancesdephp`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`article` (
  `idarticle` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` VARCHAR(200) NOT NULL,
  `thetext` TEXT NOT NULL,
  `thedate` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `user_iduser` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticle`),
  INDEX `fk_article_user_idx` (`user_iduser` ASC),
  CONSTRAINT `fk_article_user`
    FOREIGN KEY (`user_iduser`)
    REFERENCES `nuancesdephp`.`user` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nuancesdephp`.`categorie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`categorie` (
  `idcategorie` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`idcategorie`),
  UNIQUE INDEX `thetitle_UNIQUE` (`thetitle` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nuancesdephp`.`categorie_has_article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nuancesdephp`.`categorie_has_article` (
  `categorie_idcategorie` INT UNSIGNED NOT NULL,
  `article_idarticle` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`categorie_idcategorie`, `article_idarticle`),
  INDEX `fk_categorie_has_article_article1_idx` (`article_idarticle` ASC),
  INDEX `fk_categorie_has_article_categorie1_idx` (`categorie_idcategorie` ASC),
  CONSTRAINT `fk_categorie_has_article_categorie1`
    FOREIGN KEY (`categorie_idcategorie`)
    REFERENCES `nuancesdephp`.`categorie` (`idcategorie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categorie_has_article_article1`
    FOREIGN KEY (`article_idarticle`)
    REFERENCES `nuancesdephp`.`article` (`idarticle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
