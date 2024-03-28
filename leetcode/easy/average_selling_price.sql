-- https://leetcode.com/problems/average-selling-price/description/

SELECT p.product_id, ROUND(IFNULL(SUM(price * units) / SUM(units), 0), 2) as average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND u.purchase_date >= p.start_date AND u.purchase_date <= p.end_date
GROUP BY p.product_id;
