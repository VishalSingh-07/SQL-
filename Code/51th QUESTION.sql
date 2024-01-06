CREATE DATABASE TEMP;
USE TEMP;
CREATE TABLE PAIRS(
	A INT,
    B INT
);

INSERT INTO PAIRS VALUES(1,2),(2,4), (2,1),(3,2), (4,2), (5,6), (6,5), (7,8);

SELECT * FROM PAIRS;


-- remove reversed pairs
-- Method 1: Joins
SELECT LT.* FROM PAIRS LT
LEFT JOIN
PAIRS RT ON LT.A=RT.B AND LT.B=RT.A
WHERE RT.A IS NULL OR LT.A<RT.A;


-- METHOD 2: CORRELATED SUBQUERIES
SELECT * FROM PAIRS P1 WHERE NOT EXISTS 
(SELECT * FROM PAIRS P2 WHERE P1.B=P2.A AND P1.A=P2.B AND P1.A>P2.A);