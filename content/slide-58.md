# Indexing and Query Tuning

Simple query to look up a customer by customerId.

<pre id="example"> 
EXPLAIN 
SELECT * FROM customer 
    WHERE lastName = "Smith";
</pre>
