SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    exists(SELECT 
            dm.emp_no
        FROM
            dept_manager dm)
order by emp_no;