SELECT DISTINCT(CITY)
FROM STATION
WHERE
    CITY Like '%a' OR
    CITY Like '%e' OR
    CITY Like '%i' OR
    CITY Like '%o' OR
    CITY Like '%u';

