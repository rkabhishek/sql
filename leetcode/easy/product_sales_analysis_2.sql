-- https://leetcode.com/problems/product-sales-analysis-ii/description/

SELECT product_id, SUM(quantity) as total_quantity
FROM Sales
GROUP BY product_id;