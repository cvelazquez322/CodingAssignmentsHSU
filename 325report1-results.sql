/*
*	Christopher Velazquez
*	CS 325 - Fall 2018
*	12/7/18
*
*
*
*/

set pagesize 200

spool 325report1-results.txt


drop view Volunteer_Duties;

ttitle "Volunteers work schedule";


create view Volunteer_Duties as
select (Vol_name || duties) as "Volunters And their Duties: " 
from Volunteer;

select *
from Volunteer_Duties;

spool off;