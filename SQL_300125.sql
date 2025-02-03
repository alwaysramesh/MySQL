use cybrom;
select*from customer2;
select id, max(age) from customer2 ;
select max(age) from customer2;
-- aggrigate function ke bina nhi use fun
select max(id) from customer2 ;
select id, max(age) from customer2 group by id ;

-- WIndows Function 1)over function
select id , max(age) over() as 'Maximum_age' from customer2;

select id, salary, max(age) over(partition by salary) as "ID wise age" from customer2; 
select id,salary, max(age) over(partition by salary) as "ID wise age" from customer2 order by id;

-- windows fun. 2)first_value 3) rank, densc rank
create table s500 (s_id int , s_name varchar(20), subject varchar(10), marks int);
insert into s500 values (1,'tom', "cs", 90),
(2,"sofi", "cs", 80),
(3,"john","cs",80),
(4,"rob","cs",70);
select*from s500;
select *,row_number() over(order by marks desc) as "marks_ke_base_pe_order" from s500;
select *,row_number() over(order by marks ) as "marks_ke_base_pe_order" from s500;

select *, rank() over(order by marks desc) as "rank" from s500;
-- dense_ rank() me kitne log hai nhi baata sakte, number nhi miss karega
-- rank() me bata sakte hai kitne log hai, number miss kar sakta hai
select *, dense_rank() over(order by marks desc) as "dense_rank" from s500;

select *, first_value(marks) over(order by marks desc) as "first_value" from s500;
select *, last_value(marks) over(order by marks desc) as "last_value" from s500;
-- jis department ki  last value jo hogi wahi aayegaa 

insert into s500 values (1,'tom', "cs", 90),
(2,"sofi", "ec", 90),
(3,"john","ce",80),
(4,"rob","ee",70);
select *, last_value(marks) over(order by marks desc) as "last_value" from s500;

-- windows fun() , nth_value
-- jis department ka marks hoga uska 2nd values repeat karega marks
select *, nth_value(marks,2) over(order by marks desc) as "nth_value" from s500;






