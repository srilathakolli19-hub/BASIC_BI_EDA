use DataWarehouse;
go


--measures exploration

--Find the total sales
select SUM(sales_amount) as total_revenue from gold.fact_sales

--find how many items are sold
select SUM(quantity) as total_sales from gold.fact_sales

--find the average selling price
select AVG(price) from gold.fact_sales

--find the total number of orders
select COUNT(distinct order_number) from gold.fact_sales

--find the total number of products
select COUNT(product_key) from gold.dim_products
select COUNT(distinct product_key) from gold.dim_products

--find the total number of customers
select COUNT(customer_key) from gold.dim_customers
select COUNT(distinct customer_key) from gold.dim_customers

--find the total number of customers who actually placed an order
select COUNT(distinct customer_key) from gold.fact_sales

--Generate a query that shows all key metrics of a business
select 'Total Sales' as measure_name , SUM(sales_amount) as measure_value from gold.fact_sales
union all
select 'Total Quantity', SUM(quantity) from gold.fact_sales
union all
select 'Average Price',AVG(price) from gold.fact_sales
union all
select 'Total Nr. Orders',COUNT(distinct order_number) from gold.fact_sales
union all
select 'Total Nr. Products',COUNT(distinct product_key) from gold.dim_products
union all
select 'Total Nr. Customers',COUNT(distinct customer_key) from gold.dim_customers

