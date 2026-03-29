create table course (
    id serial primary key ,
    title varchar(100),
    instructor varchar(50),
    price numeric(10,2),
    duration int
);
--1
INSERT INTO course (title, instructor, price, duration) VALUES
                                                            ('Lập trình C++ cơ bản', 'Nguyễn Khắc Thịnh', 500000.00, 25),
                                                            ('SQL nâng cao cho Data Analyst', 'Trần Văn An', 1200000.00, 40),
                                                            ('Khóa học Demo - Test thử', 'Lê Thị Bình', 0.00, 2),
                                                            ('Python cho AI và ML', 'Phạm Hoàng Long', 2500000.00, 60),
                                                            ('Cấu trúc dữ liệu và Giải thuật', 'Bùi Tiến Dũng', 1800000.00, 35),
                                                            ('Học SQL từ con số 0', 'Hoàng Anh Thư', 800000.00, 20);
--2
update course
set price=price*1.15
where duration>30;
--3
delete
from course
where title ilike '%demo%';
--4
select *
from course
where title ilike '%sql%';
--5
select *
from course
where price between 500000 and 2000000
order by price desc limit 3;