
-- Query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.

SELECT user_id, COUNT(*) AS total_bookings FROM bookings
GROUP BY user_id

-- Window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT property_id, total_bookings,
RANK() OVER(ORDER BY total_bookings) AS bookings_rank,
ROW_NUMBER() OVER(ORDER BY total_bookings) AS bookings_numbering
FROM (
	SELECT property_id, COUNT(*) AS total_bookings FROM bookings
	GROUP BY property_id
 ) AS property_bookings;
