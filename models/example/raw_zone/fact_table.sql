{{ config(materialized="table") }}

with fact_table as 
(
    select * from healthcare.star_schema.fact_table
)
select * from fact_table





{#

{{ config(materialized="table") }}

with fct_id as 
(
    select * from {{ ref('fct_id') }}
),

dim_date as
(
    select * from {{ ref('dim_date') }}
),

dim_diagnosis as
(
    select * from {{ ref('dim_diagnosis') }}
),

dim_location as 
(
    select * from {{ ref('dim_location') }}
),

dim_patient as
(
    select * from {{ ref('dim_patient') }}
),

dim_payer as 
(
    select * from {{ ref('dim_payer') }}
),

dim_physician as
(
    select * from {{ ref('dim_physician') }}
),

dim_transaction as 
(
    select * from {{ ref('dim_transaction') }}
),

dim_cptcode as 
(
    select * from {{ ref('dim_cptcode') }}
),

fact_table as 
(
    select 
    fct_id.fact_id,
    dim_cptcode.CPTCode_id,
    dim_date.DatePost_id,
    dim_location.location_id,
    dim_patient.patient_id,
    dim_payer.payer_id,
    dim_physician.physician_id,
    dim_transaction.transaction_id


    from 
    fct_id
    FULL OUTER  join dim_cptcode on fct_id.fact_id = fct_id.fact_id 
    FULL OUTER join dim_date on fct_id.fact_id= fct_id.fact_id
    full OUTER join dim_transaction on fct_id.fact_id= fct_id.fact_id
    full OUTER join dim_location on fct_id.fact_id= fct_id.fact_id
    full OUTER join dim_patient on fct_id.fact_id= fct_id.fact_id
    full OUTER join dim_payer on fct_id.fact_id= fct_id.fact_id
    full OUTER join dim_physician on fct_id.fact_id= fct_id.fact_id 

)

select * from fact_table
limit 10000

#}

