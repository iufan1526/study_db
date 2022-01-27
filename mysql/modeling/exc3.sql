use world;

CREATE TABLE IF NOT EXISTS `book3` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_code` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `publisher` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;


insert into book3(
name
,publisher_code


) values(

"나미야잡화점의기적"
,3

);

insert into publisher(

name


) values (
"한빛미디어"

);


select * from book3;
select * from publisher;

-- 데이터 불러오는방법
select
	a.seq
	,a.name
	,a.publisher_code
	,b.name
from book3 as a
left join publisher as b on b.seq = a.publisher_code;
-- inner 조건에 맞는데이터만 보여줌 

select 
	a.seq
    ,a.name
    ,a.publisher_code
    ,(select name from publisher where seq = a.publisher_code)
from book3 as a;

select 
	a.seq
    ,a.name
    ,a.publisher_code
    ,(select name from publisher where seq = a.publisher_code)as publisher_code
from book3 as a;

select 
	a.seq
    ,a.name
    ,a.publisher_code
    ,getPublisherName 
from book3 as a;