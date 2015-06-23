# Part 3 : Indexing and Query Tuning

## DROP INDEX

Clean-up the indices;

<pre id="example"> 
DROP INDEX reviews.idx_reviews_productId_rating USING GSI;
</pre>
