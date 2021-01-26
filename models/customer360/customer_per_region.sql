select sum(nation_count) region_count, r_name, 1234 foobar, 1 new_col
from {{ref('customer_per_nation')}} inner join {{source('tpch_raw','region')}}
on (n_regionkey = r_regionkey)
group by 2