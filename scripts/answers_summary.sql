-- 1. Retrieve all successful bookings:
select * from successful_bookings;
-- 2. Find the average ride distance for each vehicle type:
select * from vehicle_average_ride_distance;
-- 3. Get the total number of cancelled rides by customers:
select * from cancelled_ride_by_customers;
-- 4. List the top 5 customers who booked the highest number of rides:
select * from top_5_customers;
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from personal_and_car_related_cancelled_rides;
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from Prime_Sedan_Driver_Rating;
-- 7. Retrieve all rides where payment was made using UPI:
select * from payment_by_upi;
-- 8. Find the average customer rating per vehicle type:
select * from avg_customer_rating_by_vehicle;
-- 9. Calculate the total booking value of rides completed successfully:
select * from total_bookings_of_completed_rides;
-- 10. List all incomplete rides along with the reason:
select * from incomplete_rides;
