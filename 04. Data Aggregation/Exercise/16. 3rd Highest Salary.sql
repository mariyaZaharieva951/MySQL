
SELECT e.department_id, e.third_highest_salary
FROM (
  SELECT 
    department_id, 
    (
      SELECT DISTINCT salary
      FROM employees AS e2
      WHERE e1.department_id = e2.department_id
      ORDER BY salary DESC
      LIMIT 1 OFFSET 2
    ) AS third_highest_salary
  FROM employees AS e1
) AS e
WHERE e.third_highest_salary IS NOT NULL
GROUP BY e.department_id
ORDER BY e.department_id;







