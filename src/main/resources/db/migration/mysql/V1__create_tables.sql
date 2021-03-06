CREATE TABLE `hotmart`.`buyer` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `hotmart`.`productcategory` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `hotmart`.`salesman` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `hotmart`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NOT NULL,
  `description` VARCHAR(250) NOT NULL,
  `creationDate` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `productCategory` FOREIGN KEY (`id`) REFERENCES `hotmart`.`productcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


CREATE TABLE `hotmart`.`sale` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `salesman` FOREIGN KEY (`id`) REFERENCES `hotmart`.`salesman` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `buyer` FOREIGN KEY (`id`) REFERENCES `hotmart`.`buyer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product` FOREIGN KEY (`id`) REFERENCES `hotmart`.`product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION);


