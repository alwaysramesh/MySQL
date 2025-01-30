use cybrom;
select*from c cross join s ;

-- Que.01 find the name of customer that are same city

create table tcs(id int , name varchar(10), city varchar(10));
insert into tcs values(1,"Amit","Bhopal"),
(2,"Pankaj","Bhopal"),
(3,"Anil","Indore");

select a.name,b.name, a.city from tcs A, tcs B
where A.city=B.city and A.id <> B.id;

select ram.name,raj.name,
 ram.city from tcs ram, tcs raj
where ram.city = raj.city and ram.id <> raj.id;

-- Next class:- MySQL Constraints
