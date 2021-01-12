select count(*) region_count, r_name 
from {{ref('customer_per_nation')}} inner join {{source('tpch-raw','region')}}