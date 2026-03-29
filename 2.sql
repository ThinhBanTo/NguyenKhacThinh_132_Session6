create table employee(
    id serial primary key ,
    full_name varchar(100),
    department varchar(50),
    salary numeric(10,2),
    hire_date date
);
-- 1
INSERT INTO employee (full_name, department, salary, hire_date) VALUES
                                                                    ('Nguyễn An', 'IT', 15000000.00, '2023-05-15'),
                                                                    ('Trần Bình An', 'Marketing', 12000000.00, '2023-02-10'),
                                                                    ('Lê Hoàng Anh', 'IT', 5500000.00, '2022-12-01'),
                                                                    ('Phạm Thùy Chi', 'HR', 8000000.00, '2023-08-20'),
                                                                    ('Đặng Bảo An', 'Sales', 5800000.00, '2024-01-05'),
                                                                    ('Bùi Tiến Dũng', 'IT', 20000000.00, '2023-11-11');
--2
update employee
set salary=salary*1.1
where department='IT';
--3
delete
from employee
where salary<6000000;
--4
select full_name
from employee
where full_name ilike '%an%';
--5
select full_name
from employee
where hire_date between '2023-01-01' and '2023-12-31';