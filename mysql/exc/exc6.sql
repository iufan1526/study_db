use world;


CREATE TABLE IF NOT EXISTS `world`.`codeGroup` (
  `name` VARCHAR(45) NULL,
  `seq` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`code` (
  `code` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `world`.`codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)namenamename
ENGINE = InnoDB;


insert into codeGroup(
seq
,name


)values(

"infra002"
,"통신사"
);

insert into code(

codecode
,name
,codeGroup_seq

)values(

"3"
,"LG"
,"infra002"
);

select * from codeGroup;
select * from code;

select 
a.seq
,a.name
,b.code
,b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq; 
