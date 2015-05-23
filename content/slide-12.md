# Part 1: Setup, Getting Started and Querying

## Date operations - who bought what when?

Date functionality can be used to show activity in a time window.

Change the query to show active customers between the first date ("2014-02-01") and
the present time. Is there more than one way to achieve this?

<pre id="example">
SELECT p.customerId, p.lineItems, p.purchasedAt 
  FROM purchases p
     WHERE STR_TO_MILLIS(p.purchasedAt) 
           BETWEEN STR_TO_MILLIS("2014-02-01") AND STR_TO_MILLIS("2014-03-01")
        LIMIT 5
</pre>
