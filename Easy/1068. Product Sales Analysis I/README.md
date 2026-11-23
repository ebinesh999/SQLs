# 1068. Product Sales Analysis I

## Problem
[LeetCode - 1068. Product Sales Analysis I](https://leetcode.com/problems/product-sales-analysis-i/)

**Difficulty:** Easy  
**Topics:** SQL, JOIN

## Approach

We are given two tables:

- **Sales:** Contains `product_id`, `year`, and `price`.
- **Product:** Contains `product_id` and `product_name`.

Our task is to retrieve the product name, sales year, and price for every sale.

### SQL Concepts Used

- `LEFT JOIN`: Combines records from the Sales table with matching records from the Product table.
- `ON`: Matches both tables using the common `product_id` column.

## Solution

```sql
SELECT 
    p.product_name,
    s.year,
    s.price
FROM Sales s
LEFT JOIN Product p
    ON s.product_id = p.product_id;
```

## Explanation

1. `FROM Sales s`: Uses the Sales table as the main table.
2. `LEFT JOIN Product p`: Joins the Product table.
3. `ON s.product_id = p.product_id`: Matches products using their IDs.
4. `SELECT`: Returns the product name, year, and price.

### Why LEFT JOIN?

We use `LEFT JOIN` to retain all records from the Sales table, even if there is no matching record in the Product table.

## Complexity Analysis

Let:
- `N` = Number of rows in the Sales table.
- `M` = Number of rows in the Product table.

- **Time Complexity:** Depends on the database execution plan and indexes; approximately O(N + M) with a hash join.
- **Space Complexity:** Depends on the join algorithm; a hash join may require O(M) auxiliary space.

## Key Takeaway

This problem helps practice `LEFT JOIN` and understand how to retrieve related information from two tables using a common column.