-- Insert 100 hotel bookings
INSERT INTO hotel_bookings (
    org_id,
    hotel_id,
    city,
    checkin_date,
    checkout_date,
    amount,
    status
)
SELECT
    uuid_generate_v4(),
    'HOTEL-' || (g % 10 + 1),
    (ARRAY['Delhi','Mumbai','Bangalore','Pune','Hyderabad'])[floor(random()*5 + 1)],
    CURRENT_DATE + (g % 30),
    CURRENT_DATE + (g % 30) + 2,
    round((1000 + random() * 9000)::numeric, 2),
    (ARRAY['CONFIRMED','PENDING','CANCELLED'])[floor(random()*3 + 1)]
FROM generate_series(1,100) g;

INSERT INTO booking_events (
    booking_id,
    event_type,
    payload
)
SELECT
    id,
    'BOOKING_CREATED',
    jsonb_build_object(
        'message', 'Booking created successfully',
        'source', 'system'
    )
FROM hotel_bookings;


