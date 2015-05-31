# Indexing and Query Tuning

USE INDEX is a hint to the planner to choose that index when appropriate.
Only relevant hints are used and others are ignored.

When using GSI index, specify USING GSI clause.

<pre id="example"> 
SELECT productId, rating, COUNT(productId) 
    FROM reviews USE INDEX (idx_reviews_productId_rating USING GSI)
        WHERE rating < 3
            AND productId BETWEEN "product300" AND "product400" 
                GROUP BY productId, rating;
</pre>
