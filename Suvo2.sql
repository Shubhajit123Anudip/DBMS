use suvom;
create table Employee(
id int primary key,
Ename varchar(20) not null unique,
Eaddr varchar(50),
Esalary double);
insert into Employee values
(1,'Bisnupriya',9874673743,'mumbai','IT',10000.5);
#insert multiple rows
insert into Employee values
(2,'Suchitra',9888373838,'Kolkata','IT',20000.5),
(3,'Shifa',9783373838,'Pune','A/C',15000.80),
(4,'Nisha',9890373838,'Mumbai','MGR',35000.50),
(5,'Elina',9877473838,'KOlkata','A/C',10000.50);
#select
select * from Employee where Edept='IT';
#and (both the condition should true)
select * from Employee where Eaddr='Kolkata' and Esalary=10000.50;
#or(any one condition should true)
select * from Employee where Eaddr='Mumbai' or Esalary=35000.50;
#not 
select * from Employee where Edept !='IT';
#in 
select * from Employee where Eaddr in('Mumbai','pune');
#starts with
select * from Employee where Ename like 'E%';
#ends with 
select * from Employee where Ename like '%a';
#both starts and ends with
select * from Employee where Ename like '%f%';
#missing letter 
select * from Employee where Eaddr like 'pu_e';
select * from Employee where Edept like 'M_R';