{{ config(materialized="table") }}

with raw_physician as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PHYSICIAN') }}
    )
    select * from raw_physician