create database BANK;
use bank;
create table CUSTOMERDETIAL(Acc_no int primary key , Acc_name varchar(50) not null,pin_no int unique,pan_no varchar (8)not null unique,balance int not null,address varchar(20),acc_type varchar(20)not null) ;
create table BANKDETIAL(e_id int primary key,bank_name varchar(20),IFSC_CODE int not null,branch varchar (10) not null,Phone_no int not null,pincode int not null,e_salary int not null);
insert into bankdetial values(1,"SBI",12,"Kallai",999999,606202,20000);
insert into bankdetial values(2,"ICIC",11,"Kallai",899999,606202,22500);
insert into bankdetial values(3,"HDFC",13,"Kallai",799999,606202,21000);
insert into CUSTOMERDETIAL values(12345,"Sanjai",1511,"San123",25000,"kallai","benificiary");
insert into CUSTOMERDETIAL values(12675,"Sri",1212,"Sri123",250000,"madurai","benificiary");
insert into CUSTOMERDETIAL values(12445,"jeevi",1410,"Jee123",50000,"kallai","benificiary");
insert into CUSTOMERDETIAL values(1235,"Darun",1507,"dar123",250090,"Thitakudi","Joint");
select * from customerdetial;
select * from bankdetial;
SELECT
  customerdetial.Acc_no,
  customerdetial.Acc_name,
  customerdetial.balance,
  bankdetial.bank_name,
  bankdetial.IFSC_CODE
FROM
  customerdetial
INNER JOIN
  bankdetial
ON
  customerdetial.Acc_no = bankdetial.e_id;