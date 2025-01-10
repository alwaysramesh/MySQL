use cybrom;
create table emp2(ID INT, NAME VARCHAR(30), SALARY INT);
INSERT INTO EMP2 VALUES(1,"Amit", 10);
INSERT INTO EMP2 VALUES(2,"Anil", 20);
INSERT INTO EMP2 VALUES(3,"Ramesh", 30);
INSERT INTO EMP2 VALUES(4,"Ram", 40);

delete from EMP2 where NAME='Amit';
select * from emp2;


-- find the name of emp2?
select NAME from EMP2;
-- find the unique employee name

select distinct NAME from EMP2;

-- Find the selary of employee in ascending order? 
select SALARY from EMP2 order by SALARY;

select SALARY from EMP2 order by SALARY desc;
-- desc aur drop ke vajah se mysql oops ke concept ko follow karta hai enhi 2 command ke vajah select

select NAME from EMP2 limit 2;
select NAME from EMP2 limit 3;

select NAME from EMP2 limit 2 offset 3;
select * from EMP2;