SELECT 
    first_name,
    last_name,
    CASE
        WHEN store_id = 1 AND active = 0 THEN 'store 1 invactive'
        WHEN store_id = 1 AND active = 1 THEN 'store 1 active'
        WHEN store_id = 2 AND active = 0 THEN 'store 2 inactive'
        WHEN store_id = 2 AND active = 1 THEN 'store 2 active'
        ELSE 'you did a mistake'
    END 'store_and_status'
FROM
    customer;

-- ----------------------
SELECT 
    film_id,
    COUNT(CASE
        WHEN store_id = 1 THEN inventory_id
        ELSE NULL
    END) AS store_1_copies,
    COUNT(CASE
        WHEN store_id = 2 THEN inventory_id
        ELSE NULL
    END) AS store_2_copies,
    COUNT(inventory_id) AS total_copies
FROM
    inventory
GROUP BY film_id
ORDER BY film_id;


select store_id,
count(case when active = 1 then customer_id else null end) as Active,
count(case when active = 0 then customer_id else null end) as inactive

from customer
group by store_id;

-- ------------------------------------

