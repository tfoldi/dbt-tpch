select sum(nation_count) region_count, r_name, 0 new_column, 2 new_column_2
from {{ref('customer_per_nation')}} inner join {{source('tpch_raw','region')}}
on (n_regionkey = r_regionkey)
group by 2