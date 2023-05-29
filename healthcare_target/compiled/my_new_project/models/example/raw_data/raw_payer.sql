

with raw_payer as 
(
    select * from healthcare.source.PAYER
)
select * from raw_payer