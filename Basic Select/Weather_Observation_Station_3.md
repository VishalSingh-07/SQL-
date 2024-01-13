## Weather Observation Station 3
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

![Alt text](../Image/Weather_Observation_Station_1.png)
<br/>
where LAT_N is the northern latitude and LONG_W is the western longitude.

****

### Answer

**SQL Query**

```sql
SELECT DISTINCT STATION.CITY FROM STATION WHERE ID%2=0
```
