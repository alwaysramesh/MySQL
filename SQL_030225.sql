use cybrom;
select*from employees;

create table emp4(name varchar(45) not null, working_hours int);

insert into emp4 values('Robin',12),
('Warner',10),
('Peter',13),
('Marco',14),
('Brayden',12),
('Antonio',11);
select*from emp4;

delimiter //
create trigger t3
before insert on emp4 for each row
begin
if new.working_hours < 10 then set new.working_hours = 5;
end if;
end //

delimiter ;
insert into emp4 values ('Jobin',20);
select*from emp4;
insert into emp4 values ('Ankit',4);
end //
delimiter //
insert into emp4 values ('Ramesh',4);
show triggers ;

-- update trigger
create table sales6(id int, product varchar(100),quantity int);
insert into sales6 values
(2003, 'Maruti Suzuki',110.2020),
(2015,' Avenger',120.2021),
(2018, 'Honda Shine',150.2022),
(2014, 'Apache',150.2023);
select*from sales3;
