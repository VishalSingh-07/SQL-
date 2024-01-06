CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker(
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME VARCHAR(25),
    LAST_NAME VARCHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);


INSERT INTO Worker VALUES (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker VALUES (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker VALUES (004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin');
INSERT INTO Worker VALUES (005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES (006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account');
INSERT INTO Worker VALUES (007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
INSERT INTO Worker VALUES (008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

SELECT * FROM Worker;


CREATE TABLE Bonus(
	WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) 
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO Bonus
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');


CREATE TABLE Title(
	WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO Title
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
		(001, 'Manager', '2016-02-20 00:00:00'),
		(002, 'Executive', '2016-06-11 00:00:00'),
		(008, 'Executive', '2016-06-11 00:00:00'),
		(005, 'Manager', '2016-06-11 00:00:00'),
		(004, 'Asst. Manager', '2016-06-11 00:00:00'),
		(007, 'Executive', '2016-06-11 00:00:00'),
		(006, 'Lead', '2016-06-11 00:00:00'),
		(003, 'Lead', '2016-06-11 00:00:00');

SELECT NOW(); -- To get current server time

SELECT * FROM Worker WHERE SALARY>100000;

-- SALARY (80000,300000)
SELECT * FROM Worker WHERE SALARY BETWEEN 80000 AND 300000 ORDER BY SALARY; 

-- REDUCE OR STATEMENTS
-- HR, ADMIN
SELECT * FROM Worker WHERE DEPARTMENT='HR' OR DEPARTMENT='ADMIN';


-- BETTER WAY: IN
SELECT * FROM Worker WHERE DEPARTMENT IN('HR','ADMIN');


-- NOT
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('HR','ADMIN');


-- Pattern Searching
--  1. % -> any number of character
--  2. _ => only one character

-- WILDCARD
SELECT * FROM Worker WHERE FIRST_NAME LIKE '%i%';


-- Sorting using ORDER BY
SELECT * FROM Worker ORDER BY SALARY;

-- DISTINCT
SELECT DISTINCT DEPARTMENT FROM Worker;

-- GROUP BY
SELECT DEPARTMENT,COUNT(*) FROM Worker GROUP BY DEPARTMENT;

-- Find average salary per Department
SELECT DEPARTMENT,AVG(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- MIN
SELECT DEPARTMENT,MIN(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- MAX
SELECT DEPARTMENT,MAX(SALARY) FROM Worker GROUP BY DEPARTMENT;

 
-- HAVING
SELECT DEPARTMENT,COUNT(SALARY) FROM Worker GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT)> 2;


