SELECT DISTINCT(CITY)
FROM STATION
WHERE
    (CITY Like 'A%' OR
    CITY Like 'E%' OR
    CITY Like 'I%' OR
    CITY Like 'O%' OR
    CITY Like 'U%')
    AND
    (CITY Like '%a' OR
    CITY Like '%e' OR
    CITY Like '%i' OR
    CITY Like '%o' OR
    CITY Like '%u');