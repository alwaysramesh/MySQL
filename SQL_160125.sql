use cybrom;
select*from emp;
-- Que01 List out the detail of all customer whoes salary is greather then the salary of any customer whoes age is 32 

select * from emp where salary >  ( select salary from emp where AGE =32);

select * from emp where Salary > (select salary from emp where age = 25);

set sql_safe_updates=0;
update emp SET AGE = 25 WHERE NAME = 'Khilan';
-- jab aapki inner query multiple row return kare tb any , all
select * from emp where Salary > any (select salary from emp where age = 25);

select * from emp where Salary > all (select salary from emp where age = 25);

-- any meant =or
-- all mean = and
-- some, exist
-- some= any
select * from emp where Salary > some (select salary from emp where age = 25);
select * from emp where Salary > exists (select salary from emp where age = 25);

-- exists aagar inner query ek row bhi retun karegi to puri row print karegi

select * from emp where exists (select salary from emp where age=25);
select * from emp where exists (select salary from emp where age=50);
select * from emp where not exists (select salary from emp where age=50);

-- join, contraints(pk, fk) , windos funtion , view, store pros, triggre, DCL,transition, ACID . 



