select count(*) nation_count, n_name, n_regionkey, 0 new_col
from {{source('tpch_raw','customer')}} inner join {{source('tpch_raw','nation')}}
group by 2,3