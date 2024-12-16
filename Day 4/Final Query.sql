WITH added AS (
  SELECT 
    toy_name,
    JSON_ARRAYAGG(tag) AS added_tags
  FROM toy_production,
    JSON_TABLE(new_tags, '$[*]' COLUMNS (tag VARCHAR(100) PATH '$')) AS new_tags_table
  WHERE NOT JSON_CONTAINS(previous_tags, JSON_QUOTE(new_tags_table.tag))
  GROUP BY toy_name
),
unchanged AS (
  SELECT 
    toy_name,
    JSON_ARRAYAGG(tag) AS unchanged_tags
  FROM toy_production,
    JSON_TABLE(new_tags, '$[*]' COLUMNS (tag VARCHAR(100) PATH '$')) AS new_tags_table
  WHERE JSON_CONTAINS(previous_tags, JSON_QUOTE(new_tags_table.tag))
  GROUP BY toy_name
),
removed AS (
  SELECT 
    toy_name,
    JSON_ARRAYAGG(tag) AS removed_tags
  FROM toy_production,
    JSON_TABLE(previous_tags, '$[*]' COLUMNS (tag VARCHAR(100) PATH '$')) AS previous_tags_table
  WHERE NOT JSON_CONTAINS(new_tags, JSON_QUOTE(previous_tags_table.tag))
  GROUP BY toy_name
)
SELECT 
  p.toy_name,
  COALESCE(a.added_tags, JSON_ARRAY(0)) AS added_tags,
  COALESCE(u.unchanged_tags, JSON_ARRAY(0)) AS unchanged_tags,
  COALESCE(r.removed_tags, JSON_ARRAY(0)) AS removed_tags
FROM toy_production p
LEFT JOIN added a ON p.toy_name = a.toy_name
LEFT JOIN unchanged u ON p.toy_name = u.toy_name
LEFT JOIN removed r ON p.toy_name = r.toy_name;


