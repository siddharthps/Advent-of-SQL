# Christmas Party Drinking List 🍸

## Overview  
In this challenge, we were tasked with analyzing beverage consumption data to identify which drinks were being consumed in the highest quantities in Santa's workshop. The goal was to review the data, find trends, and report on the most popular drinks, ensuring responsible consumption and maintaining workshop productivity.
The challenge could be found at https://adventofsql.com/challenges/10

## My Approach  
The query required calculating the total quantity consumed for each drink type and identifying which drinks had the highest total consumption. While the task seemed simple at first, I had to go through a few trial and error steps before achieving the correct result. The challenge helped me practice using aggregation (`SUM()`) and filtering techniques, as well as getting more comfortable working with SQL subqueries.

### Key Learnings  
- **Aggregate Functions**: I worked with `SUM()` to calculate the total quantity for each drink.
- **Subqueries**: Used a subquery to group the data by date and drink type, then filtered out the results.
- **Data Validation**: Ensured that the exact quantities from the question were applied correctly, which was important to get the correct results.
- **Debugging**: The trial-and-error process of checking intermediate results taught me how to better validate my data and fix issues in the logic step by step.

## Final Solution  
After a few trial and error attempts, I was able to create a query that correctly calculates the total quantities of each drink and identifies the specific date where the required quantities were consumed. The final query used a subquery to group and sum the quantities, followed by filtering for the correct values.

## Results  
The query returned the date where the total quantities of Hot Cocoa, Peppermint Schnapps, and Eggnog matched the provided values.

## Conclusion  
This challenge reinforced my understanding of SQL aggregation, filtering, and subqueries, while also improving my ability to troubleshoot SQL queries through a trial and error process.


Time taken: ~15 minutes  

