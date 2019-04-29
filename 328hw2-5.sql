/*
*	Christopher Velazquez
*	cs 328 - homework 2 - problem 5
*	2/10/19
*
*/

set serveroutput on

spool 328hw2-5-out.txt

prompt christopher Velazquez

/* procedure: customers_at_event: char -> void
*	intakes a event id counts how many customers are at an event
*
*
*/

create or replace procedure customers_at_event(id varchar2)
										as counter number;
begin
	select count(cust_id)
	into counter
	from cust_at_event
	where event_id = id;

	dbms_output.put_line('There were '|| counter || ' people at event ' || id);
	
	return;
end;
/
show errors


exec customers_at_event('7651')

exec customers_at_event('0001')	



spool off;