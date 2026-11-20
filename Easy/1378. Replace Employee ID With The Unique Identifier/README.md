# 1378. Replace Employee ID With The Unique Identifier

**Platform:** LeetCode  
**Difficulty:** Easy  
**Topics:** SQL, LEFT JOIN

## Problem Description

Write a SQL query to show the unique ID of each user. If a user does not have a unique ID, display `NULL`.

Return the result in any order.

## Approach

- Use `LEFT JOIN` to combine the `Employees` and `EmployeeUNI` tables.
- Match records using `id`.
- A `LEFT JOIN` ensures that all employees are included, even if they don't have a corresponding unique ID.
- If no matching record exists, SQL automatically returns `NULL` for the unique ID.

## SQL Solution

```sql
SELECT
    eu.unique_id,
    e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id;
```

## Key Concepts

| Concept | Explanation |
|---|---|
| LEFT JOIN | Returns all records from the left table |
| NULL | Represents a missing unique ID |
| ON | Specifies the matching condition |

## Complexity Analysis

- **Time Complexity:** O(N + M) approximately, depending on the database execution plan and indexes.
- **Space Complexity:** Depends on the execution plan and join strategy.

## Key Takeaway

Use `LEFT JOIN` when you need all records from one table, even if matching records do not exist in the other table.

This problem demonstrates how to preserve unmatched records while combining two tables.