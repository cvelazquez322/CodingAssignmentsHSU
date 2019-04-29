/*
*	Christopher Velazquez
*	2/24/19
*	CS 328 - HW 4
*
*/

set serveroutput on;
spool 328hw4-out.txt

prompt problem 6

/* insert_order_needed
* string, number -> inserts new row
*
*
*/

create or replace procedure insert_order_needed(isbn_given varchar2, quantity integer)
as some_procedure integer; 
begin
	some_procedure := next_ord_needed_id();
	
	insert into order_needed 
	(ord_needed_id, isbn, order_qty, date_created)
	values
	(some_procedure, isbn_given, quantity, sysdate);
	
end;
/
show errors


start insert_order_needed_test.sql

prompt preoblem 7

create or replace function pending_order_needed(expected_isbn varchar2)
return boolean as

	the_truth boolean := false;
	the_date varchar2(15);

begin
	
	select date_placed
	into the_date
	from order_needed
	where isbn = expected_isbn;
	
	if the_date is null then
		the_truth := true;
	end if;
	
	return the_truth;
end;
/
show errors

start pending_order_needed_test.sql






spool off;