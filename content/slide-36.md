# Part 2: Querying and Modifying Complex Data

## EXERCISE - SOLUTION 1

Find the products with the most reviews. Show
products with at least 20 reviews.

This solution unnests the review ids with each product, and then aggregates the review ids on product ID and name.

<pre id="example">
SELECT product.name, count(reviewID) AS  numReviews 
   FROM product UNNEST reviewList AS reviewID 
     GROUP BY product.productId, product.name 
       HAVING count(reviewID) >= 20 
         ORDER BY numReviews desc

</pre>
