{{ config(materialized="table") }}

with raw_transaction as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_TRANSACTION') }}
)
select * from raw_transaction