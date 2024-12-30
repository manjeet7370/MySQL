-- Creating Database
-- DROP DATABASE IF EXISTS university;
CREATE DATABASE university;
-----------------------------------
-- Create Tables
create table student
(
roll_num varchar(10),
first_name varchar(50),
last_name varchar(50),
department_id int
);
-------------------------------
-- Insert data into tables
insert into university.student values
("cs123", "Manjeet", "Kumar", 1);

select * from university.student;

insert into university.student values
("cs124", "Himasnu", "Kumar", 1);
-- Insert multiple values
insert into university.student values
("mech123", "Sanjeet", "Solanki", 2),
("mech124", "Rahul", "Jaikar", 2),
("mech125", "Sahil", "Singh", 2),
("mech126", "Ashwini", "Pandey", 2);
-----------------------------
select roll_num, first_name, department_id from university.student;
----------------------------------------------
-- Filter data (WHERE)
select * from university.student
where department_id = 1;

select * from university.student
where last_name = "singh";
-------------
select distinct department_id, last_name from univenrsity.student;
-----------------
select * from university.student 
where last_name = "kumar" or department_id = 2;
-----
create table department
( 
department_id int,
department_name varchar(50)
);

insert into university.department values
( 1 , "CSE"),
( 2, "Mech"),
( 3 , "civil"),
( 4, "biotech");

select * from university.department;
insert into university.student values
("civil15", "Raju", "gentelmen", 3),
("biotech2", "sohit", "Rana", 4),
("Mech10", "Anurag", "jaisawal", 2),
("CSE32", "Parth", "soni", 1);

select * from university.student
where department_id != 3;





