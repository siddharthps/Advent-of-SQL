### README.md

# Advent of SQL Challenge: Decoding a Scrambled Message

This project solves a puzzle from [Advent of SQL](https://adventofsql.com/challenges/2), where a child's Christmas letter is scrambled across two tables (`letters_a` and `letters_b`) with noise introduced by the magical Northern Lights. The goal is to reconstruct the original message by filtering valid characters, combining data, and decoding ASCII values into readable text.

---

## Task

1. **Filter Valid Characters**: Extract only valid ASCII codes representing letters (`A-Z`, `a-z`), spaces, and specified punctuation marks.
2. **Combine Data**: Merge rows from two tables while preserving their order.
3. **Decode Values**: Convert ASCII codes to characters
4. **Reconstruct Message**: Concatenate characters into a single string in the correct order.

---

## Solution

The solution involves:
- Filtering valid rows from each table using `WHERE` conditions on ASCII ranges.
- Combining data from both tables with `UNION ALL`.
- Ordering the combined rows by their `id`.
- Decoding ASCII values using `CHAR()` and reconstructing the message with `GROUP_CONCAT`.

---

## Learning

### `CHAR()`
The `CHAR()` function converts numeric ASCII values into their corresponding characters. It is essential for decoding the scrambled `value` column in the puzzle.

### `GROUP_CONCAT()`
The `GROUP_CONCAT()` function aggregates multiple rows into a single string. Using `ORDER BY` inside `GROUP_CONCAT` ensures the characters are concatenated in the correct sequence.

---

**Note**: The full query is written in MySQL, and adjustments like `CONVERT()` or `CAST()` are used to handle cases where outputs default to binary (`BLOB`).