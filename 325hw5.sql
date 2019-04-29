/*
*	Christopher Velazquez
*	CS 325 - Homework 5 - problem 2
*	9/29/18
*/

spool 325hw5-out.txt

prompt Homework 5 problem 2
prompt Christopher Velazquez

prompt problem 2.1

select client_credit_rtg
from client
where client_credit_rtg < 3.4;

prompt problem 2.2

select distinct movie_yr_released, movie_rating
from movie;

prompt problem 2.3
select *
from client, movie_category
where client.client_fave_cat = movie_category.category_code;

prompt problem 2.4
select vid_id, date_due
from  rental
where date_returned is null;

prompt problem 2.5
select vid_id, vid_format, vid_rental_price
from video
where vid_format != 'Blu-Ray';


prompt problem 2.6
select movie_category.category_name, client.client_lname, client.client_credit_rtg
from movie_category, client
where movie_category.category_code = client.client_fave_cat;

prompt problem 2.7
select vid_purchase_date
from video
where vid_purchase_date between '15-JUL-2008' and '01-DEC-2011';

prompt problem 2.8
select *
from video
where vid_rental_price >= 3.99 and vid_purchase_date >= '01-JAN-2011';

prompt problem 2.9

/*
* The Blues Brothers is going to show up because "Bro'the'rs"
*/

select movie_title
from movie
where movie_title like  '%the%';

prompt problem 2.10
select vid_id, vid_format, vid_rental_price * 0.85 "PRICE_IF_REDUCED" 
from video
where vid_format != 'Blu-Ray';

prompt problem 2.11
select movie_title, movie_rating
from movie
where movie_rating in ('PG-13', 'R', 'A');

prompt problem 2.12
select avg(vid_rental_price) "Avg Rental", count(vid_id) "Num Videos"
from video;












spool off;