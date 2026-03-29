create table customers(
    id serial primary key ,
    name varchar(100)
);

--1
select name,sum(total_amount)
from customers join orders on customers.id = orders.customer_id
group by name
order by sum(total_amount) desc;
--2
select name
from orders join customers on orders.customer_id = customers.id
group by customer_id,name
having sum(total_amount) = (
    select sum(total_amount)
    from orders
    group by customer_id
    order by sum(total_amount) desc limit 1
    );
--3
select name
from customers left join orders on customers.id = orders.customer_id
where orders.customer_id isnull;
--4
select name
from orders join customers on orders.customer_id = customers.id
group by customer_id,name
having sum(total_amount) >
       (
           select sum(total_amount)/count(distinct customer_id)   --tong so tien tat ca don/ so khach khac nhau
           from orders
           );
