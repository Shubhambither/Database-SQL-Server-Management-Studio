create database dbp;
create table practice1(empid int primary key,emp_name varchar(50) not null, salary int check(salary>0),email varchar(50) unique,department varchar(50) default 'HR');
sp_help practice1;
insert into practice1 values(101,'ram',500,'abc','bca'),(101,'sham',600,'def','bca');