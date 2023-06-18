{{
    config(
        materialized='incremental',
        unique_key= 'id'
    )
}}
with incremental_sales as (
    select * from demo.practice.sales
    {% if is_incremental() %}
        where current_time >= (select max(current_time) from {{ this }})
    {% endif %}
)

select * from incremental_sales
 