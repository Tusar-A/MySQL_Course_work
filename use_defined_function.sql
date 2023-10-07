
delimiter $$
create function f_emp_avg_salary (p_emp_no integer) returns decimal(10,2)

READS SQL DATA
DETERMINISTIC

/* or use the following
deterministic
no sql
read sql data
*/

begin
declare v_avg_salary decimal(10,2);
SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
return v_avg_salary;
end$$

/* Error Code: 1418. This function has none of DETERMINISTIC, NO SQL, or READS SQL DATA in its declaration and 
binary logging is enabled (you *might* want to use the less safe log_bin_trust_function_creators variable)
*/

select f_emp_avg_salary(11300);