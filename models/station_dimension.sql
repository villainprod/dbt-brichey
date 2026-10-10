WITH BIKE AS (


select 
distinct
start_station_name,
start_station_id,
start_lat,
start_lng
from {{ source('demo', 'bike') }}    
where ride_id != 'ride_id'

)

select * from bike