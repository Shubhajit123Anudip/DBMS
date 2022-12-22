use suvom;
create table Future_Emp(
emp_id int primary key,
ename varchar(20) not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(10),
salary double(10,2)
);
INSERT INTO Future_Emp VALUES
(1,'NILADRI','ENGINEER','EE','8','10000'),
(2,'SOUMYA','SME','BCA','6','11000'),
(3,'MISHBA','MGR','CSE','10','12000'),
(4,'SOURAV','ADMIN','MSC','12','13000'),
(5,'ABHISHEK','ENGINEER','EE','8','14000'),
(6,'NISHA','ADMIN','ME','8','15000'),
(7,'SHIFA','ENGINEER','EE','8','16000'),
(8,'AKSHAY','MGR','ME','8','17000'),
(9,'ELINA','ENGINEER','CE','8','18000'),
(10,'SUCHITRA','SME','BCA','6','19000');
#aggreate function 
select dept,count(dept) as 'total_emp_in_dept' from Future_Emp group by dept;
#sum
select dept,sum(working_hour) as 'total_hours' from Future_Emp group by dep;
select dept,sum(working_hour) as 'total_hours' from Future_Emp where dept='ME';
select dept,sum(salary) as 'total_dept_salary' from Future_Emp group by dept;
select dept,sum(working_hour) as 'total_hours' from Future_Emp where dept='EE';
#avarage
select dept,avg(salary) as 'avg_dept_salary' from Future_Emp group by dept;
#min
select dept,min(salary) as 'MIN_dept_salary' from Future_Emp group by dept;
select dept,min(salary) from Future_Emp where dept='EE';
select min(salary) from Future_Emp;
#subquery
select ename,dept,salary from Future_Emp where salary=(select min(salary) from Future_Emp);
#max
select dept,max(salary) as 'MAX_dept_salary' from Future_Emp group by dept;
select max(salary) from Future_Emp where dept='EE';
select max(salary) from Future_Emp;
#having
select dept,sum(working_hour) as 'total hours' from Future_Emp group by
dept having sum(working_hour)>15;
