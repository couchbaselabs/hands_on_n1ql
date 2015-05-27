# Part 1: Setup, Getting Started and Querying

## Ordering results 

Queries can optionally include an ORDER BY clause describing how the results
should be sorted.

Modify the query to show the product with lowest price first.

<pre id="example">
SELECT name, description, unitPrice
  FROM product 
    ORDER BY unitPrice DESC
      LIMIT 10
</pre>
