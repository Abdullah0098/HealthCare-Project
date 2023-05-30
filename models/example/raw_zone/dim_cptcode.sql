{{ config(materialized="table") }}

with dim_cptcode as 
(
    select * from {{ source('src_healthcare_raw', 'CPTCODE') }}
)
select * from dim_cptcode

