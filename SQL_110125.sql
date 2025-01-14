use cybrom;
select * from customer2;

-- Que  Find information of customer2 whoes name start with letter with k;

select * from customer2 where NAME like 'k%';

-- Find the information of customer whoes name end with letter l?
select * from customer2 where NAME like '%l';

-- Find the name of customer2 whoes name contain letter f? 
select * from customer2 where name like '%d%';
select * from customer2 where name like '%r%';
select * from customer2 where name like '%f%';

-- Que:- Find the informaton of customer2 whoes name contain second letter a ?
select * from customer2 where name like '_a';
select * from customer2 where name like '_a%';
select * from customer2 where name like '%a_';

-- Find the information of customer2 whoes name start with R and end with h ?
select * from customer2 where name like 'r%h';

-- Que:- Find the information of customoer2 whoes name have exctaly 5 letter ?
select * from customer2 where name like '_____';

-- Que. Find the information of customer whoes name contain atleast 6 charector and start with k ?
select * from customer2 where name like 'k%_____%' ;
select * from customer2 where name like 'k_____%' ;

-- Que Find the information of customer whoes name contain 5 or 6 letter ?
select * from customer2 where name like '_____' or name like '______' ;

-- Find the information of customer2 whoes name contain atmost 3

select * from customer2 where name like '_' or like name '___' ;
select* from customer2;

-- Find the information of customer2 whoes name not start with k ? 
select * from customer2 where name not like '%k' ;
select * from customer2 where name not like 'k%' ;

-- Que. Select all customer with name start with k followed by any 2 charector followed by L folowed by any charector n 
select * from customer2 where name like 'k__l_n' ;


