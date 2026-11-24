# 1581. Customer Who Visited but Did Not Make Any Transactions

**LeetCode:** [Customer Who Visited but Did Not Make Any Transactions](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/)

**Difficulty:** Easy

**Topic:** SQL | LEFT JOIN | GROUP BY | COUNT

## Problem Statement

Find the customer IDs of customers who visited the mall without making any transactions and count how many times each customer made such visits.

## Approach: LEFT JOIN + GROUP BY

### Intuition

We have two tables:

- `Visits`: Contains customer visits.
- `Transactions`: Contains transactions made during each visit.

Our goal is to identify visits that do not have any matching transactions.

We can solve this using a `LEFT JOIN`.

### Steps

1. Use `LEFT JOIN` to combine the `Visits` and `Transactions` tables using `visit_id`.
2. If a visit has no matching transaction, the transaction columns will contain `NULL`.
3. Use `WHERE transaction_id IS NULL` to filter visits without transactions.
4. Use `GROUP BY customer_id` to group visits by each customer.
5. Use `COUNT()` to count the number of visits without transactions.

### MySQL Solution

```sql
SELECT
    v.customer_id,
    COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
```

## Example

**Visits Table**

| visit_id | customer_id |
|---|---|
| 1 | 23 |
| 2 | 9 |
| 4 | 30 |
| 5 | 54 |
| 6 | 96 |
| 7 | 54 |
| 8 | 54 |

**Transactions Table**

| transaction_id | visit_id | amount |
|---|---|---|
| 2 | 5 | 310 |
| 3 | 5 | 300 |
| 9 | 5 | 200 |
| 12 | 1 | 910 |
| 13 | 2 | 970 |

**Output**

| customer_id | count_no_trans |
|---|---|
| 30 | 1 |
| 54 | 2 |
| 96 | 1 |

### Explanation

- Customer 23 visited once and made a transaction.
- Customer 9 visited once and made a transaction.
- Customer 30 visited once without making a transaction.
- Customer 54 visited three times, out of which two visits had no transactions.
- Customer 96 visited once without making a transaction.

Therefore, customers 30, 54, and 96 are returned.

## Complexity Analysis

| Complexity | Explanation |
|---|---|
| Time | Depends on the database execution plan and indexes; joins and grouping process the relevant rows. |
| Space | Depends on the join and grouping execution strategy. |

## Key Concepts Learned

- **LEFT JOIN:** Retrieves all records from the left table, including unmatched records.
- **IS NULL:** Identifies records without a matching transaction.
- **GROUP BY:** Groups records based on customer ID.
- **COUNT():** Counts the number of visits without transactions.

## Key Takeaway

When you need to find records in one table that do not have matching records in another table, `LEFT JOIN` combined with `IS NULL` is a useful SQL pattern.

**Concepts:** LEFT JOIN + IS NULL + GROUP BY + COUNT