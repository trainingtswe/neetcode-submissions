-- Write your query below

SELECT 
u.name,
SUM(amount) AS balance
FROM users u 
JOIN transactions t ON u.account = t.account
GROUP BY u.name 
HAVING SUM(amount)>10000