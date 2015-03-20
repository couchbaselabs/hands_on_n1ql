## EXERCISE

What category has the highest rating of reviews from the year 2014?

<pre id="example">
SELECT cat, product, reviews
  FROM product UNNEST product.categories AS cat
    JOIN reviews ON KEYS product.reviewList
     LIMIT 5 
</pre>
