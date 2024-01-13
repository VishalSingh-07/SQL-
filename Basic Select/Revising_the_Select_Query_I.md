## Revising the Select Query

Query all columns for all American cities in the CITY table with populations larger than `100000`. The CountryCode for America is USA.

The CITY table is described as follows:

![Alt text](../Image/Revising_the_Select_Query_I.png)

****

### Answer

**SQL Query**
```sql
SELECT* FROM CITY WHERE POPULATION>100000 AND COUNTRYCODE='USA'
```
