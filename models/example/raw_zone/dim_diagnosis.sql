{{ config(materialized="table") }}

with dim_diagnosis as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DIAGNOSIS') }}
)
select * from dim_diagnosis