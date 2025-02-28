

alter table person add column DOB date ;

select * from person;

UPDATE Person  SET DOB = '2000-06-25'  WHERE ID = 01;
UPDATE Person  SET DOB = '1856-07-26'  WHERE ID = 02;
UPDATE Person  SET DOB = '2001-11-08'  WHERE ID = 03;
UPDATE Person  SET DOB = '1992-05-19'  WHERE ID = 04;
UPDATE Person  SET DOB = '1985-09-30'  WHERE ID = 05;
UPDATE Person  SET DOB = '2003-06-14'  WHERE ID = 06;
UPDATE Person  SET DOB = '1998-12-03'  WHERE ID = 07;
UPDATE Person  SET DOB = '1990-02-22'  WHERE ID = 08;
UPDATE Person  SET DOB = '2005-08-07'  WHERE ID = 09;
UPDATE Person  SET DOB = '1996-04-28'  WHERE ID = 10;
UPDATE Person  SET DOB = '1950-07-12'  WHERE ID = 11;
UPDATE Person  SET DOB = '2012-08-04'  WHERE ID = 12;

delimiter ##
create function calculated_age (DOB date)
returns int 
deterministic 
begin
return timestampdiff(year, dob, curdate());
end ## 
delimiter ;

select fname,lname,DOB,calculated_age(DOB) as current_age from person ;

select country_name, char_length (country_name) as "char length" from country ;

select country_name, upper (country_name) as "upper case" from country ;

select country_name, lower (country_name) as "lower case" from country ;

