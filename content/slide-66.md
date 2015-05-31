# Indexing and Query Tuning

Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query and execute the following:


<pre id="example"> 
EXPLAIN SELECT productId, COUNT(productId)
     FROM reviews  
        WHERE rating = 1 
            GROUP BY productId
                ORDER BY COUNT(productId) DESC
                    LIMIT 10;
</pre>
