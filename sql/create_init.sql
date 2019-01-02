/*CTREATE SCHEMA*/
CREATE SCHEMA `ikea` ;

/*CREATE TABLE*/
CREATE TABLE `ikea`.`member` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(10) NULL,
  `sex` VARCHAR(10) NULL,
  `address` VARCHAR(300) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `ikea`.`product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `price` VARCHAR(45) NULL,
  `width` VARCHAR(45) NULL COMMENT 'cm\n',
  `depth` VARCHAR(45) NULL COMMENT 'cm\n',
  `height` VARCHAR(45) NULL COMMENT 'cm\n',
  `category_id` INT NULL,
  `source` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `category_id_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `ikea`.`category` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE);

CREATE TABLE `ikea`.`wish_list` (
  `mid` INT NOT NULL,
  `pid` INT NOT NULL,
  `add_date` DATETIME NULL DEFAULT now(),
  PRIMARY KEY (`mid`, `pid`),
  INDEX `pid_idx` (`pid` ASC) VISIBLE,
  CONSTRAINT `mid`
    FOREIGN KEY (`mid`)
    REFERENCES `ikea`.`member` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `pid`
    FOREIGN KEY (`pid`)
    REFERENCES `ikea`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE);

CREATE TABLE `ikea`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `vendor` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `ikea`.`export` (
  `id` INT NOT NULL,
  `mid` INT NOT NULL,
  `export_date` DATETIME NULL,
  `pid` INT NULL,
  `p_price` VARCHAR(45) NULL,
  `total_price` VARCHAR(45) NULL,
  PRIMARY KEY (`id`, `mid`));

