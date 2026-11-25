# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(timestamp-start_time),3) AS processing_time
FROM(
    SELECT *,
    LAG(timestamp, 1, NULL) OVER (PARTITION BY machine_id, process_id ORDER BY activity_type) AS start_time 
    FROM Activity
) AS a
GROUP BY machine_id;
     

