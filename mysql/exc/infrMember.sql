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
2,
0,
now(),
now(),
now(),
now(),
1,
0,
"관리자",
"xadmin",
"1232134",
now(),
3,
"1980-01-01",
11,
6,
null,
0,
12324,
null,
1,
1,
1
);

select * from infrMember;


select 
	a.ifmmSeq
    ,a.ifmmName
    ,a.ifmmAdminNy
    ,a.ifmmDormancyNy
    ,a.ifmmDelNy
    ,a.ifmmId
    ,a.ifmmPassword
	,a.ifmmPwdModDate
    ,a.ifmmGenderCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as 성별
    ,g.ifnaSeq1
	,(select ifnaName from infrNationality where ifnaSeq = g.ifnaSeq1) as 국적
    ,a.ifmmDob
    ,a.ifmmSavedCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmSavedCd) as 보관기간
    ,a.ifmmMarriageCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifmmMarriageCd) as 결혼여부 
    ,a.ifmmChildrenNum
    ,b.ifmaTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as  주소용도
    ,b.ifmaTitle
    ,b.ifmaAddress1
    ,b.ifmaAddress2
    ,b.ifmaZipCode
    ,c.ifaoTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoTypeCd) as 온라인용도
    ,c.ifaoSnsTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as 온라인종류
    ,c.ifaoTitle
    ,c.ifaoUrl
    ,d.ifmeTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = d.ifmeTypeCd) as 이메일용도
    ,d.ifmeEmailAcount
    ,d.ifmeEmailDomainCd
    ,(select ifcdName from infrCode where ifcdSeq = d.ifmeEmailDomainCd) as 이메일도메인
    ,e.ifjqQuestionCd
    ,(select ifcdName from infrCode where ifcdSeq = e.ifjqQuestionCd) as 질문
    ,e.ifjqAnswer
    ,f.ifmeTypeCd
    ,(select ifcdName from infrCode where ifcdSeq = f.ifmeTypeCd) as 번호타입
    ,f.ifmeDeviceCd
    ,(select ifcdName from infrCode where ifcdSeq =f.ifmeDeviceCd) as 디바이스종류
    ,f.ifmeTelecomCd
    ,(select ifcdName from infrCode where ifcdSeq = f.ifmeTelecomCd) as 통신사
    ,concat(substring(f.ifmeNumber,1,3),"-",substring(f.ifmeNumber,4,4),"-",substring(f.ifmeNumber,7,4))
from
	infrMember a
    left join infrMemberAddress b on b.ifmmSeq =a.ifmmSeq
    left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy and c.ifmmSeq = a.ifmmSeq
	left join infrMemberEmail d on d.ifmmSeq = a.ifmmSeq
    left join infrMemberQna e on e.ifmmSeq = a.ifmmSeq
    left join infrMemberPhone f on f.ifmmSeq = a.ifmmSeq
    left join infrMemberNationality g on g.ifmmSeq = a.ifmmSeq
    where 1=1
    and a.ifmmDelNy = 0;
	;
    
    select * from infrMemberQna;


        


