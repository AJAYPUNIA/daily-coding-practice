-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the column with unique values for this table.
-- There are no different rows with the same recordDate.
-- This table contains information about the temperature on a certain day.
--  

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.


SELECT id 
FROM(
	SELECT id, recordDate , temperature,
    LAG(recordDate) OVER(ORDER BY recordDate) AS prev_date,
    LAG(temperature) OVER(ORDER BY recordDate) AS prev_temperature
    FROM Weather
) t
WHERE DATEDIFF(recordDate , prev_date) = 1
	 AND temperature > prev_temperature;
