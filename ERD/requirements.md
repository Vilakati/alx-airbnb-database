[User]
- user_id (PK)
- first_name
- last_name
- email (UNIQUE)
- password_hash
- phone_number
- role
- created_at

[Property]
- property_id (PK)
- host_id (FK) → User.user_id
- name
- description
- location
- pricepernight
- created_at
- updated_at

[Booking]
- booking_id (PK)
- property_id (FK) → Property.property_id
- user_id (FK) → User.user_id
- start_date
- end_date
- total_price
- status
- created_at

[Payment]
- payment_id (PK)
- booking_id (FK) → Booking.booking_id
- amount
- payment_date
- payment_method

[Review]
- review_id (PK)
- property_id (FK) → Property.property_id
- user_id (FK) → User.user_id
- rating
- comment
- created_at

[Message]
- message_id (PK)
- sender_id (FK) → User.user_id
- recipient_id (FK) → User.user_id
- message_body
- sent_at

