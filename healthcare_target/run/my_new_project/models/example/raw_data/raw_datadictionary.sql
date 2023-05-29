
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_datadictionary  as
        (

with raw_datadictionary as 
(
    select * from healthcare.source.DATADICTIONARY
)
select * from raw_datadictionary
        );
      
  