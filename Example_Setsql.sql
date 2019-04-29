/*
*		Christopher Velazquez
*		CS 328 - homework 3
*		2/17/19
*/


set serveroutput on

spool 328hw3-out.txt

prompt Christopher Velazquez

prompt Problem 4


/* function next_ord_needed_id 
*	nothing -> one larger than the largest current value of ord_needed_id
*	grabs the max ord_needed_id and returns one greater than that
*	or if empty, returns 1
*
*/

create or replace function next_ord_needed_id
return number as

the_num number;

begin
	select max(ord_needed_id)
	into the_num
	from order_needed;
	
	if the_num > 0 then
		the_num := the_num + 1;
		return the_num;
	else
		return 1;
	end if;
	
end;
/
show errors

start next_ord_needed_id_test.sql


prompt problem 5

/*
*	function is_on_order
*	isbn(varchar2) -> boolean
*	expects an isbn string and returns true if on order
*	false otherwise
*/

create or replace function is_on_order(isbn_used varchar2)
return boolean as

the_order_status char(1);

begin
	begin 
		select on_order 
		into the_order_status
		from title
		where isbn = isbn_used;
	exception
		when NO_DATA_FOUND then 
			return FALSE;
	end;
	
	if the_order_status = 'T' then
		return TRUE;
	else
		return FALSE;
	end if;

end;
/
show errors	



create or replace function bool_to_string(bool_val boolean) 
	return varchar2 as 
begin
	if bool_val then 
		return 'TRUE';
	else 
		return 'FALSE'; 
	end if;	
end;
/
show errors


var my_func varchar2(5)

exec :my_func := bool_to_string(is_on_order('0805343024'))

print my_func


 start is_on_order_test.sql



















spool off;