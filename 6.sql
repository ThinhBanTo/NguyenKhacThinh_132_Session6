create table orders(
    id serial primary key ,
    customer_id int,
    order_date date,
    total_amount numeric(10,2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
                                                               (1, '2023-05-10', 15000000.00),
                                                               (2, '2023-12-20', 45000000.00),
                                                               (3, '2024-03-15', 10000000.00),
                                                               (1, '2024-06-25', 5000000.00),
                                                               (4, '2025-01-10', 60000000.00),
                                                               (5, '2025-02-15', 25000000.00),
                                                               (2, '2026-03-29', 1200000.00);
--1
select sum(total_amount) total_revenue,count(*) total_orders,avg(total_amount) average_order_value
from orders
--2
select extract(year from order_date) date_year,sum(total_amount) total_revenue_year
from orders
group by extract(year from order_date)
having sum(total_amount)>50000000;  --3
--4
select *
from orders
order by total_amount desc limit 5;
