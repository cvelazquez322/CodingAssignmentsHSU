/*
*	Christopher Velazquez
*	CS 325 - hw 7 - Problem 3
*	10/27/18
*
*/

spool 325hw7-out.txt

prompt homework 7 problem 3

prompt Christopher Velazquez

prompt 3-1

select *
from client
order by client_credit_rtg;


select *
from client
order by client_credit_rtg desc;

prompt  3-2

select movie_rating|| '; '|| movie_title as "Movies with Ratings"
from Movie
order by movie_rating, movie_title;


prompt 3-3

select category_name, movie_title, movie_rating
from movie_category, movie
where movie_category.category_code = movie.category_code
order by movie_rating, category_name desc, movie_title; 

prompt 3-4

select client_lname, client_phone, client_credit_rtg
from client
where client_credit_rtg >=( select avg(client_credit_rtg)
							from client)
order by client_credit_rtg desc;

prompt 3-5

select vid_format, count(vid_format) "QTY", avg(vid_rental_price) "AVG RENTAL PRICE"
from video
group by vid_format;

prompt 3-6
select vid_format, count(vid_format) "QTY", avg(vid_rental_price) "AVG RENTAL PRICE"
from video
group by vid_format
order by count(vid_format);

prompt 3-7

select vid_rental_price, count(vid_rental_price) "# VIDS"
from video
group by vid_rental_price
order by vid_rental_price desc;

prompt 3-8

select vid_rental_price, count(vid_rental_price) "# VIDS"
from video
having count(vid_rental_price) >= 5
group by vid_rental_price
order by vid_rental_price desc;

prompt 3-9

select category_name, count(category_name) as "# MOVIES"
from movie, movie_category
where movie.category_code = movie_category.category_code
group by category_name
order by count(category_name) desc;

prompt 3-10

select avg(count(vid_rental_price)) "# per price"
from video
group by vid_rental_price;

spool off;