# Part 3 : Indexing and Query Tuning

## Multiple where conditions
 
Now, you want only find "Smith" in Vermont.

Now prefix EXPLAIN to this query and execute the following:

EXPLAIN select * from customer where lastName = "Smith";

<pre id="example"> 
 SELECT * FROM customer 
    WHERE lastName = 'Smith' AND state = 'TX';
</pre>
