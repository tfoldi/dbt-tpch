{{
    config(
        materialized='incremental',
        unique_key='O_ORDERKEY'
    )
}}

select
    *

from {{source('tpch_raw','orders')}}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where O_ORDERDATE > (select max(O_ORDERDATE) from {{ this }})

{% endif %}