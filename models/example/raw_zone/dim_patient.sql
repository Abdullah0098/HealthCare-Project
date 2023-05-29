{{ config(materialized="table") }}

with raw_patient as 
(
    select * from {{ source('src_healthcare_raw', 'DIM_PATIENT') }}
    )
    select * from raw_patient