# Part 3 : Indexing and Query Tuning

## Example

1. Execute the query.

2. Look at the query plan.

3. USE INDEX with various options.

USE INDEX (index_name)
USE INDEX (index_name USING access_method)

4. Now see the plan for the query.

5. That's the IntersectScan aka Multi-Index Scan

<pre id="example"> 
SELECT productId, rating, COUNT(productId)
    FROM reviews USE INDEX (idx_reviews_rating USING GSI, idx_reviews_productId USING GSI)
        WHERE rating < 3
            AND productId BETWEEN "product300" AND "product400" 
                GROUP BY productId, rating;
</pre>
