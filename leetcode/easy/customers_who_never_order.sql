-- https://leetcode.com/problems/customers-who-never-order/description/

SELECT name as Customers
FROM Customers
LEFT JOIN Orders
ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;

-- another solution
-- SELECT name as Customers
-- FROM Customers
-- WHERE id NOT IN
--      (SELECT customerId
--       FROM Orders);

