use suvom;
create table Student (id int primary key, sname varchar(20) not null,
sphone bigint(11)not null unique,semail varchar(30) not null,sadd varchar(30),
squalification varchar(10) not null,
sdept varchar(20));
insert into student_details values #insert the value
(1,'Rohit',8724873597,'ro@gmail.com','chennai','MBA','IT'),
(2,'Puja',8724870897,'pu@gmail.com','Kolkata','BE','CS'),
(3,'Arnab',8724870927,'ar@gmail.com','Delhi','MCA','IT'),
(4,'Roni',8724871827,'ron@gmail.com','Mumbai','ENGG','CIVIL'),
(5,'Tiya',8724870317,'Ti@gmail.com','Goa','ENGG','ELECTRICAL');
#add new column
alter table student ADD age int after sname;
#modify datatype size
alter table student MODIFY squalification varchar(20) not null;
#modify contraint
alter table student MODIFY sphone int not null;
#drop column
alter table student DROP column sdept;
#change column name
alter table student change column age sage int;
#rename table name
alter table student rename to student_details;
#insert single row
insert into student_details values
(6,'suvo',23,9863265767,'suvo@gmail.com','Bihar','B.TECH');
truncate student_details;#delete row student
drop table student_details;#delete whole table
#DML---INSERT,UPDATE,DELETE
update student_details set sage=20 where ID=1;
update student_details set sage=24 where ID=2;
update student_details set sage=25 where ID=3;
update student_details set sage=26 where ID=4;
update student_details set sage=27 where ID=5;
alter table student_details add fees double after squalification;
update student_details set fees=1000.9 where ID=1;
update student_details set fees=1000.9 where ID=2;
update student_details set fees=1000.9 where ID=3;
update student_details set fees=1000.9 where ID=4;
update student_details set fees=1000.9 where ID=5;
update student_details set fees=2000.5;
update student_details set sadd='mumbai' where sname='puja';
#delete any specific row
delete from student_details where sname='suvo';
#delete any specific coloumn
alter table student_details DROP COLUMN fees;


alter table student_details rename to EMP1;
truncate table EMP1;