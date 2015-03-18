## Joins

An example showing the average rating of the top 5 rated products. 
Note that a JOIN is used to combine the product detail with its corresponding review detail.

<pre id="example">
SELECT product.name, AVG(reviews.rating) AS avg_rating   
   FROM reviews 
     JOIN product ON KEYS reviews.productId 
      GROUP BY product.name 
         ORDER BY avg_rating DESC 
           LIMIT 5
</pre>
