create table user(
  id int unsigned not null primary key,
  password varchar(40) not null, 
  real_name varchar(40) not null,
  nick_name varchar(40) not null,
  age smallint unsigned not null,
  gender char(1) not null,
  balance float default 0.0,
  major varchar(40),
  grade smallint,
  phone varchar(40) not null,
  email varchar(40) not null
)DEFAULT CHARSET=utf8mb4;