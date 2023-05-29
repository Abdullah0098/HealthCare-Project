
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_patient  as
        (

with raw_patient as 
(
    select * from healthcare.source.PATIENT
    )
    select * from raw_patient
        );
      
  