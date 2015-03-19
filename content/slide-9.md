## Familiar Functionality

N1QL provides functionality that will be very familiar to those with a SQL background. It is possible to select DISTINCT values, use aggregates and GROUP BY and sort using ORDER BY.
<pre id="example">
`
SELECT product.name, cat, product.unitPrice 
  FROM product 
   WHERE ANY cat IN product.categories SATISFIES lower(cat) = "golf" END
    ORDER BY product.unitPrice DESC
      LIMIT 5
`
</pre>
