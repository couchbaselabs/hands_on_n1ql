# Indexing and Query Tuning

Partial Index:

1. Index only portion of the index based on range expression.

2. Create distinct indices for each range of values.

3. Very similar to range partitioning of data.

4. Optimizer automatically picks up the relavant index based on the expression.

<pre id="example"> 
CREATE INDEX idx_rating_1 ON reviews(rating) WHERE (rating = 1) USING GSI;
</pre>
