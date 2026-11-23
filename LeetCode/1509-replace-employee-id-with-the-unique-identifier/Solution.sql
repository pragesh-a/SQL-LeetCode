# Write your MySQL query statement below
SELECT eUNI.unique_id, e.name
FROM EmployeeUNI AS eUNI
RIGHT JOIN Employees AS e
ON eUNI.id=e.id