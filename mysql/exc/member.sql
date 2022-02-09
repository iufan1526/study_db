use world;


CREATE TABLE IF NOT EXISTS`nationality` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  `nationalityCd` TINYINT NULL,
  `nationalityType` TINYINT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_nationality_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_nationality_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `passwordQnaListCd` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `qna` VARCHAR(100) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_passwordQnaListCd_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_passwordQnaListCd_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `number` (
  `seqNumber` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `telecomCd` TINYINT NULL,
  `numberTypeCd` TINYINT NULL,
  `inputNumber` VARCHAR(100) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seqNumber`),
  INDEX `fk_number_infrMember_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_number_infrMember`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into codeGroup(
seq
,name

)values(

	8
	,"emailType"
);

insert into code(

 name
,codeGroup_seq

)values(

 "기타"
,8
);





select * from codeGroup;
select * from code;

insert into infrMember(
		name
        ,id
        ,password 
        ,date
        ,recommender
        ,genderCd
        ,job
        ,hobby
        ,marry
        ,marryDate
        ,child
        ,introduce
        ,color
        ,passwordQnaListCd
        ,passwordQna
        ,keepCd
        ,emailMarketing
        ,regIp
        ,regDatetime
        ,regDevice
        ,modIp
        ,modDevice
        ,modDatetime
)values(
	"김승태"
    ,"iufan1627"
    ,"12342141"
    ,'1997-11-19'
    ,1
    ,1
    ,"대통령"
    ,"게임"
    ,0
    ,'2020-01-01'
    ,0
    ,"안녕하세요"
    ,"빨간색"
    ,6
    ,"발안초등하교"
    ,1
    ,1
    ,"231.123.123"
    ,'2012-12-12 12:12:12'
    ,"mobile"
    ,"213.213.421"
    ,"mobile"
    ,'2012-12-12 12:12:12'
);

select * from infrMember;

select i.genderCd,c.name,co.

-- infrMember









































-- 회원관리목록

select * from 

-- select name from code where codeGroup_seq = "infra001" and code = ganderCd) as gander