with TRIPS as (


select
RIDE_ID,
RIDEABLE_TYPE,
DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIPE_DATE,
START_STATION_ID,
END_STATION_ID,
TO_TIMESTAMP(ENDED_AT) - TO_TIMESTAMP(STARTED_AT) AS TRIP_DURATION,
MEMBER_CASUAL


from {{source('demo', 'bike') }}
where ride_id != 'ride_id'


)

select *
from trips
