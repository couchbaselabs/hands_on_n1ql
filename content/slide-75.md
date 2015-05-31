# Indexing and Query Tuning

Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query and execute the following:

EXPLAIN select * from customer where lastName = "Smith";

<pre id="example"> 
CREATE INDEX idx_reviews_productId ON reviews(productId) USING GSI;
</pre>
