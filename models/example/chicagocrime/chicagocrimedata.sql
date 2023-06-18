{{ config(alias = "crime_report",tags=["crime"], schema = "chic",
 pre_hook = ["truncate table dbt_raw.hooks.dbt_audits", "Insert into dbt_raw.hooks.dbt_audits (audit_type) values ('models sep conf log')"]) }}

with chicagocrime as (select * from {{ source('src_chicagocrime', 'chicagocrimedata') }})

select *
from chicagocrime 
