/*
*	Christopher Velazquez
*	CS 325-homework 11 - Problem 2 
*	12/5/18
*/

spool 325hw11-out.txt

prompt homework 11 problem 2

prompt problem 2-1

drop view rentals_by_day;

create view rentals_by_day as
select rental_num, client_num, vid_id, to_char(date_out,  'fmDay') "day_out", to_char(date_due,  'fmDay') "day_due",
											to_char(date_returned,  'fmDay') "day_returned"
from rental;

select *
from rentals_by_day;


prompt problem 2-2

column "day_out" format a9
column "day_due" format a9
column "day_returned" format a9

select *
from rentals_by_day;

prompt problem 2-3

select "day_out", count("day_out") as "num_rentals"
from rentals_by_day 
group by "day_out"
order by "num_rentals" desc;

prompt problem 2-4

select to_char(vid_purchase_date, 'MON YYYY'), movie_title, vid_format
from video, movie
where video.movie_num = movie.movie_num;

prompt problem 2-5

select client_lname || ', ' || client_fname as "Client", 
				to_char(min(date_out), 'month dd, YYYY') as "FIRST_RENTAL"
from client, rental
where client.client_num = rental.client_num
group by client_lname, client_fname
order by client_lname, client_fname;






spool off;