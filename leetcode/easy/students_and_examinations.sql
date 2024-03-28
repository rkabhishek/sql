-- https://leetcode.com/problems/students-and-examinations/description/

WITH CTE_Students_Subjects AS
(
    SELECT student_id, student_name, subject_name
    FROM Students
    CROSS JOIN Subjects
)

SELECT cte.student_id, cte.student_name, cte.subject_name, IFNULL(COUNT(e.subject_name), 0) as attended_exams
FROM CTE_Students_Subjects cte
LEFT JOIN Examinations e
ON cte.student_id = e.student_id AND cte.subject_name = e.subject_name
GROUP BY cte.student_id, cte.student_name, cte.subject_name
ORDER BY cte.student_id;

