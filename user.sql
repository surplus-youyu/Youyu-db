CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL DEFAULT '小虾米',
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL DEFAULT '',
  `gender` varchar(45) NOT NULL DEFAULT 'unknown',
  `balance` int(11) NOT NULL DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '18',
  `avatar` varchar(255) NOT NULL DEFAULT 'default',
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
