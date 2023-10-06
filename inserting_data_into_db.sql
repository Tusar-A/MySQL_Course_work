insert into employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
)
	
values (
	999901,
    '1997-03-17',
    'john',
    'smith',
    'M',
    '2024-09-01'
);

update employees
set first_name = 'Stella',
	last_name = 'parkinson'
where emp_no = 999901;

select *
from employees
where emp_no = 999901;

-- commit;
delete from employees
where emp_no = 999901;
