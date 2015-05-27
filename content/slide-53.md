# Part 2: Querying and Modifying Complex Data

## Explain

Explain shows the execution plan for a query.

<pre id="example"> 
EXPLAIN 
 SELECT product.name, 
        ARRAY_LENGTH(product.reviewList) as numReviews
  FROM product
    ORDER BY numReviews desc
      LIMIT 5

</pre>
