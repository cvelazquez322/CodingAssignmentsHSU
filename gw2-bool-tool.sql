/*
*	Christopher Velazquez
*	2/10/19
*	
*/

/*	funtion bool_to_string: boolean -> varchar2
*	purpose: returns a string
*				"True" if its true
*				"False" if false	
*/



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



spool hw2-1-out.txt

prompt christopher Velazquez

prompt should return true

var my_string varchar2(10)

exec :my_string := bool_to_string(TRUE)

print my_string

prompt should return False

var my_string2 varchar2(10)

exec :my_string2 := bool_to_string(FALSE)

print my_string2

spool off;