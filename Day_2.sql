select * from student;
-- ORDER BY (SORTING)
select * from student 
order by department_id; -- default ASCENDING
select * from student 
order by department_id DESC; -- Largest first

select * from student 
where department_id = 3 or department_id = 2
order by department_id desc, first_name;
-- ---------------------
insert into student (roll_num, first_name, department_id) values
("civil", "Akashdeep", 3);
-- --
select * from student 
where last_name = NULL;   -- NULL NOT= NULL (We cant compare two null values)
select * from student 
where last_name IS NULL;
select 2 = 2;
select NULL = NULL;
-- --------------------
-- LIMIT
select * from student order by last_name limit 2;
-- --------------

