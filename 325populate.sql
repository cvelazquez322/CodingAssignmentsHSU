/*
*	Christopher Velazquez
*	CS 325 - Fall 2018
*	11/27/18
*
*/


delete from Volunteer;
delete from Training;
delete from DogOwner;
delete from Dog;
delete from Owner;
delete from Employee;

insert into Employee
values
('000005', 'Amber Lane', 'none', 'no', 'none');

insert into Employee
values
('000010', 'Andrew Johnson', 'none', 'yes', '1010');

insert into Employee
values
('00015', 'James Senior', '1000', 'yes', '1010');

insert into Employee
values
('000100', 'Brianna Zesati', '2000', 'no', 'none');

insert into Employee
values
('000105', 'Joshua Lane', '3000', 'no', 'none');

insert into Employee
values
('000150', 'Patricia Escobar', 'none', 'yes', '2020');

insert into Employee
values
('000500', 'Jacob Millengar', 'none', 'yes', '3030');

insert into Employee
values
('000505', 'Kayla Lemus', 'none', 'yes', '3030');

insert into Employee
values
('000510', 'Andrea Lauk', '3000', 'no', 'none');

insert into Employee
values
('000515', 'Amber Lane', 'none', 'no', 'none');

insert into Employee
values
('000000', 'Generic Volunteer_ID', 'none', 'no', 'none');



insert into Dog
values
('000100', 'Spot', 0, '8-Dec-2018', 'yes');

insert into Dog
values
('001000', 'pork', 1, '7-Dec-2018', 'no');

insert into Dog
values
('000200', 'wolfie', 2, '1-Dec-2018', 'yes');

insert into Dog
values
('000300', 'champ', 2, '1-Dec-2018', 'yes');

insert into Dog
values
('000400', 'falco', 2, '7-Dec-2018', 'no');

insert into Dog
values
('000500', 'neyar', 0, '6-Dec-2018', 'no');

insert into Dog
values
('000600', 'reina', 0, '4-Dec-2018', 'yes');

insert into Dog
values
('000700', 'Marco', 3, '4-Dec-2018', 'no');

insert into Dog
values
('000800', 'luna', 0, '5-Dec-2018', 'yes');

insert into Dog
values
('000900', 'pongo', 1, '4-Dec-2018', 'yes');


insert into Owner
values
('000200', 'Jet Swanson', '5555551817', '1');

insert into Owner
values
('000400', 'Maria Hernandez', '5555551718', '1');

insert into Owner
values
('000600', 'David son', '5555551816', '2');

insert into Owner
values
('000800', 'Jelet Swan', '5555551812', '0');

insert into Owner
values
('001000', 'Jimmy nso', '5555551814', '0');

insert into Owner
values
('001200', 'James Swan', '5555551827', '0');

insert into Owner
values
('001400', 'et Brutus', '5555557813', '1');

insert into Owner
values
('001600', 'Jill Sill', '5555551816', '0');

insert into Owner
values
('001800', 'Jerry mouse', '5555551887', '1');

insert into Owner
values
('002000', 'Tom Cat', '5555551819', '0');

insert into DogOwner
values
('000200', '000100');

insert into DogOwner
values
('000400', '000200');

insert into DogOwner
values
('000600', '000300');

insert into DogOwner
values
('000800', '000400');

insert into DogOwner
values
('001000', '000500');

insert into DogOwner
values
('001200', '000600');

insert into DogOwner
values
('001400', '000700');

insert into DogOwner
values
('001600', '000800');

insert into DogOwner
values
('001800', '000900');

insert into DogOwner
values
('002000', '001000');



insert into Training
values
('0000000001', '000010', '000100', '05-May-17', '1010', 'Basic Training');

insert into Training
values
('0000000002', '000010', '000100', '06-May-18', '1010', 'Basic Training');

insert into Training
values
('0000000003', '000010', '000100', '07-May-18', '1010', 'Basic Training');

insert into Training
values
('0000000004', '000010', '00200', '08-May-18', '1010', 'Basic Training');


insert into Training
values
('0000000005', '000010', '000300', '20-May-18', '1010', 'Basic Training');

insert into Training
values
('0000000006', '000010', '000400', '21-May-18', '1010', 'Basic Training');

insert into Training
values
('0000000007', '000150', '000400', '25-May-18', '2020', 'Advanced Training');

insert into Training
values
('0000000008', '000150', '000400', '26-May-18', '2020', 'Advanced Training');

insert into Training
values
('0000000009', '000505', '000700', '27-May-18', '3030', 'Anti-Aggresion Training');

insert into Training
values
('0000000010', '000500', '000700', '06-Jun-18', '3030', 'Anti-Aggresion Training');


insert into Volunteer
values
('000003', 'Grag Nak', '000000', 'Clean front customer area.');

insert into Volunteer
values
('000005', 'Julia Rubberts', '000000', 'Clean back office');

insert into Volunteer
values
('000007', 'Greg nelosn', '000000', 'Clean front customer area.');

insert into Volunteer
values
('000009', 'Jules james', '000000', 'Clean back office');

insert into Volunteer
values
('000011', 'Grant lina', '000000', 'Stock the shelves');

insert into Volunteer
values
('000013', 'Mario Ruzorwski', '000000', 'Dust the fans');

insert into Volunteer
values
('000015', 'Portia Pika', '000000', 'Mop the store');

insert into Volunteer
values
('000017', 'Leroy Mjankins', '000000', 'Sweep store');

insert into Volunteer
values
('000019', 'Lester Nakada', '000000', 'Clean.');

insert into Volunteer
values
('000021', 'John-jacob Jingle-Heimerschmidt', '000000', 'Clean back office');


















