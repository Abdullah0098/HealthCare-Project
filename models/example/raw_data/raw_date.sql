{{ config(materialized="table") }}

with raw_date as 
(
    select * from {{ source('src_healthcare_raw', 'DATE') }}
)
select * from raw_date