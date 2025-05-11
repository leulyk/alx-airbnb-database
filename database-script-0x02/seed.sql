
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
(unhex(replace('3e8f1a90-b5c0-4d71-ae3b-7b7d4cc9d51b', '-', '')), 'Alice', 'Wong', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest', NOW()),
(unhex(replace('58d23451-70c6-4e5a-b942-41056b41b759', '-', '')), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '1234567891', 'host', NOW()),
(unhex(replace('59e34562-30d6-7e5a-b922-41056b41b759', '-', '')), 'Clara', 'Lee', 'clara@example.com', 'hashed_pw_3', '1234567892', 'admin', NOW());

INSERT INTO properties (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
(unhex(replace('29dc5d4c-fd84-42e5-88fa-9ed9e7b50c8c', '-', '')), uuid_to_bin('58d23451-70c6-4e5a-b942-41056b41b759'), 'Cozy Cottage', 'A peaceful countryside retreat', 'Vermont', 120.00, NOW(), NOW()),
(unhex(replace('e610a0c1-9e8b-4d84-a5cc-2e76f4b4ebf7', '-', '')), uuid_to_bin('58d23451-70c6-4e5a-b942-41056b41b759'), 'Modern Loft', 'A stylish loft downtown', 'New York', 200.00, NOW(), NOW());

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
(unhex(replace('1b43c9a7-b300-4f7b-83f6-9b7fd163bf52', '-', '')), uuid_to_bin('29dc5d4c-fd84-42e5-88fa-9ed9e7b50c8c'), uuid_to_bin('3e8f1a90-b5c0-4d71-ae3b-7b7d4cc9d51b'), '2025-06-01', '2025-06-05', 480.00, 'confirmed', NOW()),
(unhex(replace('7f1cbde3-9f83-40c0-bb39-41d419d33bbf', '-', '')), uuid_to_bin('e610a0c1-9e8b-4d84-a5cc-2e76f4b4ebf7'), uuid_to_bin('3e8f1a90-b5c0-4d71-ae3b-7b7d4cc9d51b'), '2025-07-10', '2025-07-12', 400.00, 'pending', NOW());

INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
(unhex(replace('c85a7a20-31ee-48db-9b50-80f8918a1d1a', '-', '')), uuid_to_bin('1b43c9a7-b300-4f7b-83f6-9b7fd163bf52'), 480.00, NOW(), 'credit_card'),
(unhex(replace('4457ff25-5e67-49e7-9e0c-e93150f40e10', '-', '')), uuid_to_bin('7f1cbde3-9f83-40c0-bb39-41d419d33bbf'), 400.00, NOW(), 'paypal');

INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
(unhex(replace('b38fd7d5-9a64-4a76-90b3-9f75c1c6b8ae', '-', '')), uuid_to_bin('3e8f1a90-b5c0-4d71-ae3b-7b7d4cc9d51b'), uuid_to_bin('58d23451-70c6-4e5a-b942-41056b41b759'), 'Hi Bob, is the cottage available in June?', NOW()),
(unhex(replace('a3674cd9-358b-47b6-867c-dbe38c6fc089', '-', '')), uuid_to_bin('58d23451-70c6-4e5a-b942-41056b41b759'), uuid_to_bin('3e8f1a90-b5c0-4d71-ae3b-7b7d4cc9d51b'), 'Yes Alice, it’s available!', NOW());
