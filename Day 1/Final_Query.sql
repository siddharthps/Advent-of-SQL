SELECT c.name
,wishes->>'$.first_choice' AS primary_wish
,wishes->>'$.second_choice' AS backup_wish
,wishes->>'$.colors[0]' AS favorite_color
,JSON_LENGTH(JSON_EXTRACT(wishes,'$.colors')) AS color_count
,CASE
WHEN tc.difficulty_to_make = 1 THEN 'Simple Gift'
WHEN tc.difficulty_to_make = 2 THEN 'Moderate Gift'
ELSE 'Complex Gift'
END as gift_complexity
, CASE
WHEN tc.category = 'outdoor' THEN 'Outside Workshop'
WHEN tc.category = 'educational' THEN 'Learning Workshop'
ELSE 'General Workshop'
END as workshop_assignment
from children c
JOIN wish_lists wl
ON c.child_id = wl.child_id
JOIN toy_catalogue tc
ON tc.toy_name = wl.wishes->>'$.first_choice'
ORDER BY c.name ASC
LIMIT 5