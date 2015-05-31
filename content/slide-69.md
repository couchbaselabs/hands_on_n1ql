# Indexing and Query Tuning

Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query.

<pre id="example"> 
SELECT productId, rating, COUNT(productId) 
    FROM reviews 
	WHERE rating < 3
            AND productId BETWEEN "product300" AND "product400" 
            GROUP BY productId, rating;
</pre>
