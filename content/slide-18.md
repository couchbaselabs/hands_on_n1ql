## Exercise - solution

What category has the highest rating? Only care about products with more than 100 reviews.


<pre id="example">
SELECT cat, AVG(reviews.rating) as avg_rating, 
	COUNT(reviews.rating) as num_ratings 
FROM product UNNEST product.categories AS cat 
    JOIN reviews ON KEYS product.reviewList  
GROUP BY cat 
HAVING COUNT(reviews.rating) > 100  
ORDER BY avg_rating desc

</pre>
