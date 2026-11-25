# 197. Rising Temperature

**LeetCode:** [Rising Temperature](https://leetcode.com/problems/rising-temperature/)

**Difficulty:** Easy

**Topics:** SQL | Self Join | DATEDIFF | Date Comparison

## Problem Statement

Given a `Weather` table, find the IDs of all dates where the temperature is higher than the previous day's temperature.

Return the IDs in any order.

## Approach: Self Join (Implicit INNER JOIN)

### Intuition

The goal is to compare the temperature of each day with the temperature of the previous day.

We can achieve this using a **Self Join**, where we join the `Weather` table with itself using two different aliases:

- `t1`: Represents the previous day's weather record.
- `t2`: Represents the current day's weather record.

We use the `DATEDIFF()` function to identify consecutive dates and compare their temperatures.

### MySQL Solution

```sql
SELECT t2.id
FROM Weather t1, Weather t2
WHERE DATEDIFF(t2.recordDate, t1.recordDate) = 1
AND t2.temperature > t1.temperature;
```

## How It Works

1. **Self Join:** Use the same `Weather` table twice with aliases `t1` and `t2`.
2. **DATEDIFF():** Check whether the current date is exactly one day after the previous date.
3. **Temperature Comparison:** Check whether the current day's temperature is greater than the previous day's temperature.
4. **SELECT:** Return the ID of the current day (`t2.id`) when both conditions are satisfied.

## Example

**Input: Weather Table**

| id | recordDate | temperature |
|---|---|---:|
| 1 | 2015-01-01 | 10 |
| 2 | 2015-01-02 | 25 |
| 3 | 2015-01-03 | 20 |
| 4 | 2015-01-04 | 30 |

**Output**

| id |
|---:|
| 2 |
| 4 |

### Explanation

- **January 01 → January 02:** Temperature increased from 10 to 25. Return ID `2`.
- **January 02 → January 03:** Temperature decreased from 25 to 20. Ignore.
- **January 03 → January 04:** Temperature increased from 20 to 30. Return ID `4`.

Therefore, the resulting IDs are `2` and `4`.

## Understanding DATEDIFF()

```sql
DATEDIFF(t2.recordDate, t1.recordDate) = 1
```

The `DATEDIFF()` function calculates the difference between two dates in days.

Example:

```sql
DATEDIFF('2015-01-02', '2015-01-01') = 1
```

This ensures that we compare only consecutive calendar days, not just any two dates.

## Complexity Analysis

- **Time Complexity:** Depends on the database execution plan and indexing. A basic self join can involve O(n²) row-pair comparisons.
- **Space Complexity:** Depends on the database's join execution strategy and intermediate results.

## Key Concepts Learned

- **Self Join:** Joining a table with itself to compare records.
- **Implicit INNER JOIN:** Using comma-separated tables and filtering matching rows through the WHERE clause.
- **DATEDIFF():** Calculating the difference between two dates.
- **Date Comparison:** Identifying consecutive calendar days.
- **WHERE Clause:** Filtering records based on multiple conditions.

## Key Takeaway

A Self Join is useful when we need to compare records within the same table.

Combining `DATEDIFF()` with temperature comparison helps identify days when the temperature increased compared to the previous calendar day.

**SQL Concepts:** Self Join + Implicit INNER JOIN + DATEDIFF + WHERE