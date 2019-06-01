CREATE TABLE `swsad`.`task_result` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tid` INT NOT NULL,
  `uid` INT NOT NULL,
  `result` TEXT NOT NULL,
  `enclosure` VARCHAR(1024) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `tr_uer_fk_idx` (`uid` ASC),
  INDEX `tr_task_idx` (`tid` ASC),
  CONSTRAINT `tr_uer_fk`
    FOREIGN KEY (`uid`)
    REFERENCES `swsad`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tr_task`
    FOREIGN KEY (`tid`)
    REFERENCES `swsad`.`task` (`tid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
