

with raw_transaction as 
(
    select * from healthcare.source.TRANSACTION
)
select * from raw_transaction