
select count(1) nation_count, n_name, n_nationkey, n_regionkey from 
{{ source('tpch_raw','customer')}} c inner join {{source('tpch_raw', 'nation')}} n
on (c.c_nationkey = n.n_nationkey) 
group by 2,3,4