# Part 1: Setup, Getting Started and Querying

## Joins

The product keyspace has a list of the primary keys for its reviews.

This can be used to join a product with review detail. The query on the right shows a specific product joined with all its reviews.

<pre id="example">

SELECT p.name, r.rating
  FROM product p USE KEYS "product320"
        JOIN reviews r ON KEYS p.reviewList

</pre>
