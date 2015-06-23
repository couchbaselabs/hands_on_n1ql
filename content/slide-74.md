# Part 3 : Indexing and Query Tuning

## Performance difference without secondary indexes

Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query and execute the following:

EXPLAIN select * from customer where lastName = "Smith";

<pre id="example"> 
DROP INDEX reviews.idx_reviews_rating_productId USING GSI;
</pre>
