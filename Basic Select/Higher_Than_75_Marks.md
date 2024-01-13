## Higher Than 75 Marks

Query the Name of any student in STUDENTS who scored higher than  75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

**Input Format**

The STUDENTS table is described as follows:

![Alt text](../Image/Higher_Than_75_Marks_1.png)

<br>

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

**Sample Input**

![Alt text](../Image/Higher_Than_75_Marks_2.png)

<br>

**Sample Output**

```
Ashley
Julia
Belvet
Explanation
```
Only Ashley, Julia, and Belvet have Marks > 75 . If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.

****

### Answer

**SQL Query**

```sql
SELECT Name FROM STUDENTS WHERE Marks>75 order by right(name,3),ID;

```
