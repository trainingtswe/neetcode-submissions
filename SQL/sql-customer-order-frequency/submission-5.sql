-- Write your query below

WITH tot_spend AS (
SELECT 
customer_id,
SUM (CASE
WHEN o.order_date BETWEEN '2020-06-01' AND '2020-06-30' THEN o.quantity*p.price ELSE 0 END) >= 100 AS june,
SUM (CASE
WHEN o.order_date BETWEEN '2020-07-01' AND '2020-07-31' THEN o.quantity*p.price ELSE 0 END) >=100 AS july
FROM product p 
JOIN orders o ON p.product_id = o.product_id
GROUP BY customer_id
)

SELECT 
t.customer_id,
c.name
FROM tot_spend t 
JOIN customers c on t.customer_id = c.customer_id
WHERE june AND july = TRUE;
