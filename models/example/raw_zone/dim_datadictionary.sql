{{ config(materialized="table") }}

with raw_datadictionary as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DATADICTIONARY') }}
)
select * from raw_datadictionary