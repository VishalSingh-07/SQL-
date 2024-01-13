## Revising the Select Query II

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows:

![Alt text](../Image/Revising_the_Select_Query_II.png)

****

### Answer

**SQL Query**

```sql
SELECT CITY.NAME FROM CITY WHERE CITY.POPULATION>120000 AND CITY.COUNTRYCODE='USA'
```