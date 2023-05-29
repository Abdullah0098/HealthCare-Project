{{ config(materialized="table") }}

with raw_location as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_LOCATION') }}
)
select * from raw_location