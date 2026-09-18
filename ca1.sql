create database CollegeDB;--1
create table students(StudentId int ,Name varchar(50),Age int,Course varchar(30),Marks int,City varchar(30));--2
alter table students add Email varchar(100);--3
alter table students alter column Marks smallint;--4
alter table students add constraint Pk_Primary primary key(StudentID);--5
alter table students alter column Name varchar(50) not null;--6
insert into students values (101,'Amit',20,'BCA',85,'Ludhiana','amit@gmail.com');--7
insert into students values (102,'Amita',21,'BCA',86,'Jalandar','amita@gmail.com'),(103,'Shubham',22,'BCA',87,'Patiala','Shubham@gmail.com');--8
select * from students;--9
update students set Marks=90 where Name='Amit';--10
delete from students where StudentId=101;--11
create view StudentMarks --12
as Select StudentId,Name,Course,Marks from students;
Select * from StudentMarks



