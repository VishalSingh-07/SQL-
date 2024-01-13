## Japenese Cities Names 

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:


![Alt text](../Image/Japanese_Cities_Attributes.png)

****

### Answer

**SQL Query**

```sql
SELECT CITY.NAME FROM CITY WHERE CITY.COUNTRYCODE='JPN'
```
