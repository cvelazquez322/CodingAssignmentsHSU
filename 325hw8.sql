/*
*	Christopher Velazquez
*	CS 325 - Homework 8 - Problem 3
*	11/3/18
*	@ 325hw8
*/
@ movies-pop.sql

spool 325hw8-out.txt
prompt homework 8 - problem 3
prompt Christopher Velazquez

prompt 3-2

(select movie_num
from movie
where movie_rating = 'G')
intersect
(select movie_num
from video
where vid_format = 'DVD');

prompt 3-3

(select movie_title
from movie
where movie_rating = 'G')
intersect
(select movie_title
from movie
where movie.movie_num in (select movie_num
						from video							
						where vid_format = 'DVD'));

prompt 3-4

(select movie_title
from movie)
minus
(select movie_title
from movie
where movie.movie_num in (select movie_num
							from video
							where vid_id in (select vid_id
											from rental)));
											
prompt 3-5

(select vid_id, vid_rental_price
from video
where vid_format = 'HD-DVD')
union
((select vid_id, vid_rental_price
from video)
minus
(select rental.vid_id, video.vid_rental_price
from video, rental
where video.vid_purchase_date is not null))
order by vid_rental_price desc;

prompt 3-6

(select client_num
from client
where client_credit_rtg > 3)
minus
(select client.client_num
from 	client, rental
where 	client.client_num = rental.client_num
and	date_returned is null);

prompt 3-7

(select video.vid_id, count(*) "NUM_RENTALS"
from 	video, rental
where	video.vid_id = rental.vid_id
group by video.vid_id)
union
(select	vid_id, 0 "NUM_RENTALS"
from	video
where	not exists (select 'a'
					from	rental
					where	video.vid_id = rental.vid_id))
order by "NUM_RENTALS" desc, vid_id;


prompt 3-8 

select 	vid_id, vid_rental_price
from 	video
where	vid_format != 'DVD';

update	video
set	vid_rental_price = vid_rental_price * .75
where	vid_format != 'DVD';

select  vid_id, vid_rental_price
from    video
where   vid_format != 'DVD';


prompt 3-9

select	client_lname, client_credit_rtg
from	client
order by client_credit_rtg;

update	client
set	client_credit_rtg = client_credit_rtg * 1.15
where	client_credit_rtg < 4
and	client_credit_rtg > (select avg(client_credit_rtg)
							from client);


prompt 3-10

select rental_num, client_fname || ' ' || client_lname  "CLIENT",
	 rental.vid_id, rental.date_out
from rental, client
where rental.client_num = client.client_num
order by client_lname, client_fname, rental.rental_num;

delete	from rental
where	client_num = 
	(select client_num
	from 	client
	where 	client_lname = 'Carlos'
	and	client_fname = 'Ann');


prompt 3-11

select  count(*) "current # videos"
from 	video;

delete	from video
where video.vid_id not in (select vid_id
							from rental);
select *
from video
order by vid_id;

spool off;