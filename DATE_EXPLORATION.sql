--date exploration 

--find the first and last order
--find how many years the sales are happening
select 
MIN(order_date) as first_order_date,
MAX(order_date) as last_order_date,
DATEDIFF(year,min(order_date),MAX(order_date)) as order_range_years
from gold.fact_sales

--find the oldest and youngest customer
select 
MIN(birthdate) as oldest_birthdate,
DATEDIFF(year,min(birthdate),getdate()) as oldest_age,
MAX(birthdate) as youngest_birthdate,
DATEDIFF(year,max(birthdate),getdate()) as youngest_age
from gold.dim_customers
