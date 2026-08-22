-- Write your query below
SELECT DISTINCT ON (w.name)
w.name AS warehouse_name,
SUM(p.width*p.length*p.height*w.units)
OVER (PARTITION BY w.name) AS volume
FROM warehouse w
JOIN products p ON p.product_id = w.product_id

