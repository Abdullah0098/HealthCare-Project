{{ config(materialized="table") }}

with dim_date as 
(
    select * from {{ source('src_healthcare_raw', 'DATE') }}
)
select * from dim_date