/*
Enter your query below.
Please append a semicolon ";" at the end of the query
*/
SET sql_mode = '';

WITH _tmpAVG AS (
    SELECT MONTH(tr.record_date) as m, ROUND(AVG(tr.data_value), 0) AS a
    FROM temperature_records AS tr
    WHERE tr.data_type IN ("avg")
    GROUP BY MONTH(record_date)
)

SELECT MONTH(record_date), MAX(data_value), MIN(data_value), _tmpAVG.a
FROM temperature_records, _tmpAVG
WHERE MONTH(record_date) = _tmpAVG.m
GROUP BY MONTH(record_date)
LIMIT 6

/*SELECT MONTH(tr.record_date), ROUND(AVG(tr.data_value), 0) AS a
FROM temperature_records AS tr
WHERE tr.data_type IN ("avg")
GROUP BY MONTH(record_date)*/
