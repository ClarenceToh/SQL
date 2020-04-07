SELECT COUNT(*) 
FROM fake_apps
WHERE price = 0;

SELECT SUM(downloads)
FROM fake_apps;

SELECT max(price)
FROM fake_apps;

SELECT AVG(price)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
FROM fake_apps;

SELECT category,
	SUM(downloads)
FROM fake_apps
GROUP BY category;

-- CODE CHALLENGES

SELECT COUNT(*) AS count
FROM users
WHERE email LIKE '%.com';

SELECT first_name, COUNT(*) AS count
FROM users
GROUP BY first_name
ORDER BY count DESC;

SELECT ROUND(watch_duration_in_minutes,0) AS duration , COUNT(*) AS count
FROM watch_history
GROUP BY duration
ORDER BY duration ASC;

SELECT user_id, SUM(amount) as total 
FROM payments
WHERE status = 'paid'
GROUP BY user_id
ORDER BY total DESC;

SELECT user_id, SUM(watch_duration_in_minutes) as sumw
FROM watch_history
GROUP BY user_id
HAVING sumw > 400;

SELECT ROUND(SUM(watch_duration_in_minutes),0)
FROM watch_history;

SELECT pay_date , SUM(amount) as TSUM
FROM payments 
WHERE status = 'paid'
GROUP BY pay_date
ORDER BY TSUM DESC;

SELECT AVG(amount) as ASUM
FROM payments 
WHERE status = 'paid';

SELECT max(watch_duration_in_minutes) as max, min(watch_duration_in_minutes) as min
FROM watch_history;

-- Valuation project

SELECT category , ROUND(AVG(valuation),2) as val
FROM startups
GROUP BY category
ORDER BY val DESC;

SELECT category, COUNT(name) as coun
FROM startups
GROUP BY category
HAVING coun > 3;

SELECT location, avg(employees) as avg
FROM startups
GROUP BY location
HAVING avg > 500;

