use world;

CREATE TABLE IF NOT EXISTS `world`.`writer` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `book6_seq` INT UNSIGNED NOT NULL,
  `book6_writer_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_writer_book6_idx` (`book6_seq` ASC) VISIBLE,
  INDEX `fk_writer_book6_writer1_idx` (`book6_writer_seq` ASC) VISIBLE,
  CONSTRAINT `fk_writer_book6`
    FOREIGN KEY (`book6_seq`)
    REFERENCES `world`.`book6` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_writer_book6_writer1`
    FOREIGN KEY (`book6_writer_seq`)
    REFERENCES `world`.`book6_writer` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into book6(
name

)values(
"java"


);

insert into book6_writer(
name

)values(
"이재명"

);

insert into writer(


book6_seq
,book6_writer_seq

)values(
1
,1


);

select * from book6;
select * from book6_writer;
select * from writer;

select 
a.seq
,a.name
,b.book6_writer_seq
from book6 a
left join writer b on b.book6_seq = a.seq
;



select 
a.seq
,a.name
,b.book6_writer
,c.name
from book6 as
left join writer b on b.book;