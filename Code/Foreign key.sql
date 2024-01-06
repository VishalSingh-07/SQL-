
CREATE TABLE DEPT(
ID INT PRIMARY KEY,
NAME VARCHAR(50)
);

CREATE TABLE TEACHER(
ID INT PRIMARY KEY,
DEPT_ID INT,
FOREIGN KEY (DEPT_ID) REFERENCES DEPT(ID)
);