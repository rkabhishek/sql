-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;