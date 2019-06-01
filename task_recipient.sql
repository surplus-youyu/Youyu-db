CREATE TABLE `task_recipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL DEFAULT '-1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task_id_fk_idx` (`task_id`),
  KEY `user_id_fk_idx` (`user_id`),
  KEY `result_id_idx` (`result_id`),
  CONSTRAINT `result_id` FOREIGN KEY (`result_id`) REFERENCES `task_result` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `task_id_fk` FOREIGN KEY (`task_id`) REFERENCES `task` (`tid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
