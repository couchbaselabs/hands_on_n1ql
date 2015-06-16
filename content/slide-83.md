# Query to invert json hierarchies.

Query to invert the JSON hierarchy. The sample data contains
customer info with multiple orders per customer, having orders 
that consists of multiple parts.

See the query plan.

<pre id="example">
from (
from customer_profile c unnest c.orders o unnest o.parts p
group by p.part_info, o.order_info
select p.part_info, o.order_info, array_agg(c.cust_info) as customers
) s
group by s.part_info
select {"part_info": s.part_info, "orders": array_agg({"order_info": s.order_info, "customers": s.customers})} as part

</pre>

