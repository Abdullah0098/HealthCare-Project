{{ config(materialized="table") }}

with fct_id as 
(
    select * from {{ source('src_healthcare_raw', 'fct_id') }}
)
select * from fct_id