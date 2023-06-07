{{config(materialized='table')}}

with sales_metric_custom_calculations as
(
select * from {{
    metrics.calculate (
        metric('average_unit_price'),
        grain = 'year',
        dimensions = ['Region','item']
    )
}}
      ) 

select * from sales_metric_custom_calculations where item = 'Television'