{{ config(materialized="table") }}

with dim_transaction as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_TRANSACTION') }}
)
select * from dim_transaction