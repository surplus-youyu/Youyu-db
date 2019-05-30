create table survey(
  id int unsigned not null auto_increment primary key auto_increment,
  publisher_id int unsigned not null,
  title varchar(40) not null,
  content varchar(5000) not null,
  bounty float not null,
  type varchar(1) not null,
  enclosure varchar(1000) not null,
  foreign key(publisher_id) references user(uid)
)DEFAULT CHARSET=utf8mb4;
