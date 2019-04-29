/*
*	Christopher Velazquez
*	CS 325 - Fall 2018
*	12/7/18
*
*/

spool 325query-results.txt



select * 
from Dog
where act_of_aggression > 1;

select owner_name, cust_tier
from Owner
where cust_tier =(select max(cust_tier)
					from Owner);

select distinct (dog_name) as "Dogs currently in training: "
from Training, Dog
where Training.dog_id = Dog.dog_id;

select dog_id, dog_name 
from Dog, 
group by date_checked_in;

select distinct dog_id as "Dogs that need Anti-Aggresion training"
from training
where ( class_id_type > '2020') and (class_category = 'Anti-Aggresion Training');

select Vol_name || duties as "Volunteers duties"
from volunteer;

select dog_id as "Dogs in after Dec 6th"
from dog
where date_checked_in > '6-Dec-2018';

select emp_name, training
from Employee
where training  != 'none';

spool off;