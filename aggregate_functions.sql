-- Filtering only unique emp_no using "DISTINCT" function from employees table
select count(distinct(emp_no)) from employees;


-- finding the count of "first_name" using count() function
select first_name, count(first_name) as number_of_names
from employees
group by first_name
order by first_name;

/* finding the count of "first_name" using count() function and filtering only 
those appears more than 250 times using "HAVING" clause*/
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;


-- finding cournt of first_name with WHERE clause and HAVING clause together
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;