
-- Query to find all properties WHERE the average rating is greater than 4.0 using a subquery.

SELECT * FROM properties
WHERE property_id IN (
    SELECT property_id FROM reviews
    GROUP BY property_id
    HAVING AVG(ratINg) > 4
  )

-- Correlated subquery to find users who have made more than 3 bookings.
 
SELECT * FROM users
WHERE (
  	SELECT COUNT(*) FROM bookings
  	WHERE bookings.user_id = users.user_id
  ) > 3
