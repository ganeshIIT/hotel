with transformed as(
    select * 
    from  {{ ref('stg_customers') }} c
    where exists (select r.customerID from {{ ref('stg_reservations') }} r 
                    where r.customerid = c.customerid)
)

select * from transformed