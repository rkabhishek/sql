-- https://leetcode.com/problems/students-with-invalid-departments/description/

SELECT Students.id, Students.name
FROM Students
LEFT JOIN Departments
ON Students.department_id = Departments.id
WHERE Departments.id IS NULL;

-- another way
--SELECT id, name
--FROM Students
--WHERE department_id
--NOT IN (SELECT DISTINCT id FROM Departments);