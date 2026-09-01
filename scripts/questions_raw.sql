-- 1. retrieve all successful bookings:

drop view if exists Successful_Bookings; 
create view Successful_Bookings as
select * from bookings
where booking_status = 'Success';

-- 2. Find the average ride distance for each vehicle type:

drop view if exists vehicle_average_ride_distance; 
create view vehicle_average_ride_distance as
select
	vehicle_type,
	concat(round(avg(ride_distance),2),' Km') as avg_ride_distance
from bookings
group by vehicle_type
order by avg_ride_distance desc;

-- 3. Get the total number of cancelled rides by customers:

drop view if exists cancelled_ride_by_customers;
create view cancelled_ride_by_customers as
SELECT
count(booking_status) as cancelled_orders
from bookings
where booking_status = 'Canceled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides:

drop view if exists top_5_customers;
create view top_5_customers as
select
	customer_id,
	count(booking_id) as total_booking,
	max(date) as last_ride_date
from bookings
group by customer_id
order by total_booking desc,last_ride_date asc
limit 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

drop view if exists personal_and_car_related_cancelled_rides;
create view personal_and_car_related_cancelled_rides as
select
	count(Canceled_Rides_by_Driver)
from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
drop view if exists Prime_Sedan_Driver_Rating;
create view Prime_Sedan_Driver_Rating as
select
	vehicle_type,
	max(Driver_Ratings) as max_driver_rating,
	min(driver_ratings) as min_driver_rating
from bookings
where vehicle_type = 'Prime Sedan'
group by vehicle_type;

-- 7. Retrieve all rides where payment was made using UPI:
drop view if exists payment_by_upi ;
create view payment_by_upi as
select * from bookings
where Payment_Method = 'UPI';

-- 8. Find the average customer rating per vehicle type:
drop view if exists avg_customer_rating_by_vehicle;
create view avg_customer_rating_by_vehicle as
select
	vehicle_type,
	round(avg(customer_rating),2) as avg_customer_rating
from bookings
group by vehicle_type;

-- 9. Calculate the total booking value of rides completed successfully:
drop view if exists total_bookings_of_completed_rides;
create view total_bookings_of_completed_rides as
select
	sum(booking_value) as total_booking_value
from bookings
where Incomplete_Rides = 'No';

-- 10. List all incomplete rides along with the reason:
drop view if exists incomplete_rides ;
create view incomplete_rides as
select
	booking_id,
	incomplete_rides_reason
from bookings
where Incomplete_Rides = 'Yes';
