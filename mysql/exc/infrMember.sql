use nct;

INSERT INTO `nct`.`infrMember`
(
`ifmmSeq`,
`ifmmDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`
)
VALUES(
1,
0,
now(),
now(),
now(),
now(),
0,
0,
"김승태",
"iufan1526",
"1232134",
now(),
3,
"1997-11-19",
12,
6,
null,
0,
12324,
null,
1,
1,
1
);
select * from infrCodeGroup;
select * from infrMember;
select * from infrCode;
select
	a.ifcdSeq
    ,b.ifcgName
    ,a.infrCodeGroup_ifcgSeq
    ,a.ifcdName
    ,a.ifcdUseNy
    ,a.ifcdOrder
from infrCode a
	left join infrCodeGroup b on b.ifcgSeq = a.infrCodeGroup_ifcgSeq;
    

INSERT INTO `nct`.`infrMemberEmail`
(
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmeDelNy`,
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailAcount`,
`ifmeEmailDomainCd`,
`ifmmSeq`)
VALUES(
now(),
now(),
now(),
now(),
0,
0,
14,
"iufan1526",
17,
1);
select * from infrMemberEmail;
select * from infrCodeGroup;
select * from infrMember;
select * from infrCode;

select 
	a.ifmmName,
    b.ifmeTypeCd,
	c.ifcdName,
    b.ifmeEmailAcount,
    b.ifmeEmailDomainCd,
    c.ifcdName
    from infrMember a
		left join infrMemberEmail b on b.ifmmSeq  = a.ifmmSeq
        left join infrCode c on c.ifcdSeq = b.ifmeTypeCd
        left join infrCode c on c.ifcdSeq = b.ifmeEmailDomainCd;
        
        
select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
,b.ifcdUseNy
,b.ifcdDelNy
from infrCodeGroup a
	left join infrCode b on b.infrCodeGroup_ifcgSeq = a.ifcgSeq
order by 
	a.ifcgSeq ,
    b.ifcdOrder desc;

