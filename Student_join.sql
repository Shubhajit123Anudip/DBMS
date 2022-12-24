use suvom;
drop table student_join;
create table Student_join(Id int,
Fname varchar(15),
Lname varchar(15),
Age int(3),
City varchar(10),
From_no varchar(2)primary key);
insert into Student_join values(1,'Suvo','Maji',23,'Bogra','A1');
insert into Student_join values(2,'Shifa','Iqbal',24,'Kolkata','A2');
insert into Student_join values(3,'Soumya','Chaterjee',23,'Mumbai','A3');
insert into Student_join values(4,'Sourav','Das',23,'Odisha','A4');
insert into Student_join values(5,'Shuruti','Pramanik',23,'Delhi','A5');
insert into Student_join values(6,'Rahul','Brea',23,'Sikim','A6');
insert into Student_join values(7,'Bisnupriya','Seti',23,'Rajasthan','A7');
insert into Student_join values(8,'Atif','Ansari',23,'Goa','A8');
insert into Student_join values(9,'Pensenthing','Hranchal',23,'Chennai','A9');
insert into Student_join values(10,'Abhisekh','Maity',23,'Ranchi','B1');
#freignkey while table creation
create table fees(
form_no varchar(4),foreign key(form_no) references Student_join(form_no),
amount int,
course varchar(15));
insert into fees values
('A1',4000,'java'),
('A2',4000,'java'),
('A3',5000,'python'),
('A4',3000,'ml'),
('A5',3000,'ml'),
('A6',2000,'python'),
('A7',5500,'dsa'),
('A8',5500,'dsa'),
('A9',6000,'c++'),
('B1',7000,'c#');
#foreingkey 
alter table fees add foreign key(from_no) references Student_join(form_no);
#inner join
select fname,lname,amount,course from student_join inner join fees on student_join.form_no=fees.form_no; 
select fname,amount,course from student_join inner join fees on student_join.form_no=fees.form_no; 
#cross join 
select * from student_join cross join fees;
#self join
select s1.fname,s1.age from student_join s1 inner join student_join s2 on s1.age=s2.age and s1.Id order by s1.ID;
#leftouterjoin
select student_join.form_no,fname,amount from student_join left join fees on Student_join.from_no=fees.form_no;
#rightouterjoin
select student_join.form_no,fname,amount from student_join right join fees on Student_join.from_no=fees.form_no;
#subquery
select * from Student_join where fname in (select fname from Student_join where age>24);
select * from fees where from_no in(select form_no from fees where amount>5000);
select * from Student_join where age=(select max(age) from Student_join);
select * from Student_join where city not in (select city from Student_join where city='Chennai');
select *from fees where course !=(select course from fees where course='java');
select *from fees where amount >(select amount from fees where course='python');
insert into fees value ('B2',9000,'IT');
insert into Student_join value(11,'Subhom','Mondal','26','Hydrabad');
#Any
select form_no,fname from Student_join where form_no=any(select form_no from fees);
#All
select form_no,fname from Student_join where form_no < all(select form_no from fees);
