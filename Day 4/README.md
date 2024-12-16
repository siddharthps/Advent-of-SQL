# Santa's Toy Tag Analyzer

## Overview
'Twas the month before Christmas, and Santa's enchanted toy-tracking system faced a massive upgrade-induced challenge. The elves needed to analyze changes to toy tags—magical properties that describe each toy—by identifying added, unchanged, and removed tags.

The full task description can be found [here](https://adventofsql.com/challenges/4).

## My Approach
Initially, this problem seemed straightforward, but handling arrays in SQL posed an unexpected challenge. Specifically, MySQL's JSON functions, which are less intuitive compared to PostgreSQL's array handling, required significant exploration.

I learned to:
- Expand JSON arrays into rows using `JSON_TABLE`.
- Compare arrays using `JSON_CONTAINS` and filtering techniques.
- Aggregate modified tags back into JSON arrays with `JSON_ARRAYAGG`.

While MySQL provided the tools to solve this, PostgreSQL's built-in support for array operations might have been a better choice for this task.


