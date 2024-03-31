-- https://leetcode.com/problems/bank-account-summary-ii/description/

SELECT u.name, t.balance
FROM Users u
JOIN
    (SELECT account, SUM(amount) AS balance
    FROM Transactions
    GROUP BY account
    HAVING balance > 10000) AS t
ON u.account = t.account;

