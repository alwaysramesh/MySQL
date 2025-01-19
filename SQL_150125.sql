use cybrom;
select*from customer100;

-- Que:- FInd the information of all Male customer whoes age greter then maximum age of Female 


select * from customer100 where Genre = 'Male' 
and age > (select MAX(age) from customer100 where Genre = 'Female') ;

select * from customer100 where Genre = 'Female' 
and age > (select MAX(age) from customer100 where Genre = 'Male') ;

-- Que: find the name of customoer whoes salary = Kaushik

select*from emp where Salary=  (select salary from emp where name = "Kaushik");
select name from emp where name != "Kaushik" and Salary=  (select salary from emp where name = "Kaushik");

-- Next Operator :- Any

