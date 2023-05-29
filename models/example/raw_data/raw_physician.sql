{{ config(materialized="table") }}

with raw_physician as 
(
    select * from {{ source('src_healthcare_raw', 'PHYSICIAN') }}
    )
    select * from raw_physician