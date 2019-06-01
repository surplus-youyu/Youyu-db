CREATE TABLE `swsad`.`user` (
  `uid` INT NOT NULL AUTO_INCREMENT,
  `nickname` VARCHAR(45) NOT NULL DEFAULT '小虾米',
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NOT NULL DEFAULT 'unknown',
  `balance` INT NOT NULL DEFAULT 0,
  `age` INT NOT NULL DEFAULT 18,
  `avatar` VARCHAR(255) NOT NULL DEFAULT 'default',
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC));
