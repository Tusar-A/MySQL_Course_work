SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager m
        INNER JOIN
    dept_no d ON m.dept_no = d.dept_no;
    
-- -------------
SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    e.gender, AVG(s.salary) AS avg_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

-- ---------------------- self join -----------------
SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.emp_no;


-- --------------------------------------- From here I'll work with another database which is a movie database.
-- joining multiple table "BRIDGING"

SELECT 
    film.film_id, film.title, category.name
FROM
    film
        INNER JOIN film_category
     ON film.film_id = film_category.film_id
        INNER JOIN
    category ON film_category.category_id = category.category_id
where category.name = "horror";

-- --------------------------------------

SELECT 
    actor.first_name, actor.last_name, film.title
FROM
    actor
        INNER JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        INNER JOIN
    film ON film_actor.film_id = film.film_id
ORDER BY actor.first_name;

-- --------------------------- Multi Condition Join
SELECT DISTINCT
    film.title, film.description
FROM
    film
        INNER JOIN
    inventory ON film.film_id = inventory.inventory_id
        and inventory.store_id = 2;