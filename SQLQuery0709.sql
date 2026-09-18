create table students(student_id int primary key,name varchar(50),age int,email varchar(100) unique);
ALter table students add constraint check_age check(age>0);
insert into students values(101,'Shubham Bither',21,'bithershubham@gmail.com');
update students set age = 22 where student_id=101;
delete from students where student_id=101;
create view stu 
as select name , email from students;
select * from stu;
drop view stu;