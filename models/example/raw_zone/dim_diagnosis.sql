{{ config(materialized="table") }}

with dim_diagnosis as 
(
    select * from {{ source('src_healthcare_raw', 'DIAGNOSIS') }}
)
select * from dim_diagnosis