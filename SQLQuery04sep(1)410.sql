use bc;
--primary key
create table students(studentId int primary key,name varchar(50));
insert into students values(1,'Jay');
insert into students values(1,'AJay');

--Foreign key
create table courses(
courseid int primary key,coursename varchar(50));

create table enrollments(EnrollmentId int primary key , studentId int foreign key references students(studentId),courseid int foreign key references courses(courseid));

--Unique key
create table teachers(teacherid int primary key, email varchar(106) unique);
insert into teachers values (1,'abc@gmail.com');

--composite key
create table library(studentid int,blockid int, issuedate date, primary key (studentid,blockid));
insert into library values(1,36,'2026-09-02');