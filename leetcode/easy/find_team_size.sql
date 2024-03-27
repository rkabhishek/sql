-- https://leetcode.com/problems/find-the-team-size/description/

WITH CTE_Team_Count AS (SELECT team_id, COUNT(*) as team_size
FROM Employee
GROUP BY team_id)

SELECT Employee.employee_id, CTE_Team_Count.team_size
FROM Employee
LEFT JOIN CTE_Team_Count
ON Employee.team_id = CTE_Team_Count.team_id;