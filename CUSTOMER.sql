USE suvom;
# drop TABLE CUSTOMER;
# 1. Create the following table CUSTOMER
create table CUSTOMER (
Cust_id varchar(5) primary key ,
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone int(10),
DOB Date,
Payment float(6,2)
);
insert into CUSTOMER VALUES 
('A01','Ivan','Ross','SA',6125467, "15-jan-86",800.50),
('A02','Vandana','Ra','MU',5560379,"20-dec-87 ",1000.75),
('A03','Pramada','Jauguste','DA',4560389,"25-jul-67 ",500.00),
('A04','Basu','Navindi','BA',6125401,"30-feb-56",860.00),
('A05','Ravi','Shridhar','NA',null,"15-feb-89",500.50),
('A06','Rukmini','Aiyer','GH',5125274,"23-jul-87",1500.50);
# 2. Display the structure of the table you have created
desc CUSTOMER;
#3. Display the data of the created table.
select * from CUSTOMER;
# 4. Insert a row which will accept system date.
select now();
 alter table customer ADD CurrentDate varchar(15) after payment;
UPDATE CUSTOMER SET  CurrentDate=now();
# 5. Display the data in the table.
select * from CUSTOMER;
# 6. Update the phone numbers of customer A02 and A04.
UPDATE CUSTOMER SET Phone=6660397 WHERE Cust_id='A02';
UPDATE CUSTOMER SET Phone=6665104 WHERE Cust_id='A04';
# 7. Update the date of birth of customer A03 and A05
UPDATE CUSTOMER SET DOB="25-jul-76" WHERE Cust_id='A03';
UPDATE CUSTOMER SET DOB="15-feb-98" WHERE Cust_id='A05';
# 8. Display the updated table.
select * from CUSTOMER;
# 9. Delete 2 rows from the table for customers A01 and A05
DELETE FROM CUSTOMER WHERE Cust_id='A01';
DELETE FROM CUSTOMER WHERE Cust_id='A05';
# 10. Delete all the rows from the table.
TRUNCATE TABLE CUSTOMER;
# 11. Insert 5 records according to your own wish.
insert into CUSTOMER VALUES 
('B01','SOUMYA','Ross','SA',6125467, "15-jan-86",800.50),
('B02','AVISHEK','Ra','MU',5560379,"15-feb-86",1000.75),
('B03','NILADRI','Jauguste','DA',4560389,"15-mar-86",500.00),
('B04','ATIF','Navindi','BA',6125401,"15-apr-86",860.00),
('B05','NISHA','Shridhar','NA',null,"15-may-86",500.50),
('B06','SOURAV','Aiyer','GH',5125274,"15-jun-86",1500.50);
# 12. Update one record based on any criteria according to your own wish
UPDATE CUSTOMER SET Lname='DAS' WHERE Cust_id='B06';
# 13. Delete any 1 record from the table based on particular criteria
DELETE FROM CUSTOMER WHERE Cust_id='B05';
