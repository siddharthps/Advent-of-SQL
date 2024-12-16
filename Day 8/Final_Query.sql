WITH RECURSIVE staff_table AS (
    SELECT 
        staff_id, 
        staff_name, 
        manager_id, 
        1 AS level, 
        CAST(staff_id AS CHAR) AS path  -- Initialize the path with the current staff_id
    FROM staff
    WHERE manager_id IS NULL
    UNION ALL
    SELECT 
        s.staff_id, 
        s.staff_name, 
        s.manager_id, 
        st.level + 1, 
        CONCAT(st.path, ',', s.staff_id) AS path -- Append the current staff_id to the parent's path
    FROM staff s
    INNER JOIN staff_table st
    ON s.manager_id = st.staff_id
)
SELECT staff_id, staff_name, level, path
FROM staff_table
ORDER BY level DESC, staff_id
LIMIT 1;  -- Get the most over-managed employee

