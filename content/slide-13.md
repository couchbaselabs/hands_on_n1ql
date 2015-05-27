# Part 1: Setup, Getting Started and Querying

## CASE expressions

N1QL supports both simple and searched case expressions.

A simple case expression compares an expression to values.

<pre id="example">
SELECT customerId, CASE state
                    WHEN "CA" THEN 8.5
                    WHEN "NJ" THEN 6
                    WHEN "NV" THEN 0
                    ELSE 5.5 
                   END AS salesTax
  FROM customer c
    LIMIT 1
</pre>
