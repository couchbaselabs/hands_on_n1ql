# Part 2: Querying and Modifying Complex Data

## Filtering on nested data 

An example of filtering on data nested within documents.

<pre id="example">
SELECT product.name, product.unitPrice 
  FROM product 
   WHERE ANY cat IN product.categories SATISFIES lower(cat) = "golf" END
    ORDER BY product.unitPrice DESC
      LIMIT 5
</pre>
