# Indexing and Query Tuning

Let's improve the performance by creating an index on the ratings attribute name.

<pre id="example"> 
CREATE INDEX idx_reviews_rating ON reviews(rating) USING GSI;
</pre>
