CREATE DATABASE PAYMENT;
USE PAYMENT;

CREATE TABLE CUSTOMER(
CUSTOMER_ID INT PRIMARY KEY,
CUSTOMER VARCHAR(50),
MODE VARCHAR(50),
CITY VARCHAR(50)
);

INSERT INTO CUSTOMER VALUES(101,"Olivia Barrett","Netbanking","Portland");
INSERT INTO CUSTOMER VALUES(102,"Ethan Sinclair","Credit Card","Maimi");
INSERT INTO CUSTOMER VALUES(103,"Maya Hernandez","Credit Card","Seattle");
INSERT INTO CUSTOMER VALUES(104,"Liam Donovan","Netbanking","Denver");
INSERT INTO CUSTOMER VALUES(105,"Sophia Nguyen","Credit Card","New Orleans");
INSERT INTO CUSTOMER VALUES(106,"Caleb Foster","Debit Card","Minneapolis");
INSERT INTO CUSTOMER VALUES(107,"Ava Patel","Debit Card","Phoenix");
INSERT INTO CUSTOMER VALUES(108,"Lucas Carter","Netbanking","Boston");
INSERT INTO CUSTOMER VALUES(109,"Isabella Martinez","Netbanking","Nashville");
INSERT INTO CUSTOMER VALUES(110,"Jackson Brooks","Netbanking","Boston");


SELECT MODE, COUNT(CUSTOMER) FROM CUSTOMER GROUP BY MODE;
