create table orderinfo(
    id serial primary key ,
    customer_id int,
    order_date date,
    total numeric(10,2),
    status varchar(20)
);

--1
INSERT INTO orderinfo (customer_id, order_date, total, status) VALUES
                                                                   (1, '2026-03-25', 1500000.00, 'Delivered'),
                                                                   (2, '2026-03-26', 450000.00, 'Pending'),
                                                                   (1, '2026-03-27', 3200000.00, 'Delivered'),
                                                                   (3, '2026-03-28', 120000.00, 'Cancelled'),
                                                                   (4, '2026-03-29', 890000.00, 'Shipped');
--2
select *
from orderinfo
where total>500000;
--3
select *
from orderinfo
where order_date between '2024-10-01' and '2024-10-31';
--4
select *
from orderinfo
where status!='Completed';
--5
select *
from orderinfo
order by order_date desc limit 2;