{{ config(materialized="table") }}

with dim_physician as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PHYSICIAN') }}
    )
    select * from dim_physician