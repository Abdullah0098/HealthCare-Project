{{ config(materialized="table") }}

with raw_location as 
(
    select * from {{ source('src_healthcare_raw', 'LOCATION') }}
)
select * from raw_location