CREATE TABLE `test2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `seq2` VARCHAR(45) NOT NULL,
  `seq3` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`, `seq2`, `seq3`)
  );
  
  
  insert into test2(
	seq2
    ,seq3
    ,name
  )values(
	 "23"
    ,"213"
    ,'김승태'
  );


select * from test2;
desc test2;

alter table test2 add vall int;
alter table test2 add name varchar(100);
alter table test2 change vall dull int;
alter table test2 modify seq3 int;

 insert into test2(
	seq2
    ,seq3
    ,name
  )values(
	 "2"
    ,"5"
    ,'한승준'
  );
  
  select * from test2;
  
  update test set
	name = "소수환"
  where seq =3;
  
  delete from test
  where 1=1
	and seq = 3;
  select * from test2;
  desc test2;
  
  truncate test2;


select * from test2;
 insert into test2(
	seq2
    ,seq3
    ,name
  )values(
	 "2"
    ,"5"
    ,'한승준'
  );
  
update test2 set
	name = "소수환"
where seq = 5;

delete from test2
where 1=1
	and seq = 5;
truncate test2;