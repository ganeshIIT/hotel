with transformed as(
    select * 
    from {{ ref('stg_reservations') }} r 
    where exists (select c.customerID from {{ ref('stg_customers') }} c
                where c.customerid = r.customerid)
)

select * from transformed