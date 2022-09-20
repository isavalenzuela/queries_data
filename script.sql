--
select ad.airport_name, f.departure_airport, count(ad.airport_name) as total_flights
from flights f 
join airports_data ad on ad.airport_code = f.departure_airport
group by f.departure_airport, ad.airport_name
order by total_flights desc
FETCH FIRST 3 ROW only

select ad.airport_name, f.departure_airport, count(ad.airport_name) as total_flights 
from flights f 
join airports_data ad on ad.airport_code = f.departure_airport
group by f.departure_airport, ad.airport_name
order by total_flights asc
FETCH FIRST 3 ROW only

select f.flight_no, count(tf.amount)as total_tickets, sum(tf.amount)as total_amount, avg(tf.amount)  as average_amount
from flights f 
join ticket_flights tf on tf.flight_id = f.flight_id 
group by f.flight_no
order by 4;