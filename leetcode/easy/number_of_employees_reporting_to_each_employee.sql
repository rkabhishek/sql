-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/

SELECT mgr.employee_id, mgr.name, COUNT(emp.employee_id) AS reports_count, ROUND(AVG(emp.age)) AS average_age
FROM Employees emp
LEFT JOIN Employees mgr
ON emp.reports_to = mgr.employee_id
WHERE mgr.employee_id IS NOT NULL
GROUP BY mgr.employee_id, mgr.name
ORDER BY mgr.employee_id;