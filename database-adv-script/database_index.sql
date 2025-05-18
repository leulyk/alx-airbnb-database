
-- Users
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_users_email ON users(email);

-- Bookings
CREATE INDEX idx_bookings_booking_id ON bookings(booking_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);

-- Properties
CREATE INDEX idx_properties_name ON properties(name);
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_price_per_night ON properties(price_per_night);
CREATE INDEX idx_properties_host_id ON properties(host_id);
