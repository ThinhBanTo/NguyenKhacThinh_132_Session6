create table department(
    id serial primary key ,
    name varchar(50)
);
create table employee(
    id serial primary key ,
    full_name varchar(100),
    department_id int references department(id),
    salary numeric(10,2)
);

--1
select full_name,name
from department join employee on department.id = employee.department_id;
--2
select name department_name,avg(salary) avg_salary
from department join employee on department.id = employee.department_id
group by name
having avg(salary)>10000000; --3
--4
select name
from department left join employee on department.id = employee.department_id
where employee.id isnull;
