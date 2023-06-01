{{ config(materialized="table") }}

with cptcode as(
    
    select * from HEALTHCARE.SOURCE.CPTCODE
)

select * from cptcode




