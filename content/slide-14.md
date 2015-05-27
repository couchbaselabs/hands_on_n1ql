# Part 1: Setup, Getting Started and Querying

## CASE expressions

N1QL supports both simple and searched case expressions.

A searched case expression compares an expression to one or more conditions.

<pre id="example">
SELECT productId, reviewedAt, rating, 
    CASE 
      WHEN rating >= 3.5 THEN "GOOD" 
      WHEN rating >= 2 THEN "OK" 
      ELSE "BAD" 
    END as status 
  FROM reviews r 
    LIMIT 1

</pre>
