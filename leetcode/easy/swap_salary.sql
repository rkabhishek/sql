-- https://leetcode.com/problems/swap-salary/description/

UPDATE SALARY
SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END
