INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES 
('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashed123', 'guest'),
('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hashed456', 'host');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES 
('prop-1', 'uuid-2', 'Ocean View', 'Seaside apartment', 'Cape Town', 120.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
('book-1', 'prop-1', 'uuid-1', '2025-07-20', '2025-07-25', 600.00, 'confirmed');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES 
('pay-1', 'book-1', 600.00, 'credit_card');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES 
('rev-1', 'prop-1', 'uuid-1', 5, 'Amazing stay!');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES 
('msg-1', 'uuid-1', 'uuid-2', 'Thanks for hosting me!');

