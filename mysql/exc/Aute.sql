use nct ;


INSERT INTO `nct`.`infrAuth`
(
`ifatDelNy`,
`regDate`,
`regDateTimeSvr`,
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrder`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0,
now(),
now(),
1,
"회원관리자",
1,
3,
now(),
now()
);


select * from infrAuth;

INSERT INTO `nct`.`infrAuthMenu`
(
`ifauDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmuSeq`,
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`,
`ifauDesc`)
VALUES
(<{ifauSeq: }>,
<{ifauDelNy: }>,
<{regIp: }>,
<{regSeq: }>,
<{regDevice: }>,
<{regDate: }>,
<{regDateTimeSvr: }>,
<{modIp: }>,
<{modSeq: }>,
<{modDevice: }>,
<{modDateTime: }>,
<{modDateTimeSvr: }>,
<{ifatSeq: }>,
<{ifmuSeq: }>,
<{ifauRoleCd: }>,
<{ifauUseNy: }>,
<{ifauOrder: }>,
<{ifauDesc: }>);

INSERT INTO `nct`.`infrMenu`
(
`ifmuDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmuAdminNy`,
`ifmuName`,
`ifmuNameEng`,
`ifmuUrl`,
`ifmuParents`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`
)
VALUES
(
0,
now(),
now(),
now(),
now(),
1,
"테스트관리",
null,
null,
3,
2,
1,
5
);

select * from infrMenu;

INSERT INTO `nct`.`infrAuthMenu`
(
`ifauDelNy`,
`ifatSeq`,
`ifmuSeq`,
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`
)
VALUES
(
0,
1,
10,
1,
1,
1
);

select version();	

select * from infrAuthMenu;

select
	a.ifatSeq
    ,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
    ,a.ifmuSeq
    ,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifMuName
    ,a.ifauRoleCd
    ,(select ifcdName from infrCode where ifcdSeq = ifauRoleCd) as ifauRoleName
    from infrAuthMenu a
where 1=1;




