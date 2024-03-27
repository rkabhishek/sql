-- https://leetcode.com/problems/warehouse-manager/description/

SELECT Warehouse.name as warehouse_name, SUM(Warehouse.units * Products.Width * Products.Length * Products.Height) as volume
FROM Warehouse
LEFT JOIN Products
ON Warehouse.product_id = Products.product_id
GROUP BY Warehouse.Name;