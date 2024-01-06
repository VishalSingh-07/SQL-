
## Population Density Difference 

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows: 

![Alt text](./Image//Population_Density_Difference.png)


****

### Answer

**SQL Query**

```sql
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY;
```