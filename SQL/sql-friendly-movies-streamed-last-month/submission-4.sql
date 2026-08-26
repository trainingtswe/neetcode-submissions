-- Write your query below

SELECT 
DISTINCT c.title
FROM tv_program t 
JOIN content c ON t.content_id = c.content_id
WHERE 
c.kids_content = 'Y' 
AND EXTRACT(MONTH FROM t.program_date::DATE) = '06' 
AND EXTRACT(YEAR FROM t.program_date::DATE) = '2020' 
AND c.content_type = 'Movies'