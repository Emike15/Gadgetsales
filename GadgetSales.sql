-- Question 1

select name, sum(quantity) as Total_quantity
from gadgetsales.orderitem oi
join gadgetsales.product p
on oi.product_id = p.product_id
group by p.name
order by Total_quantity desc
limit 1;

-- Question 2

select name, sum(quantity) as Total_quantity
from gadgetsales.orderitem oi
join gadgetsales.product p
on oi.product_id = p.product_id
group by p.name
order by Total_quantity asc
limit 1;


-- Question 3

select name, price
from gadgetsales.product 
order by price desc
limit 3;

-- Question 4

select c.name, sum(price * quantity) as Amount_Spent
from gadgetsales.orderitem as oi
join gadgetsales.product as p on oi.product_id =p.product_id
join gadgetsales.orders as o on o.order_id = oi.order_id
join gadgetsales.customer as c on c.customer_id = o.customer_id
group by c.name
order by Amount_Spent desc
limit 3;

-- Question 5

select order_date, sum(quantity) as Quantity_Sold
from gadgetsales.orderitem as oi
join gadgetsales.orders as o
on oi.order_id = o.order_id
group by order_date
order by Quantity_Sold asc
limit 1;

-- Question 6

select c.name, sum(quantity) as Total_Quantity
from gadgetsales.orderitem as oi
join gadgetsales.orders as o on o.order_id = oi.order_id
join gadgetsales.customer as c on c.customer_id = o.customer_id
group by c.name
order by Total_Quantity desc
limit 1;

-- Question 7

select p.name, sum(quantity) as Total_Quantity
from gadgetsales.orderitem as oi
join gadgetsales.product as p
on p.product_id = oi.product_id
group by p.name
order by Total_Quantity asc
limit 3;

-- Question 8
select order_date,  p.name, sum(quantity) as Total_Quantity
from gadgetsales.orderitem as oi
join gadgetsales.orders as o on o.order_id = oi.order_id
join gadgetsales.product as p on p.product_id = oi.product_id
where p.name = 'iPad Pro'
group by order_date
order by Total_Quantity desc
limit 1;

-- Question 9

select c.name, p.name, sum(quantity) as Total_Quantity
from gadgetsales.orderitem as oi
join gadgetsales.orders as o on o.order_id = oi.order_id
join gadgetsales.customer as c on c.customer_id = o.customer_id
join gadgetsales.product as p on p.product_id = oi.product_id
where p.name = 'iPhone 13'
group by c.name
order by Total_Quantity desc
limit 1;

-- Question 10a

select p.name, p.price, sum(quantity) as Quantity_Sold
from gadgetsales.orderitem as oi
join gadgetsales.product as p
on p.product_id = oi.product_id
group by p.name, p.price
order by price asc
limit 1;


-- Question 10b

select p.name, p.price, sum(quantity) as Quantity_Sold
from gadgetsales.orderitem as oi
join gadgetsales.product as p
on p.product_id = oi.product_id
group by p.name, p.price
order by price desc
limit 1;