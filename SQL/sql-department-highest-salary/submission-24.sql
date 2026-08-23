-- Write your query below
WITH rank_salary AS (
SELECT 
department_id,
name,
salary,
RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank_sal
FROM employee
)

SELECT 
d.name AS department,
r.name AS employee,
r.salary
FROM rank_salary r
JOIN department d ON r.department_id = d.id
WHERE rank_sal = 1