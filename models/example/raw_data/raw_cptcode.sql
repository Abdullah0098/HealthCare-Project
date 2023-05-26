{{ config(materialized="table") }}

with raw_cptcode as 
(
    select * from {{ source('src_healthcare_raw', 'CPTCODE') }}
)
select * from raw_cptcode