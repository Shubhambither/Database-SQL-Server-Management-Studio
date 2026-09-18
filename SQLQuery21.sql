create table student4(studentid int primary key,name varchar(50),age int,email varchar(50), course varchar(50));
select * from student4;
insert into student4 values(101, 'Shubham Bither',21,'bithershubham@gmail.com','MCA'),(102,'Satyam sharma',23,'satyamosharma@gmail.com','BCA');
alter table student4 alter column  studentid int not null;
alter table student4 add constraint pk_students primary key studentid;--for adding any constraints later,
alter table student4 alter column email varchar(50) not null;
insert into student4 values(106, 'Shubham thakur',null,'thakur@gmail.com','MCA');
alter table student4 add constraint uq_email unique (email);
update student4  set email='thakur@4gmail.com' where studentid=106;