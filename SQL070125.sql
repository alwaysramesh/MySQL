Use cybrom;
create table customer1(ID int, NAME VARCHAR(20), AGE INT, ADDRESS VARCHAR(30), SALARY INT);
INSERT INTO customer1 values(1,"Ramesh",32,"Ahmedabad",2000),
(2,"Khilan",25,"Delhi",1500),
(3,"Kaushik",23,"Kota",2000),
(4,"Chaitali",25,"Mumbai",6500),
(5,"Hardik",27,"Bhopal",8500),
(6,"Komal",22,"Hyderabad",4500),
(7,"Muffy",24,"Indore",10000);

-- Delete the information of Hardik 
set sql_safe_updates=0;
delete from customer1 where name='Hardik';
delete from customer1 where NAME='Khilan';
select*from customer1;

truncate table customer1;
select*from customer1;
INSERT INTO customer1 values(1,"Ramesh",32,"Ahmedabad",2000);
DROP table customer1;
select*from customer1;

