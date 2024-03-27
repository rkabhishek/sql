-- https://leetcode.com/problems/employee-bonus/description/

SELECT name, bonus
FROM Employee
LEFT JOIN Bonus
On Employee.empId = Bonus.empId
WHERE bonus IS NULL OR bonus < 1000;
