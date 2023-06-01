{{ config(materialized="table") }}


with fact_table as (
    select * from healthcare.star_schema.fact_table
),
dim_date as (
    select * from {{ ref('dim_date') }}
),
dim_diagnosis as (
    select * from {{ ref('dim_diagnosis') }}
),
dim_location as (
    select * from {{ ref('dim_location') }}
),
dim_patient as (
    select * from {{ ref('dim_patient') }}
),
dim_payer as (
    select * from {{ ref('dim_payer') }}
),
dim_physician as (
    select * from {{ ref('dim_physician') }}
),
dim_transaction as (
    select * from {{ ref('dim_transaction') }}
),
dim_cptcode as (
    select * from {{ ref('dim_cptcode') }}
),

fact_table_comb as (
    select 
        fact_table.fact_id,
        dim_cptcode.CPTCode_id,
        dim_date.DatePost_id,
        dim_location.location_id,
        dim_location.locationname,
        dim_patient.patient_id,
        dim_payer.payer_id,
        dim_physician.physician_id,
        dim_transaction.transaction_id
   FROM
    healthcare.star_schema.fact_table

LEFT JOIN
    DIM_PATIENT ON FACT_TABLE.DIM_PATIENT_ID = DIM_PATIENT.PATIENT_ID
LEFT JOIN
    DIM_PHYSICIAN ON FACT_TABLE.DIM_PHYSICIAN_ID = DIM_PHYSICIAN.PHYSICIAN_ID
LEFT JOIN
    DIM_DATE ON FACT_TABLE.DIM_DATE_ID = DIM_DATE.DATEPOST_ID
LEFT JOIN
    DIM_CPTCODE ON FACT_TABLE.DIM_CPTCODE_ID = DIM_CPTCODE.CPTCODE_ID
LEFT JOIN
    DIM_PAYER ON FACT_TABLE.DIM_PAYER_ID = DIM_PAYER.PAYER_ID
LEFT JOIN
    DIM_TRANSACTION ON FACT_TABLE.DIM_TRANSACTION_ID = DIM_TRANSACTION.TRANSACTION_ID
LEFT JOIN  
    DIM_LOCATION ON FACT_TABLE.DIM_LOCATION_ID = DIM_LOCATION.LOCATION_ID
LEFT JOIN
    DIM_DIAGNOSIS ON FACT_TABLE.DIM_DIAGNOSIS_ID = DIM_DIAGNOSIS.DIAGNOSISCODE_ID
)

select * from fact_table_comb

