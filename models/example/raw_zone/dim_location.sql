{{ config(materialized="table") }}

with dim_location as 
(
    select * from {{ source('src_healthcare_raw', 'LOCATION') }}
)
select * from dim_location