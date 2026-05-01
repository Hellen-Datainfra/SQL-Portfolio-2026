--objective: Find high-performing product categories
--This script analyzes which shop items bring in the most money.

SELECT
Category
SUM(Totalsales) AS Revenue,
COUNT(OrderID) AS Ordercount
FROM
Shopsales
GROUP BY
Category
HAVING
COUNT(OrderID)>5
ORDER BY
Revenue DESC;
