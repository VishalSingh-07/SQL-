## The Blunder

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

**Input Format**

The EMPLOYEES table is described as follows:

![Alt text](./Image/The_Blunder_1.png);

Note: Salary is per month.

Constraints
1000 < Salary < 10<sup>5</sup>


Sample Input

![Alt text](./Image/The_Blunder_2.png)


Sample Output

``````
2061
``````

Explanation

The table below shows the salaries without zeros as they were entered by Samantha:

![Alt text](./Image/The_Blunder_3.png)

Samantha computes an average salary of . The actual average salary is 2159.00.

The resulting error between the two calculations is 2159.00 - 98.00 = 2061.00. Since it is equal to the integer , it does not get rounded up.

****

### Answer

**SQL Query**
```sql
SELECT ROUND(AVG(SALARY)) - ROUND(AVG(REPLACE(SALARY,"0","")))  FROM EMPLOYEES;
```
