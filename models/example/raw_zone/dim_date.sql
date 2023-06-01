{{ config(materialized="table") }}

with dim_date as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_DATE') }}
)
select * from dim_date