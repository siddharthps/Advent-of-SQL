# Making Presents Fairer 🎁  

## Overview  
Santa’s elves discovered that some children received gifts significantly more expensive than others, raising concerns about fairness in gift distribution. To address this, Santa tasked us with identifying children who received gifts priced higher than the average gift price in the North Pole's database.  

The full task description can be found [here](https://adventofsql.com/challenges/6).  

## My Approach  
This challenge required writing a query to find children who received gifts above the average price and return the child name, gift name, and price, sorted in ascending order by gift price. The task was simple and straightforward. By leveraging a subquery to calculate the average price and filtering with `WHERE`, I was able to solve it without much difficulty.  

The final query also used `LIMIT 1` to determine the child who received the least expensive gift among those priced above average.  

## Reflections  
This was a great exercise in combining aggregate functions with filtering and sorting. It reinforced the importance of breaking down queries into logical steps. The problem was clear, and the solution didn’t take long to implement.  
