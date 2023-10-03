
 -- selecting all columns and rows from employees table
SELECT * FROM employees;

-- retriving all columns from employees table based on some condition using where clause
SELECT 
    *
FROM
    employees
WHERE
    (first_name = 'denis'
        OR first_name = 'elvis')
        AND gender = 'm';

-- ------------------------------------------------
# Retriving all column from employees table using "not in" function
SELECT 
    *
FROM
    employees
WHERE
    first_name not in ('cathie', 'mark', 'nathan');
    
-- ----------------------------------------------------------
# filtering data using wildcard or sequence matching
SELECT 
    *
FROM
    employees
where first_name like('%a%r%'); -- sequence of character use (%)

SELECT 
    *
FROM
    employees
where first_name like('_ark'); -- for single character use (_)

-- ---------------------------------------------------------
# retriving data using not between & AND operator
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

-- ---------------------------------------------------------
-- retrive data using "IS NOT NULL" & "IS NULL"
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
--  
SELECT 
    *
FROM
    employees
WHERE
    first_name is NULL;
-- ---------------------------------------------------------

-- retrive data with less than operator
select * from employees
where hire_date < '1985-02-01';