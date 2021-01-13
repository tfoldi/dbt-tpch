{% snapshot orders_snapshot %}

{{
    config(
      target_database='TEST_DB',
      target_schema='dbt',
      unique_key='C_CUSTKEY',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select *, current_timestamp updated_at from {{ source('tpch_raw', 'customer') }}

{% endsnapshot %}