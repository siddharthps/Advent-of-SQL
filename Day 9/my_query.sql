SELECT r.reindeer_name
, ROUND(AVG(ts.speed_record),2) AS speed
FROM reindeers r
JOIN 
training_sessions ts
ON r.reindeer_id = ts.reindeer_id
WHERE r.reindeer_name <> 'Rudolf'
GROUP BY r.reindeer_id , ts.exercise_name
ORDER BY speed DESC
LIMIT 3