use suvom;
# 1. Create the following tables with the constraints mentioned:
# Note: the data type and size should be given in relevance with the data to
# be inserted. Constraint name are not required to be given for this assignment.
create table customer 
(cust_id varchar(10) not null primary key,
Fname varchar(15) not null,
Lname varchar(15),
Area varchar(15) not null,
Phone bigint(10)
);
create table movie
(Mv_no int not null primary key,
Cust_id varchar(10),
Title varchar(30) not null,
Star varchar(5) not null,
Price int check (price >=100 and price <=250),
foreign key (Cust_id) references customer(cust_id)
);
insert into customer values
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Ray','MU',5560379),
('A03','Pramada','Jauguste','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','Gh',5125274);
drop table movie;

insert into Movie values
(1,'A02','Bloody','JC',181),
(2,'A04','The Firm','TC',200),
(3,'A01','Pretty Woman','RG',151),
(4,'A06','Home Alone','MC',150),
(5,'A05','The Fugitive','MF',200),
(6,'A03','Coma','MD',100),
(7,'A02','Dracula','GO',150),
(8,'A06','Quick Change','BM',100),
(9,'A03','Gone with the Wind','CB',200),
(10,'A05','Carry on Doctor','LP',100);
