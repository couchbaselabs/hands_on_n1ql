# Part 2: Querying and Modifying Complex Data

## EXERCISE 

Find the products with the most reviews. Show products with at least 20 reviews.

Note that the review ids for each product are kept in an array reviewList. 
The reviews are in another keyspace, but for this exercise 
we not interested in the review detail, just which products have the most reviews. 

<pre id="example">
SELECT p 
  FROM product p
   LIMIT 5
</pre>
