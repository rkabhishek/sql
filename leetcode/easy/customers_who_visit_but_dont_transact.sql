-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/

SELECT customer_id, count(*) as count_no_trans
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;


--SELECT customer_id, COUNT(visit_id) as count_no_trans
--FROM Visits
--WHERE visit_id NOT IN
--    (SELECT visit_id
--    FROM Transactions
--    )
--GROUP BY customer_id;