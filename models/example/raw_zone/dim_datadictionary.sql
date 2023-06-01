{{ config(materialized="table") }}

with dim_datadictionary as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DATADICTIONARY') }}
)
select * from dim_datadictionary