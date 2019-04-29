/*
*
*		Christopher Velazquez
*		11/11/18
*
*
*
*
*/







drop table Employee cascade constraints;

create table Employee
( EMP_ID		char(6) not null, 
emp_name		varchar2(30) not null, 
training		varchar2(4), 
house_sitting 	varchar2(3), 
class_type		varchar2(5),
primary key (EMP_ID)
);

/*
* a table deisgned to hold an Employee's attributes
* While class_type describes training that the employee can teach
*/

drop table Dog cascade constraints;

create table Dog
( DOG_ID			char(6) not null, 
dog_name			varchar2(15), 
act_of_aggression	int, 
date_checked_in		date, 
neutered			varchar2(3),
primary key (DOG_ID) 
);

/*
* a table deisgned to hold a Dog's attributes
* 
*
*/


drop table Owner cascade constraints;

create table Owner
(CUST_ID		char(6) not null,
 owner_name		varchar2(30), 
 phone_num		char(10), 
 cust_tier		char(1),
 primary key (CUST_ID)
);


/*
* a table deisgned to hold an Owner's attributes
* CUST_TIER should be either a 1 or a 2, 1 being higher class tier, 2 being lower
*
*/

drop table DogOwner cascade constraints;

create table DogOwner
(CUST_ID		char(6) not null,
 DOG_ID			char(6),
 primary key (CUST_ID, DOG_ID),
 foreign key (CUST_ID) references Owner,
 foreign key (DOG_ID) references Dog 
);


/*
*	DogOwner is a table designed to hold the values of the 
* 	dog and owner as 
*
*/


drop table Training cascade constraints;

create table Training
(CLASS_NUM		char(10), 
EMP_ID			char(6), 
DOG_ID			char(6), 
date_of			date,
class_ID_type	varchar2(15),
class_category	varchar2(30),
primary key (CLASS_NUM),
foreign key (EMP_ID) references  Employee,
foreign key (DOG_ID) references Dog
);

/*
* a table deisgned to hold an Training classes attributes
* 
*
*/

drop table Volunteer cascade constraints;

create table Volunteer
(VOL_ID 	char(6),
Vol_name    char(50),
emp_id		char(6),
duties		char(150),
foreign key (emp_id) references Employee
);

/*
* a table deisgned to hold an Volunteer's attributes
* 
*
*/