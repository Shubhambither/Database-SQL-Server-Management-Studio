create table students(
studentid int primary key,
name varchar(50),
age int,
grade char(2));

sp_help students;<--for table structure-->

alter table students Alter column email varchar(100) not null ;
<--modify doesn't work-->
exec sp_rename 'students.name','studentname','column';