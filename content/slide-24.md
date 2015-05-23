# Part 1: Setup, Getting Started and Querying

## EXERCISE - Solution

Find the top 5 rated products.

Use the product and reviews keyspaces.

Only include products with more than 10 reviews.

<pre id="example"> 
SELECT p.name, COUNT(r) as reviewCount,
   ROUND(AVG(r.rating),1) AS AvgRating
  FROM product p JOIN reviews r ON KEYS p.reviewList
    GROUP BY p.name
     HAVING COUNT(r) > 10
      ORDER BY AvgRating DESC
        LIMIT 5
</pre>
