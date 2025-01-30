use cybrom;
create table emp3(e_no int, e_name varchar(10), d_no int, primary key(e_no),
foreign key(d_no) references dept(d_no));

create table dept(d_no int, d_name varchar(10), primary key(d_no));
select*from dept;

insert into dept values(101,"HR"),
(102,"Admin"),
(103,"IT"),
(105,"HR");

insert into emp3 values(1,"Amit",101),
(2,"Pooja",102),
(3,"Ruchi",102),
(4,"Rani",103);

select*from dept;
insert into dept values(108,"HR");

insert into emp3 values(9,"Rani",108);
select*from dept;