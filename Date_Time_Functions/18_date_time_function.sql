SELeCT*FROM productss;

--NOW (get current date and time)
SELECT NOW();

--CURRENT_DATE (get curent date)
SELECT CURRENT_DATE;

SELECT (CURRENT_DATE- added_date) AS date_difference
FROM productss;

--EXTRACT (extract part of date, i.e year, month, day from added_date)
SELECT EXTRACT(YEAR FROM added_date),
	   EXTRACT(MONTH FROM added_date),
	   EXTRACT(DAY FROM added_date)
FROM productss;

--AGE (calculate age between dates, i.e. calculate the time difference between added_date and today's date)
SELECT AGE(CURRENT_DATE, added_date)
FROM productss; 

--TO_CHAR (format dates as strings)
SELECT TO_CHAR(added_date, 'DD-Mon-YYYY')
FROM productss;

SELECT*FROM productss;

--DATE_PART (get specific date part)
SELECT DATE_PART('dow', added_date)
FROM productss;

SELECT DATE_PART('month', added_date)
FROM productss;

SELECT DATE_PART('isodow', added_date)
FROM productss;

--DATE_TRUNC (truncate date to precision)
SELECT DATE_TRUNC('month', added_date)
FROM productss;

SELECT DATE_TRUNC('week', added_date)
FROM productss;

--INTERVAL (add or substract Time intervals)
SELECT added_date, added_date + INTERVAL '6 days'
FROM productss;

SELECT added_date, added_date + INTERVAL '6 months'
FROM productss;

--CURRENT_TIME 
SELECT CURRENT_TIME;

--TO_DATE (convert string to date)
SELECT TO_DATE('28-04-2024', 'DD-MM-YYYY');

