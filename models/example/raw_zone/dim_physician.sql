{{ config(materialized="table") }}

with dim_physician as 
(
    select * from {{ source('src_healthcare_raw', 'PHYSICIAN') }}
    )
    select * from dim_physician