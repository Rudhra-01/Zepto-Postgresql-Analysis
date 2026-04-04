drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountSellingPrice NUMERIC(8,2),
weightIngms  INTEGER,
outofStock BOOLEAN,
quantity INTEGER
);

--data exploration

--count of rows
select count(*) from zepto;

--sample data
select *from zepto
limit 10;

--null values
select *from zepto
where name is null
or 
category is null
or 
mrp is null
or 
discountPercent is null
or
weightIngms is null
or 
availableQuantity is null
or 
discountsellingprice is null 
or
outofstock is null
or
quantity is null

--different product categories
select distinct category
from zepto
order by category;

--products in stock vs out of stock
select outofstock,count(sku_id)
from zepto
group by outofstock;

--product names present multiple times
select name,count(sku_id) as "number of SKUs"
from zepto
group by name
having count(sku_id)>1
order by count(sku_id)desc;

--data cleaning

--product with price = 0
select * from zepto
where mrp = 0 or discountsellingprice = 0;

delete from zepto
where mrp = 0;

--convert paise to rupees
update zepto
set mrp = mrp/100.0,
discountsellingprice = discountsellingprice/100.0;

select mrp,discountsellingprice from zepto;

--1.Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountpercent
from zepto
order by discountpercent desc
limit 10;

--2.What are the products with High MRP but out of stock
select distinct name, mrp
from zepto 
where outofstock = true and mrp >300
order by mrp desc;

--3.Calculate Estimated Revenue for each category
select category ,
sum(discountsellingprice * availablequantity)as total_revenue
from zepto
group by category
order by total_revenue;

--4.Find all products where MRP is greater then and discount is less than 10%.
select distinct name, mrp, discountpercent
from zepto
where mrp >500 and discountpercent < 10
order by mrp desc, discountpercent desc;

--5.Identify the top 5 catergories of offering the highest average discount percentage.
select category,
avg (discountpercent)as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

--6.Find the price per gram for products above 100g and sort by best values.
select distinct name, weightingms, discountsellingprice,
round(discountsellingprice/weightingms,2) as price_per_gram
from zepto
where weightingms >=100
order by price_per_gram;

--7.Group the products into categories like low,medium,bulk.
select distinct name, weightingms,
case When weightingms < 1000 then 'low'
    When weightingms < 5000 then 'medium'
	else 'bulk'
	end as weight_category
from zepto;

--8.What is the total inventory weight per category.
select category ,
sum(weightingms * availablequantity) as total_weight
from zepto
group by category
order by total_weight;
