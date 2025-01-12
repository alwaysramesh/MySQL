use cybrom;
create table customer2(ID INT, NAME VARCHAR(20),AGE INT, ADDRESS VARCHAR(30),SALARY INT);
insert into customer2 values
(1, "Ramesh",32,"Ahmedabad",2000),
(2,"Khilan",25,"Delhi",1500),
(3,"Kaushik",23,"Kota",2000),
(4,"Chaitali",25,"Mumbai",6500),
(5,"Hardik",27,"Bhopal",8500),
(6,"Komal",22,"Hyderabad",4500),
(7,"Muffy",24,"Indore",10000);
select * from customer2;
desc customer2;
-- find the salary of Ramesh
select * from customer2 where Name="Ramesh";
select SALARY from customer2 where Name="Ramesh";
-- Find the address of customer2 Hardik and Komal

select ADDRESS from customer2 where Name="Hardik" or Name="Komal";

-- Que. Find the name of customer2 whoes salary >3000

select * from customer2 where SALARY<3000;
select SALARY, NAME from customer2 where SALARY<3000;
-- Que  Find the name of customer2 whoes age above 25 and below 28

select AGE ,NAME from customer2 where AGE>25 and AGE<28;

-- Find the address and salary of customer2 whoes age either
-- above 25 or below 23?
select NAME, ADDRESS, SALARY from customer2 where AGE>25 or AGE<23;

-- Que Find the name of customer2 whoes age not belong to 25 
select NAME, age from customer2 where not AGE =25;
select name, age from customer2 where age !=25;
select name, age from customer2 where age <> 25;

-- Topic- Aggregate:- 5 function-  Mean, mid , max,count, avg, sum
-- find the name of customer2 whoes salary is maximum
-- Find minimum salary of customer2

select min(SALARY) from customer2;
-- find the age of oldest customer
select max(AGE) from customer2;
select Name, AGE from customer2 where age = (select max(AGE) from customer2);
