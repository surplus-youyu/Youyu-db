CREATE TABLE `swsad`.`task_recipient` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `task_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `status` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `task_id_fk_idx` (`task_id` ASC),
  INDEX `user_id_fk_idx` (`user_id` ASC),
  CONSTRAINT `task_id_fk`
    FOREIGN KEY (`task_id`)
    REFERENCES `swsad`.`task` (`tid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `swsad`.`user` (`uid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
