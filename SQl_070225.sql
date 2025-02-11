use cybrom;


select*from emp;

delimiter //
create procedure sp3 (out total_age int )
begin
select count(id) into total_age from emp where age>=25 ;
end //
delimiter ;

drop procedure if exists sp5;

call sp3(@age);

select @age;
desc emp;


delimiter //
create procedure sp5(inout age1 int, in name1 varchar(10))
begin
select count(*) into age1 from emp where name=name1;
end //
delimiter ;

call sp5(@t,'Komal');
select @t;
call sp5(@t,'Rahul');
select @t;


