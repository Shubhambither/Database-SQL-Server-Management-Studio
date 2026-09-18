create database practicestu;
create table student(StudentId int primary key,
name varchar(50),age int ,email varchar(50));
insert into student values(101,'Aman',20,'aman@gmail.com'),(102,'Ram',21,'ram@gmail.com'),(103,'Karan',22,'karan@gmail.com');
select name from student;
select name,age from student where age>20;
select * from student;
select * from student where name='Aman'AND age =20;
select * from student where name='Aman'or age =20;
update student set age=23 where StudentId=101;
alter table student alter column age smallint;
update student set age = 23 where StudentId in (101,102,103);
update student set age = case when StudentId=101 then 21 when StudentId=102 then 22 when StudentId=103 then 23 end where StudentId in (101,102,103);
create view StudentContacts
As select name , email from student;
drop view StudentContacts;
sp_help student;

create table course(course_id int, course_name varchar(50),credits int,instrcutor varchar(50));
insert into course values(201,'Data Science',4,'Dr.Mehta'),(202,'Artificial Intelligence',4,'Dr.Rekha'),(203,'Database System',4,'Dr.Shara=ma');
insert into course values(204,'Machine Learning',4,'Dr.Tarak');--1
select * from course where credits>3;--2
update course set credits=3 where course_id=202;
update course set instrcutor='Shilpa' where course_id=202;--3
 create view CreditDetails--4
 As select course_name , credits from course;
 delete from course where course_id = 203;--5
 drop view CreditDetails;--6
