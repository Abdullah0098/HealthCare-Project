
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_diagnosis  as
        (

with raw_diagnosis as 
(
    select * from healthcare.source.DIAGNOSIS
)
select * from raw_diagnosis
        );
      
  