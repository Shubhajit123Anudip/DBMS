use suvom;
#create
create table department (id int primary key, dname varchar(20) not null,
sphone bigint(11)not null unique,semail varchar(30) not null,
sdept varchar(20));
#insert
insert into department values #insert the value
(1,'Rohit',8724873597,'ro@gmail.com','IT'),
(2,'Puja',8724870897,'pu@gmail.com','CS'),
(3,'Arnab',8724870927,'ar@gmail.com','IT'),
(4,'Roni',8724871827,'ron@gmail.com','CIVIL'),
(5,'Tiya',8724870317,'Ti@gmail.com','EE');
#alter
alter table department ADD age int after sname;
#delete
DELETE FROM department WHERE id='1';
#update
UPDATE department SET dname='MAJI' WHERE dept_id='1';
#truncate
TRUNCATE TABLE department;
#drop
drop table department