{{ config(materialized="table") }}

with dim_payer as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PAYER') }}
)
select * from dim_payer