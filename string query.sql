--string functions
use master
select ascii('A')
select char(65)
select len('Database')
select SUBSTRING('databasemanagement',1,4)
select replace('database management','database','db')
select upper('sql'),lower('laptop')
select concat('data','base')
select DIFFERENCE('career','carrier')
--Math Functions
select abs(10)--absolute function
select sqrt(49)
select power(2,3)
select round(123.23456,2)
select cast(round(123.23456,2) as float)
select floor(12.4) ,ceiling(12.4)
select getdate()
select datediff(day,'2026-01-01','2026-03-09')
select year(getdate()),month(getdate()),day(getdate())
select dateadd(year,01,getdate())--01,02 will increase years
create database student
use student
create table studentsdb4(studentid int primary key ,name varchar(50),marks int )
insert into studentsdb4 values(101,'Shubham',49),(102,'Satyam',48),(103,'Thakur',49),(104,'Chotu',47),(105,'Aryan',28),(106,'Puneet',25);
select count(*) as total_students from studentsdb4;
select sum(marks) as totalmarks from studentsdb4;
select avg(marks) as totalavg from studentsdb4;
select min(marks) as minmarks from studentsdb4;
select max(marks) as maxmarks from studentsdb4;
select STDEV(marks) as stddeviatoins from studentsdb4
select var(marks) as variance from studentsdb4
select STDEVP(marks) as stdevpopulation from studentsdb4
select varp(marks) as varpopulation from studentsdb4

select upper(name) from studentsdb4
select lower(name) from studentsdb4
select len(name) from studentsdb4
select left(name,3) from studentsdb4
select name ,marks+5  from studentsdb4
select max(marks) from studentsdb4
select min(marks) from studentsdb4
select avg(marks) from studentsdb4
