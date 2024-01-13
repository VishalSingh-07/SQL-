## Weather Observation Station 6

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:N table is described as follows:

![Alt text](../Image/Weather_Observation_Station_1.png)
<br/>
where LAT_N is the northern latitude and LONG_W is the western longitude.

****

### Answer

**SQL Query**

```sql
SELECT DISTINCT CITY FROM STATION WHERE CITY Rlike '^[aeiou]';
```
