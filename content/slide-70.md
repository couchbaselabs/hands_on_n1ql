# Part 3 : Indexing and Query Tuning

## Creating the composite key index
Now, let's create create the composite key index with productId as the leading key.

<pre id="example"> 
 CREATE INDEX idx_reviews_productId_rating on reviews(productId, rating) using GSI;
</pre>
