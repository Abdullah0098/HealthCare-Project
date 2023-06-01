

select transaction_id,transactiontype, transaction , adjustmentreason, first_value(adjustmentreason) 
over (partition by transactiontype order by transaction_id) as new
from {{ ref('dim_transaction') }}