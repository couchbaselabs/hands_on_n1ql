# Part 1: Setup, Getting Started and Querying

## Filtering grouped data with HAVING 

The HAVING clause enables filtering of groups.

The query from the previous slide is filtered to include groups with more than 10 members

<pre id="example">
SELECT count(customer) as customers, state
  FROM customer 
    GROUP BY state
      HAVING COUNT(customer) > 10
</pre>
