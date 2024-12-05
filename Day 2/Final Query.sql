SELECT CAST(GROUP_CONCAT(decoded_char ORDER BY id SEPARATOR '') AS CHAR) AS decoded_message
FROM (
    SELECT id, CONVERT(CHAR(value) USING utf8) AS decoded_char
    FROM (
        SELECT id, value 
        FROM letters_a
        WHERE (value BETWEEN 65 AND 90) 
           OR (value BETWEEN 97 AND 122) 
           OR (value BETWEEN 32 AND 34)
           OR (value BETWEEN 39 AND 41)
           OR (value BETWEEN 44 AND 46)
           OR (value BETWEEN 58 AND 59)
           OR (value = 63)
        UNION ALL
        SELECT id, value 
        FROM letters_b
        WHERE (value BETWEEN 65 AND 90) 
           OR (value BETWEEN 97 AND 122) 
           OR (value BETWEEN 32 AND 34)
           OR (value BETWEEN 39 AND 41)
           OR (value BETWEEN 44 AND 46)
           OR (value BETWEEN 58 AND 59)
           OR (value = 63)
    ) AS combined_data
    ORDER BY id
) AS decoded_chars;

