{{ config(materialized="table") }}

with raw_date as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DATE') }}
)
select * from raw_date