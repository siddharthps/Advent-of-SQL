WITH ranked_elves AS (
SELECT elf_id 
,elf_name 
,primary_skill 
,ROW_NUMBER () OVER ( PARTITION BY primary_skill  ORDER BY years_experience DESC , elf_id ASC ) AS most_exp
,ROW_NUMBER () OVER ( PARTITION BY primary_skill  ORDER BY years_experience ASC , elf_id ASC) AS least_exp
FROM workshop_elves
)
SELECT re1.elf_id
,re2.elf_id
,re1.primary_skill AS shared_skill
FROM ranked_elves re1
JOIN ranked_elves re2
ON 
re1.primary_skill = re2.primary_skill
WHERE 
re1.most_exp = 1 AND re2.least_exp = 1
ORDER BY 
re1.primary_skill