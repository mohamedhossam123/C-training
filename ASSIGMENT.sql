create database RetailStoreDB;
use RetailStoreDB;
create table customers (
customersid int primary key identity,first_name VARCHAR(100),last_name VARCHAR(100),email VARCHAR(100),regesteration_date date
);


create table products (
productid int primary key identity,product_name VARCHAR(100),catagory VARCHAR(100),price float,stock int
);

create table orders (
orderid int primary key identity,customersid int,productid int,orderdate date,quantity int,foreign key (customersid) references customers(customersid),foreign key (productid) references products(productid)
);

insert into customers(first_name,last_name,email,regesteration_date)
values('mohamed','hossam','lol@gmail.com','2025-03-02');

insert into customers(first_name,last_name,email,regesteration_date)
values('hossam','fathy','lolsss@gmail.com','2022-03-02');

insert into customers(first_name,last_name,email,regesteration_date)
values('mohamed','abdallah','abdo@gmail.com','2035-03-02');

insert into products(product_name,catagory,price,stock)
values('soda','drinks',200,400);

insert into products(product_name,catagory,price,stock)
values('chicken','food',6000,4);


insert into orders(customersid,productid,orderdate,quantity)
values(12,2,'2025-2-16',1);

select * from customers;
select * from products;
select * from orders;
select * from customers
where regesteration_date>'2022-03-02';


select top 3 price 
from products
order by price desc


SELECT customers.customersid, customers.first_name, customers.last_name, 
       orders.orderid, orders.orderdate, orders.quantity
FROM customers 
INNER JOIN orders ON customers.customersid = orders.customersid;


select customers.customersid, customers.first_name, customers.last_name, 
       orders.orderid, orders.orderdate, orders.quantity,products.price,(orders.quantity*products.price) as Total_amount_spent
from customers
inner join orders ON customers.customersid = orders.customersid
inner join products ON orders.productid = products.productid;

select customersid, COUNT(orderid) AS total_orders
from orders
group by customersid;


select products.productid,products.product_name, SUM(orders.quantity * products.price) AS total_sales
FROM orders 
JOIN products ON Orders.productid = products.productid
GROUP BY products.productid, products.product_name;
