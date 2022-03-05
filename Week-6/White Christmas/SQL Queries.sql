CREATE TABLE IF NOT EXISTS temps (
	yr INT,
	dy INT,
	m1 INT,
	m2 INT,
	m3 INT,
	m4 INT,
	m5 INT,
	m6 INT,
	m7 INT,
	m8 INT,
	m9 INT,
	m10 INT,
	m11 INT,
	m12 INT
)

SELECT * FROM temps

--Show the average daily temperature for August 10th, 1964.
SELECT m8 / 10 AS temp FROM temps WHERE yr = 1964 AND dy = 10

--Show the twelve temperatures.
SELECT yr, m12 / 10 AS temp FROM temps WHERE yr BETWEEN 1812 AND 1823 AND dy = 25

--For each age 1-12 show which years were a White Christmas. Show 'White Christmas' or 'No snow' for each age.
SELECT yr - 1811 AS age, CASE WHEN MIN(m12) < 0 THEN 'White Christmas' ELSE 'No Snow' END AS snow FROM temps
WHERE yr BETWEEN 1812 AND 1823 AND dy BETWEEN 21 AND 25 GROUP BY(yr)

--List all the years and the wcc for children born in each year of the data set. Only show years where the wcc was at least 7.
SELECT birth_year, COUNT(white_xmas) AS wcc
FROM (
	SELECT birth_year, yr + 1 - birth_year AS age,
	CASE WHEN MIN(m12) < 0 THEN 'White Christmas' END AS white_xmas
	FROM temps
	CROSS JOIN (SELECT DISTINCT yr AS birth_year FROM temps) years
	WHERE yr BETWEEN birth_year + 2 AND birth_year + 11 AND DY BETWEEN 21 AND 25
	GROUP BY(birth_year, age)
)white_christmases
GROUP BY(birth_year)
HAVING COUNT(white_xmas) >= 7

--Display the average temperatures for August by decade.
SELECT yr / 10 * 10 AS decade, AVG(m8 / 10) AS avg_temp
FROM temps
WHERE yr BETWEEN yr AND yr / 10 * 10
GROUP BY(yr) ORDER BY(yr) ASC
