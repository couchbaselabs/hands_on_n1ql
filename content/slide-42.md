# Part 2: Querying and Modifying Complex Data

## Subquery

The example on the right uses a subquery to analyze a subset of documents rather than the entire
document set; this can be 
useful when devloping queries or running ad-hoc queries on large keyspaces. 

<pre id="example"> 
SELECT p_sample.product.name, 
        ARRAY_LENGTH(p_sample.product.reviewList) as numReviews
  FROM 
       (select * from product limit 50) as p_sample
    ORDER BY numReviews desc
</pre>
