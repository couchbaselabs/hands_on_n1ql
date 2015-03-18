## LIMIT/OFFSET

N1QL provides functionality that will be very familiar to those with a SQL background.
It is possible to select DISTINCT values, use aggregates and GROUP BY and sort using ORDER BY.

This example illustrates the use of LIMIT and OFFSET to batch a query, typically used to support pagination.
<pre id="example">
`SELECT product.name, categories, product.unitPrice 
  FROM product 
    WHERE ANY cat IN categories SATISFIES cat IN [ "Golf" ]  END 
      LIMIT 10 OFFSET 10`
</pre>
