use cybrom;
create table persons (id int NOT NULL, addr varchar(25)NOT NULL, age int);
select *from persons;
desc persons;
ALTER TABLE persons
ADD email VARCHAR(100) not null;

insert into persons values (1,'Amit',30);
insert into persons values (1,'Rani', NULL);
select*from persons;
insert into persons values (3,NULL,30);

create table p2 (id int NOT NULL, name varchar(25), age int, unique(age));
desc p2;

insert into p2 values (1,'Ajay',30);
select*from p2;
insert into p2 values(2,'Donkey',30);

create table p3 (id int, age int, primary key(id));
desc p3;
insert into p3 values(1,30);
select * from p3;
insert into p3 values(2,NULL);
select*from p3;

insert into p3 values(2,30);
insert into p3 values(NULL,30);

create table p4 (id int NOT NULL , age int, check ( age >=18 ) );
insert into p4 values(1,30);
insert into p4 values(2,16);

create table p5(id int not null, age int,city varchar(25) default 'Bhopal');
desc p5;
insert into p5 values(1,40,'Ind');
select*from p5;
insert into p5 values(2,30);
insert into p5 values(2,41,default);
select*from p5;
desc p5;

