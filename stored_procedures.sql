-- -------------------------------- stored routines ------------------------------------
drop procedure if exists select_employees;

delimiter $$
create procedure select_employees()
begin
	select * from employees
    limit 1000;
end$$
# delimiter; #version check

-- execute stored procedures--
# call employees.select_employees();
# call select_employees();

# drop procedure select_employees;
-- --
delimiter $$
use employees $$
create procedure emp_salary(in p_emp_no integer)
begin
select e.first_name, e.last_name, avg(s.salary), s.from_date, s.to_date
from
employees e
join salaries s 
on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;
end $$


delimiter $$
create procedure emp_avg_salary_out(in p_emp_no integer, out p_avg_salary decimal(10,2))
begin
	select
		avg(s.salary)
        into p_avg_salary from
        employees e
        join salaries s on e.emp_no = s.emp_no
	where
    e.emp_no=p_emp_no;
end$$