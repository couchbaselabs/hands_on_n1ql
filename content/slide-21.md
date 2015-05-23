# Part 1: Setup, Getting Started and Querying

## EXERCISE

Find the customers with the most purchases in the states of California, Texas and New York.

Present the customer name as a single attribute.

Modify the query to only include purchases made in the 4th quarter of 2013.

<pre id="example">
SELECT c, p
  FROM purchases p
        JOIN customer c ON KEYS p.customerId
</pre>
