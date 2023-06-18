{{config (materialized = 'table',tags=["sale"])}}


with sales as 
(select * from {{ source('order_events', 'sales') }})

select * from sales 