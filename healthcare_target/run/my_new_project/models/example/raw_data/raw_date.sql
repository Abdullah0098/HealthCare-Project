
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_date  as
        (

with raw_date as 
(
    select * from healthcare.source.DATE
)
select * from raw_date
        );
      
  