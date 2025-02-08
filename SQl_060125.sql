use cybrom;
select*from customer2;
select*from emp2;
select*from emp;



DELIMITER //

CREATE PROCEDURE sp()
BEGIN
    SELECT id, age FROM emp;
END //

DELIMITER ;

call sp();
-- how to call procedure? without terminate = like cunstructor yha aap case bhi laga sakte bigin and end ke bich order by, group by ke 

delimiter //
create procedure sp100 (in name1 varchar(100))
begin
select id,name from emp where name=name1;
end //
delimiter ;
call sp100('Komal') ;




