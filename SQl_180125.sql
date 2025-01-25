use cybrom;

create table c(id int, name varchar(10));
insert into  c values(1,"Amit"),
(2,"Anil"),
(3,"Ajay"),
(4,"Ankit");

create table s(id int, addr varchar(10));
insert into s values(1,"A-1"),
(3,"B-1"),
(5,"C-1"),
(7,"D-1");
select*from s;
-- jitna mach karegi utni hi aayegi row
select*from c inner join s on c.id = s.id;

select*from c left join s on c.id = s.id;

select*from c right join s on c.id = s.id;

-- select*from c full join s on c.id = s.id ;

-- Que.01 select the name of customer whoes resident is "A-1".

select name from c inner join s on c.id = s.id where addr="A-1";

select name from c inner join s on c.id = s.id where addr='B-1';
select name from c inner join s on c.id = s.id where s.addr ="A-1";

select name from c inner join s on c.id = s.id where s.id =1;

select name from c where id=(select id from s where addr = 'A-1') ;

-- Cross Join 
select*from c cross join s on c.id = s.id;
select*from c cross join s ;
select count(*) from c cross join s ;
select*from c, s;
select count(*) from c, s;

