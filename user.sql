create table user(
  uid int unsigned not null primary key auto_increment,
  password varchar(40) not null, 
  nick_name varchar(40) not null,
  age smallint unsigned not null,
  gender char(1) not null,
  balance float default 0.0,
  phone varchar(40) not null,
  email varchar(40) not null unique
)DEFAULT CHARSET=utf8mb4;
