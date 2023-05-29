{{ config(materialized="table") }}

with raw_patient as 
(
    select * from {{ source('src_healthcare_raw', 'PATIENT') }}
    )
    select * from raw_patient