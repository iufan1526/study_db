use world;

show tables;


insert into cafe(
	seq
    ,name
    ,tableNumbaer -- 오타
    ,chair
    ,adress
    ,area
    ,ceo


)values(
	1
    ,'별다방'
    ,1
    ,1
    ,'경기도 화성시'
    ,1
    ,'김승태'

);


-- varchar 은 '또는 " 으로감싼다
-- int 는 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호 


select * from cafe;

drop table cafe;

create table cafe(

	seq int,
    name varchar(100),
    tableNumbaer int,
    chair int,
    adress varchar(100),
    area int,
    ceo varchar(100)


);

