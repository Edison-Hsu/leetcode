# Write your MySQL query statement below
SELECT w1.Id FROM Weather w1 INNER JOIN Weather w2
ON TO_DAYS(w1.Date) = TO_DAYS(w2.Date) + 1 AND w1.Temperature > w2.Temperature
