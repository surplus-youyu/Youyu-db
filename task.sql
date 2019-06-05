CREATE TABLE `task` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL, # 任务题目
  `summary` text, # 任务描述
  `type` varchar(45) NOT NULL,
  `bounty` int(10) unsigned NOT NULL DEFAULT '0', # 报酬
  `extra` text, # 问卷题目的内容
  `owner` int(11) NOT NULL,
  `enclosure` varchar(1024) NOT NULL DEFAULT '', # 附件
  PRIMARY KEY (`tid`),
  KEY `owner_id_idx` (`owner`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8
