## Joins

The JOIN operator enables a query to create documents by combining two or more document sources.

In the example, the review detail for a particular product is obtained by joining the product with the
reviews bucket. 

Note that a join must use the ON KEYS clause to specify the actual joining. For those with a SQL background, the query on the right would be written as:

<span style="color: red">
SELECT p.name, r.* <br>
FROM product p <br>
INNER JOIN reviews r <br>
ON (r.productID == META(product).id) 
</span>
<pre id="example">
SELECT product.name, product.categories, reviews
    FROM product 
      JOIN reviews ON KEYS product.reviewList
</pre>
