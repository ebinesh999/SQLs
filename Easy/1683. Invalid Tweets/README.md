# 1683. Invalid Tweets

## Problem
- **Difficulty:** Easy
- **Platform:** LeetCode
- **Database:** MySQL

## Problem Description

Find the IDs of invalid tweets.

A tweet is considered invalid if the number of characters in its content is strictly greater than 15.

Return the `tweet_id` of all invalid tweets.

## Table Schema

**Tweets**

| Column | Type |
|---|---|
| tweet_id | INT |
| content | VARCHAR |

## MySQL Solution

```sql
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
```

## Explanation

- `SELECT tweet_id`: Retrieves the ID of each invalid tweet.
- `FROM Tweets`: Specifies the table to query.
- `LENGTH(content)`: Calculates the length of the tweet content in bytes.
- `WHERE LENGTH(content) > 15`: Filters tweets whose content length is greater than 15.

**Note:** `CHAR_LENGTH()` counts characters, whereas `LENGTH()` counts bytes. For multibyte text, these can return different values.

## Complexity Analysis

Let `n` represent the total number of rows in the `Tweets` table.

- **Time Complexity: O(n)** – The query scans the table and checks the content length of each row.
- **Space Complexity: O(1) auxiliary space** – The query does not create additional data structures. This excludes internal database execution memory and the returned result set.

## Concepts Learned

- `SELECT` – Retrieve specific columns.
- `FROM` – Specify the source table.
- `WHERE` – Filter records based on a condition.
- `LENGTH()` – Calculate string length in bytes.
- `>` – Greater-than comparison operator.
- Time and space complexity analysis.

## Key Takeaway

Use the `>` operator when the requirement says **more than** a specified value. A value equal to 15 does not satisfy `> 15`.

---

**Status:** Solved ✅