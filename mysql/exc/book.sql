use world;

show tables;



insert into book(
	
    seq,
    bookNumber,
    author,
    publisher,
    bookDate,
    usedBook,
    price,
    ebookPrice


)values(
	
    1
    ,1
    ,"고경희"
    ,"이지스퍼블리싱"
    ,"2021-01-01"
    ,11
    ,27000
    ,19000



);

select * from book;



 drop table test;
  select * from test;
  
CREATE TABLE `test` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`)
  );  
  
  insert into test(
	name
  )values(
  
	'김승태'
  );
  
  select * from tset;







