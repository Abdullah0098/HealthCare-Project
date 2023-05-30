{{ config(materialized="table") }}

with dim_datadictionary as 
(
    select * from {{ source('src_healthcare_raw', 'DATADICTIONARY') }}
)
select * from dim_datadictionary