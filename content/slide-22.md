# Part 1: Setup, Getting Started and Querying

## EXERCISE - Solution

Find the customers with the most purchases in the states of California, Texas and New York.

Present the customer name as a single attribute.

Modify the query to only include purchases made in the 4th quarter of 2013.

<pre id="example">
SELECT  count(p) as num_purchases, 
          c.firstName || " " || c.lastName as name
  FROM purchases p
        JOIN customer c ON KEYS p.customerId
    WHERE c.state IN [ "CA", "TX", "NY" ]
       AND STR_TO_MILLIS(p.purchasedAt) 
           BETWEEN STR_TO_MILLIS("2013-10-01") AND STR_TO_MILLIS("2014-01-01")
       GROUP BY c.firstName || " " || c.lastName
</pre>
