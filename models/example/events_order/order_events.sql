{{ config(materialized="table") }}

with order_events as 
(
    select * from {{ source('order_events', 'events_order') }}
)
select * from order_events