create table product(
    id serial primary key ,
    name varchar(100),
    category varchar(50),
    price numeric(10,2)
);

create table orderdetail(
    id serial primary key ,
    order_id int,
    product_id int,
    quantity int
);

--1
select name product_name,sum(price*quantity) total_sales
from product join orderdetail on product.id = orderdetail.product_id
group by product.id,name;
--2
select category,avg(price*quantity) avg_sales
from product join orderdetail on product.id = orderdetail.product_id
group by category
having avg(price*quantity)>20000000; --3
--4
select name
from product join orderdetail on product.id = orderdetail.product_id
group by product.id,name
having sum(price*quantity) >
       (
           select sum(quantity*price)/count(distinct product_id)
           from orderdetail join product on orderdetail.product_id = product.id
           );
--5
select name,sum(quantity)
from product left join orderdetail on product.id = orderdetail.product_id
group by product.id,name;
