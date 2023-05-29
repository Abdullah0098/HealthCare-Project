
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_location  as
        (

with raw_location as 
(
    select * from healthcare.source.LOCATION
)
select * from raw_location
        );
      
  