--  drivers

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | driver_id   | int     |
-- | driver_name | varchar |
-- +-------------+---------+
-- driver_id is the unique identifier for this table.
-- Each row contains information about a driver.
-- Table: trips

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | trip_id       | int     |
-- | driver_id     | int     |
-- | trip_date     | date    |
-- | distance_km   | decimal |
-- | fuel_consumed | decimal |
-- +---------------+---------+
-- trip_id is the unique identifier for this table.
-- Each row represents a trip made by a driver, including the distance traveled and fuel consumed for that trip.
-- Write a solution to find drivers whose fuel efficiency has improved by comparing their average fuel efficiency in the first half of the year with the second half of the year.

-- Calculate fuel efficiency as distance_km / fuel_consumed for each trip
-- First half: January to June, Second half: July to December
-- Only include drivers who have trips in both halves of the year
-- Calculate the efficiency improvement as (second_half_avg - first_half_avg)
-- Round all results to 2 decimal places
-- Return the result table ordered by efficiency improvement in descending order, then by driver name in ascending order.


SELECT 
	d.driver_id,
    d.driver_name,
    ROUND(AVG(CASE WHEN MONTH(t.trip_date) BETWEEN 1 AND 6
				THEN t.distance_km / t.fuel_consumed END), 2) AS first_half_avg,
	ROUND(AVG(CASE WHEN MONTH(t.trip_date) BETWEEN 7 AND 12
				THEN t.distance_km / t.fuel_consumed END), 2) AS second_half_avg,
	ROUND(
		AVG(CASE WHEN MONTH(t.trip_date) BETWEEN 7 AND 12
				THEN t.distance_km / t.fuel_consumed END)
	-   AVG(CASE WHEN MONTH(t.trip_date) BETWEEN 1 AND 6
				THEN t.distance_km /t.fuel_consumed END), 2
) AS efficiency_imporvement
FROM drivers d
JOIN trips t ON d.driver_id = t.driver_id
GROUP BY d.driver_id , d.driver_name
HAVING
	COUNT(CASE WHEN MONTH(t.trip_date) BETWEEN 1 AND 6 THEN 1 END) > 0
    AND COUNT(CASE WHEN MONTH(t.trip_date) BETWEEN 7 AND 12 THEN 1 END) > 0
ORDER BY efficiency_improvement DESC , d.driver_name ASC;
















