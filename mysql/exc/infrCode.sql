use nct;
-- 코드그룹 및 코드 insert 
iNSERT INTO `nct`.`infrCodeGroup`
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
"옷 사이즈",
1,
14
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
"56",
1,
12,
17
);

-- 경계선------------------------------------



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
select * from infrNationality;

INSERT INTO `nct`.`infrMemberNationality`

(
`ifMnaDefultNy`,
`ifmnaDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`,
`ifnaSeq1`)
VALUES
(
0,
0,
now(),
now(),
now(),
now(),
2,
2);
select * from infrMemberNationality;

-- 데이터 입력
INSERT INTO `nct`.`infrMemberQna`
(
`ifjqDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifjqbDelNy`,
`ifmmSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
48,
"경찰",
0,
2
)
;
select * from infrMemberAddress;

INSERT INTO `nct`.`infrMemberAddress`
(
`ifmaDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaTitle`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmmSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
0,
42,
"관리자집",
"서울특별시",
"서초구",
123123-12,
2);

select * from infrMemberHobby;

INSERT INTO `nct`.`infrMemberHobby`
(
`ifhbDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifhbCd`,
`ifmmSeq`,
`ifhbOrder`,
`ifhfUesNy`)
VALUES
(
0,
now(),
now(),
now(),
now(),
39,
1,
1,
1);

select * from infrMemberAddressOnline;
INSERT INTO `nct`.`infrMemberAddressOnline`
(
`ifaoDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifmmSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
33,
1,
35,
"www.feacebook.com",
"관리자 페이스북",
2
);

select * from infrMemberPhone;
INSERT INTO `nct`.`infrMemberPhone`
(
`ifmpDelNy`,
`regDate`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmpDefaultNy`,
`ifmeTypeCd`,
`ifmeDeviceCd`,
`ifmeTelecomCd`,
`ifmeNumber`,
`ifmmSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
1,
20,
24,
27,
"01080071525",
2);

select * from infrMemberEmail;


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
"pdfa88211",
18,
2);


select * from infrMemberEmail;
-- --------------------------
-- 코드그룹 코드테이블 조회
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
    b.ifcdOrder ;




