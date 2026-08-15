-- Write your query below
SELECT a.player_id, a.device_id
FROM activity a
JOIN (SELECT player_id, MIN(event_date) as first_login 
    FROM activity
    GROUP BY player_id
    ) f ON a.player_id = f.player_id 
    AND a.event_date = f.first_login;
    
