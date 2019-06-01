CREATE TABLE `task` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `summary` text,
  `type` varchar(45) NOT NULL,
  `bounty` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text,
  `owner` int(11) NOT NULL,
  `enclosure` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `owner_id_idx` (`owner`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
