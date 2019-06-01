CREATE TABLE `swsad`.`task` (
  `tid` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `summary` TEXT NULL,
  `type` VARCHAR(45) NOT NULL,
  `bounty` INT UNSIGNED NOT NULL DEFAULT 0,
  `extra` TEXT NOT NULL DEFAULT '{}',
  `owner` INT NOT NULL,
  `enclosure` VARCHAR(128) NULL,
  PRIMARY KEY (`tid`),
  INDEX `owner_id_idx` (`owner` ASC),
  CONSTRAINT `owner_id`
    FOREIGN KEY (`owner`)
    REFERENCES `swsad`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
