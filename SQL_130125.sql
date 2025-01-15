use cybrom;
select*from customer2;
-- MySQL IN Operator- OR ko replace kiya hai kyunki IN se list me daal bahut value de sakte
-- find the information of customer2 whoes age either 25 or 22 ?
select *from customer2 where age in (25,22) ;
select* from customer2 where age=25 or age =22;
select NAME from customer2 where age=25 or age =22; 

-- NOT IN 
select*from customer2 where age not in (25,22);

-- BETWEEN Operator
select * from customer2 where AGE BETWEEN  25 and 27 ;
select * from customer2 where AGE NOT BETWEEN 25 AND 22;

-- Subqueary - ek queary se dusre query me

-- Here Import new .csv file dataset
SELECT*FROM CUSTOMER100;

-- Que. Find the information of youngest customerminimum age
select min(AGE)  from customer100;
select count(AGE) from customer100;
-- Find thesum() of anual incom of female customer
select sum(spending_score),Genre from customer100 WHERE Genre = 'Female'; 
select max(spending_score),Genre from customer100 WHERE Genre = 'Female';

-- Find the number of male customer
select count(Genre) from customer100 where Genre="Male"; 
select count(Genre) from customer100 where Genre="Female"; 






