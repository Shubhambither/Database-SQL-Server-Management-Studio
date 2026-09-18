create database practicestuca;
create table student (StudentId int primary key, name varchar(50),age int , email varchar(50));
sp_help student;
insert into student values(101,'Aman',21,'aman@gmail.com'),(102,'Ram',21,'ram@gmail.com'),(103,'Karan',21,'karan@gmail.com');
select name from student;
update student set age=23 where StudentId=101;
select name ,age from student where age>20;
select name from student where name='Aman' and age=20;
select name from student where name='Aman' or age=20;
alter  table student alter column age smallint;
update student set age=23 where StudentId in (101,102,103);
select * from student;
update student set age = case when StudentId=101 then 21 when StudentId=102 then 22 when StudentId=103 then 23 end where StudentId in (101,102,103)
create view StudentContacts 
as select name,email from student;
select * from StudentContacts
drop view StudentContacts

create table course1(course_id int, course_name varchar(50),credits int,instrcutor varchar(50));
insert into course1 values(201,'Data Science',4,'Dr.Mehta'),(202,'Artificial Intelligence',4,'Dr.Rekha'),(203,'Database System',4,'Dr.Shara=ma');
insert into course1 values(204,'Machine Learning',4,'Dr.Tarak');--1
update course1 set credits = 3 , instrcutor ='Shipla' where course_id = 202;
exec sp_rename 'course1.instrcutor','instructor','column';
create table student4(studentid int  primary key, name varchar(50),age int , email varchar(50),course varchar(50));
insert into student4 values(101,'Aman',21,'aman@gmail.com','Mca'),(102,'Ram',21,'ram@gmail.com','bca'),(103,'Karan',21,'karan@gmail.com','mba');
alter table student4 alter column studentid int not null ;
alter table student4 alter column email varchar(50) not null;
alter table student4 add constraint uq_unique unique(email);

use cd
create table students2(studentid int primary key ,name varchar(50));
insert into students2 values(101,'Shubham');

create table courses2(courseid int , coursename varchar(50))
insert into courses2 values(101,'MCA');
ALTER TABLE courses2 ALTER COLUMN courseid INT NOT NULL;
alter table courses2 add constraint c_prime primary key (courseid);

create table enrollments(enrollmentid int, studentid int foreign key references students2(studentid), courseid int foreign key references courses2(courseid))
create table student5(studentid int,courseid int,grade varchar(50),primary key(studentid,courseid))
insert into student5 values(101,'')