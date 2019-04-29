/*
*	Christopher Velazquez
*	cs 328 - homework 6 - prob 5
*	3/17/19
*
*/

set serveroutput on

spool 328hw6-out.txt

prompt Christopher Velazquez
prompt problem 5

/* varchar2, num -> int
* takes isbn, a num of how many books sold
*
*
*/

create or replace function sell_book( isbn_selected varchar2, number_sold number)
return number as
	code number := 0;
	data_returned number := 0;
	original_num number := 0;
	order_pnt number := 0;
declare
		less_zero exception;
		more_than exception;
begin
	commit;
	if number_sold < 0 then
		raise less_zero;
	begin
		select isbn
		into data_returned
		from title
		where isbn = isbn_selected;
		
		EXCEPTION 
		WHEN NO_DATA_FOUND then
			code := -1;
			rollback;
			return code;
	
		when less_zero then:
			code := -2;
			rollback;
			return code;
			
		when more_than then
			code := -3
			rollback;
			return code;
		end;
		
	select	qty_on_hand
	into original_num 
	from title
	where isbn = isbn_selected;
	
	select order_point
	into order_pnt
	from title
	where isbn = isbn_selected;
	
	data_returned := qty_on_hand - data_returned;
	
	if data_returned > 0 or (data_returned < order_pnt and   then
		update title
		set qty_on_hand = data_returned
		where isbn = isbn_selected;
end;
/
show errors
		
spool off;



















spool off;