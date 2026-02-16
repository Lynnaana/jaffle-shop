select * from {{ ref('customers_snapshot') }}
order by id