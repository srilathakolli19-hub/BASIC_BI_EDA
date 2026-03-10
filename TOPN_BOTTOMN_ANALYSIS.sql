--top n and bottom n analysis ie dimesnion by measure

--give top 5 products generating high revenue
select top 5
p.product_name,
SUM(f.sales_amount) as total_revenue
from gold.fact_sales f
left join gold.dim_products p
on p.product_key=f.product_key
group by p.product_name
order by total_revenue desc


--give 5 products that are worst performing in terms of sales
select top 5
p.product_name,
SUM(f.sales_amount) as total_revenue
from gold.fact_sales f
left join gold.dim_products p
on p.product_key=f.product_key
group by p.product_name
order by total_revenue 

--for more detailing 
select top 5
p.product_name,
SUM(f.sales_amount) as total_revenue,
ROW_NUMBER() over (order by sum(f.sales_amount) desc) as rank
from gold.fact_sales f
left join gold.dim_products p
on p.product_key=f.product_key
group by p.product_name

--or
select * from 
(select 
p.product_name,
SUM(f.sales_amount) as total_revenue,
ROW_NUMBER() over (order by sum(f.sales_amount) desc) as rank_number
from gold.fact_sales f
left join gold.dim_products p
on p.product_key=f.product_key
group by p.product_name) t where rank_number <=5

--give top 10 customers who have generated highest revenue
select top 10
c.customer_key,
c.first_name,
c.last_name,
SUM(f.sales_amount) as total_revenue
from gold.fact_sales f
left join gold.dim_customers c
on c.customer_key=f.customer_key
group by c.customer_key,
c.first_name,
c.last_name
order by total_revenue desc

--give 3 customers who have placed few orders
select top 3
c.customer_key,
c.first_name,
c.last_name,
COUNT(distinct f.order_number) as total_orders
from gold.fact_sales f
left join gold.dim_customers c
on c.customer_key=f.customer_key
group by c.customer_key,
c.first_name,
c.last_name
order by total_orders 


