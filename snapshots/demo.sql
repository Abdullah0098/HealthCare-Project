
{% snapshot orders_snapshot %}

{{
    config(
      target_database='demo',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}
with s1 as 
(
select * from {{ source('snapshot_demo', 'snapshot') }}
),
s2 as 
(select * from {{ source('snapshot_demo', 'snapshot_2') }} ),

final as 
(
    select s1.id,
    s1.name, 
    s1.salary,
    s2.name,
    s2.salary
    from s1
    left join s2 on s1.id = s2.id
)

select * from final

{% endsnapshot %}