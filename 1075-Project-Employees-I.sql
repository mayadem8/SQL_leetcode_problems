# Write your MySQL query statement below
SELECT P.project_id,
(SELECT ROUND(SUM(E.experience_years)/Count(project_id),2)) AS average_years
FROM Project P LEFT JOIN Employee E ON E.employee_id = P.employee_id 
GROUP BY P.project_id