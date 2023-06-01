{{ config(materialized="table") }}

with dim_patient as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PATIENT') }}
    )
    select * from dim_patient