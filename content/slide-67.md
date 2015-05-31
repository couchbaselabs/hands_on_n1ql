# Indexing and Query Tuning

In this query, we're looking for a ratings report on range of products.

Execute this first.

We'll then look at the EXPLAIN.

<pre id="example"> 
SELECT productId, rating, COUNT(productId) 
    FROM reviews 
	WHERE rating < 3
            AND productId BETWEEN "product300" AND "product400" 
            GROUP BY productId, rating;
</pre>
