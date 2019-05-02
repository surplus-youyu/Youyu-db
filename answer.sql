create table answer(
  sid int unsigned not null,
  interviewee_id int unsigned not null,
  content varchar(5000) not null,
  primary key(sid, interviewee_id),
  foreign key(sid) references survey(id),
  foreign key(interviewee_id) references user(uid)
)DEFAULT CHARSET=utf8mb4;