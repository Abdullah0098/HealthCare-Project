{{ config(materialized="table") }}

with dim_patient as 
(
    select * from {{ source('src_healthcare_raw', 'PATIENT') }}
    )
    select * from dim_patient