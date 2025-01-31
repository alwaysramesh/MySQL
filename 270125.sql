use student ;
select * from customer100;
select * from customer1;
# view : view also has rows and columns as they are in a real table in the database
create view c1 as select id,name from customer1;
select * from c1;
create view c2 as select salary,job_id from employees where manager_id=103;
select * from c2;
insert into c2 values(10,'hr');
select * from c2;
select * from employees;
drop view c2;
select * from employees;
# sql index
create index i1 on customer1(name);
select * from customer1;
create table p100(id int not null auto_increment,lname varchar(255) not null,fname varchar(255),age int,primary key(id));
desc p100;
insert into p100(lname,fname) values('pooja','mehra');
select * from p100;
insert into p100(lname,fname) values('prachi','mehra');
insert into p100(lname,fname,age) values('pooja','mehra',23);
alter table p100 auto_increment=100;
insert into p100(lname,fname) values('rani','mehra');
insert into p100(lname,fname) values('deepa','mehra');
