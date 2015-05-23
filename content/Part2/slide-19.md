## EXPLAIN

EXPLAIN can be used to show the plan for a query.

The query on the right shows the average and total revenue for each category.
Run the query with EXPLAIN to see the query plan. Then, remove the EXPLAIN keyword
and run the query.

Create an index on the purchases bucket:

<span style="color: red">
 CREATE INDEX pid1 ON purchases(purchasedAt)
</span>

Then re-run the EXPLAIN and the query itself. Is there a difference in the query plan?
<pre id="example">
`EXPLAIN SELECT cat, SUM(lineItems.count * product.unitPrice) AS revenue,
    AVG(lineItems.count * product.unitPrice) AS avg_revenue,
     SUM(lineItems.count) AS units_sold
FROM purchases UNNEST lineItems
  JOIN product ON KEYS lineItems.product UNNEST product.categories AS cat
    WHERE purchases.purchasedAt IS NOT NULL
            AND SUBSTR(purchases.purchasedAt, 0, 4) = "2013"
      GROUP BY cat ORDER BY cat desc`
</pre>
