{{ config(materialized="table") }}

with raw_cptcode as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_CPTCODE') }}
)
select * from raw_cptcode

