
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_physician  as
        (

with raw_physician as 
(
    select * from healthcare.source.PHYSICIAN
    )
    select * from raw_physician
        );
      
  