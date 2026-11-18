# LeetCode 1148 – Article Views I

## Problem Description

Write a SQL query to find the IDs of authors who viewed at least one of their own articles.

An author is considered to have viewed their own article when the `author_id` and `viewer_id` are equal.

Return the result with a column named `id`, sorted in ascending order.

**Problem Link:** [LeetCode 1148 – Article Views I](https://leetcode.com/problems/article-views-i/)

## Database Schema

**Table: Views**

| Column | Type |
|---|---|
| article_id | int |
| author_id | int |
| viewer_id | int |
| view_date | date |

- `article_id`: ID of the article.
- `author_id`: ID of the article's author.
- `viewer_id`: ID of the person who viewed the article.
- `view_date`: Date when the article was viewed.

## MySQL Solution

```sql
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;
```

## Concepts Used

- **SELECT:** Retrieves the required column.
- **DISTINCT:** Removes duplicate author IDs.
- **AS:** Renames `author_id` to `id`.
- **WHERE:** Filters records based on a condition.
- **Column-to-Column Comparison:** Compares `author_id` and `viewer_id`.
- **ORDER BY:** Sorts the results in ascending order.

## Important SQL Concepts Learned

### 1. DISTINCT

DISTINCT removes duplicate values from the result.

```sql
SELECT DISTINCT author_id
FROM Views;
```

### 2. Column-to-Column Comparison

SQL allows direct comparison between two columns.

```sql
WHERE author_id = viewer_id;
```

This identifies authors who viewed their own articles.

### 3. Column Aliasing

The `AS` keyword assigns a temporary name to a result column.

```sql
SELECT author_id AS id
FROM Views;
```

### 4. ORDER BY

Sorts the output in ascending order by default.

```sql
ORDER BY author_id;
```

## Complexity Analysis

Let `n` be the number of rows in the Views table.

- **Time Complexity:** Approximately O(n log n) for filtering, duplicate elimination and sorting, depending on the database execution plan.
- **Space Complexity:** O(n) worst case for intermediate duplicate-elimination or sorting structures.

## Key Takeaway

This problem demonstrates how to compare two columns in the same table, eliminate duplicate values using DISTINCT, rename columns using AS, and sort results using ORDER BY.

**Difficulty:** Easy  
**Language:** MySQL  
**Problem Number:** 1148