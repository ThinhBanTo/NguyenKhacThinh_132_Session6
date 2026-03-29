create table customer(
    id serial primary key ,
    name varchar(100),
    email varchar(100),
    phone varchar(20),
    points int
);

--1
INSERT INTO customer (name, email, phone, points) VALUES
                                                      ('Nguyễn Khắc Thịnh', 'thinh@gmail.com', '0912345678', 1000),
                                                      ('Trần Văn An', 'an.tran@gmail.com', '0987654321', 500),
                                                      ('Lê Thị Bình', NULL, '0901234567', 200), -- Khách hàng không có email
                                                      ('Phạm Hoàng Long', 'long.pham@outlook.com', '0933445566', 1500),
                                                      ('Hoàng Anh Thư', 'thu.ha@gmail.com', '0944556677', 300),
                                                      ('Ngô Tất Tố', 'to.ngo@vanhoc.vn', '0955667788', 800),
                                                      ('Lý Tiểu Long', 'dragon.ly@martial.com', '0966778899', 2500);
--2
select distinct name
from customer;
--3
select name
from customer
where email isnull;
--4
select customer.name
from customer
order by points desc limit 3 offset 1;
--5
select customer.name
from customer
order by name desc;