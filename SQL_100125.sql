use cybrom;
-- Find the total salary of customer
select sum(SALARY) from customer2;
select avg(SALARY) from customer2;
select count(NAME) from customer2;
select min(SALARY) from customer2;
 select count(*) from customer2;
 
 create table class(NAME varchar(20), AGE int);
 insert into class values
 ("A",20),
 ("B",30),
 ("C",10),
 ("D",Null),
 ("E",Null),
 ("F",40);
 select * from class;
 select max(AGE) from class;
 select sum(AGE) from class;
 select avg(AGE) from class;
 -- avg null ko count nhi kar sakta
 select count(AGE) from class;
desc class;
select  count(*) from class;
select count(Name) from class;
select count(AGE) from class;
 insert into class values
 (Null,Null);

 select  count(*) from class;
select count(Name) from class;
select count(AGE) from class;

select max(AGE) from class;
-- output column name change?
select max(AGE) as maximum from class;

-- Arithmetic operator?

select 2-2;
select 2/2;
select 101/10;
select 101%10;
select 17%5;

-- Next 3 class logicall operator padhenge
-- c approch and c+++ approch top down and bottom up kaise in sql
-- pehle from excute hoga and then select== exuction order:- 1) from 2) where 3) select

-- jb having lagega waha group by nhi lagega.


