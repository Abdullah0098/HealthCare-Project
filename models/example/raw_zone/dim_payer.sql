{{ config(materialized="table") }}

with dim_payer as 
(
    select * from {{ source('src_healthcare_raw', 'PAYER') }}
)
select * from dim_payer