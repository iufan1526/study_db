insert into cafe(
	seq
    ,name
    ,tableNumbaer
    ,chair
    ,adress
    ,area
    ,ceo


)values(
	10
    ,'탐앤탐스'
    ,4
    ,2332
    ,'서울시 왕십리'
    ,'3'
    ,'구창모'

);


select * from cafe where seq = 8;
select * from cafe where name = "스타벅스" or ceo = "김승태";

select * from cafe where seq > 5;

select * from cafe where seq < 5;

select * from cafe where seq >= 5;

select * from cafe where seq <= 5;

select * from cafe where seq <> 5;


select * from cafe where name like "%벅스";