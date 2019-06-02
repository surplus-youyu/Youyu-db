CREATE TABLE `task_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` text NOT NULL,
  `enclosure` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
