select count(*) nation_count, n_name, n_regionid 
from {{source('tpch-raw','customer')}} inner join {{source('tpch-raw','nation')}}
group by 2,3,4