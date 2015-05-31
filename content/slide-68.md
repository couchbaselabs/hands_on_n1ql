# Indexing and Query Tuning

Create a composite index with (ratings and productId)

<pre id="example"> 
 CREATE INDEX idx_reviews_rating_productId on reviews(rating, productId) using GSI;
</pre>
