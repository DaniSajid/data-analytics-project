select count(*) from bookings where booking_status = 'Success';

create view avg_ride_dist_each_vehi as
select vehicle_type, avg(ride_distance) as avg_distance From bookings
group by vehicle_type;
select * from avg_ride_dist_each_vehi;

create view totlat_count_cancel_by_customer as
select count(*) from bookings where booking_status = 'Canceled by Customer';
select * from totlat_count_cancel_by_customer;