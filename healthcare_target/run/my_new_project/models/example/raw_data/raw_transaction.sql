
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.raw_transaction  as
        (

with raw_transaction as 
(
    select * from healthcare.source.TRANSACTION
)
select * from raw_transaction
        );
      
  