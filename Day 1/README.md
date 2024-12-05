# 🎄 Santa's Workshop: SQL Challenge

This repository contains my solution to the [Advent of SQL Challenge #1](https://adventofsql.com/challenges/1). The challenge involves creating a report from a database that helps Santa and his elves optimize their workshop operations by parsing JSON data and mapping toy attributes.

## Problem Overview
Santa's elves have modernized their operations by digitizing children's wish lists. The goal of the challenge is to:
- Extract key information from JSON wish lists.
- Map toy complexities and assign workshop departments based on toy categories.
- Generate a sorted, limited report that provides insights into each child's preferences and associated operational details.

## Solution
The SQL query:
1. Parses JSON data to retrieve:
   - Primary and backup gift choices.
   - Favorite color and color count.
2. Maps toy difficulty to gift complexity using `CASE` statements.
3. Assigns workshop departments based on toy categories.
4. Orders the results by child name in ascending order and limits the output to five rows.

## Sample Query Output
| name   | primary_wish | backup_wish | favorite_color | color_count | gift_complexity | workshop_assignment |
|--------|--------------|-------------|----------------|-------------|-----------------|---------------------|
| Bobby  | blocks       | bike        | green          | 1           | Simple Gift     | Learning Workshop   |
| Sally  | doll         | books       | pink           | 2           | Moderate Gift   | General Workshop    |
| Tommy  | bike         | blocks      | red            | 2           | Complex Gift    | Outside Workshop    |

## Challenge Link
Find the challenge details [here](https://adventofsql.com/challenges/1).