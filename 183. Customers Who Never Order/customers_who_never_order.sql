# Write your MySQL query statement below
SELECT name
FROM Customers
WHERE id
NOT IN (
    SELECT `Customers`.id
    FROM Customers
    INNER JOIN Orders
    WHERE `Customers`.id = `Orders`.CustomerId
); 
