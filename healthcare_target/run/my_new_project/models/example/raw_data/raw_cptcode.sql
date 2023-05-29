
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_cptcode  as
        (

with raw_cptcode as 
(
    select * from healthcare.source.CPTCODE
)
select * from raw_cptcode
        );
      
  