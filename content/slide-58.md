# Part 3 : Indexing and Query Tuning

## Explain with a primary index
Simple query to look up a customer by customerId.

<pre id="example"> 
EXPLAIN 
SELECT * FROM customer 
    WHERE lastName = "Smith";
</pre>
