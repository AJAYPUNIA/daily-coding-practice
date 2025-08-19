-- Write a query to return the top 2 most frequent words in the Words table.
-- Return columns: word, frequency
-- Order by frequency (descending), then word (alphabetically) in case of a tie.


-- solution


SELECT word , COUNT(*) AS frequency
FROM words 
GROUP BY word
ORDER BY frequency DESC, word ASC
LIMIT 2;