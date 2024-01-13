## Weather Observation Station 11

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![Alt text](../Image/Weather_Observation_Station_1.png)
<br/>
where LAT_N is the northern latitude and LONG_W is the western longitude.

****

### Answer

**SQL Query**

```sql
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT RLIKE "^[aeiou].*[aeiou]$"
```
