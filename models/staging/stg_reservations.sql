with source as (
    select * from {{ source('seeds', 'reservations') }}
)

select * from source