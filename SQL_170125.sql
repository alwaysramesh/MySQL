use cybrom;

-- Join clause is used to combine rows from two or more tables, based on a related column between them

create table Orders (oredr_id int, customer_id int , order_date varchar(30)) ;

create table customer4 (customer_name varchar(30), customer_id int, country varchar(30));

insert into Orders values(101,1,"1/01/2025"),
(102,2,"1/01/2024"),
(103,3,"1/01/2023"),
(104,4,"2/01/2023"),
(105,5,"21/02/2025");

insert into customer4 values ('A',1,'Aus'),
('B',2,'Ind'),
('C',3,'Ens'),
('D',4,'NZ'),
('E',5,'WI'),
('F',6,'SA');

select*from customer4;

select*from orders;
truncate table customer2;
truncate table customer3;
-- inner join tabhi hoga jb atleaast ek column common ho
-- utne hi column aayenge jitni row equal hai dono culumn se 



select*from orders inner join  customer4 on orders.customer_id=customer4.customer_id ;
select customer_name from orders inner join  customer4 on orders.customer_id=customer4.customer_id ;

select customer4.customer_id from orders inner join  customer4 on orders.customer_id=customer4.customer_id ;
select orders.customer_id from orders inner join  customer4 on orders.customer_id=customer4.customer_id ;

select country from orders inner join  customer4 on orders.customer_id=customer4.customer_id ;



