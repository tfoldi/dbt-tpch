select count(*) nation_count, n_name, n_regionkey 
from {{source('tpch_raw','customer')}} inner join {{source('tpch_raw','nation')}}
group by 2,3