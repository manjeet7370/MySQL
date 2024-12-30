-- DROP DATABASE IF EXISTS sales;
-- CREATE DATABASE sales;

create table order_sales
(
 order_id int primary key,
 product_id int,
 price float,
 discount int,
 order_date date
 
);

create table product
(
product_id int primary key,
product_name varchar(50)
);

insert into sales.product values 
(1, "parle_G" ),
(2, "jeera"),
(3, "pules"),
(4, "happy-happy"),
(5, "gold-milk"),
(6, "sprite"),
(7, "marry-gold"),
(8, "pen"),
(9, "vickey-35"),
(10, "laptop");

select * from sales.product;

insert into sales.order_sales values
(1, 1, 4.0, 20, "2024-12-20");

insert into sales.order_sales values
(2, 2, 230.00, 10, "2024-12-10"),
(3, 4, 10.00, 30, "2024-11-23"),
(4, 3, 1.00, 0, "2024-11-3"),
(5, 8, 10.00, 5, "2024-11-16"),
(6, 10, 520000.00, 20, "2024-10-11"),
(7, 9, 36.00, 2, "2024-1-3"),
(8, 7, 45.00, 10, "2024-11-23"),
(9, 5, 28.00, 0, "2024-1-23"),
(10, 6, 100.00, 15, "2024-9-15"),
(11, 8, 10.00, 5, "2024-1-2"),
(12, 4, 10.00, 30, "2024-5-4");

select MAX(price) as max_price, min(price) as min_price , avg(price) as average from sales.order_sales;
select order_date as date from sales.order_sales;
select count(*) as total_count, sum(price) as total from sales.order_sales;
--------------------------
select * from product;
-- LIKE
select * from sales.product
where product_name LIKE 'p%'; -- Product name starts with P

select * from sales.product
where product_name LIKE '__%n'; 

select * from sales.product
where product_name NOT LIKE 'p%';


select * from sales.product
where product_id = 2 or product_id = 5;
select * from sales.product
where product_id in (2,5,7);

select * from product
where product_id between 3 and 7






