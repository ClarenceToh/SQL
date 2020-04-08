SELECT COUNT(*)
FROM newspaper;
SELECT COUNT(*)
FROM online;

SELECT COUNT(*)
FROM newspaper
JOIN online
	ON newspaper.id = online.id
WHERE online.id IS NULL;

SELECT *
FROM classes
JOIN students
  ON classes.id = students.class_id;

FROM newspaper
CROSS JOIN months
WHERE start_month <= month AND end_month >= month
GROUP BY month;

SELECT * 
FROM newspaper 
UNION 
SELECT * 
FROM online;

WITH previous_query AS ( 
    SELECT customer_id,
       COUNT(subscription_id) AS 'subscriptions'
    FROM orders
    GROUP BY customer_id
)
SELECT customers.customer_name, previous_query.subscriptions
FROM previous_query
JOIN customers
  ON customers.customer_id = previous_query.customer_id;

-- Code Challenge
SELECT premium_users.user_id , plans.description 
FROM premium_users
JOIN plans
  ON premium_users.membership_plan_id = plans.id;

SELECT  plays.user_id, plays.play_date, songs.title 
FROM plays
JOIN songs
  ON songs.id = plays.song_id;

 SELECT users.id
 FROM users
 LEFT JOIN premium_users
   ON premium_users.user_id = users.id
 WHERE premium_users.user_id IS NULL;

SELECT january.user_id
FROM january
LEFT JOIN february
	ON january.user_id = february.user_id
WHERE february.user_id IS NULL;

SELECT premium_users.user_id,
  months.months,
  CASE
    WHEN (
      premium_users.purchase_date <= months.months
      )
      AND
      (
        premium_users.cancel_date >= months.months
        OR
        premium_users.cancel_date IS NULL
      )
    THEN 'active'
    ELSE 'not_active'
  END AS 'status'
FROM premium_users
CROSS JOIN months;

WITH play_count AS (
    SELECT song_id,
        COUNT(*) AS 'times_played'
    FROM plays
    GROUP BY song_id
)
SELECT songs.title, songs.artist, play_count.times_played
FROM songs
CROSS JOIN play_count 
  ON play_count.song_id = songs.id;

