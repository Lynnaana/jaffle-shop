{{config (
    materialized="incremental",
    incremental_strategy="append"
)}}

with orders as (
    select * from {{ ref ('stg_orders')}}
)

select * from orders
