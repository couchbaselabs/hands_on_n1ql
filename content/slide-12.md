## EXERCISE - SOLUTION 2

Find the products with the most reviews. Show
products with at least 20 reviews.

This solution uses the ARRAY_LENGTH function to find how many reviews each product has.

In both solutions, ORDER BY is used to list the results in order of most reviewed.
<pre id="example">
SELECT product.productId, product.name, 
        ARRAY_LENGTH(reviewList) as numReviews 
   FROM product 
     WHERE array_length(reviewList) >= 20 
        ORDER BY numReviews desc

</pre>
