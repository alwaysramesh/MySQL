use cybrom;

delimiter //
create trigger updates_sales
before update
on sales7 for each row
begin declare error_msg varchar(255);
set error_msg=('The new quantity cannot be greater than 3 times the current quantity newreew');
if new.quantity > old.quantity*3 then
signal sqlstate '45000'
set message_text = error_msg;
end if ;
end //
delimiter ;

SET SQL_SAFE_UPDATES = 0;
select *
from sales7;
update sales7 set quantity = 25 where id = 2003;

update sales7 set quantity = 12000 where id = 2018;

drop trigger if exists updates_sales;


delimiter //
create trigger upd_check before update on sales7
for each row
begin
if new.quantity < 0 then
set new.quantity = 0;
elseif new.quantity > 100 then 
set new.quantity =100;
end if;
end //

update sales7 set quantity = 50 where id= 2018;
select*from sales7;
update sales7 set quantity = -120 where id= 2014;





