INSERT INTO `nct`.`infrCodeGroup`
(
`ifcgDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`
)
VALUES
(
0,
now(),
now(),
now(),
now(),
"회원 보안질문",
1,
13
);


select
  ifcgSeq
 ,ifcgName
 ,ifcgOrder
 ,ifcgUseNy
 ,modDateTimeSvr
 ,modDateTime
 ,regDateTimeSvr
 ,regDate
 ,ifcgDelNy
from infrCodeGroup;


INSERT INTO `nct`.`infrCode`
(
`ifcdDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`infrCodeGroup_ifcgSeq`
)

VALUES
 ( 0,
now(),
now(),
now(),
now(),
"장래희망은?",
1,
4,
14
);
select
	ifcdSeq
    ,infrCodeGroup_ifcgSeq
    ,ifcdName
    ,ifcdUseNy
    ,ifcdOrder
    ,ifcdDelNy
    ,regDate
    ,regDateTimeSvr
    ,modDateTime
    ,modDateTimeSvr
from infrCode;


select
	a.ifcgSeq
    ,a.ifcgName
    ,b.ifcdSeq
    ,b.ifcdName
    ,b.ifcdOrder
    from infrCodeGroup a
		left join infrCode b on b.infrCodeGroup_ifcgSeq =a.ifcgSeq
	order by a.ifcgSeq,b.ifcdOrder;
    
delete from infrCode where ifcdSeq = null;


INSERT INTO `nct`.`infrNationality`
(
`ifnaDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`
)
VALUES(
0,
now(),
now(),
now(),
now(),
"미국",
"US",
"USA",
1,
2
);

select
	ifnaSeq
    ,ifnaOrder
    ,ifnaName
    ,ifnaCode2Char
    ,ifnaCode3Char
    ,ifnaUseNy
    ,ifnaDelNy
    ,regDate
    ,regDateTimeSvr
    ,modDateTime
    ,modDateTimeSvr
from infrNationality;





