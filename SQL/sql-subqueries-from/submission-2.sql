CREATE TABLE employees (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name TEXT,
    salary INTEGER,
    department TEXT
);

INSERT INTO employees (name, salary, department) VALUES
  ('Alice', 50000, 'marketing'),
  ('Bob', 60000, 'marketing'),
  ('Charlie', 55000, 'marketing'),
  ('David', 65000, 'marketing'),
  ('Eve', 70000, 'finance'),
  ('Frank', 52000, 'finance'),
  ('Grace', 58000, 'finance'),
  ('Hank', 62000, 'finance');
-- Do not modify above this line. --

/*difference between this subqueries and the one before. Why does this pne does not produce just one number? doing the subquery in the FROM and WHEN in the two examples. So to get the employees with salary above average is the same? in case ys is one of the two preferred? the WHEN one seems simpler*/

SELECT name, salary
FROM employees e
JOIN (
    SELECT AVG(salary) AS avg_salary
    FROM employees
    WHERE department = 'marketing'
) as avg_s ON e.salary < avg_s.avg_salary
WHERE department = 'marketing';

--interesting to understand why the JOIN with the subqueries still need the WHERE clause in the outer query





