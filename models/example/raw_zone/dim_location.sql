{{ config(materialized="table") }}

with dim_location as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_LOCATION') }}
)
select * from dim_location