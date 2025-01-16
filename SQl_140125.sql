use cybrom;


select max(Age), Age from customer100 where Age="Female" or Age="Male";

-- GROUP BY
-- Group BY which create number of tempary create table based on unique values in the column

-- Que.01 Find the maximum age of ech Gender
select max(Age) from customer100 group by Genre;
select max(Age) , Genre from customer100 group by Genre;

create table S100(per int, name varchar(5),branch varchar(10));
insert into S100 values (20,"A","CS"),
(30,"B","EC"),
(10,"C","CS"),
(05,"D","CS"),
(08,"E","EC"),
(12,"F","IT"),
(16,"G","ME"),
(40,"H","EX");
select*from S100;
truncate table S100;

-- Que FInd the maximum per of ech branch where at least 2 student?
select max(per) from S100 group by Branch ;

-- select max(per), count(*)>=2, Branch from S100 group by Branch ;
-- execution - 01) group by fir 02) having execute hoga
select max(per),  Branch from S100 group by Branch having count(*) >=2 ;


