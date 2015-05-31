# Indexing and Query Tuning

Multi-Index Scan: Using multiple indices for flexibility and performance.

This query gets the top 10 rated products

<pre id="example"> 
SELECT productId, COUNT(productId) 
     FROM reviews 
	WHERE rating = 1 
            GROUP BY productId
                ORDER BY COUNT(productId) DESC
                    LIMIT 10;
</pre>
