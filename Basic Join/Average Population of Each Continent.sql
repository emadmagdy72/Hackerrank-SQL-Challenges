SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY
INNER JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.Code
GROUP BY COUNTRY.CONTINENT;