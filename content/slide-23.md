# Part 1: Setup, Getting Started and Querying

## EXERCISE

Find the top 5 rated products.

Use the product and reviews keyspaces.

Only include products with more than 10 reviews.

<pre id="example"> 
SELECT p, r
  FROM product p JOIN reviews r ON KEYS p.reviewList
</pre>
