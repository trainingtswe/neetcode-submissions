-- Write your query below

WITH total_distance AS (
    SELECT user_id, SUM(distance) AS travelled_distance
    FROM rides
    GROUP BY user_id
)

SELECT name, COALESCE(travelled_distance, 0) AS travelled_distance
FROM users u
LEFT JOIN total_distance t ON t.user_id = u.id
ORDER BY travelled_distance DESC, name;