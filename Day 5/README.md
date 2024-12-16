# Santa's Toy Production Analysis  

## Overview  
In the enchanting winter wonderland of the North Pole, Santa noticed some fluctuations in toy production numbers as Christmas Eve approached. To ensure every child receives a magical gift, Santa needed a detailed analysis of daily toy production trends to identify significant changes.  

The full task description can be found [here](https://adventofsql.com/challenges/5).  

## My Approach  
This challenge was fairly straightforward and didn’t take long to solve. Using SQL's `LAG` function, I calculated the previous day's production, determined the daily change, and computed the percentage difference. The combination of window functions and arithmetic operations made this task both efficient and enjoyable.  

I focused on ensuring the data was processed chronologically and filtered out unnecessary `NULL` rows for cleaner results.  

## Reflections  
This challenge reinforced the utility of SQL window functions, particularly for analyzing sequential data. It was a quick and rewarding task that highlighted the power of SQL for data-driven storytelling.  
