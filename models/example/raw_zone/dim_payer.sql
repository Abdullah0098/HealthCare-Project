{{ config(materialized="table") }}

with raw_payer as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PAYER') }}
)
select * from raw_payer