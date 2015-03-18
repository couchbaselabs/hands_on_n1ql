## EXERCISE

What category has the highest rating? Only care about products with more than 100 reviews.

<pre id="example">
SELECT cat, product, reviews
  FROM product UNNEST product.categories AS cat
    JOIN reviews ON KEYS product.reviewList
     LIMIT 5 
</pre>
