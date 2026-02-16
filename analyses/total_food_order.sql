with food as 
(
    select count(*) from {{ ref('order_items')}}
        where is_food_item = true
)

select * from food