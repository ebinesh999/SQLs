# LeetCode 584 – Find Customer Referee

## Problem Description

Find the names of customers who satisfy either of the following conditions:

1. Referred by a customer whose ID is not equal to `2`.
2. Not referred by any customer (`referee_id IS NULL`).

Return the result in any order.

**Problem Link:** [LeetCode 584 – Find Customer Referee](https://leetcode.com/problems/find-customer-referee/)

## Database Schema

**Table: Customer**

| Column | Type |
|---|---|
| id | int |
| name | varchar |
| referee_id | int |

- `id`: Unique identifier for each customer.
- `name`: Name of the customer.
- `referee_id`: ID of the customer who referred them. Can be NULL.

## MySQL Solution

```sql
SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;
```

## Concepts Used

- **SELECT:** Retrieves the customer names.
- **WHERE:** Filters records based on conditions.
- **!= (Not Equal):** Excludes customers referred by customer ID 2.
- **IS NULL:** Identifies customers who have no referee.
- **OR:** Returns records when at least one condition is TRUE.

## Important SQL Concepts Learned

### 1. AND vs OR

| Operator | Meaning |
|---|---|
| AND | Both conditions must be TRUE |
| OR | At least one condition must be TRUE |

### 2. NULL Handling in MySQL

Use `IS NULL` instead of `= NULL` when checking for NULL values.

```sql
-- Correct
WHERE referee_id IS NULL;

-- Incorrect
WHERE referee_id = NULL;
```

### 3. SQL Three-Valued Logic

SQL evaluates conditions using TRUE, FALSE, and UNKNOWN.

For example:

```sql
NULL != 2  -- UNKNOWN
NULL IS NULL -- TRUE
```

A WHERE clause returns only rows where the condition evaluates to TRUE.

## Expected Output

| name |
|---|
| Will |
| Jane |
| Bill |
| Zack |

## Complexity Analysis

- **Time Complexity:** O(n) – Each customer record is evaluated once.
- **Space Complexity:** O(1) auxiliary space, excluding the result set.

## Key Takeaway

This problem demonstrates how to combine comparison operators, NULL handling, and logical operators to filter records in MySQL.

**Difficulty:** Easy  
**Language:** MySQL  
**Problem Number:** 584