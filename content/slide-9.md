## Unnesting data

The same query as the previous page, rewritten to UNNEST the categories in each product, 
instead of using ANY/SATISFIES on the categories of each product.
<pre id="example">
SELECT product 
  FROM product UNNEST product.categories AS cat  
    WHERE LOWER(cat) in ["golf"] 
      LIMIT 10 OFFSET 10
</pre>
