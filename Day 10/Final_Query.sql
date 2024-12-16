SELECT date
FROM 
(SELECT date 
,SUM(CASE WHEN drink_name = 'Eggnog' THEN quantity ELSE 0 END) AS eggnog_quantity
,SUM(CASE WHEN drink_name = 'Hot Cocoa' THEN quantity ELSE 0 END) AS hotcocoa_quantity
,SUM(CASE WHEN drink_name = 'Peppermint Schnapps' THEN quantity ELSE 0 END) AS ps_quantity
FROM
drinks
GROUP BY date ) summed_drinks
WHERE eggnog_quantity = 198 AND hotcocoa_quantity = 38 AND ps_quantity = 298