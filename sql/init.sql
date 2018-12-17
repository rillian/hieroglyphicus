# mysql script create and populate the database.

create database hieroglyphicus;
use hieroglyphicus

create table entries (transliteration varchar(6), mdc varchar(16), english varchar(24));

insert into entries values ('Htp', 'R4', 'peace, offerings');
