## Average Population of Each Continent

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: `CITY.CountryCode` and `COUNTRY.Code` are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

![Alt text](../Image/Average_Population_of_Each_Continent_1.png)
![Alt text](../Image/Average_Population_of_Each_Continent_2.png)

****

### Answer

**SQL Query**

```sql
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM COUNTRY JOIN CITY ON
COUNTRY.CODE=CITY.COUNTRYCODE GROUP BY COUNTRY.CONTINENT;
                            
```
