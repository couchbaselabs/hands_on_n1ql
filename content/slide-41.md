# Part 2: Querying and Modifying Complex Data

## Exercise - solution

What category has the highest rating of reviews from the year 2014?


<pre id="example">
SELECT cat, AVG(reviews.rating) as avg_rating, 
	COUNT(reviews.rating) as num_ratings 
FROM product UNNEST product.categories AS cat 
    JOIN reviews ON KEYS product.reviewList  
WHERE substr(reviews.reviewedAt, 0, 4) = "2014"
  GROUP BY cat 
      ORDER BY avg_rating desc

</pre>
