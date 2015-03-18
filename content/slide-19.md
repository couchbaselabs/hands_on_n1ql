## EXPLAIN

EXPLAIN can be used to show the plan for a query.
<pre id="example">
EXPLAIN 
SELECT cat, SUM(lineItems.count * product.unitPrice) AS revenue,
    AVG(lineItems.count * product.unitPrice) AS avg_revenue,
     SUM(lineItems.count) AS units_sold
FROM purchases UNNEST lineItems
  JOIN product ON KEYS lineItems.product 
    UNNEST product.categories AS cat
      GROUP BY cat
        ORDER BY cat_revenue desc
</pre>
