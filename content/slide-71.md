# Part 3 : Indexing and Query Tuning

## Explain  
Execute this query again to see the performance difference.

Now prefix EXPLAIN to this query and execute the following:


1. Run it a few times.

2. Do the EXPLAIN

3. How do you make the optimizer to choose a specific index ?

<pre id="example"> 
SELECT productId, rating, COUNT(productId)
    FROM reviews 
        WHERE rating < 3
            AND productId BETWEEN "product300" AND "product400" 
                GROUP BY productId, rating;
</pre>
