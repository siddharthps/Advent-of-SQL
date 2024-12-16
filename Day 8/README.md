# Finding the Most Over-Managed Employee 🎁  

## Overview  
This challenge involved determining the management depth of all employees in a hierarchical staff table to find the most over-managed employee. Using recursive Common Table Expressions (CTEs), the task was to calculate the number of management levels for each employee and identify the maximum level, along with the path from the CEO to the employee.  

The full task description can be found [here](https://adventofsql.com/challenges/8).  

## My Approach  
The solution leveraged a recursive CTE to traverse the hierarchy of employees. The CTE computed both the management depth (`level`) and the hierarchical path to each employee. By appending the `staff_id` at each level, the path from the top-most manager to any given employee was efficiently constructed. Sorting the results by management depth in descending order made it easy to identify the most over-managed employee.  

The problem was solved in approximately **15 minutes**. It was a great opportunity to solidify my understanding of recursive CTEs and their syntax, especially for hierarchical data structures.  

## Reflections  
This challenge taught me a lot about recursive SQL queries, particularly:  
- How to structure anchor and recursive parts of a CTE.  
- Techniques for calculating levels and constructing paths in hierarchical data.  

Overall, this was a valuable exercise that deepened my understanding of recursion in SQL and the practical use of CTEs. 

