/*
*	Christopher velazquez
*	CS 325 - Homework 6 - Problem 2
*	10/13/18
*
*
*
*/


spool 325hw6-out.txt
prompt Homework 6 problem 2

prompt Christopher Velazquez

prompt Problem 2-1
select avg(vid_rental_price)
from Video;

prompt Problem 2-2
select vid_id
from Video
where vid_rental_price > ( select avg(vid_rental_price)
							from Video );
							

prompt problem 2-3
select client_lname, client_fname
from Client
where client_num in ( select CLIENT_NUM	
					from Rental
					where vid_id = '130012' );

prompt problem 2-4
select movie_title
from Movie
where movie_director_lname = &movie_director_lname;

prompt problem 2-5
select movie_title, movie_yr_released
from Movie
where category_code = (select category_code
						from movie_category
						where category_name = &category_name);

prompt problem 2-6
select movie_rating|| '; '|| movie_title as "Movies with Ratings"
from Movie;

prompt problem 2-7
select movie_title || ' ' || '(' || movie_yr_released || ')' as "Movies"
from movie;

prompt problem 2-8
select client_lname, client_phone
from Client
where exists (select *
				from rental
				where rental.client_num = client.client_num and rental.date_returned is null);

prompt problem 2-9 
select movie_title
from movie
where not exists( select *
					from video		
					where video.movie_num = movie.movie_num and video.vid_format = 'HD-DVD');












spool off