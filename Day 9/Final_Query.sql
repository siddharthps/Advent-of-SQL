WITH exercise_averages AS (
    SELECT 
        r.reindeer_id,
        r.reindeer_name,
        ts.exercise_name,
        ROUND(AVG(ts.speed_record), 2) AS avg_speed
    FROM 
        reindeers r
    JOIN 
        training_sessions ts
    ON 
        r.reindeer_id = ts.reindeer_id
    WHERE 
        r.reindeer_name <> 'Rudolf'  -- Exclude Rudolph
    GROUP BY 
        r.reindeer_id, r.reindeer_name, ts.exercise_name
),
highest_averages AS (
    SELECT 
        reindeer_id,
        reindeer_name,
        MAX(avg_speed) AS highest_avg_speed
    FROM 
        exercise_averages
    GROUP BY 
        reindeer_id, reindeer_name
)
SELECT 
    reindeer_name,
    highest_avg_speed
FROM 
    highest_averages
ORDER BY 
    highest_avg_speed DESC
LIMIT 3;


