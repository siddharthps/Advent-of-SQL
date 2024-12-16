# Reindeer Training Records 🦌  

## Overview  
With Rudolph retiring as Santa's lead reindeer, the North Pole needed to evaluate the performance of its reindeer to find a worthy successor. This challenge required calculating the highest average speed achieved by each reindeer (excluding Rudolph) across different exercises and identifying the top 3 performers.  

The full task description can be found [here](https://adventofsql.com/challenges/9).  

---

## My Approach  
This challenge involved two key steps:  
1. **Calculating the average speed** for each reindeer in each exercise type.  
2. **Selecting the highest average speed** for each reindeer and then identifying the top 3 based on these scores.  

While the logic appeared simple and straightforward, I initially wrote a partially correct solution. My query grouped the data by reindeer and exercise type and sorted by average speed to find the top 3. This approach worked due to the clean and well-structured dataset but would fail if the data were incomplete or inconsistent.  

---

## Reflections  
This challenge reinforced the importance of understanding query logic deeply and anticipating potential edge cases. I learned:  
- **The importance of ensuring correctness across varied datasets:** My original query relied on assumptions that the data was clean and consistent, which fortunately aligned with this dataset.  
- **How to structure queries for robustness:** Explicitly calculating the maximum average speed for each reindeer before selecting the top performers ensures the solution works regardless of data quality.  

Although my solution produced the correct result, I’ve refined my understanding of query design for more resilient solutions.  

Time taken: ~15 minutes  

