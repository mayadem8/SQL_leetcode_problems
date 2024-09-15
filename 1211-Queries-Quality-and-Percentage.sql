# Write your MySQL query statement below
SELECT query_name, 
ROUND(SUM(rating/position)/COUNT(query_name),2) AS quality, 
ROUND(SUM(case when rating < 3 then 1 else 0 end)/COUNT(query_name)*100, 2) AS poor_query_percentage
FROM Queries WHERE query_name IS NOT NUll
GROUP BY query_name