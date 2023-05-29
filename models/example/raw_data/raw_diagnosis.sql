{{ config(materialized="table") }}

with raw_diagnosis as 
(
    select * from {{ source('src_healthcare_raw', 'DIAGNOSIS') }}
)
select * from raw_diagnosis