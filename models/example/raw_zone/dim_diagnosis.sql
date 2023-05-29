{{ config(materialized="table") }}

with raw_diagnosis as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DIAGNOSIS') }}
)
select * from raw_diagnosis