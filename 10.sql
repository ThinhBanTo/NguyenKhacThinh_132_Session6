create table oldcustomers(
    id serial primary key ,
    name varchar(100),
    city varchar(50)
);

create table newcustomers(
    id serial primary key ,
    name varchar(100),
    city varchar(50)
);

--1
select id from newcustomers
union
select id from oldcustomers;
--2
select id from newcustomers
intersect
select id from oldcustomers;
--3
select city,count(*) total_customers --count(*) dem so hang
from (   --tao bang city gop
    select city from newcustomers
    union all
    select city from oldcustomers
     ) as all_city
group by city;
--4: 3+tim max
select city
from (
        select city,count(*) as customers_count
        from (
             select city from newcustomers
             union all
             select city from oldcustomers
            ) as all_city
        group by city
        ) as customers_in_city

where customers_count = (
    select count(*)
    from (
        select city from newcustomers
        union all
        select city from oldcustomers
        ) as all_city
    group by city
    order by count(*) desc limit 1);











