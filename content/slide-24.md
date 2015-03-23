## Subquery

The example on the right uses a subquery to create a sample of the data to analyze; this can be 
useful when devloping queries on a large dataset or running ad-hoc queries on large datasets 
without having to build an index.

<pre id="example"> 
SELECT p_sample.product.name, 
        ARRAY_LENGTH(p_sample.product.reviewList) as numReviews
  FROM (select * from product limit 50) as p_sample
    ORDER BY numReviews desc
      LIMIT 5
</pre>
