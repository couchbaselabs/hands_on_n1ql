# Part 4 : Inversion of JSON hierarchies.

## Performing the inversion

The query on the right performs the inversion. It uses several N1QL
features:
+ Subquery
+ UNNEST
+ GROUP BY
+ ARRAY_AGG
+ Dynamic construction of JSON objects

For readibility, the query has been written as FROM - GROUP BY -
SELECT instead of SELECT - FROM - GROUP BY. Try converting the outer
or inner query to SELECT - FROM - GROUP BY. As expected, the results
are the same.

<pre id="example">
from (
from customer_profile c unnest c.orders o unnest o.parts p
group by p.part_info, o.order_info
select p.part_info, o.order_info, array_agg(c.cust_info) as customers
) s
group by s.part_info
select {"part_info": s.part_info, "orders": array_agg({"order_info": s.order_info, "customers": s.customers})} as part

</pre>
