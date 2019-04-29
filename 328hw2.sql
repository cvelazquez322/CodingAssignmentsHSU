/*
*	Christopher Velazquez
*	CS 328 - Homework 2 - Problems 2-4
* 	2/10/19
*/

set serveroutput on

spool 328hw2-out.txt

prompt Christopher Velazquez

prompt Problem 2

/*	Procedure silly shout: varchar2, integer -> void
*	expects a string, and an integer, then prints that string to the screen that many
*			times in upper case and with !!!.
*	if less than 0, prints "Cannot show that message"
*/

create or replace procedure silly_shout(the_line varchar2,
											the_amount integer)
									as loop_amount integer;
begin
	loop_amount:= 0;
	if the_amount < 0 then
		dbms_output.put_line('can not show ' || the_line || ' that many times');
		return;
	end if;
	while loop_amount < the_amount
	loop
		dbms_output.put_line(UPPER(the_line) || '!!!');
		loop_amount := loop_amount + 1;
	end loop;
end;
/
show errors

exec silly_shout('Hello', 5)

exec silly_shout('my name is', -4)

start silly_shout_test.sql

prompt problem 3

/*
*		function title_total_cost: varchar2 -> integer
*			searches for ISBN, returns cost of ISBN
*			if none found, returns -1
*
*/


create or replace function title_total_cost( isbn_selected varchar2)
	return float is
	
	cost float;
	some_var float;
	num_matching_rows float;
begin
	select count(*)
	into num_matching_rows
	from title
	where isbn = isbn_selected;
	
	if num_matching_rows = 0 then
		cost := -1;
	else
		select title_cost
		into cost
		from title
		where isbn = isbn_selected;
		
		select qty_on_hand
		into some_var
		from title 
		where isbn = isbn_selected;
		
		cost := cost * some_var;
		
	end if;
	
	
	return cost;
end;
/
show errors

var a number

exec :a := title_total_cost('1')

print a

var b number 

exec :b := title_total_cost('0805322272')
	
print b	


start title_total_cost_test.sql

prompt problem 4

/*	PROCEDURE title_in_range: integer, integer -> void
*		shows $ title price, title, qty_on_hand of books in price range, inclusive
*
*
*/

create or replace procedure title_in_range (low integer,	
												high integer)
												as counting integer;
	
begin
	counting := 0;
	for counter < 
