DROP TABLE IF EXISTS toy_production;

CREATE TABLE toy_production (
  toy_id INT,
  toy_name VARCHAR(100),
  previous_tags JSON, -- Use JSON to represent arrays
  new_tags JSON
);
