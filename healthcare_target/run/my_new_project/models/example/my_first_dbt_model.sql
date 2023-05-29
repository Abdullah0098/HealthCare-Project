
  
    

        create or replace transient table dbt_raw.dbt_anajeeb.my_first_dbt_model  as
        (

with source_data as (
    select 1 as id
    union all
    select null as id
)

select *
from source_data
where id is not null
        );
      
  