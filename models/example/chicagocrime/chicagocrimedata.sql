{{ config(tags=["crime"], schema = "chic") }}

with chicagocrime as (select * from {{ source('src_chicagocrime', 'chicagocrimedata') }})

select *
from chicagocrime 
