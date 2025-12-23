<!-- query-1 : join -->

SELECT 
    booking_id,
    users.name as customer_name,
    vehicles.name as vehicles_name,
   bookings.start_date,
    bookings.end_date,
    bookings.status
FROM bookings 
JOIN users   ON bookings.user_id =users.user_id
JOIN vehicles  ON bookings.vehicle_id = vehicles.vehicle_id;


<!-- query--2: EXisit -->

SELECT * FROM vehicles 
WHERE NOT EXISTS  (
    SELECT * FROM bookings 
    WHERE bookings.vehicle_id = vehicles.vehicle_id
);

<!-- query--3 where  -->

select * from vehicles
where status = 'available' and type = 'car'


-- query--4: GROUP_By with_Having 

SELECT 
    name,
    COUNT(booking_id) 
FROM bookings 
inner JOIN vehicles  ON bookings.vehicle_id = vehicles.vehicle_id
GROUP BY name
HAVING COUNT(booking_id) > 1;



