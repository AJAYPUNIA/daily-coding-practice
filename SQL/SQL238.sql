-- 1587. Bank Account Summary II
-- Users
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | account      | int     |
-- | name         | varchar |
-- +--------------+---------+
-- Transactions
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | trans_id      | int     |
-- | account       | int     |
-- | amount        | int     |
-- | transacted_on | date    |
-- +---------------+---------+
-- Write a solution to report the name and balance of users with a balance higher than 10000. 
-- The balance of an account is equal to the sum of the amounts of all transactions involving that account.
-- Return the result table in any order.
-- solution
SELECT u.name , SUM(t.amount) AS balance
FROM Users u
JOIN Transactions t On u.account = t.account
GROUP BY u.name , u.account
HAVING (t.amount) > 10000;
