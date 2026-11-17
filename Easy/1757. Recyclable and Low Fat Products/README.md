# 1757. Recyclable and Low Fat Products

**Difficulty:** Easy  
**Topics:** SQL, Filtering  
**Platform:** [LeetCode](https://leetcode.com/problems/recyclable-and-low-fat-products/)

## 1. Problem Description

Write a solution to find the IDs of products that are both low fat and recyclable.

Return the result table in any order.

## 2. Table Schema

### Products

| Column Name | Type |
|---|---|
| product_id | int |
| low_fats | enum |
| recyclable | enum |

- `product_id` is the primary key.
- `low_fats` is an ENUM with values `Y` and `N`.
- `recyclable` is an ENUM with values `Y` and `N`.

## 3. Sample Test Cases

### Example 1

**Input: Products table**

| product_id | low_fats | recyclable |
|---|---|---|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |
| 3 | Y | Y |
| 4 | N | N |

**Output:**

| product_id |
|---|
| 1 |
| 3 |

**Explanation:**

- Product 0: Low fat, but not recyclable.
- Product 1: Low fat and recyclable.
- Product 2: Not low fat.
- Product 3: Low fat and recyclable.
- Product 4: Neither low fat nor recyclable.

Therefore, products with IDs 1 and 3 satisfy both conditions.

## 4. Concepts Learned

- SELECT statement
- WHERE clause
- AND operator
- Filtering records using multiple conditions
- ENUM data type

## 5. Complexity Analysis

- **Time Complexity:** O(N) — scans the Products table.
- **Space Complexity:** O(1) auxiliary space, excluding the result set.

## 6. LeetCode Link

[1757. Recyclable and Low Fat Products](https://leetcode.com/problems/recyclable-and-low-fat-products/)

---

**Status:** ✅ Solved