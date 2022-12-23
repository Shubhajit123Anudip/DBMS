use suvom;
#1 Table Creation
create table Employee_1(Employee_Id int(6)primary key,
Lname varchar(15),
Job_Id varchar(20),
Salary double(8,2),
Comm_pct double(4,2),
Mgr_id int(6),
Department_id int(4));
#2 insertion data into the table Employee
insert into Employee_1 values
(198,'Connel','SH_CLERK',2600,2.5,124,50),
(199,'Grant','SH_CLERK',2600,2.2,124,50),
(200,'Whalen','AD_ASST',4400,1.3,101,10),
(201,'Hartstein','IT_PROG',6000,null,100,20),
(202,'Fay','AC_MGR',6500,null,210,20),
(203,'Mavris','AD_VP',7500,null,101,40),
(204,'Baer','AD_PRES',3500,1.5,101,90),
(205,'Higgins','AC_MGR',2300,null,101,60),
(206,'Gitz','IT_PROG',5000,null,103,60),
(100,'King','AD_ASST',8956,0.3,108,100),
(101,'Kochar','SH_CLERK',3400,1.3,118,30);
#3 
select Employee_Id,Lname<Job_Id from Employee_1;
#4
select * from Employee_1 where Department_id=60;
#5
select * from Employee_1 where Lname='king';
#7
select Lname,Salary,Salary + 300 as 'Increased_Salary' from Employee_1;
#9
select * from Employee_1 where Comm_pct is not null;
#10
select * from Employee_1 where Comm_pct is null;
#11
select Employee_Id,Department_Id,Salary from Employee_1 where Salary>5000;
#12
select Employee_Id,Salary from Employee_1 where Salary between 4000 and 7000;
#13
select * from Employee_1 where Salary=6000 or Salary=6500 or Salary=7000;
#14
select * from Employee_1 where Department_Id=10 or Department_Id=20 or Department_Id=30 or Department_Id=50;
#15
select * from Employee_1 where Salary!=5000;
