/*
*       Christopher Velazquez
*       CS 325 - Homework 9 - prob 3
*       11/17/18
*
*
*
*/


spool 325hw9-out.txt
prompt home work 9 problem3

prompt Christopher Velazquez

prompt problem 3-1

drop view counter_client_info;

create view counter_client_info as
select client.client_lname, movie_category.category_name as "fave_cat"
from client, movie_category
where movie_category.category_code = client.client_fave_cat;

prompt problem 3-2

select *
from counter_client_info
order by client_lname;

select "fave_cat", client_lname
from counter_client_info
order by "fave_cat";


prompt problem 3-3

drop view movie_list;

create view movie_list as
select movie_category.category_name, movie.movie_rating, movie.movie_title 
from movie, movie_category
where movie.category_code = movie_category.category_code;

prompt problem 3-4
select *
from movie_list
order by movie_rating, movie_title;

prompt problem 3-5
select category_name, count(category_name)
from movie_list
group by category_name
order by count(category_name) desc;

prompt problem 3-6
drop table xtreme_movie;

create table xtreme_movie(
xtreme_movie_ID		char(5),
xtreme_movie_title	varchar2(40),
xtreme_movie_director varchar2(40),
primary key 			(xtreme_movie_ID));

drop sequence xtreme;

create sequence xtreme
start with 5
increment by 10;

prompt 3-7
insert into
xtreme_movie values
(xtreme.nextval, '6th sense', 'Shamalan'); 

insert into
xtreme_movie values
(xtreme.nextval, 'Breh', 'My breh'); 

insert into
xtreme_movie values
(xtreme.nextval, 'senseless', 'Charles'); 

select *
from xtreme_movie;




spool off;

