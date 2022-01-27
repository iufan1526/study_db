use world;

CREATE TABLE IF NOT EXISTS `book4` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `book5` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `review` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `book4_seq` INT NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_review5_book4_idx` (`book4_seq` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book4`
    FOREIGN KEY (`book4_seq`)
    REFERENCES `book4` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `review5` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `book5_seq` INT NOT NULL,
  PRIMARY KEY (`seq`, `book5_seq`),
  INDEX `fk_review_copy1_book51_idx` (`book5_seq` ASC) VISIBLE,
  CONSTRAINT `fk_review_copy1_book51`
    FOREIGN KEY (`book5_seq`)
    REFERENCES `book5` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into book4(

name

) values(

"4차산업혁명"
);

select * from review;

desc book4;

insert into review(
name
,book4_seq
) values(
"책이너무재밌습니다."
,1
);


select 
a.name
,(select count(*)from review4 where boo4_seq = a.seq) as count
from book4 a;

select
a.name
,b.name
from book4 a
left join review4 b on b.book4_seq = a.seq;




