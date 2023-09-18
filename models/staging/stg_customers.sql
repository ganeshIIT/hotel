with source as (
    select * from {{ source('seeds', 'customers') }}
)

select * from source