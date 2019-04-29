spool  325report2-results.txt

set pagesize 200

set feedback off;

ttitle "Sum of Acts of aggression:"

compute sum of act_of_aggression on report
break on report skip 2
column dummy heading ''
select ' ' dummy, act_of_aggression, dog_id
from Dog;



spool off;