# Write your MySQL query statement below
SELECT id
FROM (
    SELECT *, LAG(temperature, 1, NULL) OVER (ORDER BY recordDate) AS prev_temp,
    LAG(recordDate,1,NULL) OVER (ORDER BY recordDate) As yes_date
    FROM Weather
) AS w
WHERE DATEDIFF(recordDate, yes_date)=1 AND temperature>prev_temp;
