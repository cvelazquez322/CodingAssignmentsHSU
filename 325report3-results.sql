spool  325report3-results.txt

set pagesize 200

set feedback off;

ttitle "Phone numbers of the owners"

drop view Owners_Phone;

create view Owners_Phone as 
select (cust_id || '      '|| phone_num) as "Owners phone_nums: " 
from Owner;


select *
from Owners_Phone;

spool off;