# Santa's Cartesian Elf Skill-Matching Program 🎁

## Overview  
Santa’s workshop is implementing a new mentoring program where elves who excel at certain tasks will be paired with others who share the same skills. The goal is to match elves who can collaborate and learn from each other, improving efficiency. The pairs should consist of the elf with the most years of experience and the elf with the least years of experience in a shared primary skill, with no duplicate pairs (where Elf1/Elf2 are reversed), and no elf should pair with themselves.

The full task description can be found [here](https://adventofsql.com/challenges/7).

## My Approach  
While I found the query logic relatively simple, the challenge was in ensuring that the output was formatted exactly as expected. Initially, the query to match elves based on their shared skill and years of experience was straightforward, but the task required careful attention to detail to ensure that the pairings were based on the **maximum and minimum experience** for each skill and that the pairs were displayed in a specific order.

I used window functions (`ROW_NUMBER()`) to rank elves by their years of experience for each skill. Then, I joined the table on the primary skill to get the maximum and minimum ranked elves. After several attempts to refine the query to match the exact output format, I was able to achieve the correct result, but the logic of getting everything in the correct format took longer than expected. It took me almost **40 minutes** to arrive at the final solution.

## Reflections  
While the logic of the query itself was fairly straightforward, the challenge was in getting the output formatted precisely as per the instructions. I had to make multiple attempts to solve the problem, and I learned the importance of ensuring the query not only provides the correct result but also matches the specific formatting and constraints.

This exercise reinforced the importance of attention to detail in SQL, especially when working with aggregation, filtering, and sorting. It also taught me the value of iterative problem-solving and the persistence needed to refine a solution.

