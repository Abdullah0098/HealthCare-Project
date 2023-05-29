
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_payer  as
        (

with raw_payer as 
(
    select * from healthcare.source.PAYER
)
select * from raw_payer
        );
      
  