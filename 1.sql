create table product(
    id serial primary key ,
    name varchar(100),
    category varchar(50),
    price numeric(10,2),
    stock int
);

--1
insert into product(name, category, price, stock) values
                                                      ('iPhone 15 Pro', 'Điện tử', 28000000.00, 15),
                                                      ('Chuột Gaming Logi', 'Điện tử', 800000.00, 50),
                                                      ('Bàn phím cơ AKKO', 'Điện tử', 1500000.00, 10),
                                                      ('Sách Clean Code', 'Sách', 500000.00, 100),
                                                      ('Tai nghe Sony WH', 'Điện tử', 7000000.00, 5);
--2
select name from product;
--3
select name
from product
order by price desc limit 3;
--4
select name
from product
where category='Điện tử' and price>10000000;
--5
select name
from product
order by stock;