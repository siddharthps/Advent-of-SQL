DROP TABLE workshop_elves CASCADE;
CREATE TABLE workshop_elves (
    elf_id SERIAL PRIMARY KEY,
    elf_name VARCHAR(100) NOT NULL,
    primary_skill VARCHAR(50) NOT NULL,
    years_experience INTEGER NOT NULL
);
  
