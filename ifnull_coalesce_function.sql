SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(*)
FROM
    salaries;

SELECT 
    SUM(salary)
FROM
    salaries;

SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;
    
SELECT 
    round(avg(salary),2)
FROM
    salaries;

select *
from depart;

create table dept_no(
dept_no varchar(5) not null,
dept_name varchar(20) not null,
primary key (dept_no)
);

insert into dept_no(dept_no, dept_name)
select * from departments;

alter table dept_no
add column dept_manager varchar(20);

SELECT 
    *
FROM
    dept_no;

SELECT 
    dept_no,
    IFNULL(dept_manager, 'Manager nor Provided') AS dept_manager
FROM
    dept_no;

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    dept_no;