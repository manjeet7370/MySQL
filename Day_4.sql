SELECT * FROM sales.order_sales;
-- GROUP BY
select product_id, sum(price) as total_sales from sales.order_sales
group by product_id;

select product_id, avg(discount) as total_sales from sales.order_sales
group by product_id;
--
select product_id, count(*) as total_sales from sales.order_sales
group by product_id;
--
select product_id, count(*) as total_sales from sales.order_sales
where product_id <= 5
group by product_id;
--
select product_id, count(*) as total_sales from sales.order_sales
where product_id <= 5
group by product_id
order by total_sales desc, product_id;
--
-- HAVING

select product_id, count(*) as total_sales from sales.order_sales
-- where total_sales > 1 XXXXXXX
where product_id < 9
group by product_id
having total_sales > 1
order by product_id desc
limit 1;
-- 
-- DATE

select month(order_date) as mnth, sum(price) as total_sales from order_sales
group by mnth order by mnth;

-- 

select product_id , price, discount, price - (price*discount)/100 as final_price from order_sales;




