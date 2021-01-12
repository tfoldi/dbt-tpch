select count(*) region_count, r_name 
from {{ref('customer_per_nation')}} inner join {{source('tpch_raw','region')}}
on (n_regionkey = r_regionkey)
group by 2