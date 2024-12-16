WITH production_trends AS (
  SELECT
    production_date,
    toys_produced,
    LAG(toys_produced, 1) OVER (ORDER BY production_date) AS previous_day_production,
    toys_produced - LAG(toys_produced, 1) OVER (ORDER BY production_date) AS production_change,
    ROUND(
      ((toys_produced - LAG(toys_produced, 1) OVER (ORDER BY production_date)) / 
      LAG(toys_produced, 1) OVER (ORDER BY production_date)) * 100, 
      2
    ) AS production_change_percentage
  FROM toy_production
)
SELECT *
FROM production_trends
WHERE previous_day_production IS NOT NULL
ORDER BY production_change_percentage DESC;
