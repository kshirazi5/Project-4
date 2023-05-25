DROP TABLE "S&P_500"

CREATE TABLE "SP500" (
	Date date NOT NULL,
	Close_Last DECIMAL NOT NULL,
	Volume VARCHAR(100) NOT NULL,
	Open DECIMAL NOT NULL,
	High DECIMAL NOT NULL,
	Low DECIMAL NOT NULL);
	
	SELECT *
	FROM "SP500";
	

--Percentage change between when Tesla joined the S&P 500
SELECT
    (current_day.High - previous_day.High) / previous_day.High * 100 AS growth_percentage
FROM
    "SP500" AS current_day
JOIN
    "SP500" AS previous_day
    ON previous_day.date = '2020-12-21' AND current_day.date = '2023-05-15';
	
--Percentage change in first six months of COVID Pandemic
SELECT
    (current_day.High - previous_day.High) / previous_day.High * 100 AS growth_percentage
FROM
    "SP500" AS current_day
JOIN
    "SP500" AS previous_day
    ON previous_day.date = '2020-01-10' AND current_day.date = '2020-06-10';

--Greatest decrease from one week to another 
SELECT
    EXTRACT(WEEK FROM Date) AS week_number,
    (High - lag(High) OVER (ORDER BY Date)) AS decline
FROM
    "SP500"
WHERE
    Date >= '2013-05-15'
ORDER BY
    decline ASC
LIMIT 1;

--Which month saw the most growth?
SELECT
    month,
    MAX(growth) AS max_growth
FROM
    (
        SELECT
            EXTRACT(MONTH FROM "SP500"."date") AS month,
            "SP500"."high" - lag("SP500"."high") OVER (ORDER BY "SP500"."date") AS growth
        FROM
            "SP500"
    ) subquery
GROUP BY
    month
ORDER BY
    max_growth DESC
LIMIT 1;

--Which year saw the least growth?
SELECT
    year,
    MAX(growth) AS max_growth
FROM
    (
        SELECT
            EXTRACT(YEAR FROM "SP500"."date") AS year,
            "SP500"."high" - lag("SP500"."high") OVER (ORDER BY "SP500"."date") AS growth
        FROM
            "SP500"
    ) subquery
GROUP BY
    year
ORDER BY
    max_growth ASC
LIMIT 1;