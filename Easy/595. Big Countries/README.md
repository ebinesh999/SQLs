# LeetCode 595 – Big Countries

## Problem Description

A country is considered **big** if:

1. It has an area of at least 3 million square kilometers.
2. OR it has a population of at least 25 million.

Write a SQL query to find the name, population, and area of all big countries.

**Problem Link:** [LeetCode 595 – Big Countries](https://leetcode.com/problems/big-countries/)

## Database Schema

**Table: World**

| Column | Type |
|---|---|
| name | varchar |
| continent | varchar |
| area | int |
| population | int |
| gdp | bigint |

## MySQL Solution

```sql
SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
```

## Concepts Used

- **SELECT:** Retrieves the required columns.
- **FROM:** Specifies the source table.
- **WHERE:** Filters countries based on conditions.
- **>= (Greater than or equal to):** Checks whether a value meets or exceeds a threshold.
- **OR:** Returns records when at least one condition is TRUE.

## Important SQL Concepts Learned

### 1. Greater Than or Equal To (>=)

```sql
area >= 3000000
```

Selects countries whose area is greater than or equal to 3 million.

### 2. OR Operator

The OR operator returns a record if at least one condition is TRUE.

```sql
WHERE area >= 3000000
   OR population >= 25000000;
```

A country qualifies if it satisfies either condition or both conditions.

### 3. AND vs OR

| Operator | Meaning |
|---|---|
| AND | Both conditions must be TRUE |
| OR | At least one condition must be TRUE |

## Complexity Analysis

- **Time Complexity:** O(n) – Each country record is evaluated once.
- **Space Complexity:** O(1) auxiliary space, excluding the result set.

## Key Takeaway

This problem demonstrates how to use comparison operators and logical OR conditions to filter records based on multiple criteria.

**Difficulty:** Easy  
**Language:** MySQL  
**Problem Number:** 595