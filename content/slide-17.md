# Part 1: Setup, Getting Started and Querying

## Aggregate functions 

Aggregates provide a way to get information about a group of data.

Try change the query to get an overall customer count.

Then try change the query to show a count of customers in each postal code and state
(postalCode is the name of the postal code field).

<pre id="example">
SELECT count(customer) as customers, state
  FROM customer
    GROUP BY state
</pre>
