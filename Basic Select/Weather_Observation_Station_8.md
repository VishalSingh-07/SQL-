## Weather Observation Station 8

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![Alt text](../Image/Weather_Observation_Station_1.png)
<br/>
where LAT_N is the northern latitude and LONG_W is the western longitude.

****

### Answer

**SQL Query**

```sql
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE "^[aeiou].*[aeiou]$";
```
