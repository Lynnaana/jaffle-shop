{{config (
    materialized="incremental",
    incremental_strategy="append"
)}}

with customers as (
    select * from {{ ref ('stg_customers')}}
)

select * from customers
