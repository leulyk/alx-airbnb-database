-- Query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.

SELECT * FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id;

-- Query using a LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.

SELECT * FROM properties
LEFT JOIN reviews ON reviews.property_id = properties.property_id
ORDER BY rating;

-- Query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
-- FULL OUTER JOIN is not supported in MySQL, so opted to use left and right joins with union.

SELECT * FROM users
LEFT JOIN bookings ON users.user_id = bookings.user_id
UNION
SELECT * FROM users
RIGHT JOIN bookings ON users.user_id = bookings.user_id;